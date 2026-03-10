module lvds_to_axis_tb;
    // Parameters
    parameter CLK_PERIOD = 20; // Clock period in ns
    parameter MSGLEN = 44;

    // Calculate the number of bits needed
    parameter CNTR_WIDTH = $clog2(MSGLEN);

    // Values we control
    reg [CNTR_WIDTH-1:0] msglen;
    reg clk;
    reg en;
    reg l_clk_in_p;
    reg l_clk_in_n;
    reg frame_p;
    reg frame_n;
    reg sdo_p;
    reg sdo_n;
    //reg tready;
    reg reset;

    // Values the UUT controls
    //wire tvalid;
    //wire [MSGLEN-1:0] tdata;
    //wire tlast;
    wire l_clk_out_p;
    wire l_clk_out_n;
    reg [64-1:0] sdo_data_long;
    reg [MSGLEN-1:0] sdo_data;
    reg [CNTR_WIDTH-1:0] sdo_bit_counter;
    reg start_always_block = 0; // Flag to start the always block
    reg [2:0]frame_counter = '0;
    reg M_AXIS_0_tready = 0;
    wire [63:0] M_AXIS_0_tdata;
    wire M_AXIS_0_tlast;
    wire M_AXIS_0_tvalid;
    wire [31:0] axis_rd_data_count;
    wire [31:0] axis_wr_data_count;
    wire [63:0] debug_axis_before_fifo_tdata;
    wire debug_axis_before_fifo_tlast;
    wire debug_axis_before_fifo_tvalid;
    wire debug_axis_before_fifo_tready;
    wire frame_se;
    wire lclk_se;
    wire sdo_se;
    
    
    LVDS_to_AXIS_wrapper uut(.*);
    
    wire single_ended_frame;
    wire single_ended_l_clk_in;
    wire single_ended_sdo;

    // Clock generation
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk;
    end

    initial begin
        msglen = MSGLEN;

        sdo_bit_counter = MSGLEN-1;
        //sdo_data = {MSGLEN/2{2'b10}};
        sdo_data_long =  48'b000011110000110011001010101010101010110011110000;  //index plus stopresult
        sdo_data = sdo_data_long & {MSGLEN{1'b1}};
        //                   0   F   0   C   C   A   A   A   A   C   F   0
        //f0ccaaaacf0
        #10;
        en = 1;
        //tready = 1;
        reset = 0;
        #20;
        reset = 1;
        #20;
        reset = 0;
        frame_counter = '0;
        #200;
        // Wait for 100 ns before starting the always block
        #10000;
        start_always_block = 1;
        #10000;
        M_AXIS_0_tready = 1;
        #10000;
        M_AXIS_0_tready = 0;
        #10000;
        M_AXIS_0_tready = 1;
    end

    // 
    always @(negedge clk) begin
        if (start_always_block) begin
            sdo_p <= sdo_data[sdo_bit_counter];
            sdo_n <= !sdo_data[sdo_bit_counter];

            if (sdo_bit_counter == MSGLEN-1) begin
                frame_p <= 1;
                frame_n <= 0;

            end else if (sdo_bit_counter == MSGLEN-1-8) begin
                frame_p <= 0;
                frame_n <= 1;
                frame_counter <= frame_counter +1;
                //if ( frame_counter == 4) start_always_block <= '0;
            end

            sdo_bit_counter <= sdo_bit_counter - 1;

            if (sdo_bit_counter == 0) begin
                //sdo_data <= ~sdo_data;
                sdo_data <= sdo_data +1;

                sdo_bit_counter <= MSGLEN -1;
            end
        end
    end

    assign l_clk_in_p = clk;
    assign l_clk_in_n = !clk;
endmodule
