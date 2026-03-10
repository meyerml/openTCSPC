`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2025 18:22:12
// Design Name: 
// Module Name: FSM_template
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


module FSM_template(
    input wire clk,
    input wire aresetn,
    input wire start,
    input wire setup_complete
    
        );

    localparam IDLE             = 0;
    localparam SETUP            = 1;
    localparam ACTIVE           = 2;

    reg [1:0] state_r, state_n;

    reg comb_output;
    reg seq_output_r, seq_output_n;
    
    //sequential outputs: reset logic and FLIPFLOPS
    always @(posedge clk) begin
        state_r           <= state_n;
        seq_output_r          <= seq_output_n;

        if (!aresetn) begin   
            state_r       <= IDLE;
            seq_output_r      <= 1'b0;
        end
    end
    
    //next-state-logic and sequential outputs, combinatorial outputs
    always @(*) begin
        state_n           = state_r;

        // Default output assignments
        comb_output         = 0;  //<default output value, this can be an equation>;
        seq_output_n      = seq_output_r;

        case(state_r)
            IDLE: begin
                comb_output     = 0; //<non-default output>;
    
                if (start) begin
                    state_n       = SETUP;
                end
            end
    
            SETUP: begin
                if (setup_complete) begin
                    seq_output_n      = 1'b1;
    
                    state_n           = ACTIVE;
                end
            end
    
            ACTIVE: begin
                seq_output_n      = 1'b0;
    
                state_n           = IDLE;
            end
        endcase
    end


    `ifndef SYNTHESIS
        reg [255:0] state_r_text;
    
        always @(*) begin
            case(state_r)
                IDLE:   state_r_text            = "IDLE";
                SETUP:  state_r_text            = "SETUP";
                ACTIVE: state_r_text            = "ACTIVE";
            endcase
        end
    `endif






endmodule
