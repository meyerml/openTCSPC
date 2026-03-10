`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  input: an axi stream transaction corresponding to a detected photon
//  output: the bin number of a histogram which has to be increased due to this new detected photon
//
//  sorts the incoming 64-bit words into the correct bin, hence the name sorter
// 
//////////////////////////////////////////////////////////////////////////////////




module sorter  
                    (
    input wire en,
    input wire clk,
    input wire aresetn,
    input wire [15:0] log_2_BIN_WIDTH,  //how wide should the bins of the histogram be?
    //by restricting the bin width to a power of 2, the number of the bin to sort the sample into becomes just the stopresult shifted to the right by log_2(BIN_WIDTH)
    
    input wire [5:0] REFINDEX_BITS,  //how many bits of an incoming 64-bit word are for the reference index of the laser pulse
    input wire [5:0] STOPRESULT_BITS,  //how many bits of an incoming 64-bit word are for the stopresult


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
    

    reg [15:0] log_2_BIN_WIDTH_r;
    reg [63:0] refindex;
    reg [63:0] stopresult;
    reg [63:0] tdata_out_candidate;
    reg tvalid_delayed;
    reg [5:0] REFINDEX_BITS_r;
    reg [5:0] STOPRESULT_BITS_r;
    
    
    always @(posedge clk, negedge aresetn) begin
            if (!aresetn) begin
                    tdata_out <= 0;
                    tvalid_out <= 0;
                    tlast_out <= 0;
                    tready_in <= 1;
                    tvalid_delayed <= 0;
                    end
            else begin

                if (en) begin
                    //save the software parameters. these should be set and stable before en is put high by the software
                    REFINDEX_BITS_r <= REFINDEX_BITS;
                    STOPRESULT_BITS_r <= STOPRESULT_BITS;  
                    log_2_BIN_WIDTH_r <= log_2_BIN_WIDTH; // register the amount of right shifts we need

                    // Calculate extract the refindex of the 64-bit word, even though it is not needed
                    refindex <= (tdata_in >> STOPRESULT_BITS_r) & ((1 << REFINDEX_BITS_r) - 1);
                    // in a similar manner, extract the stopresult from the 64-bit word and already shift it right by the amount needed
                    tdata_out <= (tdata_in & ((1 << STOPRESULT_BITS_r) - 1)) >> log_2_BIN_WIDTH_r;
                    tvalid_out <= tvalid_in;
            end
        end
    end
endmodule
