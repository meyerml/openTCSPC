`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 11:12:56
// Design Name: 
// Module Name: signal_generator
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


// this module:
/*
    runs at the laser frequency.
    emulates a laser firing at the lser frequency
    also emulatess the driver of the laser with a frame clock, line clock and pixel clock
    
    most importantly, it emulates a detector, detecting a photon emiited from a sample every so often(programmable)
    the time delay of the emulated detected photon (respective to the causing laser pulse) is also programmable.
    it is read from BRAM on every pixel change (actually, four delay values are read from bram every fourth pixel change, to make use of the 32 bit width of the bram)
    a chain of IDELAYE2 units is used to create the programmable delays.
    
    during to return period after a line is completed, the laser also emulates some scattered photons being detected.
    
the software has to:
    write delay values for the simulated pixels to the BRAM via AXI4lite
    set the IMAGE_SIZE parameter before enabling the circuit
    set the PULSES_PER_PIXEL parameter before enabling the circuit

    
*/
`timescale 1ns / 1ps


module laser_signal_generator #(
    parameter return_counter_clocks = 16,  // how many laser clocks does it take to return the scanning optics to the beginning of the new line?
    parameter pulses_per_photon = 4,  //after how many unsuccessful laser pulses do we emulate a detected photon?
    parameter pulses_per_photon_return = 8,  // how many scattered photon do we emulate during the return after a complete line?
    parameter warmup_pulses = 16,  // how many laser pulses before we start the scanning unsing the frame-, line-, and pixel clocks?
    parameter addr_width = 18  // width of the axi4lite interfaces address. this interface reads the BRAM holding the per pixel delay values

)(
    input wire en,
    input wire aresetn,
    input wire clk,  
    input wire [31:0] image_size,  //the width/height of the image. only squared images.
    input wire [31:0] pulses_per_pixel,  //how long should we dwell on each pixel?
    output wire refclk_out,     // a synchronizing signal, indicating that a laser pulse has been fired. the refclock signal for the gpx2 TDC
    output wire stop_out,   // the emulated detector output signal the GPX2s stop input
    output reg frame_clk_r,  //high when a frame is being started, low when the frame is done
    output reg line_clk_r,  //high when a line is started, goes low after a line is done
    output reg pixel_clk_r,  //high when a pixel is started, goes low halfway trough a pixel
    
    //debug outputs
    output wire [4:0] CNTVALUEOUT_dbg, //debugging output to verify the IDELAYE2 delay value is updated
    output wire [$clog2(warmup_pulses)-1:0] warmup_pulse_counter_dbg,
    output wire  start_frame_dbg,
    output wire [2:0] state_dbg,
    output wire line_complete_dbg,
    output wire pixel_complete_dbg,  
    output wire m_arvalid_n_dbg,
    output wire m_arvalid_r_dbg,

    
    
    //axi4lite
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *)
    output wire [addr_width-1:0] m_araddr, // Read address (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID" *)
    output wire m_arvalid, // Read address valid (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARREADY" *)
    input m_arready, // Read address ready (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RDATA" *)
    input [31:0] m_rdata, // Read response (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RVALID" *)
    input m_rvalid, // Read valid (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY" *)
    output wire m_rready // Read ready (optional)
);


localparam pixel_counter_width = 32;
localparam line_counter_width = 32;
localparam bram_wraparound = $pow(2, addr_width);  //if the requested pixel number is higher than what fits into the BRAM, we simply wraparound and start again at the beginning

    
reg[31:0] clk_counter_r, clk_counter_n;

reg frame_clk_n;
reg line_clk_n;
reg pixel_clk_n;
wire line_complete;
wire pixel_complete;
wire pixel_halftime;
wire refclk_out_delayed;
reg gate_stop_n,gate_stop_r;
reg [31:0] bram_wraparound_r = bram_wraparound;


reg [addr_width-1:0] m_araddr_r, m_araddr_n;
reg m_arvalid_r, m_arvalid_n;
reg m_rready_n, m_rready_r;
reg LD_r, LD_n; 
reg [1:0] shift_counter_r, shift_counter_n;
//reg LD_comb;

reg [pixel_counter_width-1:0] pixel_counter_r, pixel_counter_n;
reg [line_counter_width-1:0] line_counter_r, line_counter_n;
reg start_frame_r, start_frame_n;
reg [31:0] return_counter_n, return_counter_r;
reg [$clog2(warmup_pulses)-1:0] warmup_pulse_counter_r, warmup_pulse_counter_n;

