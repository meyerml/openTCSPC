/******************************************************************************
*	this program initializes the gpx2, initializes all fpga logic and then hits run.
*
*	when run is hittet, the laser emulator starts generating pixel-, line- and frame clocks and also
*	emulates the signals of a laser as well as a detector.
*
*	the synchronisation clocks are routed to the TDC logic internally on the chip, while the laser and detector
*	signals are routed via actual transmission lines to the gpx2 breakout board
*
*	the logic then runs for itself, collecting the gpx2s measurements into histograms on a per pixel basis.
*	these histograms are written to DDR memory on the zedboard via DMA.
*
*	once all pixels have been processed, an interrupt is triggered and the processor takes over again.
*
*	it reports the histogram data (in the DDR memory) via the serial port, where it can be analysed
*	(in a python script for example)
*
*
*	please go to global_defines.h to configure the behavior of this code
*
*
*
******************************************************************************/



/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/

#include "main.h"
#include "global_defines.h"
#include "report.h"
#include <stdalign.h>
#include "dma/dma.h"
#include "sleep.h"
#include "gpx2/gpx2_if.h"
#include "laser.h"
#include "dma/dma.h"

// Declare the global array using uint32_t or u32 if properly defined
//alignas(16) uint32_t image_buffer[DESTINATIONLENGTH];
uint8_t* image_buffer = NULL;

long int timer_counter = 0;

//#define FRAMESIZE 16
//#define DATA_WIDTH_IN_BYTES 4

