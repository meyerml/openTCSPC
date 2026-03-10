module lvds_receiver
    #(parameter TDATA_WIDTH = 64,
      parameter NUM_PACKETS = 256)(
    input clk,
    input l_clk_in,
    //input l_clk_in_n,
    input sdo,
    //input sdo_n,
    input frame,
    //input frame_n,
    input en,
    input aresetn,
    //output l_clk_out,
    //output l_clk_out_n,
    output reg [TDATA_WIDTH - 1:0] tdata,
    
    output reg tvalid,
    output reg error,
    input tready,
    output reg tlast,
    input [5:0] msglen
);
     
    localparam COUNTER_WIDTH = $clog2(TDATA_WIDTH);
    localparam PACKET_COUNTER_WIDTH = $clog2(NUM_PACKETS);

    // Internal signals
    //wire l_clk_in;
    //wire frame;
   // wire sdo;
    reg [5:0] msglen_r;
    reg [1:0] tlast_tvalid_counter; // used for keeping tvalid and tlast high for 2 DDR cycles
    
    reg [TDATA_WIDTH - 1:0] tdata_unstable;  //the tdata that is updated every LVDS clock cycle
    // the tdata has to remain stable while the axi stream logic (slower) reads it.




    //register msglen settings, which are set from the PS
    always_ff @(posedge clk, negedge aresetn)
        if (!aresetn)
            msglen_r <= 44;  //maximum msglen
        else
            msglen_r <= msglen;
    
    /*
    // Input differential buffers
    IBUFDS #(
        .DIFF_TERM("TRUE"),
        .IBUF_LOW_PWR("TRUE"),
        .IOSTANDARD("LVDS_25")
    ) IBUFDS_l_clk (
        .O(l_clk_in),
        .I(l_clk_in_p),
        .IB(l_clk_in_n)
    );

    IBUFDS #(
        .DIFF_TERM("TRUE"),
        .IBUF_LOW_PWR("TRUE"),
        .IOSTANDARD("LVDS_25")
    ) IBUFDS_sdo (
        .O(sdo),
        .I(sdo_p),
        .IB(sdo_n)
    );

    IBUFDS #(
        .DIFF_TERM("TRUE"),
        .IBUF_LOW_PWR("TRUE"),
        .IOSTANDARD("LVDS_25")
    ) IBUFDS_frame (
        .O(frame),
        .I(frame_p),
        .IB(frame_n)
    );

    */

    // State machine
    reg [COUNTER_WIDTH-1:0] count;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result
    reg [PACKET_COUNTER_WIDTH-1:0] packet_counter;  //for the tlast signal

    import states::*;
    state_e state, next;



    //double the data rate clock: taken from https://electronics.stackexchange.com/questions/403343/at-both-posedge-and-negedge-in-verilog
    
    reg r_clk50=0;
    wire ddr_clk;
    //wire ddr_clock_clone;
    reg half_ddr=0;
    
    assign ddr_clk = (r_clk50 ^ l_clk_in);

    always_ff @(posedge ddr_clk)
    begin
        r_clk50=~r_clk50;
    end
       //ddr_clock_clone = ~ddr_clock_clone
    //assign ddr_clock_clone = ddr_clk;

    // State transition logic
    always_ff @(posedge ddr_clk, negedge aresetn)
        if (!aresetn)
            state <= IDLE;
        else
            state <= next;

    // Next state logic 
    always_comb begin
        next = XX;
        case (state)
            IDLE: if (frame)
                        next = REGISTER;
                else
                        next = IDLE;
            REGISTER: if (count == msglen_r -1 && !frame)  //if we have completed a photon transfer and no new photon awaits
                        next = IDLE;
                else    next = REGISTER;
            default: next = XX;
        endcase
    end




    // your code on both neg/pos

    // Output logic posedge
    always_ff @(posedge ddr_clk, negedge aresetn)
        if (!aresetn) begin
            tdata_unstable <= '0;
            tdata <= '0 ;
            tvalid <= '0;
            tlast <= '0;
            error <= '0;
            tlast_tvalid_counter <= '0;
            count <=  msglen - 1'b1;  //the rigister might not be set yet, so use the inputs instead
            packet_counter <= NUM_PACKETS - 1'b1;

        end
        else begin
            if (tvalid == 1'b1) begin
                if (tlast_tvalid_counter == 2'b1) begin
                    tvalid <= '0;
                    tlast <= '0;
                    tlast_tvalid_counter <= 2'b0;
                end else begin
                    tlast_tvalid_counter += 1'b1;
                end
            end 
            half_ddr=~half_ddr;

            case (next)
                IDLE: count <= msglen_r-1'b1;
                
                REGISTER: begin
                    count <= count - 1'b1;
                    tdata_unstable[count] <= sdo;

                    if ((count==0) && tready) begin
                        tvalid <= '1;
                        tdata <= tdata_unstable;  //register the tdata 
                        tdata[count] <=sdo;  // dont miss the final bit

                        count <= msglen_r - 1;
                        packet_counter <= packet_counter -1'b1;
                        if (packet_counter == 0) begin
                            tlast <= 1'b1;
                            packet_counter <= NUM_PACKETS - 1'b1;
                            end
                        end
                    else if ((count == 0) && !tready) begin
                        error <= 1'b1;
                        count <= msglen_r - 1;

                        end
                end
            
            

            endcase
        end

endmodule

                    

