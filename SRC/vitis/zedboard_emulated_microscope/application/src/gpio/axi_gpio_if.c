 /******************************************************************************
 * @Title		:	AXI GPIO Interface (Header File)
 * @Filename	:	axi_gpio0_if.h
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



/******************************************************************************
* AXI GPIO0 Channel and Pin Mapping
*
* Channel 1 = outputs: Board LEDS[3:0], PMOD GP_OUT[3:0]
*	Mapping is:
*		Bit 0:LED0; Bit1:LED1; Bit2:LED2 Bit3:LED3.
*		Bit 4:GP_IN0; Bit 5:GP_IN1; Bit 6:GP_IN2; Bit 7: GP_IN3;
*
* Channel 2 = inputs: Board BTN[3:0], SW[3:0], PMOD GP_IN[3:0].
*	Mapping is:
*		Bit 0:BTN0; Bit1:BTN1; Bit2:BTN2; Bit3:BTN3;
* 		Bit 4:SW0; Bit 5:SW1; Bit 6:SW2; Bit 7:SW3.
* 		Bit 8:GP_IN0; Bit 9:GP_IN1; Bit 10:GP_IN2; Bit 11:GP_IN3;
*
******************************************************************************/


/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/

#include "axi_gpio_if.h"



/*****************************************************************************/
/************************** Variable Declarations ****************************/
/*****************************************************************************/

/* Declare instance and associated pointer for AXI GPIO */
static XGpio 		XGpio0Inst;
static XGpio 		*p_XGpio0Inst = &XGpio0Inst;

static XGpio 		XGpio1Inst;
static XGpio 		*p_XGpio1Inst = &XGpio1Inst;

static XGpio 		XGpio2Inst;
static XGpio 		*p_XGpio2Inst = &XGpio2Inst;

static XGpio 		XGpio3Inst;
static XGpio 		*p_XGpio3Inst = &XGpio3Inst;
/*---------------------------------------------------------------------------*/
/*------------------------------- FUNCTIONS ---------------------------------*/
/*---------------------------------------------------------------------------*/


/*****************************************************************************
 * Function: axiGpio0Init()
 *//**
 *
 * @brief		Configures the PL AXI GPIO for use.
 *
 *
 * @details		Starts by doing device look-up, configuration and self-test.
 * 				Then configures the	channels. In this project, channel 1 is the
 * 				output channel,	and channel 2 is the input channel.
 *
 * 				The initialisation steps are:
 * 				(1) DEVICE LOOK-UP => Calls function "XGpio_LookupConfig"
 * 				(2) DRIVER INIT => Calls function "XGpio_CfgInitialize"
 * 				(3) SELF TEST => Calls function "XGpio_SelfTest"
 * 				(4) SPECIFIC CONFIG => Configures GPIO channels and pins
 *
 * 				If any of the first three states results in XST_FAILURE, the
 * 				initialisation will stop and the XST_FAILURE code will be
 * 				returned to the calling code. If initialisation completes with
 * 				no failures, then XST_SUCCESS is returned.
 *
 * @return		Integer indicating result of configuration attempt.
 * 				0 = SUCCESS, 1 = FAILURE
 *
 * @note		None
 *
******************************************************************************/

