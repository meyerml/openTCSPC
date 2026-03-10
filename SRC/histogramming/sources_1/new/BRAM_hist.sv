`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// signle port ram in BRAM that can hold a histogram
//////////////////////////////////////////////////////////////////////////////////


module BRAM_hist#(
    parameter HIST_BINS = 256,  //how many bins
    parameter BIN_WIDTH = 16,   //how many bits for a bin count
    parameter ADDR_WIDTH = 8    //should be set to log2 of HIST_BINS
)(
    input wire [ADDR_WIDTH-1:0] bram_addr,
    input wire [BIN_WIDTH-1:0] bram_din,
    input wire bram_we,
    output reg [BIN_WIDTH-1:0] bram_dout,
    input wire clk
    );
    
//=======================================================================
    // BRAM 
    //=======================================================================

    (* ram_style = "block" *) reg [BIN_WIDTH-1:0] bram [0:HIST_BINS-1];
        
        
    // Initialize BRAM to all zeros
    integer i;
    initial begin
        for (i = 0; i < HIST_BINS; i = i + 1) begin
            bram[i] = 0;
        end
    end
        
    always @(posedge clk) begin
        // Port A
        if (bram_we)
            bram[bram_addr] <= bram_din;
        bram_dout <= bram[bram_addr];
        
    end    
    
    
endmodule