int main(void){


	// ********************************************************************************* //
	// *****  INITIALIZATION PHASE *****
	// ********************************************************************************* //

#if MAIN_DEBUG
	printf("\n\r------------------------------------------------------------\n\r");
	printf("----------- GPX2_LVDS_READOUT -----------\n\r");
	printf("------------------------------------------------------------\n\r");

#endif


	/* ----------------------------------------
	 * SYSTEM INITIALISATION (drivers, etc)
	 * ----------------------------------------
	 * If initialisation is successful, LED0 is turned on to indicate that the system
	 * is ready. If initialisation is not successful, then LED0 will flash, and the
	 * program will not continue to the main phase.
	 */

	/* Variable for initialisation status */
	int init_status;



	/* Run initialisation */
	init_status = sys_init();

	if (init_status == XST_SUCCESS){
		#if MAIN_DEBUG
			printf("\n\rSystem ready.\n\r");
		#endif
	}
	else {
		#if MAIN_DEBUG
			printf("\n\r!!! INITIALIZATION FAILED !!!\n\r");
		#endif
		while(1) { // Stay in this loop

		//restartScuWdt();

		uint32_t delay = 0U;
		for (delay = 0; delay < INIT_FAIL_LOOP_DELAY; delay++)
			{}
		}
	}


	// ********************************************************************************* //
	// *****   MAIN PROGRAM [TASK STATE MACHINE ARCHITECTURE] *****
	// ********************************************************************************* //

#if MAIN_DEBUG
	//IMPORTANT:REFCLK_DIVISIONS should be set to the picosecond value of the refence clock. that
	//float REFCLK_FREQUENCY = 1000000.0/REFCLK_DIVISIONS;

    //int whole, thousandths;
    //whole = REFCLK_FREQUENCY;
    //thousandths = (REFCLK_FREQUENCY - whole) * 1000;
    //xil_printf("%d.%3d\n", whole, thousandths);

	xil_printf("Current Settings are expecting a reference clock frequency of %d kHz.\r\n", REFCLK_FREQUENCY);
		switch (activechannels){
		case STOP1ACTIVE:
			xil_printf("Currently listening for STOP signals on channel 1.\r\n");
			break;
		case STOP2ACTIVE:
			xil_printf("Currently listening for STOP signals on channel 2.\r\n");
			break;
		case STOP3ACTIVE:
			xil_printf("Currently listening for STOP signals on channel 3.\r\n");
			break;
		case STOP4ACTIVE:
			xil_printf("Currently listening for STOP signals on channel 4.\r\n");
			break;
		}
		//xil_printf("gathering %d samples.\r\n", NUMSAMPLES);

		// Declare variables as extern
		//extern long int laser_period_ps;
		//extern long int BIN_WIDTH;
		//extern long int HISTOGRAM_BINS;

		//extern long int laser_period_ps;
		//extern long int BIN_WIDTH;
		//extern long int HISTOGRAM_BINS;
		xil_printf("the expected laser clock period is: %d ps. \n\r", laser_period_ps);
		if(pow(2, STOP_DATA_BITWIDTH)<laser_period_ps){
			xil_printf("ERROR: The chosen STOP_DATA_BITWIDTH of %u is too small. It cannot holdall possible Stop data values at the chosen laser period.", STOP_DATA_BITWIDTH);
			while(1);
		}
		xil_printf("the specified bin width is: %d ps. \n\r", BIN_WIDTH);
		xil_printf("the histogram will be %d bins wide. \n\r", HISTOGRAM_BINS);


#endif


	//dynamically allocate some ram for the dma to save the data to
	// the actual DMA instruction.
	//volatile u32 *destination = (u32 *)malloc(8 * 32);
//    // Directly assign values to the allocated memory
//    destination[0] = 0xDEADC0DE;
//    destination[1] = 0xDEADC0DE;
//    destination[2] = 0xDEADC0DE;
//    destination[3] = 0xDEADC0DE;
//    destination[4] = 0xDEADC0DE;
//    destination[5] = 0xDEADC0DE;
//    destination[6] = 0xDEADC0DE;
//    destination[7] = 0xDEADC0DE;
	//const char *filename = "output_5bit_greyscale.bin"; // Replace with your binary file
	if (prepare_laser_emulator() != 0) {
		printf("Failed to write binary to BRAM\n");
		while(1);
	}


	int buffer_length =  HistSizeInWords*4*NUM_PIXELS;
    image_buffer = (uint8_t*)aligned_alloc(16, buffer_length);
	if (image_buffer == 0) {
		printf("failed to allocate receive buffer in DDR memory. Not enough heap allocated?\n");
		while(1);
	}

	clear_ram_section((void*)image_buffer, buffer_length); //write DEADC0DE all over the receive buffer

		/* Flush the buffers before the DMA transfer, in case the Data Cache
		 * is enabled
		 */
		//Xil_DCacheFlushRange((UINTPTR)destination, MAX_PKT_LEN);
	//sleep(1);
	Xil_DCacheFlushRange((INTPTR)image_buffer, buffer_length);
	//sleep(1);
	//Xil_DCacheInvalidateRange((UINTPTR)image_buffer, destination_length);
	//sleep(1);
	/* Set up DMA RX channel to be ready to transmit and receive packets */
	int Status = RxSetup((UINTPTR) image_buffer);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed RX setup\r\n");
		return XST_FAILURE;
	}

	enableInterrupts();
	//sleep(100);
	//int DMAstatus = DMAStart(image_buffer, MAX_PKT_LEN);
	//axiGpOutClear(LVDS_START);  //the DMA is already waiting, so start the LVDS engine
	//sleep(1);
	axiGpOutSet(LVDS_START);  //the DMA is already waiting, so start the LVDS engine

	//int DMAstatus = DMAStart(image_buffer, DESTINATION_LENGTH);

	//axiGpOutSet(LVDS_En); //actually not used right now


	/*
	 * Check for any error events to occur.
	 * Upon error, check the error path (Tx/Rx)
	 */
	//int Status;
	Status = Xil_WaitForEventSet(POLL_TIMEOUT_COUNTER, NUMBER_OF_EVENTS, &Error);
	if (Status == XST_SUCCESS) {
		if (!RxDone) {
			xil_printf("Receive error %d\r\n", Status);
		}
	}
	//Xil_DCacheInvalidateRange((UINTPTR)image_buffer, DESTINATIONLENGTH);
	//Xil_DCacheInvalidateRange((UINTPTR)image_buffer, DESTINATIONLENGTH);

	/*
	 * Wait for RX done to be received for all the BDs or timeout
	 *
	 * the RxDone signal is set in the interrupt handler
	 */
	//Status = Xil_WaitForEventSet(RX_TIMEOUT_COUNTER, NUMBER_OF_EVENTS, &RxDone);
	//if (Status != XST_SUCCESS) {
	//	xil_printf("Receive failure\r\n");
	//	while(1){
	//		//endless loop to stop the program execution in case of error.
	//	}
	//}
	int debugvar = 0;
	while(!RxDone){
		//debugvar ++;
		//Xil_DCacheInvalidateRange((INTPTR)image_buffer, DESTINATIONLENGTH);

	}

	/*
	 * Test finished, write out data
	 */
	sleep(1);
	Xil_DCacheInvalidateRange((INTPTR)image_buffer, buffer_length);  //idk why it needs those 16 extra
	sleep(1);

	//Status = ReportDataPerPhoton(image_buffer, PRINT_REFINDICES, PRINT_STOPRESULTS, PRINT_STATISTICS);
	//if (Status != XST_SUCCESS) {
	//	xil_printf("Reporting Data failed\r\n");
	//}

	Status = ReportHistPerPixel(image_buffer, NUM_PIXELS, HISTOGRAM_BINS);
	if (Status != XST_SUCCESS) {
		xil_printf("Reporting hist failed\r\n");
	}

	xil_printf("DONE\n\r");
	//Xil_DCacheInvalidateRange((UINTPTR)image_buffer, DESTINATIONLENGTH);

	while(1){
		//we should not get past this point.
	}

	return 0;
}


/****** End main()  *****/

/****** End of File **********************************************************/
