//////////////////////////////////////////
//  fills a histogram. whenever the sorted sends a value, we increase the corresponding bin count in the histogram.
//  this has to be done in two stages: first, we read the value from BRAM
//  then we add to that and write the value back to BRAM in the second stage

// also generates a bin_full_warning when a bin is full, as well as anothe warning when we are writing to a histogram bin # that is larger than what the reading_fsm reads
//
//////////////////////////////////////////

module FILLING_FSM#(
    parameter HIST_BINS,
    parameter BIN_WIDTH,
    parameter ADDR_WIDTH
)(
    input wire clk,
    input wire aresetn,
    input wire en,
    input wire pixel_done,
    output wire bin_full_warning,
    output wire bin_written_but_never_read_warning,
    
        //the axi stream coming from the LVDS interface
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *)
    input wire [63:0] tdata_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *)
    input wire tvalid_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    output reg tready_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *)
    input wire tlast_in,
    
    output reg [ADDR_WIDTH-1:0] bram_addr,
    output reg [BIN_WIDTH-1:0] bram_din,  //bram_din is named from the BRAMs perspective, so it is the data input of the BRAM
    output reg bram_we,
    input wire [BIN_WIDTH-1:0] bram_dout, //bram_dout is named from the BRAMs perspective, so it is the data output from the BRAM
    input wire [14:0] bins_to_read
        );

    localparam IDLE             = 0;
    localparam READ            = 1;
    localparam WRITE            = 2;

    reg [1:0] state_r, state_n;
    
    reg tready_in_r, tready_in_n;
    reg bin_full_warning_n, bin_full_warning_r;
    reg bin_written_but_never_read_warning_n, bin_written_but_never_read_warning_r;

    reg [63:0] read_value;


    always @(posedge clk) begin
        if(en) begin
            state_r           <= state_n;
            tready_in_r <= tready_in_n;
            bin_full_warning_r <= bin_full_warning_n;
            bin_written_but_never_read_warning_r <= bin_written_but_never_read_warning_n;
        end
    
        if (!aresetn) begin   
            state_r       <= IDLE;
            tready_in_r <= 0;
            bin_full_warning_r <= 0;
            bin_written_but_never_read_warning_r <= 0;
        end
        
    end
    
    always @(*) begin
        state_n           = state_r;
        bin_written_but_never_read_warning_n = bin_written_but_never_read_warning_r;
        tready_in_n = 1;
        bin_full_warning_n = bin_full_warning_r;

        case(state_r)
            IDLE: begin
                if(pixel_done)begin
                    state_n = READ;
                end
            end 

            READ: begin
                //we want to read the BRAM
                bram_we = 0;
                if (tvalid_in) begin
                    if (tdata_in >= bins_to_read)begin
                        bin_written_but_never_read_warning_n <= 1;
                    end
                    state_n       = WRITE;
                    bram_addr = tdata_in;  // tell the BRAM from which address we want to read
                    tready_in_n = 0;  // we are busy with the current axis transfer, so we cannot take in a new one yet.
                end
            end
    
            WRITE: begin
                    if (pixel_done) begin
                        read_value = 0;
                    end else begin 
                        read_value = bram_dout;  
                    end
                    
                    if(read_value < ((1<<BIN_WIDTH)-1))begin
                        bram_din = read_value +1;
                    end else begin
                        bram_din = read_value;
                        bin_full_warning_n = 1;
                    end
                        bram_we = 1;
                        state_n           = READ;
                        tready_in_n = 1;  //on the next clock cycle, we can already take in a new axis transfer
            end
        endcase
    end


    `ifndef SYNTHESIS
        reg [64:0] state_r_text;
    
        always @(*) begin
            case(state_r)
                IDLE:   state_r_text            = "IDLE";
                READ: state_r_text              = "READ";
                WRITE:  state_r_text            = "WRITE";
            endcase
        end
    `endif


assign tready_in = tready_in_r;
assign bin_full_warning = bin_full_warning_r;
assign bin_written_but_never_read_warning = bin_written_but_never_read_warning_r;

endmodule