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




module histogram_sparse_writeout_tb;

    localparam CHANCE = 400;
    localparam num_pixels = 4;
    localparam photons_per_pixel = 512;

    bit clk;
    always #5 clk = ~clk;
    reg en;
    reg aresetn;
    reg pixel_done;
    logic [64:0] tdata_random;
    reg [63:0] photons_sent [0:10];
    reg [63:0] photons_received [0:10];
    reg [7:0] TLAST_COUNT;
    
    wire bin_full_warning;
    wire premature_pixel_done_error;
    
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
        if ($urandom_range(0, CHANCE) == 0) begin
            tready = 0;
            $display("Slave not ready (tready = 0)");
        end else begin
            tready = 1;
        end
        wait(tvalid);
        data = tdata;
        last = tlast;
        //tready <= 1;
        //@(posedge clk);
        //tready <= 1;
    endtask
endinterface
    
     // Instantiate the AXI-Stream interface
    axis_if #(64) axis_master(clk);
    axis_if #(64) axis_slave(clk);


    
   HISTOGRAM_ARBITER_FSM uut(.clk(clk),
                 .en(en),
                 .aresetn(aresetn),
                 .tdata_in(axis_master.tdata),
                 .tvalid_in(axis_master.tvalid),
                 .tlast_in(axis_master.tlast),
                 .tready_in(axis_master.tready),
                 .tdata_out(axis_slave.tdata),
                 .tvalid_out(axis_slave.tvalid),
                 .tlast_out(axis_slave.tlast),
                 .tready_out(axis_slave.tready),
                 .*
                 );
    // Test stimulus
    initial begin
    aresetn <= 0;
    #10;
    aresetn <= 1;
    en <= 1;
    pixel_done <= 0;
    #10;
    pixel_done <= 1;
    #10;
    pixel_done <= 0;
    #10;
    TLAST_COUNT <= 7;
    for (int value_r = 0; value_r <=10; value_r++)begin
            photons_sent[value_r] <= 0;
            photons_received[value_r] <= 0;
    end
    #10;
    for (int pixel = 0; pixel <num_pixels; pixel++) begin
        for (int photon=0; photon<photons_per_pixel; photon++)begin
        
            tdata_random = $urandom_range(0, 10);
            photons_sent[tdata_random] <= photons_sent[tdata_random] +1;
            axis_master.send_data(tdata_random, 0); // Send data, not last
        end
        pixel_done <= 1;
        #5;
        //for (int entry = 0; entry<10; entry++) begin
        //    if (photons_sent[entry] != photons_received[entry]) begin
            
        //    end
       // end
        for (int value_k = 0; value_k <=10; value_k++)begin
            photons_sent[value_k] <= 0;
        end
        #5;
        pixel_done <= 0;
    end
        #100;
       // $finish;
    end  
    
            // Thread to receive data
    initial begin
        logic [63:0] rx_tdata;
        logic rx_tlast;
        logic [31:0] index;
        // Wait for some time to let the DUT start sending data
        //#100;
        // Receive data
        for (int pixel_receive = 0; pixel_receive <4; pixel_receive++) begin
            for (int i_receive = 0; i_receive < 128; i_receive++) begin
                axis_slave.receive_data(rx_tdata, rx_tlast);
                $display("Received data stopdata: %h, last: %b", rx_tdata, rx_tlast);
                if(!(rx_tdata & 64'hFF00000000000000))begin
                    index = (rx_tdata&64'hFFFFFFFF00000000)>>32;
                    photons_received[index] <= rx_tdata&64'h00000000FFFFFFFF;
                end
            end
            
        end
    end     

endmodule
