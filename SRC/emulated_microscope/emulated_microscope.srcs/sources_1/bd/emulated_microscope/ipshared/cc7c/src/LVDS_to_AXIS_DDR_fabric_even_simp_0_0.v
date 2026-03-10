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


// IP VLNV: xilinx.com:module_ref:DDR_fabric_even_simpler:1.0
// IP Revision: 1

(* X_CORE_INFO = "DDR_fabric_even_simpler,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_DDR_fabric_even_simp_0_0,DDR_fabric_even_simpler,{}" *)
(* CORE_GENERATION_INFO = "LVDS_to_AXIS_DDR_fabric_even_simp_0_0,DDR_fabric_even_simpler,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DDR_fabric_even_simpler,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NUM_TRANSACTIONS=256,CLOCKRATIO=2}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module LVDS_to_AXIS_DDR_fabric_even_simp_0_0 (
  msglen,
  aresetn,
  C,
  D,
  F,
  tready,
  tdata_delayed,
  tvalid_delayed,
  tlast_delayed
);

input wire [5 : 0] msglen;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire aresetn;
input wire C;
input wire D;
input wire F;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TREADY" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *)
output wire [63 : 0] tdata_delayed;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TVALID" *)
output wire tvalid_delayed;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TLAST" *)
output wire tlast_delayed;

  DDR_fabric_even_simpler #(
    .NUM_TRANSACTIONS(256),
    .CLOCKRATIO(2)
  ) inst (
    .msglen(msglen),
    .aresetn(aresetn),
    .C(C),
    .D(D),
    .F(F),
    .tready(tready),
    .tdata_delayed(tdata_delayed),
    .tvalid_delayed(tvalid_delayed),
    .tlast_delayed(tlast_delayed)
  );
endmodule
