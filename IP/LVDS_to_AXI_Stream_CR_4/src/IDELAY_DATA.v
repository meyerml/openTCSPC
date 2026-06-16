`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 13:16:44
// Design Name: 
// Module Name: IDELAY
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IDELAY_DATA(
    input IDATAIN,
    input C,
    input [4:0] CNTVALUEIN,
    input LD,
    
    //output [4:0] CNTVALUEOUT,
    output DATAOUT
    );
    
    
// IDELAYE2: Input Fixed or Variable Delay Element
//           7 Series
// Xilinx HDL Language Template, version 2025.1

//(* IODELAY_GROUP = iodelay_group_name_ben *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL

IDELAYE2 #(
   .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
   .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
   .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
   .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
   .IDELAY_VALUE(13),                // Input delay tap setting (0-31)
   .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
   .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
   .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
)
IDELAYE2_inst (
   .DATAOUT(DATAOUT),         // 1-bit output: Delayed data output
   .IDATAIN(IDATAIN),         // 1-bit input: Data input from the I/O
   .C(C),                     // 1-bit input: Clock input
   .CNTVALUEIN(CNTVALUEIN),   // 5-bit input: Counter value input
   .LD(LD)                   // 1-bit input: Load IDELAY_VALUE input
   //.CNTVALUEOUT(CNTVALUEOUT) // 5-bit output: Counter value output
);

// End of IDELAYE2_inst instantiation

    
    
endmodule