wire [4:0] CNTVALUEIN;  // the amount of taps for the idelaye2;

localparam IDLE             = 0;
localparam PIXEL            = 1;
localparam RETURN           = 2;
localparam WARMUP           = 3;  //laser firing, but scanning is not happening yet. the GPX2 needs this to synchronize to the laser clock before receiving stop events
localparam DONE             = 4;

reg [2:0] state_r, state_n;

          
`ifndef SYNTHESIS
    reg [255:0] state_r_text;  //for displaying the state of the FSM in the simulator as ASCII text

    always @(*) begin
        case(state_r)
            IDLE:   state_r_text            = "IDLE";
            PIXEL:  state_r_text            = "PIXEL";
            RETURN: state_r_text            = "RETURN";
            WARMUP: state_r_text            = "WARMUP";
            DONE: state_r_text              = "DONE";
        endcase
    end
`endif

    always @(*) begin
    //default assignment
        state_n           = state_r;
        shift_counter_n = shift_counter_r;  //since we read four delay values at once from bram, we have to shift the 32-bit word by 8 bits every pixel
        clk_counter_n = clk_counter_r;
        pixel_counter_n = pixel_counter_r;
        line_counter_n = line_counter_r;
        pixel_clk_n = pixel_clk_r;    
        start_frame_n = start_frame_r;
        line_clk_n = line_clk_r;
        frame_clk_n = frame_clk_r;
        return_counter_n = return_counter_r;
        gate_stop_n = gate_stop_r;
        warmup_pulse_counter_n = warmup_pulse_counter_r;
        m_araddr_n = m_araddr_r;
        LD_n = 0;
        m_arvalid_n = m_arvalid_r;
        m_rready_n = m_rready_r;
            
        case(state_r)
            IDLE: begin
                start_frame_n = en;
                if (start_frame_r) begin
                    state_n       = WARMUP;
                    m_arvalid_n = 1;
                    m_rready_n = 1;  
                end
            end
            WARMUP: begin
                warmup_pulse_counter_n = warmup_pulse_counter_r +1;
                if (m_arvalid_r) begin
                    if (m_arready) begin
                        m_arvalid_n = 0;
                    end
                end

                if (warmup_pulse_counter_r == warmup_pulses-1) begin
                    state_n       = PIXEL;
                    frame_clk_n = 1;
                    line_clk_n = 1;
                    pixel_clk_n = 1;
                    clk_counter_n = 0;
                    pixel_counter_n = 0;
                    LD_n = 1;
                    shift_counter_n = shift_counter_r +1;
                    if (shift_counter_r==0)begin 
                        m_rready_n = 1;
                        m_araddr_n = (m_araddr_r + 4)%bram_wraparound_r;  //if we exceed the last bram line, we just start at the beginning
                        m_arvalid_n = 1;
                    end 
                end
            end
    
            PIXEL: begin
                if (m_arvalid_r) begin
                    if (m_arready) begin
                        m_arvalid_n = 0;
                    end
                end

                clk_counter_n = clk_counter_r + 1;
                gate_stop_n = ((clk_counter_r % pulses_per_photon) == 0);
                if (pixel_complete) begin
                    pixel_clk_n = 1;
                    if (pixel_counter_n < (image_size-1)) begin
                        pixel_counter_n = pixel_counter_r + 1;
                    end else begin
                        pixel_counter_n = 0;
                    end
                    clk_counter_n = 0;
                    LD_n = 1;
                    shift_counter_n = shift_counter_r +1;
                    if (!(shift_counter_r))begin 
                        m_rready_n = 1;
                        m_araddr_n = (m_araddr_r + 4)%bram_wraparound_r;  //if we exceed the last bram line, we just start at the beginning
                        m_arvalid_n = 1;
                    end
                end else if (pixel_halftime) begin
                    pixel_clk_n = 0;
                end
            
                if (line_complete) begin
                    line_clk_n      = 1'b0;
                    pixel_clk_n = 0;
                    state_n           = RETURN;
                    LD_n = 1;
                    shift_counter_n = shift_counter_r;
                    m_araddr_n = m_araddr_r;  //dont increase addreses if we are going to return
                    m_arvalid_n = 0;
                    return_counter_n = 0;
                    if ( line_counter_r < (image_size-1)) begin
                        line_counter_n = line_counter_r + 1;
                    end else begin
                        line_counter_n = 0;
                    end
                end
            end
    
            RETURN: begin
                if (m_arvalid_r) begin
                    if (m_arready) begin
                        m_arvalid_n = 0;
                    end
                end
            
                m_rready_n = 1;
                clk_counter_n = clk_counter_r + 1;
                if (!return_counter_finished) begin
                    gate_stop_n = ((clk_counter_r % pulses_per_photon_return) == 0);
                end
                if (line_counter_r == 0) begin
                    frame_clk_n = 0;
                    line_counter_n = 0;
                    state_n = DONE;
                end 
                
                return_counter_n = return_counter_r + 1;
                if(return_counter_finished) begin
                    state_n           = PIXEL;
                    pixel_clk_n = 1;
                    line_clk_n = 1;
                    clk_counter_n = 0;
                    shift_counter_n = shift_counter_r +1;
                    if (shift_counter_r==0)begin 
                        m_rready_n = 1;
                        m_araddr_n = (m_araddr_r + 4)%bram_wraparound_r;  //if we exceed the last bram line, we just start at the beginning
                        m_arvalid_n = 1;
                    end
                    LD_n = 1;
                end
            end
            DONE: begin
                pixel_clk_n = 0;
                line_clk_n = 0;
                gate_stop_n = 0;
            end
        endcase
    end

    always @(posedge clk, negedge aresetn) begin
        if (!aresetn) begin   
            m_araddr_r <= 0;
            state_r       <= IDLE;
            pixel_clk_r <= 0;
            frame_clk_r <= 0;
            line_clk_r <= 0;
            pixel_counter_r <= 0;
            clk_counter_r <= 0;
            start_frame_r <= 0;
            return_counter_r <= 0;
            line_counter_r <= 0;
            gate_stop_r <= 0;
            warmup_pulse_counter_r <= 0;
            m_rready_r <= 0;
            shift_counter_r <= 1;
            m_arvalid_r <= 0;
        end else begin
            state_r           <= state_n;
            pixel_clk_r <= pixel_clk_n;
            line_clk_r <= line_clk_n;
            line_counter_r <= line_counter_n;
            pixel_counter_r <= pixel_counter_n;
            clk_counter_r <= clk_counter_n;
            start_frame_r <= start_frame_n;
            frame_clk_r <= frame_clk_n;
            return_counter_r <= return_counter_n;
            gate_stop_r <= gate_stop_n;
            warmup_pulse_counter_r <= warmup_pulse_counter_n;
            LD_r <= LD_n;
            m_araddr_r <= m_araddr_n;
            m_arvalid_r <= m_arvalid_n;
            m_rready_r <= m_rready_n;
            shift_counter_r <= shift_counter_n;
        end
    end

