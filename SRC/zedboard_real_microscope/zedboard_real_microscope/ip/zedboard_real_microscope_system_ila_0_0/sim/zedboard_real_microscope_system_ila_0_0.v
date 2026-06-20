// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:system_ila:1.1
// IP Revision: 19

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module zedboard_real_microscope_system_ila_0_0 (
  clk,
  probe0,
  probe1,
  probe2,
  probe3,
  probe4,
  probe5,
  probe6,
  probe7,
  probe8,
  probe9,
  probe10,
  probe11,
  probe12,
  probe13,
  probe14,
  probe15,
  probe16,
  SLOT_0_AXIS_tdata,
  SLOT_0_AXIS_tlast,
  SLOT_0_AXIS_tvalid,
  SLOT_0_AXIS_tready,
  SLOT_1_AXIS_tdata,
  SLOT_1_AXIS_tlast,
  SLOT_1_AXIS_tvalid,
  SLOT_1_AXIS_tready,
  SLOT_2_AXI_awaddr,
  SLOT_2_AXI_awlen,
  SLOT_2_AXI_awsize,
  SLOT_2_AXI_awcache,
  SLOT_2_AXI_awprot,
  SLOT_2_AXI_awvalid,
  SLOT_2_AXI_awready,
  SLOT_2_AXI_wdata,
  SLOT_2_AXI_wstrb,
  SLOT_2_AXI_wlast,
  SLOT_2_AXI_wvalid,
  SLOT_2_AXI_wready,
  SLOT_2_AXI_bresp,
  SLOT_2_AXI_bvalid,
  SLOT_2_AXI_bready,
  SLOT_2_AXI_araddr,
  SLOT_2_AXI_arlen,
  SLOT_2_AXI_arsize,
  SLOT_2_AXI_arcache,
  SLOT_2_AXI_arprot,
  SLOT_2_AXI_arvalid,
  SLOT_2_AXI_arready,
  SLOT_2_AXI_rdata,
  SLOT_2_AXI_rlast,
  SLOT_2_AXI_rvalid,
  SLOT_2_AXI_rready,
  SLOT_3_AXI_awaddr,
  SLOT_3_AXI_awlen,
  SLOT_3_AXI_awsize,
  SLOT_3_AXI_awcache,
  SLOT_3_AXI_awprot,
  SLOT_3_AXI_awvalid,
  SLOT_3_AXI_awready,
  SLOT_3_AXI_wdata,
  SLOT_3_AXI_wstrb,
  SLOT_3_AXI_wlast,
  SLOT_3_AXI_wvalid,
  SLOT_3_AXI_wready,
  SLOT_3_AXI_bresp,
  SLOT_3_AXI_bvalid,
  SLOT_3_AXI_bready,
  SLOT_3_AXI_araddr,
  SLOT_3_AXI_arlen,
  SLOT_3_AXI_arsize,
  SLOT_3_AXI_arcache,
  SLOT_3_AXI_arprot,
  SLOT_3_AXI_arvalid,
  SLOT_3_AXI_arready,
  SLOT_3_AXI_rdata,
  SLOT_3_AXI_rresp,
  SLOT_3_AXI_rlast,
  SLOT_3_AXI_rvalid,
  SLOT_3_AXI_rready,
  resetn,
  TRIG_IN_trig,
  TRIG_IN_ack,
  TRIG_OUT_trig,
  TRIG_OUT_ack
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI, ASSOCIATED_RESET resetn, INSERT_VIP 0" *)
input wire clk;
input wire [0 : 0] probe0;
input wire [0 : 0] probe1;
input wire [0 : 0] probe2;
input wire [0 : 0] probe3;
input wire [0 : 0] probe4;
input wire [0 : 0] probe5;
input wire [0 : 0] probe6;
input wire [31 : 0] probe7;
input wire [31 : 0] probe8;
input wire [0 : 0] probe9;
input wire [0 : 0] probe10;
input wire [0 : 0] probe11;
input wire [0 : 0] probe12;
input wire [0 : 0] probe13;
input wire [0 : 0] probe14;
input wire [0 : 0] probe15;
input wire [0 : 0] probe16;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *)
(* X_INTERFACE_MODE = "monitor slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [63 : 0] SLOT_0_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *)
input wire SLOT_0_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *)
input wire SLOT_0_AXIS_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *)
input wire SLOT_0_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *)
(* X_INTERFACE_MODE = "monitor slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [63 : 0] SLOT_1_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *)
input wire SLOT_1_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *)
input wire SLOT_1_AXIS_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *)
input wire SLOT_1_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *)
(* X_INTERFACE_MODE = "monitor slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0\
, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [31 : 0] SLOT_2_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN" *)
input wire [7 : 0] SLOT_2_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE" *)
input wire [2 : 0] SLOT_2_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE" *)
input wire [3 : 0] SLOT_2_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *)
input wire [2 : 0] SLOT_2_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *)
input wire SLOT_2_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *)
input wire SLOT_2_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *)
input wire [63 : 0] SLOT_2_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB" *)
input wire [7 : 0] SLOT_2_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST" *)
input wire SLOT_2_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *)
input wire SLOT_2_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *)
input wire SLOT_2_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP" *)
input wire [1 : 0] SLOT_2_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *)
input wire SLOT_2_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *)
input wire SLOT_2_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *)
input wire [31 : 0] SLOT_2_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN" *)
input wire [7 : 0] SLOT_2_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE" *)
input wire [2 : 0] SLOT_2_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE" *)
input wire [3 : 0] SLOT_2_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *)
input wire [2 : 0] SLOT_2_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *)
input wire SLOT_2_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *)
input wire SLOT_2_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *)
input wire [63 : 0] SLOT_2_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST" *)
input wire SLOT_2_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *)
input wire SLOT_2_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *)
input wire SLOT_2_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *)
(* X_INTERFACE_MODE = "monitor slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0,\
 NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [31 : 0] SLOT_3_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *)
input wire [7 : 0] SLOT_3_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *)
input wire [2 : 0] SLOT_3_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *)
input wire [3 : 0] SLOT_3_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *)
input wire [2 : 0] SLOT_3_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *)
input wire SLOT_3_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *)
input wire SLOT_3_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *)
input wire [31 : 0] SLOT_3_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *)
input wire [3 : 0] SLOT_3_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *)
input wire SLOT_3_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *)
input wire SLOT_3_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *)
input wire SLOT_3_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *)
input wire [1 : 0] SLOT_3_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *)
input wire SLOT_3_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *)
input wire SLOT_3_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *)
input wire [31 : 0] SLOT_3_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *)
input wire [7 : 0] SLOT_3_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *)
input wire [2 : 0] SLOT_3_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *)
input wire [3 : 0] SLOT_3_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *)
input wire [2 : 0] SLOT_3_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *)
input wire SLOT_3_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *)
input wire SLOT_3_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *)
input wire [31 : 0] SLOT_3_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP" *)
input wire [1 : 0] SLOT_3_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *)
input wire SLOT_3_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *)
input wire SLOT_3_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *)
input wire SLOT_3_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_IN TRIG" *)
(* X_INTERFACE_MODE = "slave" *)
input wire [0 : 0] TRIG_IN_trig;
(* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_IN ACK" *)
output wire [0 : 0] TRIG_IN_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT TRIG" *)
(* X_INTERFACE_MODE = "master" *)
output wire [0 : 0] TRIG_OUT_trig;
(* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT ACK" *)
input wire [0 : 0] TRIG_OUT_ack;

  bd_e058 inst (
    .clk(clk),
    .probe0(probe0),
    .probe1(probe1),
    .probe2(probe2),
    .probe3(probe3),
    .probe4(probe4),
    .probe5(probe5),
    .probe6(probe6),
    .probe7(probe7),
    .probe8(probe8),
    .probe9(probe9),
    .probe10(probe10),
    .probe11(probe11),
    .probe12(probe12),
    .probe13(probe13),
    .probe14(probe14),
    .probe15(probe15),
    .probe16(probe16),
    .SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
    .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
    .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
    .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
    .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
    .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
    .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
    .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
    .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
    .SLOT_2_AXI_awlen(SLOT_2_AXI_awlen),
    .SLOT_2_AXI_awsize(SLOT_2_AXI_awsize),
    .SLOT_2_AXI_awcache(SLOT_2_AXI_awcache),
    .SLOT_2_AXI_awprot(SLOT_2_AXI_awprot),
    .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
    .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
    .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
    .SLOT_2_AXI_wstrb(SLOT_2_AXI_wstrb),
    .SLOT_2_AXI_wlast(SLOT_2_AXI_wlast),
    .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
    .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
    .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
    .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
    .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
    .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
    .SLOT_2_AXI_arlen(SLOT_2_AXI_arlen),
    .SLOT_2_AXI_arsize(SLOT_2_AXI_arsize),
    .SLOT_2_AXI_arcache(SLOT_2_AXI_arcache),
    .SLOT_2_AXI_arprot(SLOT_2_AXI_arprot),
    .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
    .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
    .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
    .SLOT_2_AXI_rlast(SLOT_2_AXI_rlast),
    .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
    .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
    .SLOT_3_AXI_awaddr(SLOT_3_AXI_awaddr),
    .SLOT_3_AXI_awlen(SLOT_3_AXI_awlen),
    .SLOT_3_AXI_awsize(SLOT_3_AXI_awsize),
    .SLOT_3_AXI_awcache(SLOT_3_AXI_awcache),
    .SLOT_3_AXI_awprot(SLOT_3_AXI_awprot),
    .SLOT_3_AXI_awvalid(SLOT_3_AXI_awvalid),
    .SLOT_3_AXI_awready(SLOT_3_AXI_awready),
    .SLOT_3_AXI_wdata(SLOT_3_AXI_wdata),
    .SLOT_3_AXI_wstrb(SLOT_3_AXI_wstrb),
    .SLOT_3_AXI_wlast(SLOT_3_AXI_wlast),
    .SLOT_3_AXI_wvalid(SLOT_3_AXI_wvalid),
    .SLOT_3_AXI_wready(SLOT_3_AXI_wready),
    .SLOT_3_AXI_bresp(SLOT_3_AXI_bresp),
    .SLOT_3_AXI_bvalid(SLOT_3_AXI_bvalid),
    .SLOT_3_AXI_bready(SLOT_3_AXI_bready),
    .SLOT_3_AXI_araddr(SLOT_3_AXI_araddr),
    .SLOT_3_AXI_arlen(SLOT_3_AXI_arlen),
    .SLOT_3_AXI_arsize(SLOT_3_AXI_arsize),
    .SLOT_3_AXI_arcache(SLOT_3_AXI_arcache),
    .SLOT_3_AXI_arprot(SLOT_3_AXI_arprot),
    .SLOT_3_AXI_arvalid(SLOT_3_AXI_arvalid),
    .SLOT_3_AXI_arready(SLOT_3_AXI_arready),
    .SLOT_3_AXI_rdata(SLOT_3_AXI_rdata),
    .SLOT_3_AXI_rresp(SLOT_3_AXI_rresp),
    .SLOT_3_AXI_rlast(SLOT_3_AXI_rlast),
    .SLOT_3_AXI_rvalid(SLOT_3_AXI_rvalid),
    .SLOT_3_AXI_rready(SLOT_3_AXI_rready),
    .resetn(resetn),
    .TRIG_IN_trig(TRIG_IN_trig),
    .TRIG_IN_ack(TRIG_IN_ack),
    .TRIG_OUT_trig(TRIG_OUT_trig),
    .TRIG_OUT_ack(TRIG_OUT_ack)
  );
endmodule
