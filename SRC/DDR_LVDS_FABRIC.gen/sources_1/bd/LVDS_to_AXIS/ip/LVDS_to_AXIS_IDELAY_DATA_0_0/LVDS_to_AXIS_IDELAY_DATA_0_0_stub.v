// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar  9 14:28:57 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/DDR_LVDS_FABRIC.gen/sources_1/bd/LVDS_to_AXIS/ip/LVDS_to_AXIS_IDELAY_DATA_0_0/LVDS_to_AXIS_IDELAY_DATA_0_0_stub.v
// Design      : LVDS_to_AXIS_IDELAY_DATA_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_IDELAY_DATA_0_0,IDELAY_DATA,{}" *) (* CORE_GENERATION_INFO = "LVDS_to_AXIS_IDELAY_DATA_0_0,IDELAY_DATA,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=IDELAY_DATA,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "IDELAY_DATA,Vivado 2024.2" *) 
module LVDS_to_AXIS_IDELAY_DATA_0_0(IDATAIN, C, CNTVALUEIN, LD, DATAOUT)
/* synthesis syn_black_box black_box_pad_pin="IDATAIN,CNTVALUEIN[4:0],LD,DATAOUT" */
/* synthesis syn_force_seq_prim="C" */;
  input IDATAIN;
  input C /* synthesis syn_isclock = 1 */;
  input [4:0]CNTVALUEIN;
  input LD;
  output DATAOUT;
endmodule
