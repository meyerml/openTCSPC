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


// IP VLNV: xilinx.com:module_ref:laser_signal_generator:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module laser_laser_signal_generat_0_0 (
  en,
  aresetn,
  clk,
  image_size,
  pulses_per_pixel,
  refclk_out,
  stop_out,
  frame_clk_r,
  line_clk_r,
  pixel_clk_r,
  CNTVALUEOUT_dbg,
  warmup_pulse_counter_dbg,
  start_frame_dbg,
  state_dbg,
  line_complete_dbg,
  pixel_complete_dbg,
  m_arvalid_n_dbg,
  m_arvalid_r_dbg,
  m_araddr,
  m_arvalid,
  m_arready,
  m_rdata,
  m_rvalid,
  m_rready
);

input wire en;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXI4lite_m, ASSOCIATED_RESET aresetn, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN laser_laser_clk, INSERT_VIP 0" *)
input wire clk;
input wire [31 : 0] image_size;
input wire [31 : 0] pulses_per_pixel;
output wire refclk_out;
output wire stop_out;
output wire frame_clk_r;
output wire line_clk_r;
output wire pixel_clk_r;
output wire [4 : 0] CNTVALUEOUT_dbg;
output wire [3 : 0] warmup_pulse_counter_dbg;
output wire start_frame_dbg;
output wire [2 : 0] state_dbg;
output wire line_complete_dbg;
output wire pixel_complete_dbg;
output wire m_arvalid_n_dbg;
output wire m_arvalid_r_dbg;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI4lite_m, FREQ_HZ 10000000, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN laser_laser_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1,\
 RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [17 : 0] m_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID" *)
output wire m_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARREADY" *)
input wire m_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RDATA" *)
input wire [31 : 0] m_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RVALID" *)
input wire m_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY" *)
output wire m_rready;

  laser_signal_generator #(
    .return_counter_clocks(16),
    .pulses_per_photon(4),
    .pulses_per_photon_return(8),
    .warmup_pulses(16),
    .addr_width(18)
  ) inst (
    .en(en),
    .aresetn(aresetn),
    .clk(clk),
    .image_size(image_size),
    .pulses_per_pixel(pulses_per_pixel),
    .refclk_out(refclk_out),
    .stop_out(stop_out),
    .frame_clk_r(frame_clk_r),
    .line_clk_r(line_clk_r),
    .pixel_clk_r(pixel_clk_r),
    .CNTVALUEOUT_dbg(CNTVALUEOUT_dbg),
    .warmup_pulse_counter_dbg(warmup_pulse_counter_dbg),
    .start_frame_dbg(start_frame_dbg),
    .state_dbg(state_dbg),
    .line_complete_dbg(line_complete_dbg),
    .pixel_complete_dbg(pixel_complete_dbg),
    .m_arvalid_n_dbg(m_arvalid_n_dbg),
    .m_arvalid_r_dbg(m_arvalid_r_dbg),
    .m_araddr(m_araddr),
    .m_arvalid(m_arvalid),
    .m_arready(m_arready),
    .m_rdata(m_rdata),
    .m_rvalid(m_rvalid),
    .m_rready(m_rready)
  );
endmodule
