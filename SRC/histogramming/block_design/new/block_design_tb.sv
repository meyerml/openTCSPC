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




module block_design_tb;
    bit clk;
    always #5 clk = ~clk;
    reg en;
    reg aresetn;
    reg [5:0] REFINDEX_BITS;
    reg [5:0] STOPRESULT_BITS;
    reg [15:0] log_2_BIN_WIDTH;
    reg [63:0] pulses_per_pixel;
    reg [63:0] photons_per_pixel;
    reg count_photons_not_pulses;
    wire refres_p;
    reg pixel_clk;
    
    
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

    
    design_1_wrapper uut(.clk(clk),
                 //.en(en),
                 .aresetn(aresetn),
                 .REFINDEX_BITS(REFINDEX_BITS),
                 .STOPRESULT_BITS(STOPRESULT_BITS),
                 .AXIS_IN_tdata(axis_master.tdata),
                 .AXIS_IN_tvalid(axis_master.tvalid),
                 .AXIS_IN_tlast(axis_master.tlast),
                 .AXIS_IN_tready(axis_master.tready),
                 .M_AXIS_tdata(axis_slave.tdata),
                 .M_AXIS_tvalid(axis_slave.tvalid),
                 .M_AXIS_tlast(axis_slave.tlast),
                 .M_AXIS_tready(axis_slave.tready),
                 .log_2_BIN_WIDTH(log_2_BIN_WIDTH),
                 .count_photons_not_pulses(count_photons_not_pulses),
                 .photons_per_pixel(photons_per_pixel),
                 .pulses_per_pixel(pulses_per_pixel),
                 .refres_p(refres_p),
                 .pixel_clk(pixel_clk)
                 
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

    
    
    initial begin
    aresetn <= 0;
    en <= 1;
    tdata <= 64'h0;
    REFINDEX_BITS <= 24;
    STOPRESULT_BITS <= 20;
    count_photons_not_pulses <= 0;
    pulses_per_pixel <= 1000;
    photons_per_pixel <= 10;
    log_2_BIN_WIDTH <= $clog2(2048);
    #10;
    aresetn <= 1;


    
    #20;
    //tdata <= 64'h00000F0CCAAAACF0;
    refindex_base = 64'h0000000000000000;  //immediate assignment should work hiere, right?
    refindex = refindex_base;
    refindex_offset = 24'hA00000;
    stopresult_base = 64'h00000000000AACF0;
    
    #10;
    for(i = 0; i<2000; i++) begin
    
        if (!(i%10)) begin
            refindex = 0;
            pixel_clk = 1;
        
        end
        else begin
                pixel_clk = 0;
                refindex = refindex + refindex_offset;
        end
        stopresult_offset = $random;
        stopresult = stopresult_base + stopresult_offset;
        tdata = stopresult+refindex;
        axis_master.send_data(tdata, 0); // Send data, not last
        //tdata <= tdata + 64'h0000000000A00000;
        //axis_master.send_data(64'hBBBBBBBBBBBBBBBB, 0); // Send data, last
        #125;  //10 laser pulses (80Mhz) later, we get a new photon
        end
        
   
        
        
    $finish;
    end
      //  $finish;
  //  end  
    
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
    
//thread to reset refindex of the generator           
    
    always @ (posedge clk ) begin
        if(refres_p) begin
            refindex <= 0;
        end
    end
   
    
endmodule
