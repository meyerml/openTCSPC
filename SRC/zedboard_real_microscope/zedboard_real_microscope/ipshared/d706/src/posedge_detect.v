`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  can detect a posedge of a signal and turn it into a pulse of exactly one clock cycle on detect_out
//  detect_out output pulse only happens when edge_valid is high during the posedge of edge_in
//////////////////////////////////////////////////////////////////////////////////


module posedge_detect(
    input clk,
    input aresetn,
    input edge_in,
    input edge_valid,
    output reg detect_out
    
    );
    
    reg very_very_old, very_old, old;
    reg edge_valid_old, edge_valid_very_old;
    
    always@(posedge clk or negedge aresetn)begin
        if (!aresetn) begin
            detect_out <= 0;
            old <= 0;
            very_old <= 0;
            edge_valid_old <= 0;
            edge_valid_very_old <= 0;
            end
        else begin
            edge_valid_old <= edge_valid;
            edge_valid_very_old <= edge_valid_old;
            old <= edge_in;  //this signal might be metastable, depending on when edge_in has changed
            very_old <= old;  // this signal is synchronised, no metastable states
            very_very_old <= very_old;  //also stable
            if ((very_old &!very_very_old) & edge_valid_very_old)
                detect_out <= 1;
            else detect_out <= 0;
        end
    end
    
endmodule
