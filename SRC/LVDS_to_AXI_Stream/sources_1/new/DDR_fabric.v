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


module DDR_fabric
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
    output wire [63:0] tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TVALID" *)
    output wire tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TLAST" *)
    output wire tlast,
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


reg pos_tvalid;
reg neg_tvalid;
   
reg pos_tlast;
reg neg_tlast;
    
reg [31:0] posedge_Qs;  //temporary, unstable shift registers for clocking in the data at half the DDR clock
reg [31:0] negedge_Qs;

//reg [1:0] pos_tvalid_high_counter; // used for keeping tvalid and tlast high for 2 DDR cycles
//reg [1:0] neg_tvalid_high_counter; // used for keeping tvalid and tlast high for 2 DDR cycles

reg [PACKET_COUNTER_WIDTH-1:0] pos_packet_counter;  //for the tlast signal
//reg [PACKET_COUNTER_WIDTH-1:0] neg_packet_counter;  //for the tlast signal

reg posedge_first;
reg negedge_first;

reg [COUNTER_WIDTH-1:0] pos_bit_counter;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result
reg [COUNTER_WIDTH-1:0] neg_bit_counter;  //for counting to message_length in one photon event: x bits for refindex and y bits for stop result


wire [63:0] tdata_posedge_first;
wire [63:0] tdata_negedge_first;


reg mux_select_pos;  //steers a multiplexer which determines which data are present on the tdata line
reg mux_select_neg;

reg [63:0] pos_tdata_latched; // since the pos_tdata is always changing we have to latch it at the right time so that the presented result is stable
reg [63:0] neg_tdata_latched;

reg pos_reset_packet_counter;  //reset signal sent by the posedge logic for reseting the packet counter
reg neg_reset_packet_counter;

reg pos_reset_bit_counter;      // reset signal sent by the posedge logic for resetting the bit_counter
reg neg_reset_bit_counter;  

//reg previous_enable_pos;
//reg previous_enable_neg;

