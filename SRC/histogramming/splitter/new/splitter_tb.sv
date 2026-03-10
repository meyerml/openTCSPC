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




module splitter_tb;
    bit clk;
    always #5 clk = ~clk;
    reg en;
    reg aresetn;
    reg [5:0] REFINDEX_BITS;
    reg [5:0] STOPRESULT_BITS;
    
    
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
    axis_if #(64) axis_slave_stopresult(clk);
    axis_if #(64) axis_slave_refindex(clk);

    
    splitter uut(.clk(clk),
                 .en(en),
                 .aresetn(aresetn),
                 .REFINDEX_BITS(REFINDEX_BITS),
                 .STOPRESULT_BITS(STOPRESULT_BITS),
                 .tdata_in(axis_master.tdata),
                 .tvalid_in(axis_master.tvalid),
                 .tlast_in(axis_master.tlast),
                 .tready_in(axis_master.tready),
                 .tdata_out_stopresult(axis_slave_stopresult.tdata),
                 .tvalid_out_stopresult(axis_slave_stopresult.tvalid),
                 .tlast_out_stopresult(axis_slave_stopresult.tlast),
                 .tready_out_stopresult(axis_slave_stopresult.tready),
                 
                 .tdata_out_refindex(axis_slave_refindex.tdata),
                 .tvalid_out_refindex(axis_slave_refindex.tvalid),
                 .tlast_out_refindex(axis_slave_refindex.tlast),
                 .tready_out_refindex(axis_slave_refindex.tready)
                 );
    // Test stimulus
    initial begin
    aresetn <= 0;
    #10;
    aresetn <= 1;
    en <= 1;
    REFINDEX_BITS <= 8;
    STOPRESULT_BITS <= 8;
    
    
    
        axis_master.send_data(64'hAAAAAAAAAAAAAAAA, 0); // Send data, not last
        axis_master.send_data(64'hBBBBBBBBBBBBBBBB, 0); // Send data, last
        #100;
        $finish;
    end  
    
        // Thread to receive data
    initial begin
        logic [63:0] rx_data_stopresult;
        logic rx_last_stopresult;

        // Wait for some time to let the DUT start sending data
        //#100;

        // Receive data
        axis_slave_stopresult.receive_data(rx_data_stopresult, rx_last_stopresult);
        $display("Received data stopdata: %h, last: %b", rx_data_stopresult, rx_last_stopresult);
          // Receive data
        axis_slave_stopresult.receive_data(rx_data_stopresult, rx_last_stopresult);
        $display("Received data stopdata: %h, last: %b", rx_data_stopresult, rx_last_stopresult);

    end              

        // Thread to receive data
    initial begin
        logic [63:0] rx_data_refindex;
        logic rx_last_refindex;

        // Wait for some time to let the DUT start sending data
        //#100;

        // Receive data
        axis_slave_refindex.receive_data(rx_data_refindex, rx_last_refindex);
        $display("Received data refindex: %h, last: %b", rx_data_refindex, rx_last_refindex);
                // Receive data
        axis_slave_refindex.receive_data(rx_data_refindex, rx_last_refindex);
        $display("Received data refindex: %h, last: %b", rx_data_refindex, rx_last_refindex);
    end      
    
endmodule
