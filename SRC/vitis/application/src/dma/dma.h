/******************************************************************************
 * @Title		:	AXI DMA Interface  (Header File)
 * @Filename	:	axi_spi_if.h
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

#ifndef SRC_DMA_IF_H_
#define SRC_DMA_IF_H_



/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/
#include "../global_defines.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xil_util.h"
#include "xscugic.h"
#include <stdint.h>
#include "../gpio/axi_gpio_if.h"



/*****************************************************************************/
/************************** Constant Definitions *****************************/
/*****************************************************************************/
#define INTERRUPTS_PER_DMA_TRANSFER 1
#define DMA_BDS_PER_INTERRUPT 1  //after how many block descriptors should the DMA enige trigger an interrupt?

#define AXI_DMA_DEBUG					0

/* Device ID */
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID


#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define RX_INTR_ID		XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define TX_INTR_ID		XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID

#define INTC		XScuGic
#define INTC_HANDLER	XScuGic_InterruptHandler


/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

#define TEST_START_VALUE	0xC  //notused
/*
 * Buffer and Buffer Descriptor related constant definition
 */
//#define MAX_PKT_LEN		0x100
//#define MAX_PKT_LEN		0x80 	//16 words a 64 bits are 128 bytes

//#define MAX_PKT_LEN		0x800  //256 words a 64 bits are 2048 bytes
//#define MAX_PKT_LEN		0x200  //64 words a 64 bits are 512 bytes
#define MAX_PKT_LEN		0x100  //32 words a 64 bits are 256 bytes

#define BINS_PER_AXI_TRANSACTION 4  // how many bins of a histogram fit into a 64-bit wide AXI transition

//#define MAX_PKT_LEN 	0x40	//a burst of 16 words is 64 bytes!
//#define MAX_PKT_LEN 	0x10  //burst size of 16 words
// if writing four words of 32 bits, we have to write to 16 byte adresses in the ram.

#define NUMBER_OF_TRANSFERS	10  //notused
#define POLL_TIMEOUT_COUNTER    100U //1000000U
#define RX_TIMEOUT_COUNTER    200000000U //1000000U

#define NUMBER_OF_EVENTS	1  //XilWaitForEventSet waits for this many events.
//important for DMADone and Error events

/* The interrupt coalescing threshold and delay timer threshold
 * Valid range is 1 to 255
 *
 * We set the coalescing threshold to be the total number of packets.
 * The receive side will only get one completion interrupt for this example.
 */

#define COALESCING_COUNT		DMA_BDS_PER_INTERRUPT  //NUMBER_OF_PKTS_TO_TRANSFER
#define DELAY_TIMER_COUNT		0



#define RX_BD_SPACE_BASE	0x40000000  //this is the BRAM base address
#define RX_BD_SPACE_HIGH	(0x40000000 + 0x00001FFF)

/*****************************************************************************/
/******************************* Typedefs ************************************/
/*****************************************************************************/




//static void DMA_IntrHandler(void *Callback);


/*****************************************************************************/
/************************** Variable Declarations ****************************/
/*****************************************************************************/

/*
 * Device instance definitions
 */



extern volatile uint32_t RxDone;
extern volatile uint32_t Error;
extern volatile uint32_t DMADone;

//uint8_t *RxBufferPtr;

extern uint8_t* RxBufferPtr;
extern int DMA_INTR_CNTR;
extern int PIXELS_RECEIVED;

//XAxiDma_BdRing *RxRingPtr;
extern int HistSizeInWords;

/****************************************************************************/
/***************** Macros (Inline Functions) Definitions ********************/
/****************************************************************************/


/*****************************************************************************/
/************************** Function Prototypes ******************************/
/*****************************************************************************/


/* Device Initialisation */
int DMAInit();
int DMAStart();

void clear_ram_section();

/* Interrupt Handlers */
void DMA_IntrHandler(XAxiDma *InstancePtr);

#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

int RxSetup(UINTPTR RxBufferPtr);
void RxCallBack(XAxiDma_BdRing *RxRingPtr);
void RxIntrHandler(void *Callback);
/****** End functions *****/

/****** End of File **********************************************************/


#endif /* SRC_SPI_AXI_SPI_IF_H_ */
