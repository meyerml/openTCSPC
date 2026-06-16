/******************************************************************************
 * @Title		:	Interrupt System (Header File)
 * @Filename	:	intr_sys.h
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

#ifndef SRC_INTR_SYS_H_
#define SRC_INTR_SYS_H_


/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/

/* Xilinx low-level */
#include "xscugic.h"
#include "xil_exception.h"

#include "gpx2/gpx2_if.h"
#include "uart/ps7_uart1_if.h"
#include "dma/dma.h"


/*****************************************************************************/
/************************** Constant Definitions *****************************/
/*****************************************************************************/

#define INTR_SYS_DEBUG				1

/* Device ID */
#define PS7_SCUGIC_DEVICE_ID		XPAR_PS7_SCUGIC_0_DEVICE_ID


/* Interrupt IDs (from "xparameters_ps.h") */
#define UART_INTR_ID					XPS_UART1_INT_ID 	// PS7 UART1, 82U
#define TTC0_INT_IRQ_ID					XPS_TTC0_0_INT_ID	// TTC0, 42U
//#define GPX2_INTR_ID					XPS_FPGA0_INT_ID	// PL INTR_0, 61U
#define DMA_INTR_ID						XPS_FPGA0_INT_ID	// PL INTR_0, 61U
#define FRAME_INTR_ID					XPS_FPGA1_INT_ID
#define PREMATURE_PIXEL_DONE_INTR_ID 	XPS_FPGA2_INT_ID
#define BIN_FULL_INTR_ID					XPS_FPGA3_INT_ID
#define BIN_WRITTEN_BUT_NEVER_READ_INTR_ID	XPS_FPGA4_INT_ID
#define FIFO_OVERFLOW_INTR_ID XPS_FPGA5_INT_ID
/* === Interrupt priorities/triggers === */
/* In this project, timing is more important than UART comms,
 * so TTC0 has higher priority (In ARM, lower number = higher priority) */

/* PS7 UART1 */
#define UART_INTR_PRI				(0xC0) // Lowest priority
#define UART_INTR_TRIG				(0x01) // Active-high Level Sensitive

/* TTC0 */
#define TTC0_INTR_PRI				(0xA0) // Highest priority
#define TTC0_INTR_TRIG				(0x01) // Active-high Level Sensitive


/* Pmod ACL */
/* Technically, the PmodACL triggers are level-sensitive. However, because
 * we use a host PC app to clear the interrupt(s) via user interaction, we must
 * set them to be rising-edge sensitive. If they are set to level-sensitive,
 * and not cleared quickly, then the GIC will repeatedly call the Pmod
 * interrupt handler(s), eventually causing a watchdog timeout. Setting them to
 * edge-sensitive means the GIC will just call the Pmod handler(s) once.
 *
 * Priority is not critical in this program, so we just set them lower than TTC,
 * and higher than UART1 */

/* SINGLE TAP INTERRUPT */
//#define GPX2_PRI			(0xB0) // Medium priority
//#define GPX2_TRIG			(0x03) // Rising edge Sensitive
#define DMA_PRI			(0x80) // Highest priority  //(0xB0) // Medium priority
#define DMA_TRIG			(0x03) // Rising edge Sensitive

#define PREMATURE_PIXEL_DONE_INTR_PRI			(0x80) // Medium priority
#define PREMATURE_PIXEL_DONE_INTR_TRIG			(0x03) // Rising edge Sensitive


#define BIN_WRITTEN_BUT_NEVER_READ_INTR_PRI			(0xB0) // Medium priority
#define BIN_WRITTEN_BUT_NEVER_READ_INTR_TRIG			(0x03) // Rising edge Sensitive

#define BIN_FULL_INTR_PRI			(0xB0) // Medium priority
#define BIN_FULL_INTR_TRIG			(0x03) // Rising edge Sensitive

#define FRAME_INTR_PRI  			(0x70) //
#define FRAME_INTR_TRIG			(0x03) // Rising edge Sensitive

#define FIFO_OVERFLOW_INTR_PRI			(0xB0) // Medium priority
#define FIFO_OVERFLOW_INTR_TRIG			(0x03) // Rising edge Sensitive

/*****************************************************************************/
/************************** Variable Declarations ****************************/
/*****************************************************************************/




/*****************************************************************************/
/************************ Macros (Inline Functions) **************************/
/*****************************************************************************/

/* Ensure xil_printf.h is included: */
#ifndef SRC_XIL_PRINTF_H
#define SRC_XIL_PRINTF_H
#endif

//#define printf 		xil_printf 	/* Small foot-print printf function */



/*****************************************************************************/
/************************** Function Prototypes ******************************/
/*****************************************************************************/

/* Device Initialization */
int xScuGicInit(void);


/* Interrupt configuration */
int addTtc0ToInterruptSystem(uint32_t p_Xttc0Inst);
int addUart1ToInterruptSystem(uint32_t p_XUartPsInst);
int addPmodAcl_Intr1ToInterruptSystem(void);
int addDMAToInterruptSystem(uint32_t p_DMAInst);

int addWarningsToInterruptSystem();
void BinFullIntrHandler();
void PrematurePixelDoneIntrHandler();
void BinWrittenButNeverReadIntrHandler();
void FifoOverflowIntrHandler();
int addFrameToInterruptSystem();

/* Interface functions */
void enableInterrupts(void);
void disableInterrupts(void);


#endif /* SRC_INTR_SYS_H_ */