assign line_complete = (pixel_counter_r == image_size-1)&pixel_complete;
assign pixel_complete = (clk_counter_r == pulses_per_pixel-1);
assign pixel_halftime = (clk_counter_r == (pulses_per_pixel/2)-1);
assign return_counter_finished = (return_counter_r == return_counter_clocks);
assign CNTVALUEIN = (state_n == RETURN) ? 0 : (m_rdata>>(((shift_counter_r+2)%4)*8));  // cntvalue of 0 when entering return state, otherwise we take the bram value and shift out the past pixel values

assign warmup_pulse_counter_dbg = warmup_pulse_counter_r;
assign start_frame_dbg = start_frame_r;
assign state_dbg = state_r;
assign line_complete_dbg = line_complete;
assign pixel_complete_dbg = pixel_complete;
assign m_arvalid_n_dbg = m_arvalid_n;
assign m_arvalid_r_dbg = m_arvalid_r;

assign m_arvalid = m_arvalid_r;
assign m_araddr = m_araddr_r;
assign m_rready = m_rready_r;

//FSM end


//this is a chain of IDELAYE2 Elements
DelayChain DelayChain_inst (
   .refclk_out_delayed(refclk_out_delayed),         // 1-bit output: Delayed data output
   .clk(clk),                     // 1-bit input: Clock input
   .CNTVALUEIN(CNTVALUEIN),   // 5-bit input: Counter value input
   .refclk_in(refclk_out),           // 1-bit input: Internal delay data input
   .LD(LD_r),   // signal to load a new CLNTVALUEIN
   .first_CNTVALUEOUT(CNTVALUEOUT_dbg)  //the CNTVALUEOUT of the first IDELAYE2 Element. for verifying that the load was successful
);


    
    
    
    
    
assign refclk_out = clk & ((state_r == PIXEL) | (state_r == RETURN)| (state_r == WARMUP) | (state_r == DONE));   //dont generate laser pulses in IDLE state
assign stop_out = refclk_out_delayed & gate_stop_r; 
endmodule

