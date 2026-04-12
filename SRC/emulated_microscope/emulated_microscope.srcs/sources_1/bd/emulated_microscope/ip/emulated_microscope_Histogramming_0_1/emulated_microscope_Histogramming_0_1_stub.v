// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr  1 14:46:03 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/openTCSPC3/SRC/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_Histogramming_0_1/emulated_microscope_Histogramming_0_1_stub.v
// Design      : emulated_microscope_Histogramming_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "emulated_microscope_Histogramming_0_1,histo,{}" *) (* CORE_GENERATION_INFO = "emulated_microscope_Histogramming_0_1,histo,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=Histogramming,x_ipVersion=1.8,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "IPI" *) (* X_CORE_INFO = "histo,Vivado 2024.2" *) 
module emulated_microscope_Histogramming_0_1(AXIS_IN_tdata, AXIS_IN_tlast, AXIS_IN_tready, 
  AXIS_IN_tvalid, BINS_TO_READ, MAX_PIXELS, M_AXIS_tdata, M_AXIS_tlast, M_AXIS_tready, 
  M_AXIS_tvalid, REFINDEX_BITS, STOPRESULT_BITS, TRIG_OUT_ack, TRIG_OUT_trig, aresetn, 
  bin_full_warning, bin_written_but_never_read_warning, buffer_almost_full, clk, disable_p, 
  en, frame_clk, ila_clk, line_clk, log_2_BIN_WIDTH, negedge_frame, pixel_clk, 
  premature_pixel_done_error, refres_p)
/* synthesis syn_black_box black_box_pad_pin="AXIS_IN_tdata[63:0],AXIS_IN_tlast,AXIS_IN_tready,AXIS_IN_tvalid,BINS_TO_READ[14:0],MAX_PIXELS[31:0],M_AXIS_tdata[63:0],M_AXIS_tlast,M_AXIS_tready,M_AXIS_tvalid,REFINDEX_BITS[5:0],STOPRESULT_BITS[5:0],TRIG_OUT_ack,TRIG_OUT_trig,aresetn,bin_full_warning,bin_written_but_never_read_warning,buffer_almost_full,disable_p[0:0],en,frame_clk,line_clk,log_2_BIN_WIDTH[15:0],negedge_frame,pixel_clk,premature_pixel_done_error,refres_p[0:0]" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="ila_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_IN, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [63:0]AXIS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *) input AXIS_IN_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *) output AXIS_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *) input AXIS_IN_tvalid;
  input [14:0]BINS_TO_READ;
  input [31:0]MAX_PIXELS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output [63:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  input [5:0]REFINDEX_BITS;
  input [5:0]STOPRESULT_BITS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT ACK" *) (* X_INTERFACE_MODE = "master" *) input TRIG_OUT_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT TRIG" *) output TRIG_OUT_trig;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  output bin_full_warning;
  output bin_written_but_never_read_warning;
  output buffer_almost_full;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF AXIS_IN:M_AXIS, ASSOCIATED_RESET aresetn, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  output [0:0]disable_p;
  input en;
  input frame_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input ila_clk /* synthesis syn_isclock = 1 */;
  input line_clk;
  input [15:0]log_2_BIN_WIDTH;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.NEGEDGE_FRAME INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.NEGEDGE_FRAME, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output negedge_frame;
  input pixel_clk;
  output premature_pixel_done_error;
  output [0:0]refres_p;
endmodule