always @(posedge C, negedge aresetn) begin
//register a new posedge bit into a unstable register
        if (!aresetn) begin
            //previous_enable_pos <= 0;
            posedge_Qs <= 32'b0;
            pos_tvalid <= 1'b0;
            pos_tlast <= 1'b0;
            pos_packet_counter <= 0;
            posedge_first <= 1'b0;
            pos_bit_counter <= 0;
            //pos_tvalid_high_counter <=0; //3'b1;
            mux_select_pos <= 1'b0;
            pos_tdata_latched <= 0;
            pos_reset_packet_counter <= 1'b0;
            pos_reset_bit_counter <= 0; 

        end
        else begin
        
                // the posedge logic will gate the negedge logic so that the fifo has time to have a tsetup:
        
            if (neg_tvalid) begin
                pos_packet_counter <= pos_packet_counter +1;
                pos_tvalid <= 1;
                pos_tdata_latched <= neg_tdata_latched;
                mux_select_pos <= 1;
                                //logic for setting the tlast signal
                if ((pos_packet_counter) == (NUM_PACKETS-1)) begin
                    pos_tlast <= 1'b1;
                    //pos_reset_packet_counter <= 1'b1;
                    pos_packet_counter <= 0;
                    end
                
                
                end
            if (neg_tlast) begin
                pos_tlast <= 1;
                end 
        
        /*
            previous_enable_pos <= en;
            if ((load_msgl)begin //we have detected a positive edge of the enable signal
                        pos_bit_counter <= msglen;  // reag the message length register again
            end
        */
             if (neg_reset_bit_counter)begin  //the negative clock logic is ordering us to reset our bit counter
                pos_bit_counter <= 0;
                posedge_Qs <= 0;
             end
            if (F&~negedge_first) begin
                posedge_first <= 1'b1;  // the frame bit was asserted on a posedge
                end

            if (F | posedge_first | negedge_first )begin   
            posedge_Qs <= {posedge_Qs[30:0], D};  //shift data into shift reg
            pos_bit_counter <= pos_bit_counter + 1'b1;
            end
            if (neg_reset_bit_counter & F)begin  // were supposed to reset out bit counter, but if there is a new frame waiting, we have to register the signal on the Data line
                pos_bit_counter <= 1;
                posedge_Qs <= 0;
                posedge_Qs[0] <= D;
            end
            
            
            pos_reset_packet_counter <= 1'b0;
            pos_reset_bit_counter <= 0; 
            if (((pos_bit_counter == (msglen/2)) & posedge_first)) begin  //if we started on a posedge, this is the time when the whole frame of data is shifted in already
                if (~F) begin
                    posedge_Qs <= 0; //there is no new frame waiting, so we clear the unstable_register
                    pos_reset_bit_counter <= 1; 
                    posedge_first <= 1'b0;  
 

                end
                if (F) begin  //there is a new frame already coming in, so we clear the unstable register but shift the D signal in already
                                posedge_Qs <= posedge_Qs & {31'b0, 1'b1};  //clear all bit the LSB
                                posedge_Qs[0] <= D;
                                //posedge_Qs[0] <= 1'b0;
                end
                //hand the zipped long data word and the tvalid, tlast signals over to the axis output
                mux_select_pos <= 1'b1;  
                pos_tvalid <= 1'b1;
                pos_packet_counter <= pos_packet_counter +1;
                pos_tdata_latched <= tdata_posedge_first;
                pos_bit_counter <= F? 1:0;
                
                //logic for setting the tlast signal
                if ((pos_packet_counter) == (NUM_PACKETS-1)) begin
                    pos_tlast <= 1'b1;
                    //pos_reset_packet_counter <= 1'b1;
                    pos_packet_counter <= 0;
                    end

    
             end

             if (neg_reset_packet_counter == 1'b1) begin
                        pos_packet_counter <= 0;
             end
             
             //did the negedge logic start a transfer? then delete whatever you had in your unstable shift register and start shifting in data now
            //copythis
             //if (((neg_bit_counter == ((1)) & negedge_first))) begin
              if (((pos_bit_counter == (msglen/2) & negedge_first))) begin

                                posedge_Qs <= posedge_Qs & {31'b0, 1'b1};  //clear all bit the LSB
                                posedge_Qs[0] <= D;
                                pos_bit_counter <= 1;

             end
             //ensure tvalid and tlast are high for the correct amount of time for the axis interface
             if (pos_tvalid)begin
                pos_tvalid <= 0;
                pos_tlast <= 0;
                mux_select_pos <= 0;
             /*
                if (pos_tvalid_high_counter != (CLOCKRATIO-1))
                    pos_tvalid_high_counter <= pos_tvalid_high_counter + 1'b1;
                else begin
                    pos_tvalid_high_counter <= 0;
                    pos_tvalid <= 1'b0;
                    pos_tlast <= 1'b0;
                    mux_select_pos <= 1'b0;
                end
                */
            end

        end  
end

always @(negedge C, negedge aresetn) begin
//register a new posedge bit into a unstable register
        if (!aresetn) begin
           // previous_enable_neg <= 0;
            negedge_Qs <= 32'b0;
            neg_tvalid <= 1'b0;
            neg_tlast <= 1'b0;
            //neg_packet_counter <= 0;
            negedge_first <= 1'b0;
            neg_bit_counter <= 0;
            //neg_tvalid_high_counter <= 0;
            mux_select_neg <= 1'b0;
            neg_tdata_latched <= 0;
            neg_reset_packet_counter <= 1'b0;
            neg_reset_bit_counter <= 0;
            

        end
        else begin
        

        
        
        
        /*
            previous_enable_neg <= en;
            if ((~previous_enable_neg) & en)begin //we have detected a positive edge of the enable signal
                        neg_bit_counter <= msglen;  // read the message length register again
            end
        
        */
             if (pos_reset_bit_counter)begin
                neg_bit_counter <= 0;
                negedge_Qs <= 0;
             end
        
        
            if (F&~posedge_first) begin
                negedge_first <= 1'b1;  // the frame bit was asserted on a posedge
                end
               
            if ((F | posedge_first | negedge_first ))begin   
                        negedge_Qs <= {negedge_Qs[30:0], D};  //shift data into shift reg
                        neg_bit_counter <= neg_bit_counter +1'b1;
            end
            if (pos_reset_bit_counter & F)begin
                neg_bit_counter <= 1;
                negedge_Qs <= 0;
                negedge_Qs[0] <= D;
            end
            neg_reset_packet_counter <= 1'b0;
            neg_reset_bit_counter <= 0;
            if ((neg_bit_counter == (msglen/2)) & negedge_first) begin  //if we started on a negedge and are now finished
                if (~F) begin
                    negedge_Qs <= 0; 
                    neg_reset_bit_counter <= 1;  //reset the bit counter of the posedge logic as well
                    negedge_Qs[0] <= 1'b0; 
                    if (~F) negedge_first <= 1'b0;  

                end
                if (F) begin
                                negedge_Qs <= negedge_Qs & {31'b0, 1'b1};  //clear all bit the LSB
                                negedge_Qs[0] <= D;
                                //negedge_Qs[0] <= 1'b0;
                end
                //mux_select_neg <= 1'b1;
                neg_tvalid <= 1'b1;
                //neg_packet_counter <= neg_packet_counter +1;

                neg_bit_counter <= F? 1:0;
                

                neg_tdata_latched <= tdata_negedge_first;
                /*
                if ((pos_packet_counter + neg_packet_counter) == (NUM_PACKETS-1)) begin
                    neg_tlast <= 1'b1;
                    neg_packet_counter <= 0;
                    neg_reset_packet_counter <= 1'b1;
                    end
*/
             end
             

             
             //if (pos_reset_packet_counter == 1'b1) begin
              //          neg_packet_counter <= 0;
             //end
            //copythis
            //if (((pos_bit_counter == ((1)) & posedge_first))) begin
            if (((neg_bit_counter == (msglen/2) & posedge_first))) begin
                negedge_Qs <= negedge_Qs & {31'b0, 1'b1};  //clear all bit the LSB
                negedge_Qs[0] <= D;
                neg_bit_counter <= 1;//copythis

             end
             //ensure tvalid and tlast are high for the correct amount of time
             if (neg_tvalid)begin
                neg_tvalid <= 0;
                //mux_select_neg <= 1'b0;
                neg_tlast <= 1'b0;


                /*
                if (neg_tvalid_high_counter != (CLOCKRATIO-1))
                    neg_tvalid_high_counter <= neg_tvalid_high_counter + 1'b1;
                else begin
                    neg_tvalid_high_counter <= 0;
                    neg_tvalid <= 1'b0;
                    neg_tlast <= 1'b0;
                    mux_select_neg <= 1'b0;
                end
                */
            end
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

assign tdata = (mux_select_pos)? pos_tdata_latched:
               (mux_select_neg)? neg_tdata_latched:
               64'b0;
assign tvalid = (mux_select_pos)? pos_tvalid:
               (mux_select_neg)? neg_tvalid:
               1'b0;
assign tlast = (mux_select_pos)? pos_tlast:
               (mux_select_neg)? neg_tlast:
               1'b0;
               
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