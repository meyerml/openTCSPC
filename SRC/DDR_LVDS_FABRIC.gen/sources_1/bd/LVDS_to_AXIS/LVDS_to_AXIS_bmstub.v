// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module LVDS_to_AXIS (
  M_AXIS_0_tdata,
  M_AXIS_0_tlast,
  M_AXIS_0_tready,
  M_AXIS_0_tvalid,
  clk,
  en,
  aresetn,
  frame_p,
  frame_n,
  sdo_p,
  sdo_n,
  msglen,
  l_clk_out_n,
  l_clk_out_p,
  axis_wr_data_count,
  axis_rd_data_count,
  Buffer_overflow,
  lvds_clk,
  ila_clk,
  CNTVALUEIN,
  LD,
  l_clk_in_p,
  l_clk_in_n
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA" *)
  (* X_INTERFACE_MODE = "master M_AXIS_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
  output [63:0]M_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST" *)
  output M_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY" *)
  input M_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID" *)
  output M_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 50, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_clk, ASSOCIATED_BUSIF M_AXIS_0, ASSOCIATED_RESET aresetn, INSERT_VIP 0" *)
  input clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.ARESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input aresetn;
  (* X_INTERFACE_IGNORE = "true" *)
  input frame_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input frame_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input sdo_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input sdo_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]msglen;
  (* X_INTERFACE_IGNORE = "true" *)
  output l_clk_out_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output l_clk_out_p;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]axis_wr_data_count;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]axis_rd_data_count;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]Buffer_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.LVDS_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LVDS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_lvds_clk, INSERT_VIP 0" *)
  input lvds_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ILA_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN LVDS_to_AXIS_ila_clk, INSERT_VIP 0" *)
  input ila_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input [4:0]CNTVALUEIN;
  (* X_INTERFACE_IGNORE = "true" *)
  input LD;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.L_CLK_IN_P" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_l_clk_in_p, INSERT_VIP 0" *)
  input l_clk_in_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.L_CLK_IN_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_l_clk_in_n, INSERT_VIP 0" *)
  input l_clk_in_n;

  // stub module has no contents

endmodule
