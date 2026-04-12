// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module histo (
  AXIS_IN_tdata,
  AXIS_IN_tlast,
  AXIS_IN_tvalid,
  AXIS_IN_tready,
  M_AXIS_tdata,
  M_AXIS_tlast,
  M_AXIS_tready,
  M_AXIS_tvalid,
  aresetn,
  clk,
  disable_p,
  en,
  frame_clk,
  line_clk,
  pixel_clk,
  refres_p,
  negedge_frame,
  bin_full_warning,
  premature_pixel_done_error,
  REFINDEX_BITS,
  STOPRESULT_BITS,
  log_2_BIN_WIDTH,
  BINS_TO_READ,
  bin_written_but_never_read_warning,
  MAX_PIXELS,
  buffer_almost_full,
  ila_clk,
  TRIG_OUT_ack,
  TRIG_OUT_trig
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *)
  (* X_INTERFACE_MODE = "slave AXIS_IN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_IN, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
  input [63:0]AXIS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *)
  input AXIS_IN_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *)
  input AXIS_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *)
  output AXIS_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
  (* X_INTERFACE_MODE = "master M_AXIS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
  output [63:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
  output M_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
  input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
  output M_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.ARESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, ASSOCIATED_BUSIF AXIS_IN:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0" *)
  input clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]disable_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input en;
  (* X_INTERFACE_IGNORE = "true" *)
  input frame_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input line_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input pixel_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]refres_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.NEGEDGE_FRAME INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.NEGEDGE_FRAME" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.NEGEDGE_FRAME, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output negedge_frame;
  (* X_INTERFACE_IGNORE = "true" *)
  output bin_full_warning;
  (* X_INTERFACE_IGNORE = "true" *)
  output premature_pixel_done_error;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]REFINDEX_BITS;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]STOPRESULT_BITS;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]log_2_BIN_WIDTH;
  (* X_INTERFACE_IGNORE = "true" *)
  input [14:0]BINS_TO_READ;
  (* X_INTERFACE_IGNORE = "true" *)
  output bin_written_but_never_read_warning;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]MAX_PIXELS;
  (* X_INTERFACE_IGNORE = "true" *)
  output buffer_almost_full;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ILA_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk_0, INSERT_VIP 0" *)
  input ila_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT ACK" *)
  (* X_INTERFACE_MODE = "master TRIG_OUT" *)
  input TRIG_OUT_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT TRIG" *)
  output TRIG_OUT_trig;

  // stub module has no contents

endmodule
