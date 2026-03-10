module tb_lvds_master;
    // Parameters
    parameter CLK_PERIOD = 20; // Clock period in ns
    parameter MSGLEN = 16;

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
    reg tready;
    reg aresetn;

    // Values the UUT controls
    wire tvalid;
    wire [MSGLEN-1:0] tdata;
    wire tlast;
    wire l_clk_out_p;
    wire l_clk_out_n;

    reg [MSGLEN-1:0] sdo_data;
    reg [CNTR_WIDTH-1:0] sdo_bit_counter;
    reg start_always_block = 0; // Flag to start the always block
    reg [2:0]frame_counter = '0;

    lvds_master #( .MSGLEN(MSGLEN)) uut(.*);

    // Clock generation
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk;
    end

    initial begin
        sdo_bit_counter = MSGLEN-1;
        sdo_data = {MSGLEN/2{2'b10}};
        #10;
        en = 1;
        tready = 1;
        aresetn = 1;
        #20;
        aresetn = 0;
        #20;
        aresetn = 1;
        frame_counter = '0;

        // Wait for 100 ns before starting the always block
        #100;
        start_always_block = 1;
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
                if ( frame_counter == 4) start_always_block <= '0;
            end

            sdo_bit_counter <= sdo_bit_counter - 1;

            if (sdo_bit_counter == 0) begin
                sdo_data <= ~sdo_data;
                //sdo_data <= sdo_data;

                sdo_bit_counter <= MSGLEN -1;
            end
        end
    end

    assign l_clk_in_p = clk;
    assign l_clk_in_n = !clk;
endmodule
