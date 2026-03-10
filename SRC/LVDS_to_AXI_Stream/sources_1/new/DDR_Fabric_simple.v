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
//           this is an attempt to create a DDR LVDS module that consists of two always_ff - blocks
//              i believe having two always-ff blocks is inherently messy, which is why this module is such a mess.
//          it has been patched until it worked, but has not really been designed with a state machine in mind
//          alternatives to this approach would have been:
//          have a clock twice as fast as the LVDS clck, which can then trigger logic on the posedge only
//          this has the downside that it requires a very fast clock on the fpga: 500 Mhz for 250 MHz of LVDS clock rate
//          using IDDR blocks: there is only one IDDR block per input pin, so i would need very many of these for the DDR register
//          it would still need the zipping action in the end, so it would be equally chaotic.

//          this module works as follows:
//          each always-block checks wether it is the first to notice that a new frame of data is arriving.
//          they also shift their shift registers in and sample the data line if a frame of data is coming in
//          
//          in the end, bot these shift registers are "zipped" in the right priority and the resulting long word is asserted in the axis protocol.

//          currently there is no procedure in place for checking if tready is low.
//          if the axis receiver is not ready, it will simply miss this message, which is okay
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DDR_fabric_simple
    #(parameter NUM_PACKETS = 256,
      parameter CLOCKRATIO = 4)
    (

    input wire [5:0] msglen,
    //input wire [2:0] clockratio,
    input wire aresetn,
    //input wire axis_clk,
    input wire C,
    input wire D,
    input wire F,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)

    input wire tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *)
    output reg [63:0] tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TVALID" *)
    output reg tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TLAST" *)
    output reg tlast,
    //input wire en,  //the enable signal, used for knowing when to read the msglen register again
    //input wire load_msglen,  //used for knowing when to read the msglen register again
    //debug
    output wire [6-1:0] pos_bit_counter_debug,
    output wire posedge_first_debug,
    output wire [31:0] posedge_Qs_debug,
    output wire mux_select_pos_debug,
    output wire pos_reset_bit_counter_debug,
    output wire [63:0] pos_tdata_latched_debug,
    output wire [63:0] tdata_posedge_first_debug,
    
    output wire [6-1:0] neg_bit_counter_debug,
    output wire negedge_first_debug,
    output wire [31:0] negedge_Qs_debug,
    output wire mux_select_neg_debug,
    output wire neg_reset_bit_counter_debug,
    output wire [63:0] neg_tdata_latched_debug,
    output wire [63:0] tdata_negedge_first_debug,
    
    
    output wire D_debug,
    output wire F_debug,
    output wire C_debug
   // output wire tvalid_debug,
  //  output wire tlast_debug,
   // output wire [63:0] tdata_debug
    
    );

localparam PACKET_COUNTER_WIDTH = $clog2(NUM_PACKETS);
localparam TDATA_WIDTH = 64;
localparam COUNTER_WIDTH = $clog2(TDATA_WIDTH);


reg neg_tvalid;
   
reg pos_tlast;
reg neg_tlast;
    
reg [31:0] posedge_Qs;  //temporary, unstable shift registers for clocking in the data at half the DDR clock
reg [31:0] negedge_Qs;

//reg [1:0] pos_tvalid_high_counter; // used for keeping tvalid and tlast high for 2 DDR cycles
//reg [1:0] neg_tvalid_high_counter; // used for keeping tvalid and tlast high for 2 DDR cycles

reg [PACKET_COUNTER_WIDTH-1:0] packet_counter;  //for the tlast signal
//reg [PACKET_COUNTER_WIDTH-1:0] neg_packet_counter;  //for the tlast signal

reg posedge_first;
reg negedge_first;

reg [COUNTER_WIDTH-1:0] pos_bit_counter;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result
reg [COUNTER_WIDTH-1:0] neg_bit_counter;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result


wire [63:0] tdata_posedge_first;
wire [63:0] tdata_negedge_first;


reg [63:0] tdata_posedge_first_synchronised;
reg [63:0] tdata_negedge_first_synchronised;




reg mux_select_pos;  //steers a multiplexer which determines which data are present on the tdata line
reg mux_select_neg;

