`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2025 10:20:22
// Design Name: 
// Module Name: splitter_tb
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

class transaction;
bit [63:0] tdata;
bit tlast;
endclass
transaction t;
mailbox mbx;

module histogramming_tb;
    bit clk;
    always #5 clk = ~clk;
    reg en;
    reg aresetn;
    reg [5:0] REFINDEX_BITS;
    reg [5:0] STOPRESULT_BITS;
    //reg [7:0] TLAST_COUNT;
    reg [15:0] log_2_BIN_WIDTH;
    reg [63:0] pulses_per_pixel;
    reg [63:0] photons_per_pixel;
    reg [14:0] BINS_TO_READ;
    reg [31:0] MAX_PIXELS;
    //reg count_photons_not_pulses;
    wire refres_p;
    reg pixel_clk;
    reg line_clk;
    reg frame_clk;
    reg laser_clk;
    reg bin_full_warning;
    reg premature_pixel_done_error;
    integer pixel, line, pulse, frame;
    event laser;
    
    interface axis_if #(parameter DWIDTH = 64)(input logic clk);
    logic [DWIDTH-1:0] tdata;
    logic               tvalid;
    logic               tlast;
    logic               tready;

    // Modport for master (driver)
    modport master(
        output tdata, tvalid, tlast,
        input  tready
    );

    // Modport for slave (monitor)
    modport slave(
        input  tdata, tvalid, tlast,
        output tready
    );

    task send_data(input logic [DWIDTH-1:0] data, input logic last = 0);
        @(posedge clk);
        tdata <= data;
        tvalid <= 1;
        tlast <= last;
        wait(tready);
        @(posedge clk); // Wait for one full clock cycle
        tvalid <= 0;
    endtask

    // Task to receive data
    task receive_data(output logic [DWIDTH-1:0] data, output logic last);
        @(posedge clk);
        wait(tvalid);
        data = tdata;
        last = tlast;
        tready <= 1;
        @(posedge clk);
        tready <= 1;
    endtask
endinterface
    
     // Instantiate the AXI-Stream interface
    axis_if #(64) axis_master(clk);
    axis_if #(64) axis_slave(clk);

    
    histo_wrapper uut(.clk(clk),
                 .en(en),
                 .aresetn(aresetn),
                 .REFINDEX_BITS(REFINDEX_BITS),
                 .STOPRESULT_BITS(STOPRESULT_BITS),
                 //.TLAST_COUNT(TLAST_COUNT),
                 .AXIS_IN_tdata(axis_master.tdata),
                 .AXIS_IN_tvalid(axis_master.tvalid),
                 .AXIS_IN_tlast(axis_master.tlast),
                 .AXIS_IN_tready(axis_master.tready),
                 .M_AXIS_tdata(axis_slave.tdata),
                 .M_AXIS_tvalid(axis_slave.tvalid),
                 .M_AXIS_tlast(axis_slave.tlast),
                 .M_AXIS_tready(axis_slave.tready),
                 .log_2_BIN_WIDTH(log_2_BIN_WIDTH),
                 .BINS_TO_READ(BINS_TO_READ),
                 //.count_photons_not_pulses(count_photons_not_pulses),
                 //.photons_per_pixel(photons_per_pixel),
                 //.pulses_per_pixel(pulses_per_pixel),
                 .refres_p(refres_p),
                 .pixel_clk(pixel_clk),
                 .line_clk(line_clk),
                 .frame_clk(frame_clk),
                 .bin_full_warning(bin_full_warning),
                 .premature_pixel_done_error(premature_pixel_done_error),
                 .MAX_PIXELS(MAX_PIXELS)
                 
                 );
    // Test stimulus
    
    integer i;
    reg [63:0] tdata;
    reg [15:0] stopresult_offset;
    reg [63:0] stopresult_base;
    reg [63:0] stopresult;
    reg [63:0] refindex_base;
    reg [63:0] refindex;
    reg [23:0] refindex_offset;
    reg photon_emitted;
    reg [15:0] NUM_PACKETS;
    reg [63:0] photon_counter;
    reg [63:0] pulse_counter;
    reg [63:0] lines_per_frame;
    reg [63:0] pixels_per_line;
    reg [31:0] frames;
    reg tlast;
    reg refres_p_registered;


    localparam bins_to_readd = 8;
    
    initial begin
    aresetn <= 0;
    en <= 1;
    tdata <= 64'h0;
    REFINDEX_BITS <= 24;
    STOPRESULT_BITS <= 20;
    BINS_TO_READ <= bins_to_readd;
    MAX_PIXELS <= 16;

   // TLAST_COUNT <= bins_to_readd / 4 + 1;  // four bins in a transfer, but one transfer for the startmessage
   // count_photons_not_pulses <= 0;
    //pulses_per_pixel <= 1000;
    //photons_per_pixel <= 10;
    log_2_BIN_WIDTH <= $clog2(4096);
    #10;
    aresetn <= 1;
    end
    
initial begin
frames = 2;
lines_per_frame = 4;
pixels_per_line = 4;
pulses_per_pixel = 1024;


NUM_PACKETS = 256;
photon_counter = 0;
pulse_counter = 0;
refindex_base = 64'h00000000000000FF;
refindex = refindex_base;
stopresult_base = 0;  //64'h00000000000AACF0;

frame_clk = 0;
line_clk = 0;
pixel_clk = 0;
    
mbx = new();
#10
    -> laser;
    #100;
    for (frame = 0; frame < frames; frame++) begin
        frame_clk = 1;
        for (line = 0; line < lines_per_frame; line++) begin
            line_clk = 1;
            for (pixel = 0; pixel < pixels_per_line; pixel++) begin
                
                //pulse_counter = 0;
                //refindex = 0;
                pixel_clk = 1;
                for (pulse = 0; pulse < pulses_per_pixel; pulse++) begin
                    //#12.5;
                    #6.25;
                    refres_p_registered <= refres_p;
                    //refres_p_registered_twice <= refres_p_registered;
                    if ( refres_p_registered) begin
                        //refres_p_registered <= 0;
                        refindex = 0;
                    end else begin
                        refindex++;
                    end
                    #6.25;
                    if (pulse == (pulses_per_pixel/2)) begin
                        pixel_clk = 0;
                    end
                    //pulse_counter++;
                    // Seed the random number generator for reproducibility
                    std::randomize(photon_emitted) with { photon_emitted dist {0 := 90, 1 := 10}; };
                    // Or, using $urandom:
                    if ($urandom % 100 < 10) begin //likelohood of a hit per pulse
                        photon_emitted = 1;
                        $display("Photon emitted!");
                    end else begin
                        photon_emitted = 0;
                        $display("No photon emitted.");
                    end
                    
                    if(photon_emitted& frame_clk & line_clk) begin
                            photon_counter++;
                            stopresult_offset = $random%32768;
                            stopresult = stopresult_base + stopresult_offset;
                            tdata = (refindex << STOPRESULT_BITS) + stopresult;
                            tlast = !(photon_counter % NUM_PACKETS);
                            
                            t = new();
                            t.tdata = tdata;
                            t.tlast = tlast;
                            mbx.put(t);
                            //photon_emitted = 0;
                            //axis_master.send_data(tdata, tlast); // Send data, not last
                    end
                    /*
                    if ( refres_p_registered) begin
                        refres_p_registered <= 0;
                        refindex = 0;
                    end else begin
                        refindex++;
                    end
                    */
                    
    
                    if ( (pixel == (pixels_per_line-1))&(pulse == (pulses_per_pixel-1))) begin
                        line_clk = 0;
                        #100;  //carriage return

                        
                    end
                    
                
                end  
            end  
            
            if ( line == (lines_per_frame-1))begin
                frame_clk = 0;
                #500;
            end 
        end
    end
end

      //  $finish;
  //  end  
    
        // Thread to send data
    initial begin
        forever begin
            transaction t;
            mbx.get(t);
            axis_master.send_data(t.tdata, t.tlast);
            $display("Sent data: %h, last: %b", t.tdata, t.tlast);
        end
    end
 
 
        // Thread to receive data
    initial begin
        logic [63:0] rx_data_stopresult;
        logic rx_last_stopresult;

        // Wait for some time to let the DUT start sending data
        //#100;

        // Receive data: TODO: send many detected photons to evaluate the whole chain
        axis_slave.receive_data(rx_data_stopresult, rx_last_stopresult);
        $display("Received data: %h, last: %b", rx_data_stopresult, rx_last_stopresult);
          // Receive data
        //axis_slave_stopresult.receive_data(rx_data_stopresult, rx_last_stopresult);
        //$display("Received data stopdata: %h, last: %b", rx_data_stopresult, rx_last_stopresult);

    end     
                    
initial begin // laser clock begin
    @laser;
    forever begin
                laser_clk = 1;
                #6.250;
                laser_clk = 0;
                #6.250;
                
    end
end    
     
endmodule
