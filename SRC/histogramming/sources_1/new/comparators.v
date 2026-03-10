`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2025 12:20:58
// Design Name: 
// Module Name: comparators
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




module comparators  
                    (
    input wire en,
    input wire clk,
    input wire aresetn,
    input wire [15:0] log_2_BIN_WIDTH,
    input wire [5:0] REFINDEX_BITS,
    input wire [5:0] STOPRESULT_BITS,
    input wire [63:0] pulses_per_pixel,
    //this should be taken care of by a separate splitter module before the comparators
    //input stopdata_len,  //how many bits of the incoming tdata are for the stopdata result?
    //input refindex_len  //how many bits of the incoming tdata are for the refindex_result?

    //the axi stream coming from the LVDS interface
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *)
    input wire [63:0] tdata_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *)
    input wire tvalid_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    output reg tready_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *)
    input wire tlast_in,
    
    
    //the axi stream going to the per-pixel bin counters
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *)
    output reg [63:0] tdata_out,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID" *)
    output reg tvalid_out,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    input wire tready_out,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST" *)
    output reg tlast_out
    );
    
/*on every clock cycle: 
        if we get a new AXIS transfer:
                compare this to (NUM_BINS + 1) comparators.
                
                the outputs of the comparators are logically connected to see the edge where comparators start to return 0
                if we have multiple of these: error
                
                if we have none of these: add an additional bin for out-of-range-error
    
    */
    reg [15:0] log_2_BIN_WIDTH_r;
    reg [63:0] refindex;
    reg [63:0] stopresult;
    reg [63:0] tdata_out_candidate;
    reg tvalid_delayed;
    reg [5:0] REFINDEX_BITS_r;
    reg [5:0] STOPRESULT_BITS_r;
    reg [63:0] pulses_per_pixel_r;
    
    
    always @(posedge clk, negedge aresetn) begin
            if (!aresetn) begin
                    tdata_out <= 0;
                    tvalid_out <= 0;
                    tlast_out <= 0;
                    tready_in <= 1;
                    tvalid_delayed <= 0;
                    end
            else begin
                // if the bin width is a power of 2, the number of the bin to sort the sample in is just the stopresult
                // to the right by log_2(BIN_WIDTH)
                if (en) begin
                    
                    REFINDEX_BITS_r <= REFINDEX_BITS;
                    STOPRESULT_BITS_r <= STOPRESULT_BITS;
                    log_2_BIN_WIDTH_r <= log_2_BIN_WIDTH; // register the amount of right shifts we need
                    pulses_per_pixel_r <= pulses_per_pixel;
                    
                    
                    
                                // Calculate the mask and shift for STOPRESULT_BITS
                    refindex <= (tdata_in >> STOPRESULT_BITS_r) & ((1 << REFINDEX_BITS_r) - 1);
                // Calculate the mask for REFINDEX_BITS
                    //stopresult <= tdata_in & ((1 << STOPRESULT_BITS_r) - 1);
                    
                    
                    //sort stopresult into bin: wasy if bin width is power of 2:
                    tdata_out_candidate <= (tdata_in & ((1 << STOPRESULT_BITS_r) - 1)) >> log_2_BIN_WIDTH_r;
                    
                    tvalid_delayed <= tvalid_in;
                    tvalid_out <= 0;
                    if(tvalid_delayed) begin
                        if(refindex <= pulses_per_pixel) begin
                                tvalid_out <= 1;
                                tdata_out <= tdata_out_candidate;
                            end
                    end
                    
    
            end
    
        end
    end
    
endmodule
