`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 09:24:59
// Design Name: 
// Module Name: IDDR
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


module DDR_fabric
    #(parameter NUM_PACKETS = 256)
    (
    input wire [5:0] msglen,
    input wire aresetn,
    input wire C,
    input wire C_n,
    input wire D,
    input wire F,
    input wire tready,
    output reg [63:0] tdata,
    output reg tvalid,
    output reg tlast
    );

localparam PACKET_COUNTER_WIDTH = $clog2(NUM_PACKETS);
localparam TDATA_WIDTH = 64;
localparam COUNTER_WIDTH = $clog2(TDATA_WIDTH);


   
   
    
reg [31:0] posedge_Qs;
reg [31:0] negedge_Qs;
reg posedge_error;
reg negedge_error;

reg [1:0] pos_tvalid_high_counter; // used for keeping tvalid and tlast high for 2 DDR cycles
reg [1:0] neg_tvalid_high_counter; // used for keeping tvalid and tlast high for 2 DDR cycles

//reg [COUNTER_WIDTH-1:0] count;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result
reg [PACKET_COUNTER_WIDTH-1:0] packet_counter;  //for the tlast signal
reg posedge_first;
reg negedge_first;

reg [COUNTER_WIDTH-1:0] pos_bit_counter;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result
reg [COUNTER_WIDTH-1:0] neg_bit_counter;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result

reg [1:0] pos_tlast_tvalid_counter; // used for keeping tvalid and tlast high for 2 DDR cycles
reg [1:0] neg_tlast_tvalid_counter; // used for keeping tvalid and tlast high for 2 DDR cycles


reg mux_select_pos;  //steers a multiplexer which determines which data are present on the tdata line
reg mux_select_neg;


always_ff @(posedge C, negedge aresetn) begin
//register a new posedge bit into a unstable register
        if (!aresetn) begin
            posedge_Qs <= '0;
            tdata <= '0 ;
            tvalid <= '0;
            tlast <= '0;
            posedge_error <= '0;
            //count <=  msglen - 1'b1;  //the rigister might not be set yet, so use the inputs instead
            packet_counter <= NUM_PACKETS - 1'b1;
            posedge_first <= 1'b0;
            pos_bit_counter <= msglen;
            pos_tvalid_high_counter <= 2'b1;
            

        end
        else begin
            posedge_Qs <= {posedge_Qs[30:0], D};  //shift data into shift reg
            pos_bit_counter <= pos_bit_counter -1'b1;
            if (F&~negedge_first) begin
                posedge_first <= 1'b1;  // the frame bit was asserted on a posedge
                end
            if (pos_bit_counter == '0 & posedge_first) begin  //if we started on a posedge, we must end on a posedge
                mux_select_pos <= 1'b1;
                tvalid <= 1'b1;
                pos_bit_counter <= msglen;
                if (~F) posedge_first = 1'b0;  //has a new transfer already started? if not, reset the posedge_first signal
                if (packet_counter == '0) begin
                    tlast <= 1'b1;
                    packet_counter <= NUM_PACKETS - 1'b1;
                    end
    
             end
             //ensure tvalid and tlast are high for the correct amount of time
             if (tvalid)begin
                if (pos_tvalid_high_counter)
                    pos_tvalid_high_counter <= pos_tvalid_high_counter - '1;
                else begin
                    pos_tvalid_high_counter <= 2'b1;
                    tvalid <= '0;
                    tlast <= '0;
                    mux_select_pos <= '0;
                end
            end
//if frame is high for the first time and block2 has not asserted tvalid yet:
//zip the two unstable registers together into a stable register (tdata)
// assert tvalid  
        end  
/*
always_ff @(posedge C_n, negedge aresetn) begin
//register a new negedge bit into a unstable register
    
end
*/
    end


// Zip the words
zip_words zipper_posedge_first (
    .word1(posedge_Qs),
    .word2(negedge_Qs),
    .result(tdata_posedge_first)
);

// Zip the words
zip_words zipper_negedge_first (
    .word1(negedge_Qs),
    .word2(posedge_Qs),
    .result(tdata_negedge_first)
);

assign tdata = (mux_select_pos)? tdata_posedge_first:
               (mux_select_neg)? tdata_negedge_first:
               '0;
endmodule
              

module zip_words (
    input wire [31:0] word1,  // First 32-bit word
    input wire [31:0] word2,  // Second 32-bit word
    output reg [63:0] result  // Resulting 64-bit word
);
    int i;
    always @(*) begin
        for (i = 0; i < 32; i = i + 1) begin
            result[2*i]   = word1[i];  // Even bits: word1
            result[2*i+1] = word2[i];  // Odd bits: word2
        end
    end
endmodule