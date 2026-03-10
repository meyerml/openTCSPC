`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 10:35:36
// Design Name: 
// Module Name: sandbox_tb
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


   // Mailboxes for synchronization
mailbox write_mb = new(1);
mailbox read_mb  = new(1);


// Transaction class
class axi_lite_transaction;
    rand bit [17:0] addr;
    rand bit [31:0] data;
    rand bit        is_write;
    bit [1:0]       resp;

   // constraint addr_c { addr inside {[0:255]}; }
   // constraint data_c { data inside {[0:255]}; }

    function void print();
        $display("AXI Transaction: addr=0x%0h, data=0x%0h, %s", addr, data, is_write ? "WRITE" : "READ");
    endfunction
endclass
 

module Microscope_tb;

    //reg [31:0] addra;
    //reg [31:0] dina;
    //reg[3:0] wea;
    reg [17:0] transaction_counter;
    reg [17:0] write_address;
    reg [31:0] data;
    reg [17:0] address;
    
    reg [31:0] image_size;
    reg [31:0] pulses_per_pixel;
    
    reg aresetn;
    reg en;
    event write_done;
    event readback_done;
    event reset_done;
    
    reg frame_clk;
    reg line_clk;
    reg pixel_clk;
    reg stop_out;
    reg refclk_out;
    //reg [17:0] bram_wraparound;
    
    reg [4:0] CNTVALUEOUT;

        // AXI4-Lite Interface Signals
    logic laser_clk;    
        
    logic clk;
    logic [31:0] awaddr, wdata, araddr;
    logic [3:0]  wstrb;
    logic awvalid, awready, wvalid, wready;
    logic bvalid, bready;
    logic [1:0]  bresp;
    logic arvalid, arready, rvalid, rready;
    logic [31:0] rdata;
    logic [1:0]  rresp;
    logic [31:0] rdata_reg;
    
    
    interface axi4lite_if (input logic clk);
        logic [31:0]        wdata;
        logic               wvalid;
        logic               wready;
        logic [3:0]         wstrb;
    
        logic [17:0]        awaddr;
        logic               awvalid;
        logic               awready;
        logic [2:0]         awprot;
        
        logic               bready;
        logic               bvalid;
        logic [1:0]         bresp;
        
        logic               arvalid;
        logic               arready;
        logic [17:0]        araddr;
        logic [2:0]         arprot;
        
        logic [31:0]        rdata;
        logic [1:0]         rresp;
        logic               rvalid;
        logic               rready;
        
        
        
        // Master modport (driver)
        modport master(
            // Write Address Channel
            output awvalid, awaddr, awprot,
            input  awready,
            // Write Data Channel
            output wvalid, wdata, wstrb,
            input  wready,
            // Write Response Channel
            input  bvalid, bresp,
            output bready,
            // Read Address Channel
            output arvalid, araddr, arprot,
            input  arready,
            // Read Data Channel
            input  rvalid, rdata, rresp,
            output rready
        );
    
        // Slave modport (monitor)
        modport slave(
            // Write Address Channel
            input  awvalid, awaddr, awprot,
            output awready,
            // Write Data Channel
            input  wvalid, wdata, wstrb,
            output wready,
            // Write Response Channel
            output bvalid, bresp,
            input  bready,
            // Read Address Channel
            input  arvalid, araddr, arprot,
            output arready,
            // Read Data Channel
            output rvalid, rdata, rresp,
            input  rready
        );
        
            
        task write_transaction(input logic [17:0] addr, input logic [31:0] data);
            // Step 1: Send write address
            @(posedge clk);
            awaddr <= addr;
            awvalid <= 1;
            awprot <= 3'b000;  // Normal access
            wdata <= data;
            wstrb <= '1;  // Enable all bytes
            wvalid <= 1;
            bready <= 1;

            wait(awready);
            wait(wready);

            @(posedge clk);
            awvalid <= 0;
            wvalid <= 0;

        
            // Step 3: Wait for write response
            //@(posedge clk);
            wait(bvalid);
            @(posedge clk);
            bready <= 0;
        endtask
        
    
        task read_transaction(input logic [17:0] addr, output logic [31:0] data);
            // Step 1: Send read address
            @(posedge clk);
            araddr <= addr;
            arvalid <= 1;
            rready <= 1;
            arprot <= 3'b000;  // Normal access
            wait(arready);
            @(posedge clk);
            arvalid <= 0;

            // Step 2: Wait for read data
            //@(posedge clk);
            wait(rvalid);
            @(posedge clk);
            data = rdata;
            rready <= 0;
        endtask
        //TODO: continue with the interface
        // Modport for master (driver)
    
    endinterface
    
    axi4lite_if axi4lite_master(clk);
    
    
    laser_wrapper uut(.S_AXI_araddr(axi4lite_master.araddr),
                        .S_AXI_arprot(axi4lite_master.arprot),
                        .S_AXI_arready(axi4lite_master.arready),
                        .S_AXI_arvalid(axi4lite_master.arvalid),
                        .S_AXI_awaddr(axi4lite_master.awaddr),
                        .S_AXI_awprot(axi4lite_master.awprot),
                        .S_AXI_awready(axi4lite_master.awready),
                        .S_AXI_awvalid(axi4lite_master.awvalid),
                        .S_AXI_bready(axi4lite_master.bready),
                        .S_AXI_bresp(axi4lite_master.bresp),
                        .S_AXI_bvalid(axi4lite_master.bvalid),
                        .S_AXI_rdata(axi4lite_master.rdata),
                        .S_AXI_rready(axi4lite_master.rready),
                        .S_AXI_rresp(axi4lite_master.rresp),
                        .S_AXI_rvalid(axi4lite_master.rvalid),
                        .S_AXI_wdata(axi4lite_master.wdata),
                        .S_AXI_wready(axi4lite_master.wready),
                        .S_AXI_wstrb(axi4lite_master.wstrb),
                        .S_AXI_wvalid(axi4lite_master.wvalid),
                        .axi_aresetn(aresetn),
                        .laser_aresetn(aresetn),
                        .TRIG_IN_ack(),
                        .TRIG_IN_trig(),
                        .axi_clk(clk),
                        
                                    .*);
    

 
    initial begin
        forever begin
        
            //100Mhz logic clock
            clk <= 0;
            #5;
            clk <= 1;
            #5;
        end 
    end
    
    
    initial begin
        forever begin
        
            //100Mhz logic clock
            laser_clk <= 0;
            #50;
            laser_clk <= 1;
            #50;
        end 
    end
        // Reset
    initial begin
        image_size = 4;
        pulses_per_pixel = 32;
        //bram_wraparound= 16;
        en = 0;
        aresetn = 0;
        #200;
        aresetn = 1;
        #200;
        -> reset_done;
    end
    
    
    //task to put write transactions into mailboxes
    reg [31:0] data0;
    reg [31:0] data1;
    reg [31:0] data2;
    reg [31:0] data3;
    initial begin
        axi_lite_transaction t;
        data0 = 4;
        data1 = 5;
        data2 = 6;
        data3 = 7;
        data = data3<<24 | data2<<16 | data1<<8 | data0;

        write_address = 0;
        @reset_done;
        for (int i = 0; i<1024; i++) begin
            t = new();
            t.addr = write_address;
            t.data = data;
            write_mb.put(t);
            write_address = write_address + 4;  //must be word-aligned i guess
            data0 =data0 + 4;
            data1 =data1 + 4;
            data2 =data2 + 4;
            data3 =data3 + 4;
            data = data3<<24 | data2<<16 | data1<<8 | data0;



        end
    
    end
    
    //task to get transactions from mailboxes and write them to axi4lite interface
    initial begin
        transaction_counter = 0;
        @reset_done;
        forever begin
            axi_lite_transaction t;
            write_mb.get(t);
            axi4lite_master.write_transaction(t.addr, t.data);
            transaction_counter +=1;
            $display("Sent data to addr %h: %h", t.addr, t.data);
            if (transaction_counter == 1023) begin
                -> write_done;
            end
        end
    
    end
    
    //task to wait until all writes are completed. then reads back the memory

    initial begin
        //axi_lite_transaction t;
        address = 0;
        @write_done;
        //forever begin
        for (int i = 0; i<1024; i++) begin
            //t = new();
            //t.addr = address;
            axi4lite_master.read_transaction(address, rdata_reg);
            //read_mb.put(t);
            address = address + 4;  //word-aligned
            $display("Read data from addr %h: %h", address, rdata_reg);
            if(i == 1023) begin
                ->readback_done;
            end
        end
    
    end
    
    
    //task for the actual signal generator
    initial begin
        address = 0;
        @readback_done;
        en = 1;
    end

    

endmodule
