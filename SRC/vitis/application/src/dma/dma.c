


/******************************************************************************
 * @Title		:	AXI SPI Interface
 * @Filename	:	axi_spi_if.c
 * @Author		:	Derek Murray
 * @Origin Date	:	15/05/2020
 * @Version		:	1.0.0
 * @Compiler	:	arm-none-eabi-gcc
 * @Target		: 	Xilinx Zynq-7000
 * @Platform	: 	Digilent Zybo-Z7-20
 *
 * ------------------------------------------------------------------------
 *
 * Copyright (C) 2021  Derek Murray
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.

 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
******************************************************************************/





/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/

#include "dma.h"
#include "../global_defines.h"
#include "../gpx2/gpx2_if.h"
#include "../laser.h"

/*****************************************************************************/
/************************** Constant Definitions *****************************/
/*****************************************************************************/
static XAxiDma AxiDma;		/* Instance of the XAxiDma */
//static XAxiDma *p_axiDma = &AxiDma; //pointer to the instance



/*****************************************************************************/
/******************************* Typedefs ************************************/
/*****************************************************************************/



/*****************************************************************************/
/************************** Variable Declarations ****************************/
/*****************************************************************************/
/*
 * Flags interrupt handlers use to notify the application context the events.
 */
volatile u32 RxDone = 0;
volatile u32 Error = 0;
volatile u32 DMADone = 0;

//uint8_t* RxBufferPtr = (uint8_t *)RX_BUFFER_BASE;

//extern global_destination;
int DMA_INTR_CNTR = 0;
int PIXELS_RECEIVED = 0;
/****************************************************************************/
/***************** Macros (Inline Functions) Definitions ********************/
/****************************************************************************/


/*****************************************************************************/
/************************** Function Prototypes ******************************/
/*****************************************************************************/




/*---------------------------------------------------------------------------*/
/*------------------------------- FUNCTIONS ---------------------------------*/
/*---------------------------------------------------------------------------*/


void clear_ram_section(void* ram_start_address, uint32_t ram_size) {
    volatile u32 *ram_ptr = ram_start_address;
    //uint32_t *end_ptr = ram_ptr + (ram_size / sizeof(uint32_t));
    void *end_ptr = ram_start_address + ram_size;

    while (ram_ptr < end_ptr) {
        *ram_ptr = 0xDEADC0DE;  // Set each 32-bit word to all ones
        ram_ptr++;
    }
    int debug_var = 1;
}

void DMA_IntrHandler(XAxiDma *InstancePtr)
{

	XAxiDma_BdRing *RxRingPtr;
	RxRingPtr = XAxiDma_GetRxRing(&AxiDma);   //this should automatically point to the BRAM
	//axiGpOutSet(LED3);
	u32 IrqStatus;
	int TimeOut;

	//static interrupt_counter = 0;
	//XAxiDma *AxiDmaInst = (XAxiDma *)Callback;


//    xil_printf ("Interrupt acknowledged.\n\r");
//    int dummy = 0;
//    for (int i = 0; i<10; i++){
//    	dummy +=1;
//    }
	/* Read pending interrupts */
    //TODO: system seems to crash at this instruction
    //the problem is that the xaxidma instance is not passed correectly
//	the memory adress of the driver instance seems too high to be in RAM
	//int PauseStatus = XAxiDma_Pause(InstancePtr);

	//int waiter = 0;
	IrqStatus = XAxiDma_IntrGetIrq(InstancePtr, XAXIDMA_DEVICE_TO_DMA);


	//DEBUG:
	int rs = (XAxiDma_ReadReg((InstancePtr)->RegBase + \
			 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_SR_OFFSET));

	/* Acknowledge pending interrupts */
	XAxiDma_IntrAckIrq(InstancePtr, IrqStatus, XAXIDMA_DEVICE_TO_DMA);
	/*
	 * If no interrupt is asserted, we do not do anything
	 */

	int rs2 = (XAxiDma_ReadReg((InstancePtr)->RegBase + \
			 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_SR_OFFSET));

	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

		Error = 1;

		/* Reset could fail and hang
		 * NEED a way to handle this or do not call it??
		 */
		XAxiDma_Reset(InstancePtr);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if (XAxiDma_ResetIsDone(InstancePtr)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If completion interrupt is asserted, call RX call back function
	 * to handle the processed BDs and then raise the according flag.
	 */


	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {
		PIXELS_RECEIVED++;
	//	Xil_DCacheInvalidateRange((UINTPTR)global_destination, DESTINATIONLENGTH);

		if (!(DMA_INTR_CNTR>=INTERRUPTS_PER_DMA_TRANSFER)){
			DMA_INTR_CNTR++;

			//this seems to be causing some problems
			//Xil_DCacheInvalidateRange((UINTPTR)global_destination, DESTINATIONLENGTH);

			RxCallBack(RxRingPtr);
		}

	}
}



/*****************************************************************************/
/*
*
* This is the DMA RX callback function called by the RX interrupt handler.
* This function handles finished BDs by hardware, attaches new buffers to those
* BDs, and give them back to hardware to receive more incoming packets
*
* @param	RxRingPtr is a pointer to RX channel of the DMA engine.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void RxCallBack(XAxiDma_BdRing *RxRingPtr)
{
	int BdCount;
	XAxiDma_Bd *BdPtr;
	XAxiDma_Bd *BdCurPtr;
	u32 BdSts;
	int Index;

	/* Get finished BDs from hardware */
	BdCount = XAxiDma_BdRingFromHw(RxRingPtr, XAXIDMA_ALL_BDS, &BdPtr);

	BdCurPtr = BdPtr;
	for (Index = 0; Index < BdCount; Index++) {

		/*
		 * Check the flags set by the hardware for status
		 * If error happens, processing stops, because the DMA engine
		 * is halted after this BD.
		 */
		BdSts = XAxiDma_BdGetSts(BdCurPtr);
		if ((BdSts & XAXIDMA_BD_STS_ALL_ERR_MASK) ||
		    (!(BdSts & XAXIDMA_BD_STS_COMPLETE_MASK))) {
			Error = 1;
			break;
		}

		/* Find the next processed BD */
		BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);

	}
	//if(frame_done){
	//	RxDone = 1;
	//}

}


