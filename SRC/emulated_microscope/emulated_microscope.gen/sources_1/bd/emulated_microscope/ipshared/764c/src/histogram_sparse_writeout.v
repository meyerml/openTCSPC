`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  constructs a histogram for a pixel in BRAM, before sending it to DDR via DMA for storage of a whole frame
//  the histogram size HIST_BINS is fixed. if less bins are requested the software parameter BINS_TO_READ will tell this
//  the BIN_WIDTH is also fixed. BRAM can only be configured to be a certain number of bits wide (2, 9, 18, 36, 72)
//  the BIN_WIDTH determines how high the count of a single bin can become. if this count is surpassed, the bin value saturates and a warning is issued

//  it consists of three sub-FSMs, each working on a histogram object, which is stored in BRAM.
//  this module basically assigns the histograms to the sub-FSMs in a revolver-like fashion
//////////////////////////////////////////////////////////////////////////////////


module HISTOGRAM_ARBITER_FSM#(
    parameter HIST_BINS = 16384,  //32768,  // 2^15, we should use 16 BRAMs, configured as 2k x 18 bits
    parameter BIN_WIDTH = 18  // as bram can either have 9 bit words, which is too small, or 18 bit words, which is a bit large, but we have enough BRAM available
)(
    input wire clk,
    input wire aresetn,
    input wire en,
    input wire pixel_done,  //signal to start a new histogram and write the old one out
    input wire [14:0] BINS_TO_READ,  //during the readout/clearing of the histogram, do we have to read the full, fixed size histogram, or just the first couple of them?
    //input wire frame,
    //input wire pixel_clk,
    //input wire line_clk,
    //input wire frame_clk,
    
    output wire bin_full_warning,  //the count of a bin has exceeded 2^bin_width-1
    output wire bin_written_but_never_read_warning,  //we are writing to a bin # that is larger than BINS_TO_READ. this should never happen if the sorter works correctly
    output reg premature_pixel_done_error,  //if a new pixel arrives while we are still busy writing the old histogram to DDR, we throw an error. we need to dwell longer on a pixel or use less bins per histogram, so writeout is faster
    input wire [31:0] MAX_PIXELS,  //passed as a parameter to the reading fsm. once it reaches this number of pixels, it sends a tlast with its last axi stream transaction, finishing the axi stream
    
     //the axi stream coming from the sorter
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *)
    input wire [63:0] tdata_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *)
    input wire tvalid_in,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    output wire tready_in, 
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *)
    input wire tlast_in,
    
    //the axi stream going to the DMA
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *)
    output wire [63:0] tdata_out,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID" *)
    output wire tvalid_out,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TREADY" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    input wire tready_out,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST" *)
    output wire tlast_out
        );

    localparam IDLE               = 0;
    localparam STATE0             = 1;
    localparam STATE1             = 2;
    localparam STATE2             = 3;
    localparam ERROR              = 4;
    
    localparam ADDR_WIDTH = $clog2(HIST_BINS);


    reg [2:0] state_r, state_n;
    reg FILL_0, READ_0, CLEAR_0;
    reg [14:0] BINS_TO_READ_R;
    reg [ADDR_WIDTH-1:0] bram_0_addr;
    reg [BIN_WIDTH-1:0] bram_0_din;
    wire [BIN_WIDTH-1:0] bram_0_dout;
    reg bram_0_we;
    reg [ADDR_WIDTH-1:0] bram_1_addr;
    reg [BIN_WIDTH-1:0] bram_1_din;
    wire [BIN_WIDTH-1:0] bram_1_dout;
    reg bram_1_we;
    reg [ADDR_WIDTH-1:0] bram_2_addr;
    reg [BIN_WIDTH-1:0] bram_2_din;
    wire [BIN_WIDTH-1:0] bram_2_dout;
    reg bram_2_we;    
    
    wire [ADDR_WIDTH-1:0] FILL_FSM_ADDR;
    wire [BIN_WIDTH-1:0] FILL_FSM_DIN;
    reg [BIN_WIDTH-1:0] FILL_FSM_DOUT;
    wire FILL_FSM_WE;
    
    wire [ADDR_WIDTH-1:0] READ_FSM_ADDR;
    wire [BIN_WIDTH-1:0] READ_FSM_DIN;
    reg [BIN_WIDTH-1:0] READ_FSM_DOUT;
    wire READ_FSM_WE;
    
    wire [ADDR_WIDTH-1:0] CLEAR_FSM_ADDR;
    wire [BIN_WIDTH-1:0] CLEAR_FSM_DIN;
    reg [BIN_WIDTH-1:0] CLEAR_FSM_DOUT;
    wire CLEAR_FSM_WE;
    
    wire READ_IDLE_FLAG;
    
    //insantiate three histograms.
    //in each state, one is being filled, one is being read, and one is being cleared
    BRAM_hist #(
    .HIST_BINS(HIST_BINS),
    .BIN_WIDTH(BIN_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
    ) bram_0 (
    .clk(clk),
    .bram_addr(bram_0_addr),
    .bram_din(bram_0_din),
    .bram_we(bram_0_we),
    .bram_dout(bram_0_dout)
    );
    
        BRAM_hist #(
    .HIST_BINS(HIST_BINS),
    .BIN_WIDTH(BIN_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
    ) bram_1 (
    .clk(clk),
    .bram_addr(bram_1_addr),
    .bram_din(bram_1_din),
    .bram_we(bram_1_we),
    .bram_dout(bram_1_dout)
    );
    
        BRAM_hist #(
    .HIST_BINS(HIST_BINS),
    .BIN_WIDTH(BIN_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
    ) bram_2 (
    .clk(clk),
    .bram_addr(bram_2_addr),
    .bram_din(bram_2_din),
    .bram_we(bram_2_we),
    .bram_dout(bram_2_dout)
    );
    
    
    FILLING_FSM#(
    .HIST_BINS(HIST_BINS),
    .BIN_WIDTH(BIN_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
    )
     filling_fsm(
    .en(en),
    .clk(clk),
    .aresetn(aresetn),
    .pixel_done(pixel_done),
    .bin_full_warning(bin_full_warning),
    .bin_written_but_never_read_warning(bin_written_but_never_read_warning),
    .bram_addr(FILL_FSM_ADDR),
    .bram_din(FILL_FSM_DIN),
    .bram_dout(FILL_FSM_DOUT),
    .bram_we(FILL_FSM_WE),
    .tdata_in(tdata_in),
    .tvalid_in(tvalid_in),
    .tready_in(tready_in),
    .tlast_in(tlast_in),
    .bins_to_read(BINS_TO_READ_R)
    );
    
    
    READING_FSM #(
    .HIST_BINS(HIST_BINS),
    .BIN_WIDTH(BIN_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
    )
    reading_fsm (
    .clk(clk),
    .aresetn(aresetn),
    .en(en),
    .pixel_done(pixel_done),
    //.TLAST_COUNT(TLAST_COUNT),
    .IDLE_FLAG(READ_IDLE_FLAG),
    .bram_addr(READ_FSM_ADDR),
    .bram_din(READ_FSM_DIN),
    .bram_dout(READ_FSM_DOUT),
    .bram_we(READ_FSM_WE),
    .tdata_out(tdata_out),
    .tvalid_out(tvalid_out),
    .tready_out(tready_out),
    .tlast_out(tlast_out),
    .bins_to_read(BINS_TO_READ_R),
    //.frame(frame),
    .MAX_PIXELS(MAX_PIXELS)
    );
    
    
    CLEARING_FSM #(
    .HIST_BINS(HIST_BINS),
    .BIN_WIDTH(BIN_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
    )
    clearing_fsm(
    .clk(clk),
    .aresetn(aresetn),
    .en(en),
    .pixel_done(pixel_done),
    .IDLE_FLAG(CLEAR_IDLE_FLAG),
    .bram_addr(CLEAR_FSM_ADDR),
    .bram_din(CLEAR_FSM_DIN),
    .bram_dout(CLEAR_FSM_DOUT),
    .bram_we(CLEAR_FSM_WE),
    .bins_to_read(BINS_TO_READ_R)

    );

    //sequential outputs: reset logic and FLIPFLOPS
    always @(posedge clk) begin
        state_r           <= state_n;
        BINS_TO_READ_R <= BINS_TO_READ;


        if (!aresetn) begin   
            state_r       <= IDLE;
            BINS_TO_READ_R <= 14'bXXXXXXXXXXXXXX;
        end
    end
    
    //next-state-logic and sequential outputs, combinatorial outputs
    always @(*) begin
        state_n           = state_r;
        premature_pixel_done_error = 0;
        case(state_r)
            IDLE: begin
                if(pixel_done) begin
                    if(READ_IDLE_FLAG & CLEAR_IDLE_FLAG)
                        state_n = STATE0;
                    else 
                        state_n = ERROR;  //
                end 
            end 
            STATE0: begin
                
                //signals of the BRAM that is being filled
                bram_0_addr = FILL_FSM_ADDR;
                bram_0_din = FILL_FSM_DIN;
                bram_0_we = FILL_FSM_WE;
                FILL_FSM_DOUT = bram_0_dout;

                
                //signals of the BRAM that is being read
                bram_1_addr = READ_FSM_ADDR;
                bram_1_din = READ_FSM_DIN;
                bram_1_we = READ_FSM_WE;
                READ_FSM_DOUT = bram_1_dout;
                
                
                //signals of the BRAM that is being cleared
                bram_2_addr = CLEAR_FSM_ADDR;
                bram_2_din = CLEAR_FSM_DIN;
                bram_2_we = CLEAR_FSM_WE;
                CLEAR_FSM_DOUT = bram_2_dout;
                
                
                if (pixel_done) begin
                    if(READ_IDLE_FLAG & CLEAR_IDLE_FLAG)
                        state_n = STATE1;
                    else 
                        state_n = ERROR;  
                end
            end
    
            STATE1: begin                
                //signals of the BRAM that is being filled
                bram_2_addr = FILL_FSM_ADDR;
                bram_2_din = FILL_FSM_DIN;
                bram_2_we = FILL_FSM_WE;
                FILL_FSM_DOUT = bram_2_dout;

                
                //signals of the BRAM that is being read
                bram_0_addr = READ_FSM_ADDR;
                bram_0_din = READ_FSM_DIN;
                bram_0_we = READ_FSM_WE;
                READ_FSM_DOUT = bram_0_dout;
                
                
                //signals of the BRAM that is being cleared
                bram_1_addr = CLEAR_FSM_ADDR;
                bram_1_din = CLEAR_FSM_DIN;
                bram_1_we = CLEAR_FSM_WE;
                CLEAR_FSM_DOUT = bram_1_dout;
                
                
                if (pixel_done) begin
                    if(READ_IDLE_FLAG & CLEAR_IDLE_FLAG) begin
                        state_n = STATE2;
                    end else begin
                        state_n = ERROR;  //we were not ready to start a new histogram yet, we were busy reading/clearing the old ones
                    end
                end
            end
    
            STATE2: begin

                //signals of the BRAM that is being filled
                bram_1_addr = FILL_FSM_ADDR;
                bram_1_din = FILL_FSM_DIN;
                bram_1_we = FILL_FSM_WE;
                FILL_FSM_DOUT = bram_1_dout;

                
                //signals of the BRAM that is being read
                bram_2_addr = READ_FSM_ADDR;
                bram_2_din = READ_FSM_DIN;
                bram_2_we = READ_FSM_WE;
                READ_FSM_DOUT = bram_2_dout;
                
                
                //signals of the BRAM that is being cleared
                bram_0_addr = CLEAR_FSM_ADDR;
                bram_0_din = CLEAR_FSM_DIN;
                bram_0_we = CLEAR_FSM_WE;
                CLEAR_FSM_DOUT = bram_0_dout;
                
                if (pixel_done) begin  
                    if(READ_IDLE_FLAG & CLEAR_IDLE_FLAG) begin
                        state_n = STATE0;
                    end else begin
                        state_n = ERROR;
                    end
                end
            end
            
            ERROR: begin
                premature_pixel_done_error = 1;
            end
        endcase
    end

`ifndef SYNTHESIS
        reg [255:0] state_r_text;
    
        always @(*) begin
            case(state_r)
                IDLE: state_r_text              = "IDLE";
                STATE0:   state_r_text            = "STATE0";
                STATE1:  state_r_text            = "STATE1";
                STATE2: state_r_text            = "STATE2";
                ERROR: state_r_text             = "ERROR";
            endcase
        end
`endif

endmodule
