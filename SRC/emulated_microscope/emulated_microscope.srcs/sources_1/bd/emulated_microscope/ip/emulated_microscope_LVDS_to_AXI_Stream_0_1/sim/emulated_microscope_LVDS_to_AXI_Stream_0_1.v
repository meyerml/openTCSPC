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


// IP VLNV: EMBL:user:LVDS_to_AXI_Stream:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module emulated_microscope_LVDS_to_AXI_Stream_0_1 (
  Buffer_overflow,
  CNTVALUEIN,
  LD,
  M_AXIS_0_tdata,
  M_AXIS_0_tlast,
  M_AXIS_0_tready,
  M_AXIS_0_tvalid,
  aresetn,
  axis_rd_data_count,
  axis_wr_data_count,
  clk,
  debug_axis_before_fifo_tdata,
  debug_axis_before_fifo_tlast,
  debug_axis_before_fifo_tready,
  debug_axis_before_fifo_tvalid,
  en,
  frame_n,
  frame_p,
  ila_clk,
  l_clk_in_n,
  l_clk_in_p,
  l_clk_out_n,
  l_clk_out_p,
  lvds_clk,
  msglen,
  sdo_n,
  sdo_p
);

output wire [0 : 0] Buffer_overflow;
input wire [4 : 0] CNTVALUEIN;
input wire LD;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
output wire [63 : 0] M_AXIS_0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST" *)
output wire M_AXIS_0_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY" *)
input wire M_AXIS_0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID" *)
output wire M_AXIS_0_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire aresetn;
output wire [31 : 0] axis_rd_data_count;
output wire [31 : 0] axis_wr_data_count;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 50, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF M_AXIS_0, ASSOCIATED_RESET aresetn, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TDATA" *)
(* X_INTERFACE_MODE = "monitor master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME debug_axis_before_fifo, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [63 : 0] debug_axis_before_fifo_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TLAST" *)
output wire debug_axis_before_fifo_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TREADY" *)
output wire debug_axis_before_fifo_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TVALID" *)
output wire debug_axis_before_fifo_tvalid;
input wire en;
input wire frame_n;
input wire frame_p;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK3, INSERT_VIP 0" *)
input wire ila_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_n, INSERT_VIP 0" *)
input wire l_clk_in_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_p, INSERT_VIP 0" *)
input wire l_clk_in_p;
output wire l_clk_out_n;
output wire l_clk_out_p;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LVDS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *)
input wire lvds_clk;
input wire [5 : 0] msglen;
input wire sdo_n;
input wire sdo_p;

  LVDS_to_AXIS inst (
    .Buffer_overflow(Buffer_overflow),
    .CNTVALUEIN(CNTVALUEIN),
    .LD(LD),
    .M_AXIS_0_tdata(M_AXIS_0_tdata),
    .M_AXIS_0_tlast(M_AXIS_0_tlast),
    .M_AXIS_0_tready(M_AXIS_0_tready),
    .M_AXIS_0_tvalid(M_AXIS_0_tvalid),
    .aresetn(aresetn),
    .axis_rd_data_count(axis_rd_data_count),
    .axis_wr_data_count(axis_wr_data_count),
    .clk(clk),
    .debug_axis_before_fifo_tdata(debug_axis_before_fifo_tdata),
    .debug_axis_before_fifo_tlast(debug_axis_before_fifo_tlast),
    .debug_axis_before_fifo_tready(debug_axis_before_fifo_tready),
    .debug_axis_before_fifo_tvalid(debug_axis_before_fifo_tvalid),
    .en(en),
    .frame_n(frame_n),
    .frame_p(frame_p),
    .ila_clk(ila_clk),
    .l_clk_in_n(l_clk_in_n),
    .l_clk_in_p(l_clk_in_p),
    .l_clk_out_n(l_clk_out_n),
    .l_clk_out_p(l_clk_out_p),
    .lvds_clk(lvds_clk),
    .msglen(msglen),
    .sdo_n(sdo_n),
    .sdo_p(sdo_p)
  );
endmodule
