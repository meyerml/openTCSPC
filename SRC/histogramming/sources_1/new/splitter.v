//TODO: add possibility to reject refindices smaller than a min, larger than a max value

module splitter (
    input wire en,
    input wire clk,
    input wire aresetn,
    input wire [5:0] REFINDEX_BITS,
    input wire [5:0] STOPRESULT_BITS,
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
    
    
    //the axi stream going to the comparators
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_STOPRESULT TDATA" *)
    output reg [63:0] tdata_out_stopresult,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_STOPRESULT TVALID" *)
    output reg tvalid_out_stopresult,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_STOPRESULT TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    input wire tready_out_stopresult,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_STOPRESULT TLAST" *)
    output reg tlast_out_stopresult,
    
    
    
        //the axi stream going to the comparators
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_REFINDEX TDATA" *)
    output reg [63:0] tdata_out_refindex,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_REFINDEX TVALID" *)
    output reg tvalid_out_refindex,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_REFINDEX TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    input wire tready_out_refindex,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT_REFINDEX TLAST" *)
    output reg tlast_out_refindex
    
);

    reg [5:0] REFINDEX_BITS_r;
    reg [5:0] STOPRESULT_BITS_r;

    always @(posedge clk, negedge aresetn) begin
        if (!aresetn) begin
            tready_in <= 1;
            tdata_out_refindex <= 0;
            tvalid_out_refindex <= 0;
            tlast_out_refindex <= 0;
            tlast_out_stopresult <= 0;
            tvalid_out_stopresult <= 0;
            tdata_out_stopresult <= 0;
            
        end else begin
            REFINDEX_BITS_r <= REFINDEX_BITS;
            STOPRESULT_BITS_r <= STOPRESULT_BITS;

            // Calculate the mask and shift for STOPRESULT_BITS
            tdata_out_refindex <= (tdata_in >> STOPRESULT_BITS_r) & ((1 << REFINDEX_BITS_r) - 1);
            // Calculate the mask for REFINDEX_BITS
            tdata_out_stopresult <= tdata_in & ((1 << STOPRESULT_BITS_r) - 1);

            tvalid_out_stopresult <= tvalid_in;
            tvalid_out_refindex <= tvalid_in;
            tlast_out_stopresult <= tlast_in;
            tlast_out_refindex <= tlast_in;
        end
    end

endmodule