int axiGpioInit(void)
{
	int status;

	/* Pointer to XGpio_Config is required for later functions. */
	XGpio_Config *p_XGpio0Cfg = NULL;
	XGpio_Config *p_XGpio1Cfg = NULL;
	XGpio_Config *p_XGpio2Cfg = NULL;
	XGpio_Config *p_XGpio3Cfg = NULL;



	/* === START CONFIGURATION SEQUENCE ===  */

	/* ---------------------------------------------------------------------
	 * ------------ STEP 1: DEVICE LOOK-UP ------------
	 * -------------------------------------------------------------------- */
	p_XGpio0Cfg = XGpio_LookupConfig(AXI_GPIO_0_DEVICE_ID);
	 if (p_XGpio0Cfg == NULL)
	 {
		 status = XST_FAILURE;
		 return status;
	 }
	p_XGpio1Cfg = XGpio_LookupConfig(AXI_GPIO_1_DEVICE_ID);
	 if (p_XGpio1Cfg == NULL)
	 {
		 status = XST_FAILURE;
		 return status;
	 }
	p_XGpio2Cfg = XGpio_LookupConfig(AXI_GPIO_2_DEVICE_ID);
	 if (p_XGpio2Cfg == NULL)
	 {
		 status = XST_FAILURE;
		 return status;
	 }
	p_XGpio3Cfg = XGpio_LookupConfig(AXI_GPIO_3_DEVICE_ID);
	 if (p_XGpio3Cfg == NULL)
	 {
		 status = XST_FAILURE;
		 return status;
	 }

	 /* ---------------------------------------------------------------------
	  * ------------ STEP 2: DRIVER INITIALISATION ------------
	  * -------------------------------------------------------------------- */
	 status = XGpio_CfgInitialize(p_XGpio0Inst, p_XGpio0Cfg, p_XGpio0Cfg->BaseAddress);
	 if (status != XST_SUCCESS)
	 {
		 return status;
	 }

	 status = XGpio_CfgInitialize(p_XGpio1Inst, p_XGpio1Cfg, p_XGpio1Cfg->BaseAddress);
	 if (status != XST_SUCCESS)
	 {
		 return status;
	 }
	 status = XGpio_CfgInitialize(p_XGpio2Inst, p_XGpio2Cfg, p_XGpio2Cfg->BaseAddress);
	 if (status != XST_SUCCESS)
	 {
		 return status;
	 }
	 status = XGpio_CfgInitialize(p_XGpio3Inst, p_XGpio3Cfg, p_XGpio3Cfg->BaseAddress);
	 if (status != XST_SUCCESS)
	 {
		 return status;
	 }

	/* ---------------------------------------------------------------------
	* ------------ STEP 3: SELF TEST ------------
	* -------------------------------------------------------------------- */
	status = XGpio_SelfTest(p_XGpio0Inst);
 	Xil_AssertNonvoid(status == XST_SUCCESS);

 	/* If the assertion test fails, we won't get here, but
 	 * leave the code in anyway, for possible future changes. */
 	if (status != XST_SUCCESS)
 	{
		 return status;
 	}
	status = XGpio_SelfTest(p_XGpio1Inst);
 	Xil_AssertNonvoid(status == XST_SUCCESS);

 	/* If the assertion test fails, we won't get here, but
 	 * leave the code in anyway, for possible future changes. */
 	if (status != XST_SUCCESS)
 	{
		 return status;
 	}
	status = XGpio_SelfTest(p_XGpio2Inst);
 	Xil_AssertNonvoid(status == XST_SUCCESS);

 	/* If the assertion test fails, we won't get here, but
 	 * leave the code in anyway, for possible future changes. */
 	if (status != XST_SUCCESS)
 	{
		 return status;
 	}
	status = XGpio_SelfTest(p_XGpio3Inst);
 	Xil_AssertNonvoid(status == XST_SUCCESS);

 	/* If the assertion test fails, we won't get here, but
 	 * leave the code in anyway, for possible future changes. */
 	if (status != XST_SUCCESS)
 	{
		 return status;
 	}


	/* ---------------------------------------------------------------------
	* ------------ STEP 4: PROJECT-SPECIFIC CONFIGURATION ------------
	* -------------------------------------------------------------------- */
	/* Configure channel 1 to be all outputs */
	XGpio_SetDataDirection(p_XGpio0Inst, AXI_GPIO_OP_CHANNEL, 0);
	XGpio_SetDataDirection(p_XGpio1Inst, AXI_GPIO_OP_CHANNEL, 0);
	XGpio_SetDataDirection(p_XGpio2Inst, AXI_GPIO_OP_CHANNEL, 0);
	XGpio_SetDataDirection(p_XGpio3Inst, AXI_GPIO_OP_CHANNEL, 0);

	//the other channel is also all outputs
	XGpio_SetDataDirection(p_XGpio0Inst, AXI_GPIO_OTHER_OP_CHANNEL, 0);
	XGpio_SetDataDirection(p_XGpio1Inst, AXI_GPIO_OTHER_OP_CHANNEL, 0);
	XGpio_SetDataDirection(p_XGpio2Inst, AXI_GPIO_OTHER_OP_CHANNEL, 0);
	XGpio_SetDataDirection(p_XGpio3Inst, AXI_GPIO_OTHER_OP_CHANNEL, 0);

	/* Inital Conditions */
	//axiGpOutClear(SPI_SEL_1);
	//axiGpOutClear(SPI_1_EN);
	axiGpOutClear(EMULATOR_START);
	//axiGpOutClear(LED3);
	/* All LEDs initially off */
	//axiGpOutClear(LED0);
	//axiGpOutClear(LED1);
	//axiGpOutClear(LED2);
	//axiGpOutClear(LED3);


	//axiGpOutClear(RESULTCHANNEL0);
	//axiGpOutClear(RESULTCHANNEL0);
	//axiGpOutClear(RESULTCHANNEL1); //default channel is STOP1

	//axiGpOutClear(DISABLE);
	//axiGpOutClear(REFRES);
	//axiGpOutSet(LEVEL_SHIFTER_OE);

	axiGpOutClear(MSGLEN0);
	axiGpOutClear(MSGLEN1);
	axiGpOutClear(MSGLEN2);
	axiGpOutClear(MSGLEN3);
	axiGpOutClear(MSGLEN4);
	axiGpOutClear(MSGLEN5);


	axiGpOutClear(CNTVALUEIN0);
	axiGpOutClear(CNTVALUEIN1);
	axiGpOutClear(CNTVALUEIN2);
	axiGpOutClear(CNTVALUEIN3);
	axiGpOutClear(CNTVALUEIN4);

	axiGpOutClear(SECOND_ARESETN);

	for(int i=0;i<16;i++){
		axiGpOutClear(LOG_2_BINWIDTH0+i);
	}
	for(int i=0;i<32;i++){
		axiGpOutClear(IMAGE_SIZE0+i);
	}
	for(int i=0;i<32;i++){
		axiGpOutClear(PULSES_PER_PIXEL0+i);
	}
	for(int i=0;i<6;i++){
		axiGpOutClear(REFINDEX_BITS0+i);
	}
	for(int i=0;i<6;i++){
		axiGpOutClear(STOPRESULT_BITS0+i);
	}
	for(int i=0;i<8;i++){
		axiGpOutClear(TLAST_COUNT0+i);
	}
	for(int i=0;i<15;i++){
		axiGpOutClear(BINS_TO_READ0+i);
	}
	for(int i=0;i<32;i++){
		axiGpOutClear(MAX_PIXELS0+i);
	}


	for(int i=0;i<5;i++){
		axiGpOutClear(CNTVALUEIN_CLK0+i);
	}

	for(int i=0;i<5;i++){
		axiGpOutClear(CNTVALUEIN_SDO0+i);
	}

	for(int i=0;i<5;i++){
		axiGpOutClear(CNTVALUEIN_FRAME0+i);
	}

	axiGpOutClear(IDELAYE2_LD);

	/*
	for(int i=0;i<18;i++){
		axiGpOutClear(BRAM_WRAPAROUND0+i);
	}
	*/
	/* === END CONFIGURATION SEQUENCE ===  */



	/* Return initialisation result to calling code */
	return status;

}




