`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 17:02:19
// Design Name: 
// Module Name: clock_in
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


module lvds_input(
    input wire clk_in,        // Input clock signal
    //input wire reset,         // Reset signal
    input wire diff_p,    // Positive LVDS clock output
    input wire diff_n,     // Negative LVDS clock output
    output wire single_ended_output
    );
    
IBUFDS #(
   .DIFF_TERM("TRUE"),       // Differential Termination
   .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
   .IOSTANDARD("LVDS_25")     // Specify the output I/O standard  LVDS_25
) IBUFDS_inst (
   .O(single_ended_output),  // Buffer output
   .I(diff_p),  // Diff_p buffer input (connect directly to top-level port)
   .IB(diff_n) // Diff_n buffer input (connect directly to top-level port)
);
    
    
endmodule
