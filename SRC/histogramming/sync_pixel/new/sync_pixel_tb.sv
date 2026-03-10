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




module sync_pixel_tb;
    bit clk;
    always #5 clk = ~clk;
    reg en;
    reg aresetn;
    reg mode;
    reg [63:0] pulses_per_pixel;
    reg [63:0] photons_per_pixel;
    wire pixel_done;
    
    
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


    
   sync_pixel uut(.clk(clk),
                 .en(en),
                 .aresetn(aresetn),
                 .tdata_in(axis_master.tdata),
                 .tvalid_in(axis_master.tvalid),
                 .tlast_in(axis_master.tlast),
                 .tready_in(axis_master.tready),
                 .*

                 
                
                 );
    // Test stimulus
    initial begin
    aresetn <= 0;
    #10;
    aresetn <= 1;
    en <= 1;
    mode <= 0;
    pulses_per_pixel <= 8;
    photons_per_pixel <= 8;
    
    
    
        axis_master.send_data(64'd0, 0); // Send data, not last
        axis_master.send_data(64'd1, 0); // Send data, not last
        axis_master.send_data(64'd4, 0); // Send data, not last
        axis_master.send_data(64'd8, 0); // Send data, not last
        
        axis_master.send_data(64'd9, 0); // Send data, not last
        axis_master.send_data(64'd10, 0); // Send data, not last
        axis_master.send_data(64'd11, 0); // Send data, not last
        axis_master.send_data(64'd15, 0); // Send data, not last        
        axis_master.send_data(64'd16, 0); // Send data, not last        
        axis_master.send_data(64'd17, 0); // Send data, not last        



        #100;
        
        
        
    aresetn <= 0;
    #10;
    aresetn <= 1;
    en <= 1;
    mode <= 1;
    pulses_per_pixel <= 8;
    photons_per_pixel <= 8;
    
    
    
        axis_master.send_data(64'd0, 0); // Send data, not last
        axis_master.send_data(64'd1, 0); // Send data, not last
        axis_master.send_data(64'd4, 0); // Send data, not last
        axis_master.send_data(64'd8, 0); // Send data, not last
        axis_master.send_data(64'd10, 0); // Send data, not last
        axis_master.send_data(64'd11, 0); // Send data, not last
        axis_master.send_data(64'd12, 0); // Send data, not last
        axis_master.send_data(64'd64, 0); // Send data, not last
        axis_master.send_data(64'd65, 0); // Send data, not last




        #100;
        $finish;
    end  
    
               


endmodule
