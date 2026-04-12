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
    output wire [4:0] CNTVALUEOUT_0,
    output wire [4:0] CNTVALUEOUT_1,
    output wire [4:0] CNTVALUEOUT_2,
    output wire [4:0] CNTVALUEOUT_3,
    output wire [4:0] CNTVALUEOUT_4,
    output wire [4:0] CNTVALUEOUT_5,
    output wire [4:0] CNTVALUEOUT_6,
    output wire [4:0] CNTVALUEOUT_7,
    output wire [4:0] CNTVALUEOUT_8,
    output wire [4:0] CNTVALUEOUT_9

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
                .HIGH_PERFORMANCE_MODE("TRUE"),
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
    assign CNTVALUEOUT_0 = CNTVALUEOUT_array[0]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_1 = CNTVALUEOUT_array[1]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_2 = CNTVALUEOUT_array[2]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_3 = CNTVALUEOUT_array[3]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_4 = CNTVALUEOUT_array[4]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_5 = CNTVALUEOUT_array[5]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_6 = CNTVALUEOUT_array[6]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_7 = CNTVALUEOUT_array[7]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_8 = CNTVALUEOUT_array[8]; // Use the first instance's CNTVALUEOUT
    assign CNTVALUEOUT_9 = CNTVALUEOUT_array[9]; // Use the first instance's CNTVALUEOUT

endmodule
