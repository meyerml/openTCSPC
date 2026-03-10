`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 09:24:59
// Design Name: 
// Module Name: IDDR
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


module IDDR_module(
    input wire C,
    input wire D,
    output wire Q1,
    output wire Q2
    );
    
    
//      IDDR     : In order to incorporate this function into the design,
//     Verilog   : the following instance declaration needs to be placed
//    instance   : in the body of the design code.  The instance name
//   declaration : (IDDR_inst) and/or the port declarations within the
//      code     : parenthesis may be changed to properly reference and
//               : connect this function to the design.  Delete or comment
//               : out inputs/outs that are not necessary.

//  <-----Cut code below this line---->

   // IDDR: Input Double Data Rate Input Register with Set, Reset
   //       and Clock Enable.
   //       Artix-7
   // Xilinx HDL Language Template, version 2024.2
   reg R = 1'b0;
   reg S = 1'b0;
   reg CE = 1'b1;
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst (
      .Q1(Q1), // 1-bit output for positive edge of clock
      .Q2(Q2), // 1-bit output for negative edge of clock
      .C(C),   // 1-bit clock input
      .CE(CE), // 1-bit clock enable input
      .D(D),   // 1-bit DDR data input
      .R(R),   // 1-bit reset
      .S(S)    // 1-bit set
   );

   // End of IDDR_inst instantiation
			
    
    
    
endmodule
