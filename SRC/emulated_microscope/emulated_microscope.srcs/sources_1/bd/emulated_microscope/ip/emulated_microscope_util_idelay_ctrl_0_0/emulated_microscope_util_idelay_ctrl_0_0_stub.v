// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Mar  8 01:06:11 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/marce/OneDrive/Desktop/openTCSPC2/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_util_idelay_ctrl_0_0/emulated_microscope_util_idelay_ctrl_0_0_stub.v
// Design      : emulated_microscope_util_idelay_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "emulated_microscope_util_idelay_ctrl_0_0,util_idelay_ctrl_v1_0_4_util_idelay_ctrl,{}" *) (* CORE_GENERATION_INFO = "emulated_microscope_util_idelay_ctrl_0_0,util_idelay_ctrl_v1_0_4_util_idelay_ctrl,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_idelay_ctrl,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SIM_DEVICE=7SERIES}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "util_idelay_ctrl_v1_0_4_util_idelay_ctrl,Vivado 2024.2" *) 
module emulated_microscope_util_idelay_ctrl_0_0(rdy, ref_clk, rst)
/* synthesis syn_black_box black_box_pad_pin="rdy,rst" */
/* synthesis syn_force_seq_prim="ref_clk" */;
  output rdy;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK3, INSERT_VIP 0" *) input ref_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
endmodule
