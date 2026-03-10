// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar  9 17:18:00 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_LVDS_to_AXI_Stream_0_1/emulated_microscope_LVDS_to_AXI_Stream_0_1_stub.v
// Design      : emulated_microscope_LVDS_to_AXI_Stream_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "emulated_microscope_LVDS_to_AXI_Stream_0_1,LVDS_to_AXIS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "IPI" *) 
(* X_CORE_INFO = "LVDS_to_AXIS,Vivado 2024.2" *) 
module emulated_microscope_LVDS_to_AXI_Stream_0_1(Buffer_overflow, CNTVALUEIN, LD, 
  M_AXIS_0_tdata, M_AXIS_0_tlast, M_AXIS_0_tready, M_AXIS_0_tvalid, aresetn, 
  axis_rd_data_count, axis_wr_data_count, clk, debug_axis_before_fifo_tdata, 
  debug_axis_before_fifo_tlast, debug_axis_before_fifo_tready, 
  debug_axis_before_fifo_tvalid, en, frame_n, frame_p, ila_clk, l_clk_in_n, l_clk_in_p, 
  l_clk_out_n, l_clk_out_p, lvds_clk, msglen, sdo_n, sdo_p)
/* synthesis syn_black_box black_box_pad_pin="Buffer_overflow[0:0],CNTVALUEIN[4:0],LD,M_AXIS_0_tdata[63:0],M_AXIS_0_tlast,M_AXIS_0_tready,M_AXIS_0_tvalid,aresetn,axis_rd_data_count[31:0],axis_wr_data_count[31:0],debug_axis_before_fifo_tdata[63:0],debug_axis_before_fifo_tlast,debug_axis_before_fifo_tready,debug_axis_before_fifo_tvalid,en,frame_n,frame_p,l_clk_in_n,l_clk_in_p,l_clk_out_n,l_clk_out_p,lvds_clk,msglen[5:0],sdo_n,sdo_p" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="ila_clk" */;
  output [0:0]Buffer_overflow;
  input [4:0]CNTVALUEIN;
  input LD;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output [63:0]M_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST" *) output M_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY" *) input M_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID" *) output M_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  output [31:0]axis_rd_data_count;
  output [31:0]axis_wr_data_count;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 50, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF M_AXIS_0, ASSOCIATED_RESET aresetn, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TDATA" *) (* X_INTERFACE_MODE = "monitor master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME debug_axis_before_fifo, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]debug_axis_before_fifo_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TLAST" *) output debug_axis_before_fifo_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TREADY" *) output debug_axis_before_fifo_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TVALID" *) output debug_axis_before_fifo_tvalid;
  input en;
  input frame_n;
  input frame_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK3, INSERT_VIP 0" *) input ila_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_n, INSERT_VIP 0" *) input l_clk_in_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_p, INSERT_VIP 0" *) input l_clk_in_p;
  output l_clk_out_n;
  output l_clk_out_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LVDS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input lvds_clk;
  input [5:0]msglen;
  input sdo_n;
  input sdo_p;
endmodule