/*****************************************************************************
 * Function: axiGpOutSet()
 *//**
 *
 * @brief		Sets an AXI GPIO output pin.
 *
 * @param[in]	AxiGpio0_OutPin_t pin: The AXI channel(1) pin to set.
 *
 * @return		None
 *
 * @note		Assert functionality: Only accept output channel bits [7:0];
 * 				Assert otherwise.
 *
******************************************************************************/

void axiGpOutSet(AxiGpio_OutPin_t pin){

	/* Function should only be passed GPIO bits 0-7 */
	Xil_AssertVoid(pin < 256);

	if(pin < 32){
		XGpio_DiscreteSet(p_XGpio0Inst, AXI_GPIO_OP_CHANNEL, (1 << pin));
	} else if (pin < 64) {
		XGpio_DiscreteSet(p_XGpio0Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-32)));
	} else if (pin < 96) {
		XGpio_DiscreteSet(p_XGpio1Inst, AXI_GPIO_OP_CHANNEL, (1 << (pin-64)));
	} else if (pin < 128) {
		XGpio_DiscreteSet(p_XGpio1Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-96)));
	} else if (pin < 160) {
		XGpio_DiscreteSet(p_XGpio2Inst, AXI_GPIO_OP_CHANNEL, (1 << (pin-128)));
	} else if (pin < 192) {
		XGpio_DiscreteSet(p_XGpio2Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-160)));
	} else if (pin < 224) {
		XGpio_DiscreteSet(p_XGpio3Inst, AXI_GPIO_OP_CHANNEL, (1 << (pin-192)));
	} else {
		XGpio_DiscreteSet(p_XGpio3Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-224)));
	}
}



/*****************************************************************************
 * Function: axiGpOutClear()
 *//**
 *
 * @brief		Clears an AXI GPIO output pin.
 *
 * @param[in]	AxiGpio0_OutPin_t pin		The AXI channel(1) pin to clear.
 *
 * @return		None
 *
 * @note		Assert functionality: Only accept output channel bits [7:0];
 * 				Assert otherwise..
 *
******************************************************************************/

