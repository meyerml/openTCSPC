// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 12 20:17:03 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/openTCSPC3/SRC/LVDS_to_AXIS_IDDR.gen/sources_1/bd/LVDS_to_AXIS_IDDR/ip/LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0/LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0_stub.v
// Design      : LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0,DDR_Stream_to_AXI_Stream_IDDR,{}" *) (* CORE_GENERATION_INFO = "LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0,DDR_Stream_to_AXI_Stream_IDDR,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DDR_Stream_to_AXI_Stream_IDDR,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NUM_TRANSACTIONS=16}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "DDR_Stream_to_AXI_Stream_IDDR,Vivado 2024.2" *) 
module LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0(enable, msglen, aresetn, C, D, F, tready, tdata_out, 
  tvalid_out)
/* synthesis syn_black_box black_box_pad_pin="enable,msglen[5:0],aresetn,D,F,tready,tdata_out[63:0],tvalid_out" */
/* synthesis syn_force_seq_prim="C" */;
  input enable;
  input [5:0]msglen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input C /* synthesis syn_isclock = 1 */;
  input D;
  input F;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) output [63:0]tdata_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TVALID" *) output tvalid_out;
endmodule
