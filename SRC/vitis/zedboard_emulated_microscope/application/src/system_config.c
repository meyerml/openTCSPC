/******************************************************************************
 * @Title		:	System Configuration
 * @Filename	:	system_config.c
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

#include "system_config.h"




/*---------------------------------------------------------------------------*/
/*------------------------------- FUNCTIONS ---------------------------------*/
/*---------------------------------------------------------------------------*/


/*****************************************************************************
 * Function: sys_init()
 *//**
 *
 * @brief		Calls various functions to initialize the system.
 *
 * @detail		Initialises the following:
 * 				(1) Assertion handling.
 * 				(2) SCU WDT
 * 				(3) AXI GPIO.
 * 				(4) PS7 GPIO.
 * 				(5) TTC0
 * 				(6) UART1
 * 				(7) PmodACL
 *
 * 				Adds the following to the interrupt system:
 * 				(1) TTC0
 * 				(2) UART1
 * 				(3) PmodACL INT1
 * 				(4) PmodACL INT2
 *
 * 				Function runs all the way to the end (unless an assertion is
 * 				triggered in one of the device init routines), and then checks if
 * 				all device were initialised correctly. That is, it does not
 * 				automatically return if any device fails to initialise.
 *
 * @param[in]	None.
 *
 * @return		Returns result of configuration attempt:
 * 				XIL_SUCCESS or XIL_FAILURE
 *
 * @note		None
 *
******************************************************************************/

