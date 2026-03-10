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




module comparator_tb;
    bit clk;
    always #5 clk = ~clk;
    reg en;
    reg aresetn;
    reg [15:0] log_2_BIN_WIDTH;
    reg [5:0] REFINDEX_BITS;
    reg [5:0] STOPRESULT_BITS;
    reg [63:0] pulses_per_pixel;
    
    
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


    
   comparators uut(.clk(clk),
                 .en(en),
                 .aresetn(aresetn),
                 .log_2_BIN_WIDTH(log_2_BIN_WIDTH),
                 .tdata_in(axis_master.tdata),
                 .tvalid_in(axis_master.tvalid),
                 .tlast_in(axis_master.tlast),
                 .tready_in(axis_master.tready),
                 .tdata_out(axis_slave.tdata),
                 .tvalid_out(axis_slave.tvalid),
                 .tlast_out(axis_slave.tlast),
                 .tready_out(axis_slave.tready),
                 .pulses_per_pixel(pulses_per_pixel),
                 .REFINDEX_BITS(REFINDEX_BITS),
                 .STOPRESULT_BITS(STOPRESULT_BITS)
                 
                
                 );
    // Test stimulus
    initial begin
    aresetn <= 0;
    #10;
    aresetn <= 1;
    en <= 1;
    log_2_BIN_WIDTH <= $clog2(128);
    REFINDEX_BITS <= 24;
    STOPRESULT_BITS <= 20;
    pulses_per_pixel <= 16;
        #100;
    
        axis_master.send_data(64'h0F10001, 0); // Send data, not last
        #100;
        axis_master.send_data(64'h1020002, 0); // Send data, not last
        #100;
        axis_master.send_data(64'h1130003, 0); // Send data, not last
        #100;
      //  $finish;
    end  
    
        // Thread to receive data
    initial begin
        logic [63:0] rx_data_stopresult;
        logic rx_last_stopresult;

        // Wait for some time to let the DUT start sending data
        //#100;
        // Receive data
        axis_slave.receive_data(rx_data_stopresult, rx_last_stopresult);
        $display("Received data stopdata: %h, last: %b", rx_data_stopresult, rx_last_stopresult);
        // Receive data
        axis_slave.receive_data(rx_data_stopresult, rx_last_stopresult);
        $display("Received data stopdata: %h, last: %b", rx_data_stopresult, rx_last_stopresult);
        
        axis_slave.receive_data(rx_data_stopresult, rx_last_stopresult);
        $display("Received data stopdata: %h, last: %b", rx_data_stopresult, rx_last_stopresult);

    end              


endmodule
