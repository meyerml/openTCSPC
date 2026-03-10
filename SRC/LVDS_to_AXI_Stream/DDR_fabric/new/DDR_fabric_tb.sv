`timescale 1ns / 1ps

module DDR_fabric_tb;
    // Parameters
    parameter CLK_PERIOD = 16; // Clock period in ns
    parameter MSGLEN = 44;

    // Calculate the number of bits needed
    parameter CNTR_WIDTH = $clog2(MSGLEN);

    // Values we control
    reg [CNTR_WIDTH-1:0] msglen;
    reg [2:0] clockratio;
    reg clk;
    reg lvds_clk;
    reg ddr_clk;
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
    reg [4:0]frame_counter = '0;
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
    wire Buffer_overflow;
    reg [3:0] negedge_counter;
    reg posedge_on;
    reg negedge_on;

    
    parameter NUM_PACKETS = 16;
    
    
    LVDS_to_AXIS_wrapper #(.NUM_PACKETS(NUM_PACKETS)) uut(.*);
    
    //wire single_ended_frame;
    //wire single_ended_l_clk_in;
    //wire single_ended_sdo;

    // Clock generation
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk;
    end
    
    initial begin
        lvds_clk = 0;
        #(CLK_PERIOD/4);
        #(CLK_PERIOD/4);
        #(CLK_PERIOD/4);
      //  #(CLK_PERIOD/4);

        forever #(CLK_PERIOD/4) lvds_clk = ~lvds_clk;
    end
    
        initial begin
        //#(CLK_PERIOD/4);
        #(CLK_PERIOD/4);
        ddr_clk = 0;

        forever #(CLK_PERIOD/8) ddr_clk = ~ddr_clk;
    end

    initial begin
        msglen = MSGLEN;
        clockratio = 2;
        posedge_on = 1'b1;
        negedge_on = 1'b0;

        sdo_bit_counter = MSGLEN-1;
        //sdo_data = {MSGLEN/2{2'b10}};
        sdo_data_long =  48'b000011110000110011001010101010101010110011110000;  //index plus stopresult
        sdo_data = sdo_data_long & {MSGLEN{1'b1}};
        //                   0   F   0   C   C   A   A   A   A   C   F   0
        //f0ccaaaacf0
        negedge_counter = 0;

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
        //#10000;
        start_always_block = 1;
       // #10000;
        M_AXIS_0_tready = 1;
        #10000;
        //posedge_on= 1'b0;
        #1000;
        negedge_on = 1'b1;
        #704;
        //#1000;
        posedge_on = 1'b1;
        #4930;
        negedge_on = 1'b1;
        #1000;
        //negedge_on = 1'
        //negedge_on = 1'b0;
       // M_AXIS_0_tready = 0;
        //#10000;
       // M_AXIS_0_tready = 1;
        //#10000;
       // M_AXIS_0_tready = 0;
    end

    // todo: this has to be clocked twice as fast to send the correct data!
    always @(negedge ddr_clk) begin
    if (posedge_on) begin
    //always @(posedge l_clk_in_p) begin
        if (start_always_block) begin
            sdo_p <= sdo_data[sdo_bit_counter];
            sdo_n <= !sdo_data[sdo_bit_counter];

            if (sdo_bit_counter == MSGLEN-1) begin
                frame_p <= 1;
                frame_n <= 0;

                //negedge_counter = negedge_counter + 1;


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
            
            if ((sdo_bit_counter == MSGLEN-1)& (frame_counter ==4)) begin
                    posedge_on <= 1'b0;
                    //start_always_block <= '0;
                    frame_p <= 0;
                    frame_n <= 1;
                    sdo_bit_counter <= MSGLEN-1;
            end
        end
        end
    end
    
    
    
    always @(posedge ddr_clk) begin
    if (negedge_on) begin
    //always @(posedge l_clk_in_p) begin
        if (1) begin
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
            
            if ((sdo_bit_counter == MSGLEN-1)& (frame_counter ==8)) begin
                    negedge_on <= 1'b0;
                    //start_always_block <= '0;
                    frame_p <= 0;
                    frame_n <= 1;
                    sdo_bit_counter <= MSGLEN-1;
            end
        end
        end
    end

    assign l_clk_in_p = lvds_clk;
    assign l_clk_in_n = !lvds_clk;
endmodule