int DMAInit(uint32_t *p_inst){
	int Status;
	XAxiDma_Config *Config;


	/* Initial setup for Uart16550 */



	Config = XAxiDma_LookupConfig(DMA_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DMA_DEV_ID);

		return XST_FAILURE;
	}

	/* Initialize DMA engine */
	Status = XAxiDma_CfgInitialize(&AxiDma, Config);

	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if (!XAxiDma_HasSg(&AxiDma)) {
		xil_printf("Device configured as Simple mode \r\n");
		return XST_FAILURE;
	}




	/*

	//this should not be neccesary as i am handling the interrupts myself
	Status = SetupIntrSystem(&Intc, &AxiDma, TX_INTR_ID, RX_INTR_ID);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed intr setup\r\n");
		return XST_FAILURE;
	}
	*/

	//xil_printf("--- Exiting DMA setup() --- \r\n");

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/* Update the pointer in the calling code */
	//*p_inst = (uint32_t) p_XUart1PsInst;

	/* Update the pointer in the calling code */
	*p_inst = (uint32_t) &AxiDma;

	return XST_SUCCESS;
}


//no longer needed as we just start DMA transfer with the TxSetup and then it just transfers everything
/*int DMAStart(u32 destination, u32 DESTINATION_LENGTH){
	int Status;
	int ErrorStatus;
	///Disable all interrupts before setup

	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			    XAXIDMA_DEVICE_TO_DMA);

	//Initialize flags before start transfer test
	RxDone = 0;
	Error = 0;


	// Flush the buffers before the DMA transfer, in case the Data Cache
	//  is enabled

	//Xil_DCacheInvalidateRange((UINTPTR)destination, MAX_PKT_LEN);


	//clear ram before DMA writes to it
	//clear_ram_section((UINTPTR)RxBufferPtr, MAX_PKT_LEN);
	//clear_ram_section((UINTPTR)destination, MAX_PKT_LEN);


	//Xil_DCacheFlushRange((UINTPTR)destination, MAX_PKT_LEN);





//debug
	int rc = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
			 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_CR_OFFSET));
	int rs = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
			 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_SR_OFFSET));
	int rdest = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
			 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_DESTADDR_OFFSET));
	int rdestmsb = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
			 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_DESTADDR_MSB_OFFSET));
	int rlen = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
			 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_BUFFLEN_OFFSET));

	// Send a packet
		Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) destination,
				DESTINATION_LENGTH, XAXIDMA_DEVICE_TO_DMA);
		int rc2 = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
				 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_CR_OFFSET));
		int rs2 = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
				 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_SR_OFFSET));
		int rdest2 = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
				 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_DESTADDR_OFFSET));
		int rdestmsb2 = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
				 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_DESTADDR_MSB_OFFSET));
		int rlen2 = (XAxiDma_ReadReg((&AxiDma)->RegBase + \
				 (XAXIDMA_RX_OFFSET * XAXIDMA_DEVICE_TO_DMA), XAXIDMA_BUFFLEN_OFFSET));
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
		//debug code
		static int ignore = 0;
		if (ignore%2){
			int debugvar = 1;
		}
		ignore++;

		//end of debug code

		//switch on the spi_fifo_axis module
		axiGpOutSet(LVDS_START);  //connected to enable pin of lvds module now
		//axiGpOutClear(DMA_START);

		//xil_printf("DMA transfer start returned status %d\r\n", Status);
		//xil_printf("length register holds the value %d\r\n", rlen2);
		XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
				   XAXIDMA_DEVICE_TO_DMA);

		ErrorStatus = Xil_WaitForEventSet(POLL_TIMEOUT_COUNTER, NUMBER_OF_EVENTS, &Error);
		if (ErrorStatus == XST_SUCCESS) {
			if (!RxDone) {
				xil_printf("Receive error %d\r\n", ErrorStatus);
				return XST_FAILURE;

			}
		}


		return XST_SUCCESS;



}


/*****************************************************************************/
/*
*
* This function sets up RX channel of the DMA engine to be ready for packet
* reception
*
* @param	AxiDmaInstPtr is the pointer to the instance of the DMA engine.
*
* @return	- XST_SUCCESS if the setup is successful.
*		- XST_FAILURE if fails.
*
* @note		None.
*
******************************************************************************/
int RxSetup(UINTPTR RxBufferPtr)
{
	XAxiDma_BdRing *RxRingPtr;
	int Status;
	XAxiDma_Bd BdTemplate;
	XAxiDma_Bd *BdPtr;
	XAxiDma_Bd *BdCurPtr;
	int BdCount;
	int FreeBdCount;
	//UINTPTR RxBufferPtr;
	int Index;

	RxRingPtr = XAxiDma_GetRxRing(&AxiDma);   //this should automatically point to the BRAM

	/* Disable all RX interrupts before RxBD space setup */
	XAxiDma_BdRingIntDisable(RxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	/* Setup Rx BD space */
	BdCount = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT,
					RX_BD_SPACE_HIGH - RX_BD_SPACE_BASE + 1);
	//BdCount = 8;

	Status = XAxiDma_BdRingCreate(RxRingPtr, RX_BD_SPACE_BASE,
				      RX_BD_SPACE_BASE,
				      XAXIDMA_BD_MINIMUM_ALIGNMENT, BdCount);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx bd create failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	/*
	 * Setup a BD template for the Rx channel. Then copy it to every RX BD.
	 */
	XAxiDma_BdClear(&BdTemplate);
	Status = XAxiDma_BdRingClone(RxRingPtr, &BdTemplate);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx bd clone failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Attach buffers to RxBD ring so we are ready to receive packets */
	FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);

	Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx bd alloc failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	BdCurPtr = BdPtr;
	FreeBdCount = 1;  //for now, just do one DMA transaction
	//if we do more, we have to malloc a larger buffer

	//RxBufferPtr = global_destination; //RX_BUFFER_BASE;
	//int HistSizeInWords =  ((HISTOGRAM_BINS / BINS_PER_AXI_TRANSACTION)*2)+2;  //plus 2 for start of histogram message
	//int HistSizeInWords;  // is calculated in the gpx2_if.c file
	for (Index = 0; Index < FreeBdCount; Index++) {

		Status = XAxiDma_BdSetBufAddr(BdCurPtr, RxBufferPtr);
		if (Status != XST_SUCCESS) {
			xil_printf("Rx set buffer addr %x on BD %x failed %d\r\n",
				   (unsigned int)RxBufferPtr,
				   (UINTPTR)BdCurPtr, Status);

			return XST_FAILURE;
		}
		Status = XAxiDma_BdSetLength(BdCurPtr, HistSizeInWords*4*(NUM_PIXELS),
					     RxRingPtr->MaxTransferLen);
		if (Status != XST_SUCCESS) {
			xil_printf("Rx set length %d on BD %x failed %d\r\n",
					HistSizeInWords*4*NUM_PIXELS, (UINTPTR)BdCurPtr, Status);

			return XST_FAILURE;
		}

		/* Receive BDs do not need to set anything for the control
		 * The hardware will set the SOF/EOF bits per stream status
		 */
		XAxiDma_BdSetCtrl(BdCurPtr, 0);

		XAxiDma_BdSetId(BdCurPtr, RxBufferPtr);

		RxBufferPtr += HistSizeInWords*4;
		BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);
	}

	/*
	 * Set the coalescing threshold, so only one receive interrupt
	 * occurs for this example
	 *
	 * If you would like to have multiple interrupts to happen, change
	 * the COALESCING_COUNT to be a smaller value
	 */
	Status = XAxiDma_BdRingSetCoalesce(RxRingPtr, COALESCING_COUNT,
					   DELAY_TIMER_COUNT);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx set coalesce failed with %d\r\n", Status);
		return XST_FAILURE;
	}


	Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx ToHw failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			   XAXIDMA_DEVICE_TO_DMA);

	/* Enable all RX interrupts */
	XAxiDma_BdRingIntEnable(RxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	/* Start RX DMA channel */
	Status = XAxiDma_BdRingStart(RxRingPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx start BD ring failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/****** End functions *****/

/****** End of File **********************************************************/




