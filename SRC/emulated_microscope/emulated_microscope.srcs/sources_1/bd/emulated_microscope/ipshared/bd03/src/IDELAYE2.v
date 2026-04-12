`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2026 10:44:28
// Design Name: 
// Module Name: IDELAYE2
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


module IDELAYE2_DATA(
    input wire clk,
    input wire [4:0] CNTVALUEIN,
    input wire LD,
    input wire IDATAIN,
    output wire DATAOUT,
    output wire [4:0] CNTVALUEOUT
    );
    
    
    

//  IDELAYE2   : In order to incorporate this function into the design,
//   Verilog   : the following instance declaration needs to be placed
//  instance   : in the body of the design code.  The instance name
// declaration : (IDELAYE2_inst) and/or the port declarations within the
//    code     : parenthesis may be changed to properly reference and
//             : connect this function to the design.  All inputs
//             : and outputs must be connected.

//  <-----Cut code below this line---->

   // IDELAYE2: Input Fixed or Variable Delay Element
   //           Artix-7
   // Xilinx HDL Language Template, version 2024.2

   //(* IODELAY_GROUP = <iodelay_group_name> *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )
   IDELAYE2_inst (
      .CNTVALUEOUT(CNTVALUEOUT), // 5-bit output: Counter value output
      .DATAOUT(DATAOUT),         // 1-bit output: Delayed data output
      .C(clk),                     // 1-bit input: Clock input
      .CE(0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(CNTVALUEIN),   // 5-bit input: Counter value input
      .DATAIN(0),           // 1-bit input: Internal delay data input
      .IDATAIN(IDATAIN),         // 1-bit input: Data input from the I/O
      .INC(0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(LD),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(0)            // 1-bit input: Active-high reset tap-delay input
   );

   // End of IDELAYE2_inst instantiation
					
				    
    
    
    
    
    
endmodule



module IDELAYE2_CLOCK(
    input wire clk,
    input wire [4:0] CNTVALUEIN,
    input wire LD,
    input wire IDATAIN,
    output wire DATAOUT,
    output wire [4:0] CNTVALUEOUT
    );
    
    
    

//  IDELAYE2   : In order to incorporate this function into the design,
//   Verilog   : the following instance declaration needs to be placed
//  instance   : in the body of the design code.  The instance name
// declaration : (IDELAYE2_inst) and/or the port declarations within the
//    code     : parenthesis may be changed to properly reference and
//             : connect this function to the design.  All inputs
//             : and outputs must be connected.

//  <-----Cut code below this line---->

   // IDELAYE2: Input Fixed or Variable Delay Element
   //           Artix-7
   // Xilinx HDL Language Template, version 2024.2

   //(* IODELAY_GROUP = <iodelay_group_name> *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
   )
   IDELAYE2_inst (
      .CNTVALUEOUT(CNTVALUEOUT), // 5-bit output: Counter value output
      .DATAOUT(DATAOUT),         // 1-bit output: Delayed data output
      .C(clk),                     // 1-bit input: Clock input
      .CE(0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(CNTVALUEIN),   // 5-bit input: Counter value input
      .DATAIN(0),           // 1-bit input: Internal delay data input
      .IDATAIN(IDATAIN),         // 1-bit input: Data input from the I/O
      .INC(0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(LD),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(0)            // 1-bit input: Active-high reset tap-delay input
   );

   // End of IDELAYE2_inst instantiation
					
				    
    
    
    
    
    
endmodule



module IBUFDS_DO(
input wire I, IB,
output wire O, OB

);
// IBUFDS_DIFF_OUT: Differential Input Buffer with Differential Output
//                  7 Series
// Xilinx HDL Language Template, version 2025.2

IBUFDS_DIFF_OUT #(
   .DIFF_TERM("TRUE"),   // Differential Termination, "TRUE"/"FALSE"
   .IBUF_LOW_PWR("FALSE"), // Low power="TRUE", Highest performance="FALSE"
   .IOSTANDARD("LVDS_25") // Specify the input I/O standard
) IBUFDS_DIFF_OUT_inst (
   .O(O),   // Buffer diff_p output
   .OB(OB), // Buffer diff_n output
   .I(I),   // Diff_p buffer input (connect directly to top-level port)
   .IB(IB)  // Diff_n buffer input (connect directly to top-level port)
);

// End of IBUFDS_DIFF_OUT_inst instantiation

endmodule