reg [63:0] pos_tdata_latched; // since the pos_tdata is always changing we have to latch it at the right time so that the presented result is stable
reg [63:0] neg_tdata_latched;

reg pos_reset_packet_counter;  //reset signal sent by the posedge logic for reseting the packet counter
reg neg_reset_packet_counter;

reg pos_reset_bit_counter;      // reset signal sent by the posedge logic for resetting the bit_counter
reg neg_reset_bit_counter;  

reg neg_tvalid_synchronised;
reg negedge_first_synchronised;
reg [63:0] neg_tdata_latched_delayed;
reg negedge_first_synchronised_delayed;
reg posedge_first_synchronised;

reg F_synchronised_posedge;
reg D_synchronised_posedge;

reg F_synchronised_negedge;
reg D_synchronised_negedge;

reg posedge_first_delayed;
reg negedge_first_delayed;

wire [63:0] tdata_mask;
//reg previous_enable_pos;
//reg previous_enable_neg;

always @(posedge C, negedge aresetn) begin
//register a new posedge bit into a unstable register
        if (!aresetn) begin
            posedge_Qs <= 32'b0;
            tvalid <= 1'b0;
            tlast <= 1'b0;
            packet_counter <= NUM_PACKETS-1;
            posedge_first <= 1'b0;
            negedge_first <= 1'b0;
            pos_bit_counter <= 0;  //msglen/2; would be nice but is not present at reset yet
            negedge_first_synchronised <= 0;
            neg_tvalid_synchronised <= 0;
            negedge_first_synchronised_delayed <= 0;
            F_synchronised_posedge <= 0;
            D_synchronised_posedge <= 0;
            posedge_first_delayed <= 0;
            tdata_posedge_first_synchronised <= 0;

        end
        else begin           
            posedge_Qs <= {posedge_Qs[30:0], D_synchronised_posedge};  //shift data into shift reg
            negedge_first_synchronised <= negedge_first&!posedge_first_synchronised;
            neg_tvalid_synchronised <= neg_tvalid;
            negedge_first_synchronised_delayed <= negedge_first_synchronised;
            F_synchronised_posedge <= F;
            D_synchronised_posedge <= D;
            posedge_first_delayed <= posedge_first;
            tdata_posedge_first_synchronised <= tdata_posedge_first;
                // the posedge logic will gate the negedge logic so that the fifo has time to have a tsetup. the fifo is sensitive to the posedge of lvds_clock
            if(negedge_first_synchronised_delayed) begin  //this all can only happen if we started on a negedge a long time ago. we want to update the axis interface on the posedge of the lvds_clock
                if (neg_tvalid_synchronised) begin
                    packet_counter <= packet_counter -1;
                    tvalid <= 1;
                    tdata <= neg_tdata_latched&tdata_mask;
                    if ((!packet_counter)) begin
                        tlast <= 1'b1;
                        packet_counter <= NUM_PACKETS-1;
                    end
                end
            end
        

            if (F_synchronised_posedge&!negedge_first) begin  //timing problem:  negedge first is updated in negedge logic, then used here
                posedge_first <= 1'b1;  // the frame bit was asserted on a posedge
            end
            //TODO
            if (F_synchronised_posedge&posedge_first) begin
                pos_bit_counter <= msglen/2-1;
            end
                
            if ( posedge_first_delayed) begin
                pos_bit_counter <= pos_bit_counter -1;
                
                if (!pos_bit_counter) begin
                                    //hand the zipped long data word and the tvalid, tlast signals over to the axis output
                    tvalid <= 1'b1;
                    packet_counter <= packet_counter -1;
                    tdata <= tdata_posedge_first_synchronised&tdata_mask;  //timing problematic: tdata_posedge_first has just changed half a clock cycle before.
                    if (F_synchronised_posedge) begin//new frame already starting?
                        pos_bit_counter <= msglen/2-1; //Timing problem?
                    end
                    else begin
                        pos_bit_counter <= msglen/2;
                        posedge_first<=0;
                    end
                        
                    
                    
                    
                    //logic for setting the tlast signal
                    if ((!packet_counter)) begin
                        tlast <= 1'b1;
                        packet_counter <= NUM_PACKETS-1;
                    end
                end
            end
            

             //ensure tvalid and tlast are high for the correct amount of time for the axis interface
             if (tvalid)begin
                tvalid <= 0;
                tlast <= 0;
             end
         end
