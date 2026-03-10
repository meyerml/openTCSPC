`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2025 12:20:58
// Design Name: 
// Module Name: comparators
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


module sync_pixel_static_threshold
                    (
    input wire en,
    input wire clk,
    input wire aresetn,
    output reg pixel_done,
    input [63:0] pulses_per_pixel,
    input [63:0] photons_per_pixel,
    input posedge_pixel_clk,

   // input wire count_photons_not_pulses,     //0: constant number of laser pulses per pixel
                         //1: constant number of detected photon per pixel
    //this should be taken care of by a separate splitter module before the comparators
    //input stopdata_len,  //how many bits of the incoming tdata are for the stopdata result?
    //input refindex_len  //how many bits of the incoming tdata are for the refindex_result?

    //the axi stream coming from the LVDS interface
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *)
    input wire [63:0] tdata_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *)
    input wire tvalid_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    output reg tready_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *)
    input wire tlast_in
    
    

    );
    
/*on every clock cycle: 
        if we get a new AXIS transfer:
                compare this to (NUM_BINS + 1) comparators.
                
                the outputs of the comparators are logically connected to see the edge where comparators start to return 0
                if we have multiple of these: error
                
                if we have none of these: add an additional bin for out-of-range-error
    
    */
    reg [63:0] photons_per_pixel_r;
    reg [64:0] last_pulse_of_pixel_r;
    reg seen_a_photon;
    reg [63:0] triggering_index;
    reg [63:0] pixel_counter;
    //reg [63:0] target_r;


    reg [32:0] photon_counter;  //maybe we want to have X detected photons per pixel?
    always @(posedge clk, negedge aresetn) begin
            if (!aresetn) begin
                    pixel_done <= 0;
                    tready_in <= 1;
                    photons_per_pixel_r <= 0;
                    photon_counter <= 0;
                    seen_a_photon <= 0;
                    pixel_counter <= 0;
                    end
            else begin
                
                photons_per_pixel_r <= photons_per_pixel;
                last_pulse_of_pixel_r <= pulses_per_pixel;

                
                //target_r <= mode?photons_per_pixel:pulses_per_pixel;
                // if the bin width is a power of 2, the number of the bin to sort the sample in is just the stopresult
                // to the right by log_2(BIN_WIDTH)
                
                //pixel_done <= 0;
                /*
                if (count_photons_not_pulses) begin

                    if (tvalid_in) begin
                        photon_counter <= photon_counter +1;  //
                        if (photon_counter >=(photons_per_pixel-1)) begin
                            photon_counter <= 0;
                            pixel_done <= 1;
                            end
                        end
                    end
                    
                    if (posedge_pixel_clk) begin
                        photon_counter <= 0;
                        pixel_counter <= pixel_counter +1;
                        
                        end
                        
*/     
                 // begin
                    if(tvalid_in) begin
                            photon_counter <= photon_counter + 1;

                            if(tdata_in >=last_pulse_of_pixel_r) begin
                                pixel_done<= 1;
                                triggering_index <= tdata_in;
                                end
                            if (tdata_in < triggering_index) begin
                                triggering_index <= 0;
                                pixel_done <= 0;
                                end
                            end
                        
                    end
                end
                
        //end
    
        
    
    
endmodule
