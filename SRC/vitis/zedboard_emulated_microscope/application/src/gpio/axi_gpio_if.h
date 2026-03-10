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

#ifndef SRC_GPIO_AXI_GPIO_IF_H_
#define SRC_GPIO_AXI_GPIO_IF_H_


/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/

#include "xgpio.h"


/*****************************************************************************/
/************************** Constant Definitions *****************************/
/*****************************************************************************/

#define AXI_GPIO_0_DEVICE_ID			XPAR_AXI_GPIO_0_DEVICE_ID
#define AXI_GPIO_1_DEVICE_ID			XPAR_AXI_GPIO_1_DEVICE_ID
#define AXI_GPIO_2_DEVICE_ID			XPAR_AXI_GPIO_2_DEVICE_ID
#define AXI_GPIO_3_DEVICE_ID			XPAR_AXI_GPIO_3_DEVICE_ID

/*****************************************************************************/
/******************************* Typedefs ************************************/
/*****************************************************************************/

/* ----- AXI GPIO  -----
 *//**
 * AXI GPIO Channel 1 = Output*/
#define AXI_GPIO_OP_CHANNEL 		1U
#define AXI_GPIO_OTHER_OP_CHANNEL 		2U

//#define AXI_GPIO_IP_CHANNEL 		2U
#define AXI_GPIO_IP_MASK			(0x00000FFF)


/* ----------------------------------------------------------------------------
 * ----- AXI GPIO  -----
 *//**
 * For this project, channel 1 is the output channel.
 * 8 outputs are used: 4 x Board LEDS 0-3; 4 x GP_OUT 0-3 (PMOD JE Pins 1-4)
 * Channel 2 is the input channel. 12 inputs are used:
 * 4 x Board BTNS 0-3; 4 x Board SW 0-3; 4 x GP_IN 0-3 (PMOD JE pins 7-10)
 * --------------------------------------------------------------------------*/


