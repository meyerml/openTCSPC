/*
a daisy chain of identical idelaye2 elements.

they are synchonously loaded with new values

*/

module DelayChain (
    input wire clk,
    input wire refclk_in,
    input wire [4:0] CNTVALUEIN,
    input wire LD,
    output wire refclk_out_delayed,
    output wire [4:0] first_CNTVALUEOUT
);

    wire [9:0] delayed_signals; // Intermediate delayed signals
    wire [4:0] CNTVALUEOUT_array [0:9]; // Array to hold CNTVALUEOUT for all 10 instances
    // Instantiate 10 IDELAYE2 modules
    genvar i;
    generate
        for (i = 0; i < 10; i = i + 1) begin : DELAY_CHAIN
            IDELAYE2 #(
                .CINVCTRL_SEL("FALSE"),
                .DELAY_SRC("DATAIN"),
                .HIGH_PERFORMANCE_MODE("FALSE"),
                .IDELAY_TYPE("VAR_LOAD"),
                .PIPE_SEL("FALSE"),
                .REFCLK_FREQUENCY(200.0),
                .SIGNAL_PATTERN("DATA")
            ) IDELAYE2_inst_i (
                .C(clk),
                .CNTVALUEIN(CNTVALUEIN),
                .DATAIN((i == 0) ? refclk_in : delayed_signals[i-1]),
                .LD(LD),
                .DATAOUT(delayed_signals[i]),
                .CNTVALUEOUT(CNTVALUEOUT_array[i]) // Only connect first instance
            );
        end
    endgenerate

    assign refclk_out_delayed = delayed_signals[9]; // Output of the last delay element
    assign first_CNTVALUEOUT = CNTVALUEOUT_array[0]; // Use the first instance's CNTVALUEOUT
endmodule