void axiGpOutClear(AxiGpio_OutPin_t pin){

	/* Function should only be passed GPIO bits 0-7 */
	Xil_AssertVoid(pin < 256);
	if(pin < 32){
		XGpio_DiscreteClear(p_XGpio0Inst, AXI_GPIO_OP_CHANNEL, (1 << pin));
	} else if (pin < 64) {
		XGpio_DiscreteClear(p_XGpio0Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-32)));
	} else if (pin < 96) {
		XGpio_DiscreteClear(p_XGpio1Inst, AXI_GPIO_OP_CHANNEL, (1 << (pin-64)));
	} else if (pin < 128) {
		XGpio_DiscreteClear(p_XGpio1Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-96)));
	} else if (pin < 160) {
		XGpio_DiscreteClear(p_XGpio2Inst, AXI_GPIO_OP_CHANNEL, (1 << (pin-128)));
	} else if (pin < 192) {
		XGpio_DiscreteClear(p_XGpio2Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-160)));
	} else if (pin < 224) {
		XGpio_DiscreteClear(p_XGpio3Inst, AXI_GPIO_OP_CHANNEL, (1 << (pin-192)));
	} else {
		XGpio_DiscreteClear(p_XGpio3Inst, AXI_GPIO_OTHER_OP_CHANNEL, (1 << (pin-224)));
	}
}



/*****************************************************************************
 * Function: axiGpOutToggle()
*//**
 *
 * @brief		Toggles an AXI GPIO output pin.
 *
 * @param[in]	AxiGpio0_OutPin_t pin		The AXI channel(1) pin to toggle.
 *
 * @return		None
 *
 * @note		Assert functionality: Only accept output channel bits [7:0];
 * 				Assert otherwise.
 *
******************************************************************************/

void axiGpOutToggle(AxiGpio_OutPin_t pin){

	uint32_t pin_state;

	/* Function should only be passed GPIO bits 0-7 */
	Xil_AssertVoid(pin < 128);

	if(pin < 32){
		/* Read the current pin state, then use it to change the pin accordingly */
			pin_state = (XGpio_DiscreteRead(p_XGpio0Inst, AXI_GPIO_OP_CHANNEL)
		 				& (1 << pin)) != 0;
	} else if (pin < 64) {
		pin_state = (XGpio_DiscreteRead(p_XGpio0Inst, AXI_GPIO_OTHER_OP_CHANNEL)
	 				& (1 << (pin-32))) != 0;
	} else if (pin < 96) {
		pin_state = (XGpio_DiscreteRead(p_XGpio1Inst, AXI_GPIO_OP_CHANNEL)
	 				& (1 << (pin-64))) != 0;
	} else if (pin < 128) {
		pin_state = (XGpio_DiscreteRead(p_XGpio1Inst, AXI_GPIO_OTHER_OP_CHANNEL)
	 				& (1 << (pin-96))) != 0;
	} else if (pin < 160) {
		pin_state = (XGpio_DiscreteRead(p_XGpio2Inst, AXI_GPIO_OP_CHANNEL)
	 				& (1 << (pin-128))) != 0;
	} else if (pin < 192) {
		pin_state = (XGpio_DiscreteRead(p_XGpio2Inst, AXI_GPIO_OTHER_OP_CHANNEL)
	 				& (1 << (pin-160))) != 0;
	} else if (pin < 224) {
		pin_state = (XGpio_DiscreteRead(p_XGpio3Inst, AXI_GPIO_OP_CHANNEL)
	 				& (1 << (pin-192))) != 0;
	} else {
		pin_state = (XGpio_DiscreteRead(p_XGpio3Inst, AXI_GPIO_OTHER_OP_CHANNEL)
	 				& (1 << (pin-224))) != 0;
	}


	if (pin_state == 1)
	{
		axiGpOutClear(pin);
	}
	else
	{
		axiGpOutSet(pin);
	}
}
/*
uint32_t axiGpInRead(AxiGpio_InPin_t pin){  //not used atm

	uint32_t pin_state;

	// Function should only be passed GPIO bits 0-11
	Xil_AssertNonvoid(pin < 2);

	// Read input channel and check if bit is set
	pin_state = (XGpio_DiscreteRead(p_XGpio0Inst, AXI_GPIO_IP_CHANNEL)
					& (1 << pin)) != 0;

	return pin_state;

}
*/

/****** End functions *****/

/****** End of File **********************************************************/