typedef enum
{
	LVDS_START,
	MSGLEN0, MSGLEN1, MSGLEN2, MSGLEN3, MSGLEN4, MSGLEN5,
	CNTVALUEIN0, CNTVALUEIN1, CNTVALUEIN2, CNTVALUEIN3, CNTVALUEIN4,
	LD,
	LOG_2_BINWIDTH0,  LOG_2_BINWIDTH1,  LOG_2_BINWIDTH2,  LOG_2_BINWIDTH3,
	LOG_2_BINWIDTH4,  LOG_2_BINWIDTH5,  LOG_2_BINWIDTH6,  LOG_2_BINWIDTH7,
	LOG_2_BINWIDTH8,  LOG_2_BINWIDTH9,  LOG_2_BINWIDTH10, LOG_2_BINWIDTH11,
	LOG_2_BINWIDTH12, LOG_2_BINWIDTH13, LOG_2_BINWIDTH14, LOG_2_BINWIDTH15,

	IMAGE_SIZE0,  IMAGE_SIZE1,  IMAGE_SIZE2,  IMAGE_SIZE3,
	IMAGE_SIZE4,  IMAGE_SIZE5,  IMAGE_SIZE6,  IMAGE_SIZE7,
	IMAGE_SIZE8,  IMAGE_SIZE9,  IMAGE_SIZE10, IMAGE_SIZE11,
	IMAGE_SIZE12, IMAGE_SIZE13, IMAGE_SIZE14, IMAGE_SIZE15,
	IMAGE_SIZE16, IMAGE_SIZE17, IMAGE_SIZE18, IMAGE_SIZE19,
	IMAGE_SIZE20, IMAGE_SIZE21, IMAGE_SIZE22, IMAGE_SIZE23,
	IMAGE_SIZE24, IMAGE_SIZE25, IMAGE_SIZE26, IMAGE_SIZE27,
	IMAGE_SIZE28, IMAGE_SIZE29, IMAGE_SIZE30, IMAGE_SIZE31,

	PULSES_PER_PIXEL0,  PULSES_PER_PIXEL1,  PULSES_PER_PIXEL2,  PULSES_PER_PIXEL3,
	PULSES_PER_PIXEL4,  PULSES_PER_PIXEL5,  PULSES_PER_PIXEL6,  PULSES_PER_PIXEL7,
	PULSES_PER_PIXEL8,  PULSES_PER_PIXEL9,  PULSES_PER_PIXEL10, PULSES_PER_PIXEL11,
	PULSES_PER_PIXEL12, PULSES_PER_PIXEL13, PULSES_PER_PIXEL14, PULSES_PER_PIXEL15,
	PULSES_PER_PIXEL16, PULSES_PER_PIXEL17, PULSES_PER_PIXEL18, PULSES_PER_PIXEL19,
	PULSES_PER_PIXEL20, PULSES_PER_PIXEL21, PULSES_PER_PIXEL22, PULSES_PER_PIXEL23,
	PULSES_PER_PIXEL24, PULSES_PER_PIXEL25, PULSES_PER_PIXEL26, PULSES_PER_PIXEL27,
	PULSES_PER_PIXEL28, PULSES_PER_PIXEL29, PULSES_PER_PIXEL30, PULSES_PER_PIXEL31,



	REFINDEX_BITS0,REFINDEX_BITS1,REFINDEX_BITS2,REFINDEX_BITS3,
	REFINDEX_BITS4,REFINDEX_BITS5,
	STOPRESULT_BITS0,STOPRESULT_BITS1,STOPRESULT_BITS2,STOPRESULT_BITS3,
	STOPRESULT_BITS4,STOPRESULT_BITS5,
	TLAST_COUNT0,TLAST_COUNT1,TLAST_COUNT2,TLAST_COUNT3,
	TLAST_COUNT4,TLAST_COUNT5,TLAST_COUNT6,TLAST_COUNT7,
	BINS_TO_READ0, BINS_TO_READ1, BINS_TO_READ2, BINS_TO_READ3,
	BINS_TO_READ4, BINS_TO_READ5, BINS_TO_READ6, BINS_TO_READ7,
	BINS_TO_READ8, BINS_TO_READ9, BINS_TO_READ10, BINS_TO_READ11,
	BINS_TO_READ12, BINS_TO_READ13, BINS_TO_READ14,

	MAX_PIXELS0, MAX_PIXELS1, MAX_PIXELS2, MAX_PIXELS3,
	MAX_PIXELS4, MAX_PIXELS5, MAX_PIXELS6, MAX_PIXELS7,
	MAX_PIXELS8, MAX_PIXELS9, MAX_PIXELS10, MAX_PIXELS11,
	MAX_PIXELS12, MAX_PIXELS13, MAX_PIXELS14, MAX_PIXELS15,
	MAX_PIXELS16, MAX_PIXELS17, MAX_PIXELS18, MAX_PIXELS19,
	MAX_PIXELS20, MAX_PIXELS21, MAX_PIXELS22, MAX_PIXELS23,
	MAX_PIXELS24, MAX_PIXELS25, MAX_PIXELS26, MAX_PIXELS27,
	MAX_PIXELS28, MAX_PIXELS29, MAX_PIXELS30, MAX_PIXELS31,
/*
	BRAM_WRAPAROUND0, BRAM_WRAPAROUND1, BRAM_WRAPAROUND2, BRAM_WRAPAROUND3,
	BRAM_WRAPAROUND4, BRAM_WRAPAROUND5, BRAM_WRAPAROUND6, BRAM_WRAPAROUND7,
	BRAM_WRAPAROUND8, BRAM_WRAPAROUND9, BRAM_WRAPAROUND10, BRAM_WRAPAROUND11,
	BRAM_WRAPAROUND12, BRAM_WRAPAROUND13, BRAM_WRAPAROUND14, BRAM_WRAPAROUND15,
	BRAM_WRAPAROUND16, BRAM_WRAPAROUND17,

	*/
}AxiGpio_OutPin_t;


typedef enum
{
	Buffer_Overflow
}AxiGpio_InPin_t;


/*****************************************************************************/
/************************** Function Prototypes ******************************/
/*****************************************************************************/

/* Device Initialisation */
int axiGpioInit(void);
int axiGpioInit_orig(void);


/* Interface functions */
void axiGpOutSet(AxiGpio_OutPin_t pin);
void axiGpOutClear(AxiGpio_OutPin_t pin);
void axiGpOutToggle(AxiGpio_OutPin_t pin);
uint32_t axiGpInRead(AxiGpio_InPin_t pin);


#endif /* SRC_GPIO_AXI_GPIO_IF_H_ */