int sys_init(void){


	/*
	 * Create InitStatus instance and associated pointer
	 * to track initialization progress.
	 */
	init_status_t InitStatus;
	init_status_t  *p_InitStatus = &InitStatus;


	/*
	 * Create addIntrStatus instance and associated pointer
	 * to track progress of devices being added to intr system.
	 */
	add_intr_status_t addIntrStatus;
	add_intr_status_t *p_addIntrStatus = &addIntrStatus;



	/* Any device which will be added to the interrupt system must return a
	 * pointer to its instance. The pointer will be passed to the relevant
	 * add_DEVICE_ToInterruptSystem(*p_inst) function */
	uint32_t p_uart1_inst;
	uint32_t p_dma_inst;




	/*---------------------------------------------------*/
    /* ------- Configure Assertion Functionality ------- */
	/*---------------------------------------------------*/

	/* Set up our callback function (AssertPrint) to be invoked when an assert occurs */
	Xil_AssertSetCallback((Xil_AssertCallback) AssertPrint);




	/*---------------------------------------------------*/
    /* ------------- Driver Initialization ------------- */
	/*---------------------------------------------------*/

#if SYS_CONFIG_DEBUG
	printf("\n\r===== Initializing Drivers =====\n\r");
#endif

	p_InitStatus->xscu_gic = xScuGicInit();		// SCU GIC
	//p_InitStatus->xscu_wdt = xScuWdtInit();		// SCU WDT
	p_InitStatus->xgpiops = psGpioInit(); 		// PS7 GPIO
	p_InitStatus->xgpio = axiGpioInit(); 		// AXI GPIO



	p_InitStatus->gpx2 = gpx2_Init();	// GPX2
	//p_InitStatus->histo = histoInit(); //initialize the histogram IP
	p_InitStatus->laser = laserInit();
	//p_InitStatus->lvds = lvdsInit();  //initialize the LVDS to AXI Stream IP

	//p_InitStatus->dma = DMAInit();


	/* For some devices which will be added to interrupt system,
	 we must get a reference to the instance pointer(s): */
	p_InitStatus->uart1 = xUart1PsInit(&p_uart1_inst);		// UART1
	p_InitStatus->dma = DMAInit(&p_dma_inst);		//



	/*--------------------------------------------*/
	/* ---- Add devices to interrupt system ----- */
	/*--------------------------------------------*/
	p_addIntrStatus->uart1 = addUart1ToInterruptSystem(p_uart1_inst);
	//p_addIntrStatus->gpx2 = addGPX2_Intr1ToInterruptSystem();
	p_addIntrStatus->dma = addDMAToInterruptSystem(p_dma_inst);
	p_addIntrStatus->warnings = addWarningsToInterruptSystem();
	p_addIntrStatus->frame = addFrameToInterruptSystem();




#if SYS_CONFIG_DEBUG
	printf("SCUGIC initialization: ");
	if (p_InitStatus->xscu_gic != XST_SUCCESS) 		{ printf("Error detected.\n\r"); }
	else											{ printf("Success.\n\r"); }

	//printf("SCUWDT initialization: ");
	//if (p_InitStatus->xscu_wdt != XST_SUCCESS) 		{ printf("Error detected.\n\r"); }
	//else											{ printf("Success.\n\r"); }

	printf("AXI GPIO initialization: ");
	if (p_InitStatus->xgpio != XST_SUCCESS) 		{ printf("Error detected.\n\r"); }
	else											{ printf("Success.\n\r"); }

	printf("PS7 GPIO initialization: ");
	if (p_InitStatus->xgpiops != XST_SUCCESS) 		{ printf("Error detected.\n\r"); }
	else											{ printf("Success.\n\r"); }


	printf("UART1 initialization: ");
	if (p_InitStatus->uart1 != XST_SUCCESS) 		{ printf("Error detected.\n\r"); }
	else											{ printf("Success.\n\r"); }

	printf("GPX2 initialization: ");
	if (p_InitStatus->gpx2 != XST_SUCCESS) 		{ printf("Error detected.\n\r\n\r"); }
	else											{ printf("Success.\n\r\n\r"); }

	printf("DMA initialization: ");
	if (p_InitStatus->dma != XST_SUCCESS) 		{ printf("Error detected.\n\r\n\r"); }
	else											{ printf("Success.\n\r\n\r"); }

	printf("laser emulator initialization: ");
	if (p_InitStatus->laser != XST_SUCCESS) 		{ printf("Error detected.\n\r\n\r"); }
	else											{ printf("Success.\n\r\n\r"); }


	printf("Adding UART1 to interrupt system: ");
	if (p_addIntrStatus->uart1 != XST_SUCCESS) 		{ printf("Error detected.\n\r"); }
	else											{ printf("Success.\n\r"); }

	printf("Adding Warnings to interrupt system: ");
	if (p_addIntrStatus->warnings != XST_SUCCESS) 	{ printf("Error detected.\n\r"); }
	else												{ printf("Success.\n\r"); }


	printf("Adding Frame Detection to interrupt system: ");
	if (p_addIntrStatus->frame != XST_SUCCESS) 	{ printf("Error detected.\n\r"); }
	else

	printf("Adding DMA INTR to interrupt system: ");
	if (p_addIntrStatus->dma != XST_SUCCESS) 	{ printf("Error detected.\n\r"); }
	else												{ printf("Success.\n\r"); }



#endif


    /* ----- Check result of initialization/interrupt set-up and return to calling function ----- */

	/* Initialization */
	int init_result;

	if (	(p_InitStatus->xscu_gic == XST_SUCCESS)			// XSCUGIC
		//&& 	(p_InitStatus->xscu_wdt == XST_SUCCESS)			// SCUWDT
    	&& 	(p_InitStatus->xgpio == XST_SUCCESS)			// AXI GPIO
    	&& 	(p_InitStatus->xgpiops == XST_SUCCESS)			// PS7 GPIO
		//&& 	(p_InitStatus->xttc0 == XST_SUCCESS) 			// TTC0
		&& 	(p_InitStatus->uart1 == XST_SUCCESS) 			// UART1
		&& (p_InitStatus->gpx2 == XST_SUCCESS) 			// GPX2
		&& (p_InitStatus->dma == XST_SUCCESS) 			// DMA
		&& (p_InitStatus->laser == XST_SUCCESS) 			//

		//&& (p_InitStatus->histo == XST_SUCCESS) 			//
		//&& (p_InitStatus->lvds == XST_SUCCESS) 			//




	)
    {
		init_result = XST_SUCCESS;
    }
    else
    {
    	init_result = XST_FAILURE;
    }


	/* Interrupt System */
	int add_intr_result;

	if ( 	(p_addIntrStatus->uart1 == XST_SUCCESS)				// UART1
		//&& 	(p_addIntrStatus->gpx2 == XST_SUCCESS)	// GPX2 INT1
		&& 	(p_addIntrStatus->dma == XST_SUCCESS)	// DMA INTR
		&& (p_addIntrStatus->warnings == XST_SUCCESS)
		&& (p_addIntrStatus->frame == XST_SUCCESS)

	)
	{
		add_intr_result = XST_SUCCESS;
    }
    else
    {
    	add_intr_result = XST_FAILURE;
    }


	/* Check both results: */
	if( (init_result == XST_SUCCESS) && (add_intr_result == XST_SUCCESS))
	{
		return XST_SUCCESS;
	}
	else
	{
		return XST_FAILURE;
	}


}




/*****************************************************************************
 * Function: AssertPrint()
 *//**
 *
 * @brief		This is the callback function to be invoked when an assert
 * 				occurs.
 *
 * @details		The function prints out the file and line number where the
 * 				assertion has occurred, assuming a terminal/console is
 * 				connected to the test platform. It is used with the function
 * 				Xil_AssertSetCallback()  (see xil_assert.c).
 *
 * @param[in]	char8 *file:	Pointer to file where assert occurred.
 * @param[in] 	s32 line:		Line in file where assert occurred.
 *
 *
 * @return		None.
 *
 * @note		A stdout terminal or other UART host program must be connected
 * 				to see the output!
 *
******************************************************************************/

void AssertPrint(const char8 *file, s32 line) {
	xil_printf("\r\nAssertion in file %s on line %d\r\n", file, line);
}




/****** End functions *****/

/****** End of File **********************************************************/
