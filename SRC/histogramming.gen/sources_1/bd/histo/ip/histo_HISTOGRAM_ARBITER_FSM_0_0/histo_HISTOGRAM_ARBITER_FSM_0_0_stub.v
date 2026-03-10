// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Mar 10 16:56:21 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_HISTOGRAM_ARBITER_FSM_0_0/histo_HISTOGRAM_ARBITER_FSM_0_0_stub.v
// Design      : histo_HISTOGRAM_ARBITER_FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "histo_HISTOGRAM_ARBITER_FSM_0_0,HISTOGRAM_ARBITER_FSM,{}" *) (* CORE_GENERATION_INFO = "histo_HISTOGRAM_ARBITER_FSM_0_0,HISTOGRAM_ARBITER_FSM,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HISTOGRAM_ARBITER_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,HIST_BINS=16384,BIN_WIDTH=18}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "HISTOGRAM_ARBITER_FSM,Vivado 2024.2" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0(clk, aresetn, en, pixel_done, BINS_TO_READ, frame, 
  pixel_clk, line_clk, frame_clk, bin_full_warning, bin_written_but_never_read_warning, 
  premature_pixel_done_error, MAX_PIXELS, tdata_in, tvalid_in, tready_in, tlast_in, tdata_out, 
  tvalid_out, tready_out, tlast_out)
/* synthesis syn_black_box black_box_pad_pin="aresetn,en,pixel_done,BINS_TO_READ[14:0],frame,pixel_clk,line_clk,frame_clk,bin_full_warning,bin_written_but_never_read_warning,premature_pixel_done_error,MAX_PIXELS[31:0],tdata_in[63:0],tvalid_in,tready_in,tlast_in,tdata_out[63:0],tvalid_out,tready_out,tlast_out" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXIS_IN:AXIS_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input en;
  input pixel_done;
  input [14:0]BINS_TO_READ;
  input frame;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input pixel_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 line_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME line_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input line_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 frame_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME frame_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input frame_clk;
  output bin_full_warning;
  output bin_written_but_never_read_warning;
  output premature_pixel_done_error;
  input [31:0]MAX_PIXELS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_IN, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]tdata_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *) input tvalid_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *) output tready_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *) input tlast_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_OUT, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]tdata_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID" *) output tvalid_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TREADY" *) (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *) input tready_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST" *) output tlast_out;
endmodule
