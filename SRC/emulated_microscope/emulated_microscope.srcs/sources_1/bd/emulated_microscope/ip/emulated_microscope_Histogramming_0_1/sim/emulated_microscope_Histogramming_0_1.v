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


// IP VLNV: xilinx.com:user:Histogramming:1.8
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module emulated_microscope_Histogramming_0_1 (
  AXIS_IN_tdata,
  AXIS_IN_tlast,
  AXIS_IN_tready,
  AXIS_IN_tvalid,
  BINS_TO_READ,
  MAX_PIXELS,
  M_AXIS_tdata,
  M_AXIS_tlast,
  M_AXIS_tready,
  M_AXIS_tvalid,
  REFINDEX_BITS,
  STOPRESULT_BITS,
  TRIG_OUT_ack,
  TRIG_OUT_trig,
  aresetn,
  bin_full_warning,
  bin_written_but_never_read_warning,
  buffer_almost_full,
  clk,
  disable_p,
  en,
  frame_clk,
  ila_clk,
  line_clk,
  log_2_BIN_WIDTH,
  negedge_frame,
  pixel_clk,
  premature_pixel_done_error,
  refres_p
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_IN, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire [63 : 0] AXIS_IN_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *)
input wire AXIS_IN_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *)
output wire AXIS_IN_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *)
input wire AXIS_IN_tvalid;
input wire [14 : 0] BINS_TO_READ;
input wire [31 : 0] MAX_PIXELS;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
output wire [63 : 0] M_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
output wire M_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire M_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire M_AXIS_tvalid;
input wire [5 : 0] REFINDEX_BITS;
input wire [5 : 0] STOPRESULT_BITS;
(* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT ACK" *)
(* X_INTERFACE_MODE = "master" *)
input wire TRIG_OUT_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT TRIG" *)
output wire TRIG_OUT_trig;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire aresetn;
output wire bin_full_warning;
output wire bin_written_but_never_read_warning;
output wire buffer_almost_full;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF AXIS_IN:M_AXIS, ASSOCIATED_RESET aresetn, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire clk;
output wire [0 : 0] disable_p;
input wire en;
input wire frame_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *)
input wire ila_clk;
input wire line_clk;
input wire [15 : 0] log_2_BIN_WIDTH;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.NEGEDGE_FRAME INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.NEGEDGE_FRAME, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire negedge_frame;
input wire pixel_clk;
output wire premature_pixel_done_error;
output wire [0 : 0] refres_p;

  histo inst (
    .AXIS_IN_tdata(AXIS_IN_tdata),
    .AXIS_IN_tlast(AXIS_IN_tlast),
    .AXIS_IN_tready(AXIS_IN_tready),
    .AXIS_IN_tvalid(AXIS_IN_tvalid),
    .BINS_TO_READ(BINS_TO_READ),
    .MAX_PIXELS(MAX_PIXELS),
    .M_AXIS_tdata(M_AXIS_tdata),
    .M_AXIS_tlast(M_AXIS_tlast),
    .M_AXIS_tready(M_AXIS_tready),
    .M_AXIS_tvalid(M_AXIS_tvalid),
    .REFINDEX_BITS(REFINDEX_BITS),
    .STOPRESULT_BITS(STOPRESULT_BITS),
    .TRIG_OUT_ack(TRIG_OUT_ack),
    .TRIG_OUT_trig(TRIG_OUT_trig),
    .aresetn(aresetn),
    .bin_full_warning(bin_full_warning),
    .bin_written_but_never_read_warning(bin_written_but_never_read_warning),
    .buffer_almost_full(buffer_almost_full),
    .clk(clk),
    .disable_p(disable_p),
    .en(en),
    .frame_clk(frame_clk),
    .ila_clk(ila_clk),
    .line_clk(line_clk),
    .log_2_BIN_WIDTH(log_2_BIN_WIDTH),
    .negedge_frame(negedge_frame),
    .pixel_clk(pixel_clk),
    .premature_pixel_done_error(premature_pixel_done_error),
    .refres_p(refres_p)
  );
endmodule
