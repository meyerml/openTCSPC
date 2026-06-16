`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// similar to READING_FSM, except instead of writing histograms out to axi stream, it clears all the bins to 0
//////////////////////////////////////////////////////////////////////////////////


module CLEARING_FSM #(
    parameter HIST_BINS,
    parameter BIN_WIDTH,
    parameter ADDR_WIDTH
)(
    input wire clk,
    input wire aresetn,
    input wire en,
    input wire pixel_done,
    
    output reg [ADDR_WIDTH-1:0] bram_addr,
    output reg [BIN_WIDTH-1:0] bram_din,
    output reg bram_we,
    input wire [BIN_WIDTH-1:0] bram_dout,
    
    input wire [14:0] bins_to_read,
    
    output wire IDLE_FLAG
    

    
        );

    localparam IDLE            = 0;
    localparam IDLE2           = 1;
    localparam IDLE3           = 2;  //accumulate first reading in tvalid_out_reg
    localparam CLEAR           = 3;
    reg [3:0] state_r, state_n;
    
    
    reg [ADDR_WIDTH-1:0] bram_addr_r, bram_addr_n;
    
    reg bram_we_n, bram_we_r;
    reg IDLE_FLAG_r, IDLE_FLAG_n;
    
        
    //sequential outputs: reset logic and FLIPFLOPS
    always @(posedge clk) begin
        if (en) begin
            state_r           <= state_n;
            bram_addr_r <= bram_addr_n;
            bram_we_r <= bram_we_n;
            IDLE_FLAG_r <= IDLE_FLAG_n;
        end
        
        
        if (!aresetn) begin   
            state_r       <= IDLE;
            bram_addr_r <= 0;
            bram_we_r <= 0;
            IDLE_FLAG_r <= 1;
        end
    end
    
    always @(*) begin
        state_n           = state_r;
        bram_addr_n = bram_addr_r; 
        IDLE_FLAG_n = IDLE_FLAG_r;
        case(state_r)
            IDLE: begin
                if(pixel_done) begin
                    state_n = IDLE2;
                    bram_addr_n = 0;
                end
            end 
            IDLE2: begin
                if(pixel_done) begin
                    state_n = IDLE3;
                end
            end
            
            IDLE3: begin
                if (pixel_done) begin
                    state_n       = CLEAR;
                    IDLE_FLAG_n = 0;
                    bram_we_n = 1;
                end
            end
    
            CLEAR: begin
                if(!(bram_addr_r == (bins_to_read-1))) begin
                    bram_addr_n = bram_addr_r +1;
                    bram_we_n = 1;
                end else begin
                    state_n = IDLE3;
                    bram_addr_n = 0;
                    IDLE_FLAG_n = 1;
                    bram_we_n = 0;
                end
            end
        endcase
    end
    `ifndef SYNTHESIS
        reg [255:0] state_r_text;
        always @(*) begin
            case(state_r)
                IDLE:   state_r_text            = "IDLE";
                IDLE2:  state_r_text           = "IDLE2";
                IDLE3: state_r_text             = "IDLE3";
                CLEAR: state_r_text             = "CLEAR";                          
            endcase
        end
    `endif



assign bram_addr = bram_addr_r;
assign bram_we = bram_we_r;  //we dont write to BRAM
assign bram_din = 0;
assign IDLE_FLAG = IDLE_FLAG_r;

endmodule