end

always @(negedge C, negedge aresetn) begin
        if (!aresetn) begin
            negedge_Qs <= 32'b0;
            //neg_tvalid <= 1'b0;
            //negedge_first <= 1'b0;
            //neg_bit_counter <= 0;
            //neg_tdata_latched <= 0;
            //neg_tdata_latched_delayed <= 0;
            //F_synchronised_negedge <= 0;
            //D_synchronised_negedge <= 0;
            //posedge_first_synchronised <= 0;
            //negedge_first_delayed <= 0;
            //tdata_negedge_first_synchronised <= 0;
        end
        else begin
            F_synchronised_negedge <= F;
            D_synchronised_negedge <= D;
            //posedge_first_synchronised <= posedge_first&!negedge_first_synchronised;
            negedge_Qs <= {negedge_Qs[30:0], D_synchronised_negedge};  //shift data into shift reg
            //negedge_first_delayed <= negedge_first;
            //tdata_negedge_first_synchronised <= tdata_negedge_first;
/*
            //TODO
            if (F_synchronised_negedge&!posedge_first) begin
                negedge_first <= 1'b1;  // the frame bit was asserted on a posedge
            end
            
            if (F_synchronised_negedge&negedge_first) begin
                neg_bit_counter <= msglen/2-1;
            end
            
                
            if (negedge_first_delayed) begin
                neg_bit_counter <= neg_bit_counter -1;
                
                if (!neg_bit_counter) begin
                                    //hand the zipped long data word and the tvalid, tlast signals over to the axis output
                    neg_tvalid <= 1'b1;
                    neg_tdata_latched <= tdata_negedge_first_synchronised;
                    neg_tdata_latched_delayed <= neg_tdata_latched;
                    if (F_synchronised_negedge) begin//new frame already starting?
                        neg_bit_counter <= msglen/2-1; //Timing problem?
                    end
                    else begin
                        neg_bit_counter <= msglen/2;
                        negedge_first<=0;
                    end
                end
            end
            

             //ensure tvalid is high for the correct amount of time for the axis interface
             if (neg_tvalid)begin
                neg_tvalid <= 0;
             end
         end
        
       
*/

    end
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


               
 //begin debug region:
 
 assign pos_bit_counter_debug = pos_bit_counter;              
 assign posedge_first_debug = posedge_first; 
 assign posedge_Qs_debug = posedge_Qs; 
 assign mux_select_pos_debug = mux_select_pos; 
 assign pos_reset_bit_counter_debug = pos_reset_bit_counter;
 assign pos_tdata_latched_debug = pos_tdata_latched;
 assign tdata_posedge_first_debug = tdata_posedge_first;  
 
 assign neg_bit_counter_debug = neg_bit_counter;              
 assign negedge_first_debug = negedge_first; 
 assign negedge_Qs_debug = negedge_Qs; 
 assign mux_select_neg_debug = mux_select_neg; 
 assign neg_reset_bit_counter_debug = neg_reset_bit_counter;
 assign neg_tdata_latched_debug = neg_tdata_latched;
 assign tdata_negedge_first_debug = tdata_negedge_first;  
 
 
 assign D_debug = D;
 assign F_debug = F;
 assign C_debug = C;
 //assign tvalid_debug = tvalid;
 //assign tlast_debug = tlast;
 //assign tdata_debug = tdata;
function [64-1:0] gen_mask(input [64-1:0] X);
    gen_mask = (1 << X) - 1;
endfunction

 
assign tdata_mask = gen_mask(msglen);
 

endmodule
              
//zip the words with msb of word1 becoming the msb of the result
module zip_words (
    input wire [31:0] word1,  // First 32-bit word
    input wire [31:0] word2,  // Second 32-bit word
    output reg [63:0] result  // Resulting 64-bit word
);
    integer i;
    always @(*) begin
        for (i = 0; i < 32; i = i + 1) begin
            result[2*i]   = word2[i];  // Even bits: word2
            result[2*i+1] = word1[i];  // Odd bits: word1
        end
    end
endmodule