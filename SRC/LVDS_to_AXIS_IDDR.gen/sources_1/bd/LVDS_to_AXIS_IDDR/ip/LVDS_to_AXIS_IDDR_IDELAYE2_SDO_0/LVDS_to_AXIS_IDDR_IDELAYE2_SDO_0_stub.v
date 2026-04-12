// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 12 20:17:00 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/openTCSPC3/SRC/LVDS_to_AXIS_IDDR.gen/sources_1/bd/LVDS_to_AXIS_IDDR/ip/LVDS_to_AXIS_IDDR_IDELAYE2_SDO_0/LVDS_to_AXIS_IDDR_IDELAYE2_SDO_0_stub.v
// Design      : LVDS_to_AXIS_IDDR_IDELAYE2_SDO_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_IDDR_IDELAYE2_SDO_0,IDELAYE2_DATA,{}" *) (* CORE_GENERATION_INFO = "LVDS_to_AXIS_IDDR_IDELAYE2_SDO_0,IDELAYE2_DATA,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=IDELAYE2_DATA,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "IDELAYE2_DATA,Vivado 2024.2" *) 
module LVDS_to_AXIS_IDDR_IDELAYE2_SDO_0(clk, CNTVALUEIN, LD, IDATAIN, DATAOUT, CNTVALUEOUT)
/* synthesis syn_black_box black_box_pad_pin="CNTVALUEIN[4:0],LD,IDATAIN,DATAOUT,CNTVALUEOUT[4:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_IDDR_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input [4:0]CNTVALUEIN;
  input LD;
  input IDATAIN;
  output DATAOUT;
  output [4:0]CNTVALUEOUT;
endmodule
