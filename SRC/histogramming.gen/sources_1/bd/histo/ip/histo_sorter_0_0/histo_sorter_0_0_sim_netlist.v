// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Mar 10 16:56:18 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_sorter_0_0/histo_sorter_0_0_sim_netlist.v
// Design      : histo_sorter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "histo_sorter_0_0,sorter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sorter,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module histo_sorter_0_0
   (en,
    clk,
    aresetn,
    log_2_BIN_WIDTH,
    REFINDEX_BITS,
    STOPRESULT_BITS,
    tdata_in,
    tvalid_in,
    tready_in,
    tlast_in,
    tdata_out,
    tvalid_out,
    tready_out,
    tlast_out);
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXIS_IN:AXIS_OUT, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [15:0]log_2_BIN_WIDTH;
  input [5:0]REFINDEX_BITS;
  input [5:0]STOPRESULT_BITS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_IN, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]tdata_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *) input tvalid_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *) output tready_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *) input tlast_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_OUT, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]tdata_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID" *) output tvalid_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TREADY" *) (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *) input tready_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST" *) output tlast_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:0]STOPRESULT_BITS;
  wire aresetn;
  wire clk;
  wire en;
  wire [15:0]log_2_BIN_WIDTH;
  wire [63:0]tdata_in;
  wire [63:0]tdata_out;
  wire tvalid_in;
  wire tvalid_out;

  assign tlast_out = \<const0> ;
  assign tready_in = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  histo_sorter_0_0_sorter inst
       (.STOPRESULT_BITS(STOPRESULT_BITS),
        .aresetn(aresetn),
        .clk(clk),
        .en(en),
        .log_2_BIN_WIDTH(log_2_BIN_WIDTH),
        .tdata_in(tdata_in),
        .tdata_out(tdata_out),
        .tvalid_in(tvalid_in),
        .tvalid_out(tvalid_out));
endmodule

(* ORIG_REF_NAME = "sorter" *) 
module histo_sorter_0_0_sorter
   (tdata_out,
    tvalid_out,
    tdata_in,
    STOPRESULT_BITS,
    clk,
    log_2_BIN_WIDTH,
    en,
    tvalid_in,
    aresetn);
  output [63:0]tdata_out;
  output tvalid_out;
  input [63:0]tdata_in;
  input [5:0]STOPRESULT_BITS;
  input clk;
  input [15:0]log_2_BIN_WIDTH;
  input en;
  input tvalid_in;
  input aresetn;

  wire [5:0]STOPRESULT_BITS;
  wire [5:0]STOPRESULT_BITS_r;
  wire STOPRESULT_BITS_r_0;
  wire aresetn;
  wire clk;
  wire en;
  wire [15:0]log_2_BIN_WIDTH;
  wire [15:0]log_2_BIN_WIDTH_r;
  wire [63:0]p_0_in;
  wire [63:0]tdata_in;
  wire [63:0]tdata_out;
  wire tdata_out2_carry__0_i_1_n_0;
  wire tdata_out2_carry__0_i_2_n_0;
  wire tdata_out2_carry__0_i_3_n_0;
  wire tdata_out2_carry__0_i_4_n_0;
  wire tdata_out2_carry__0_n_0;
  wire tdata_out2_carry__0_n_1;
  wire tdata_out2_carry__0_n_2;
  wire tdata_out2_carry__0_n_3;
  wire tdata_out2_carry__0_n_4;
  wire tdata_out2_carry__0_n_5;
  wire tdata_out2_carry__0_n_6;
  wire tdata_out2_carry__0_n_7;
  wire tdata_out2_carry__10_i_1_n_0;
  wire tdata_out2_carry__10_i_2_n_0;
  wire tdata_out2_carry__10_i_3_n_0;
  wire tdata_out2_carry__10_i_4_n_0;
  wire tdata_out2_carry__10_n_0;
  wire tdata_out2_carry__10_n_1;
  wire tdata_out2_carry__10_n_2;
  wire tdata_out2_carry__10_n_3;
  wire tdata_out2_carry__10_n_4;
  wire tdata_out2_carry__10_n_5;
  wire tdata_out2_carry__10_n_6;
  wire tdata_out2_carry__10_n_7;
  wire tdata_out2_carry__11_i_1_n_0;
  wire tdata_out2_carry__11_i_2_n_0;
  wire tdata_out2_carry__11_i_3_n_0;
  wire tdata_out2_carry__11_i_4_n_0;
  wire tdata_out2_carry__11_n_0;
  wire tdata_out2_carry__11_n_1;
  wire tdata_out2_carry__11_n_2;
  wire tdata_out2_carry__11_n_3;
  wire tdata_out2_carry__11_n_4;
  wire tdata_out2_carry__11_n_5;
  wire tdata_out2_carry__11_n_6;
  wire tdata_out2_carry__11_n_7;
  wire tdata_out2_carry__12_i_1_n_0;
  wire tdata_out2_carry__12_i_2_n_0;
  wire tdata_out2_carry__12_i_3_n_0;
  wire tdata_out2_carry__12_i_4_n_0;
  wire tdata_out2_carry__12_n_0;
  wire tdata_out2_carry__12_n_1;
  wire tdata_out2_carry__12_n_2;
  wire tdata_out2_carry__12_n_3;
  wire tdata_out2_carry__12_n_4;
  wire tdata_out2_carry__12_n_5;
  wire tdata_out2_carry__12_n_6;
  wire tdata_out2_carry__12_n_7;
  wire tdata_out2_carry__13_i_1_n_0;
  wire tdata_out2_carry__13_i_2_n_0;
  wire tdata_out2_carry__13_i_3_n_0;
  wire tdata_out2_carry__13_i_4_n_0;
  wire tdata_out2_carry__13_n_0;
  wire tdata_out2_carry__13_n_1;
  wire tdata_out2_carry__13_n_2;
  wire tdata_out2_carry__13_n_3;
  wire tdata_out2_carry__13_n_4;
  wire tdata_out2_carry__13_n_5;
  wire tdata_out2_carry__13_n_6;
  wire tdata_out2_carry__13_n_7;
  wire tdata_out2_carry__14_i_1_n_0;
  wire tdata_out2_carry__14_i_2_n_0;
  wire tdata_out2_carry__14_i_3_n_0;
  wire tdata_out2_carry__14_n_2;
  wire tdata_out2_carry__14_n_3;
  wire tdata_out2_carry__14_n_5;
  wire tdata_out2_carry__14_n_6;
  wire tdata_out2_carry__14_n_7;
  wire tdata_out2_carry__1_i_1_n_0;
  wire tdata_out2_carry__1_i_2_n_0;
  wire tdata_out2_carry__1_i_3_n_0;
  wire tdata_out2_carry__1_i_4_n_0;
  wire tdata_out2_carry__1_n_0;
  wire tdata_out2_carry__1_n_1;
  wire tdata_out2_carry__1_n_2;
  wire tdata_out2_carry__1_n_3;
  wire tdata_out2_carry__1_n_4;
  wire tdata_out2_carry__1_n_5;
  wire tdata_out2_carry__1_n_6;
  wire tdata_out2_carry__1_n_7;
  wire tdata_out2_carry__2_i_1_n_0;
  wire tdata_out2_carry__2_i_2_n_0;
  wire tdata_out2_carry__2_i_3_n_0;
  wire tdata_out2_carry__2_i_4_n_0;
  wire tdata_out2_carry__2_n_0;
  wire tdata_out2_carry__2_n_1;
  wire tdata_out2_carry__2_n_2;
  wire tdata_out2_carry__2_n_3;
  wire tdata_out2_carry__2_n_4;
  wire tdata_out2_carry__2_n_5;
  wire tdata_out2_carry__2_n_6;
  wire tdata_out2_carry__2_n_7;
  wire tdata_out2_carry__3_i_1_n_0;
  wire tdata_out2_carry__3_i_2_n_0;
  wire tdata_out2_carry__3_i_3_n_0;
  wire tdata_out2_carry__3_i_4_n_0;
  wire tdata_out2_carry__3_n_0;
  wire tdata_out2_carry__3_n_1;
  wire tdata_out2_carry__3_n_2;
  wire tdata_out2_carry__3_n_3;
  wire tdata_out2_carry__3_n_4;
  wire tdata_out2_carry__3_n_5;
  wire tdata_out2_carry__3_n_6;
  wire tdata_out2_carry__3_n_7;
  wire tdata_out2_carry__4_i_1_n_0;
  wire tdata_out2_carry__4_i_2_n_0;
  wire tdata_out2_carry__4_i_3_n_0;
  wire tdata_out2_carry__4_i_4_n_0;
  wire tdata_out2_carry__4_n_0;
  wire tdata_out2_carry__4_n_1;
  wire tdata_out2_carry__4_n_2;
  wire tdata_out2_carry__4_n_3;
  wire tdata_out2_carry__4_n_4;
  wire tdata_out2_carry__4_n_5;
  wire tdata_out2_carry__4_n_6;
  wire tdata_out2_carry__4_n_7;
  wire tdata_out2_carry__5_i_1_n_0;
  wire tdata_out2_carry__5_i_2_n_0;
  wire tdata_out2_carry__5_i_3_n_0;
  wire tdata_out2_carry__5_i_4_n_0;
  wire tdata_out2_carry__5_n_0;
  wire tdata_out2_carry__5_n_1;
  wire tdata_out2_carry__5_n_2;
  wire tdata_out2_carry__5_n_3;
  wire tdata_out2_carry__5_n_4;
  wire tdata_out2_carry__5_n_5;
  wire tdata_out2_carry__5_n_6;
  wire tdata_out2_carry__5_n_7;
  wire tdata_out2_carry__6_i_1_n_0;
  wire tdata_out2_carry__6_i_2_n_0;
  wire tdata_out2_carry__6_i_3_n_0;
  wire tdata_out2_carry__6_i_4_n_0;
  wire tdata_out2_carry__6_n_0;
  wire tdata_out2_carry__6_n_1;
  wire tdata_out2_carry__6_n_2;
  wire tdata_out2_carry__6_n_3;
  wire tdata_out2_carry__6_n_4;
  wire tdata_out2_carry__6_n_5;
  wire tdata_out2_carry__6_n_6;
  wire tdata_out2_carry__6_n_7;
  wire tdata_out2_carry__7_i_1_n_0;
  wire tdata_out2_carry__7_i_2_n_0;
  wire tdata_out2_carry__7_i_3_n_0;
  wire tdata_out2_carry__7_i_4_n_0;
  wire tdata_out2_carry__7_n_0;
  wire tdata_out2_carry__7_n_1;
  wire tdata_out2_carry__7_n_2;
  wire tdata_out2_carry__7_n_3;
  wire tdata_out2_carry__7_n_4;
  wire tdata_out2_carry__7_n_5;
  wire tdata_out2_carry__7_n_6;
  wire tdata_out2_carry__7_n_7;
  wire tdata_out2_carry__8_i_1_n_0;
  wire tdata_out2_carry__8_i_2_n_0;
  wire tdata_out2_carry__8_i_3_n_0;
  wire tdata_out2_carry__8_i_4_n_0;
  wire tdata_out2_carry__8_n_0;
  wire tdata_out2_carry__8_n_1;
  wire tdata_out2_carry__8_n_2;
  wire tdata_out2_carry__8_n_3;
  wire tdata_out2_carry__8_n_4;
  wire tdata_out2_carry__8_n_5;
  wire tdata_out2_carry__8_n_6;
  wire tdata_out2_carry__8_n_7;
  wire tdata_out2_carry__9_i_1_n_0;
  wire tdata_out2_carry__9_i_2_n_0;
  wire tdata_out2_carry__9_i_3_n_0;
  wire tdata_out2_carry__9_i_4_n_0;
  wire tdata_out2_carry__9_n_0;
  wire tdata_out2_carry__9_n_1;
  wire tdata_out2_carry__9_n_2;
  wire tdata_out2_carry__9_n_3;
  wire tdata_out2_carry__9_n_4;
  wire tdata_out2_carry__9_n_5;
  wire tdata_out2_carry__9_n_6;
  wire tdata_out2_carry__9_n_7;
  wire tdata_out2_carry_i_2_n_0;
  wire tdata_out2_carry_i_3_n_0;
  wire tdata_out2_carry_i_4_n_0;
  wire tdata_out2_carry_i_5_n_0;
  wire tdata_out2_carry_n_0;
  wire tdata_out2_carry_n_1;
  wire tdata_out2_carry_n_2;
  wire tdata_out2_carry_n_3;
  wire tdata_out2_carry_n_4;
  wire tdata_out2_carry_n_5;
  wire tdata_out2_carry_n_6;
  wire tdata_out2_carry_n_7;
  wire [0:0]tdata_out3;
  wire \tdata_out[0]_i_10_n_0 ;
  wire \tdata_out[0]_i_11_n_0 ;
  wire \tdata_out[0]_i_2_n_0 ;
  wire \tdata_out[0]_i_3_n_0 ;
  wire \tdata_out[0]_i_4_n_0 ;
  wire \tdata_out[0]_i_5_n_0 ;
  wire \tdata_out[0]_i_6_n_0 ;
  wire \tdata_out[0]_i_7_n_0 ;
  wire \tdata_out[0]_i_8_n_0 ;
  wire \tdata_out[0]_i_9_n_0 ;
  wire \tdata_out[10]_i_2_n_0 ;
  wire \tdata_out[10]_i_3_n_0 ;
  wire \tdata_out[10]_i_4_n_0 ;
  wire \tdata_out[11]_i_2_n_0 ;
  wire \tdata_out[11]_i_3_n_0 ;
  wire \tdata_out[11]_i_4_n_0 ;
  wire \tdata_out[12]_i_2_n_0 ;
  wire \tdata_out[12]_i_3_n_0 ;
  wire \tdata_out[12]_i_4_n_0 ;
  wire \tdata_out[13]_i_2_n_0 ;
  wire \tdata_out[13]_i_3_n_0 ;
  wire \tdata_out[13]_i_4_n_0 ;
  wire \tdata_out[14]_i_2_n_0 ;
  wire \tdata_out[14]_i_3_n_0 ;
  wire \tdata_out[14]_i_4_n_0 ;
  wire \tdata_out[15]_i_2_n_0 ;
  wire \tdata_out[15]_i_3_n_0 ;
  wire \tdata_out[15]_i_4_n_0 ;
  wire \tdata_out[16]_i_2_n_0 ;
  wire \tdata_out[16]_i_3_n_0 ;
  wire \tdata_out[16]_i_4_n_0 ;
  wire \tdata_out[16]_i_5_n_0 ;
  wire \tdata_out[17]_i_2_n_0 ;
  wire \tdata_out[17]_i_3_n_0 ;
  wire \tdata_out[17]_i_4_n_0 ;
  wire \tdata_out[17]_i_5_n_0 ;
  wire \tdata_out[18]_i_2_n_0 ;
  wire \tdata_out[18]_i_3_n_0 ;
  wire \tdata_out[18]_i_4_n_0 ;
  wire \tdata_out[18]_i_5_n_0 ;
  wire \tdata_out[19]_i_2_n_0 ;
  wire \tdata_out[19]_i_3_n_0 ;
  wire \tdata_out[19]_i_4_n_0 ;
  wire \tdata_out[19]_i_5_n_0 ;
  wire \tdata_out[1]_i_2_n_0 ;
  wire \tdata_out[1]_i_3_n_0 ;
  wire \tdata_out[1]_i_4_n_0 ;
  wire \tdata_out[20]_i_2_n_0 ;
  wire \tdata_out[20]_i_3_n_0 ;
  wire \tdata_out[20]_i_4_n_0 ;
  wire \tdata_out[20]_i_5_n_0 ;
  wire \tdata_out[21]_i_2_n_0 ;
  wire \tdata_out[21]_i_3_n_0 ;
  wire \tdata_out[21]_i_4_n_0 ;
  wire \tdata_out[21]_i_5_n_0 ;
  wire \tdata_out[22]_i_2_n_0 ;
  wire \tdata_out[22]_i_3_n_0 ;
  wire \tdata_out[22]_i_4_n_0 ;
  wire \tdata_out[22]_i_5_n_0 ;
  wire \tdata_out[23]_i_2_n_0 ;
  wire \tdata_out[23]_i_3_n_0 ;
  wire \tdata_out[23]_i_4_n_0 ;
  wire \tdata_out[23]_i_5_n_0 ;
  wire \tdata_out[24]_i_2_n_0 ;
  wire \tdata_out[24]_i_3_n_0 ;
  wire \tdata_out[24]_i_4_n_0 ;
  wire \tdata_out[24]_i_5_n_0 ;
  wire \tdata_out[25]_i_2_n_0 ;
  wire \tdata_out[25]_i_3_n_0 ;
  wire \tdata_out[25]_i_4_n_0 ;
  wire \tdata_out[25]_i_5_n_0 ;
  wire \tdata_out[26]_i_2_n_0 ;
  wire \tdata_out[26]_i_3_n_0 ;
  wire \tdata_out[26]_i_4_n_0 ;
  wire \tdata_out[26]_i_5_n_0 ;
  wire \tdata_out[27]_i_2_n_0 ;
  wire \tdata_out[27]_i_3_n_0 ;
  wire \tdata_out[27]_i_4_n_0 ;
  wire \tdata_out[27]_i_5_n_0 ;
  wire \tdata_out[28]_i_2_n_0 ;
  wire \tdata_out[28]_i_3_n_0 ;
  wire \tdata_out[28]_i_4_n_0 ;
  wire \tdata_out[28]_i_5_n_0 ;
  wire \tdata_out[28]_i_6_n_0 ;
  wire \tdata_out[29]_i_2_n_0 ;
  wire \tdata_out[29]_i_3_n_0 ;
  wire \tdata_out[29]_i_4_n_0 ;
  wire \tdata_out[29]_i_5_n_0 ;
  wire \tdata_out[29]_i_6_n_0 ;
  wire \tdata_out[2]_i_2_n_0 ;
  wire \tdata_out[2]_i_3_n_0 ;
  wire \tdata_out[2]_i_4_n_0 ;
  wire \tdata_out[30]_i_2_n_0 ;
  wire \tdata_out[30]_i_3_n_0 ;
  wire \tdata_out[30]_i_4_n_0 ;
  wire \tdata_out[30]_i_5_n_0 ;
  wire \tdata_out[30]_i_6_n_0 ;
  wire \tdata_out[31]_i_2_n_0 ;
  wire \tdata_out[31]_i_3_n_0 ;
  wire \tdata_out[31]_i_4_n_0 ;
  wire \tdata_out[31]_i_5_n_0 ;
  wire \tdata_out[31]_i_6_n_0 ;
  wire \tdata_out[32]_i_2_n_0 ;
  wire \tdata_out[32]_i_3_n_0 ;
  wire \tdata_out[33]_i_2_n_0 ;
  wire \tdata_out[33]_i_3_n_0 ;
  wire \tdata_out[33]_i_4_n_0 ;
  wire \tdata_out[34]_i_2_n_0 ;
  wire \tdata_out[34]_i_3_n_0 ;
  wire \tdata_out[35]_i_2_n_0 ;
  wire \tdata_out[35]_i_3_n_0 ;
  wire \tdata_out[35]_i_4_n_0 ;
  wire \tdata_out[36]_i_2_n_0 ;
  wire \tdata_out[36]_i_3_n_0 ;
  wire \tdata_out[37]_i_2_n_0 ;
  wire \tdata_out[37]_i_3_n_0 ;
  wire \tdata_out[37]_i_4_n_0 ;
  wire \tdata_out[38]_i_2_n_0 ;
  wire \tdata_out[38]_i_3_n_0 ;
  wire \tdata_out[39]_i_2_n_0 ;
  wire \tdata_out[39]_i_3_n_0 ;
  wire \tdata_out[39]_i_4_n_0 ;
  wire \tdata_out[3]_i_2_n_0 ;
  wire \tdata_out[3]_i_3_n_0 ;
  wire \tdata_out[3]_i_4_n_0 ;
  wire \tdata_out[40]_i_2_n_0 ;
  wire \tdata_out[40]_i_3_n_0 ;
  wire \tdata_out[41]_i_2_n_0 ;
  wire \tdata_out[41]_i_3_n_0 ;
  wire \tdata_out[41]_i_4_n_0 ;
  wire \tdata_out[42]_i_2_n_0 ;
  wire \tdata_out[42]_i_3_n_0 ;
  wire \tdata_out[43]_i_2_n_0 ;
  wire \tdata_out[43]_i_3_n_0 ;
  wire \tdata_out[43]_i_4_n_0 ;
  wire \tdata_out[44]_i_2_n_0 ;
  wire \tdata_out[44]_i_3_n_0 ;
  wire \tdata_out[45]_i_2_n_0 ;
  wire \tdata_out[45]_i_3_n_0 ;
  wire \tdata_out[45]_i_4_n_0 ;
  wire \tdata_out[46]_i_2_n_0 ;
  wire \tdata_out[46]_i_3_n_0 ;
  wire \tdata_out[47]_i_2_n_0 ;
  wire \tdata_out[47]_i_3_n_0 ;
  wire \tdata_out[47]_i_4_n_0 ;
  wire \tdata_out[48]_i_2_n_0 ;
  wire \tdata_out[48]_i_3_n_0 ;
  wire \tdata_out[48]_i_4_n_0 ;
  wire \tdata_out[49]_i_2_n_0 ;
  wire \tdata_out[49]_i_3_n_0 ;
  wire \tdata_out[49]_i_4_n_0 ;
  wire \tdata_out[49]_i_5_n_0 ;
  wire \tdata_out[4]_i_2_n_0 ;
  wire \tdata_out[4]_i_3_n_0 ;
  wire \tdata_out[4]_i_4_n_0 ;
  wire \tdata_out[50]_i_2_n_0 ;
  wire \tdata_out[50]_i_3_n_0 ;
  wire \tdata_out[50]_i_4_n_0 ;
  wire \tdata_out[51]_i_2_n_0 ;
  wire \tdata_out[51]_i_3_n_0 ;
  wire \tdata_out[51]_i_4_n_0 ;
  wire \tdata_out[51]_i_5_n_0 ;
  wire \tdata_out[52]_i_2_n_0 ;
  wire \tdata_out[52]_i_3_n_0 ;
  wire \tdata_out[52]_i_4_n_0 ;
  wire \tdata_out[53]_i_2_n_0 ;
  wire \tdata_out[53]_i_3_n_0 ;
  wire \tdata_out[53]_i_4_n_0 ;
  wire \tdata_out[53]_i_5_n_0 ;
  wire \tdata_out[54]_i_2_n_0 ;
  wire \tdata_out[54]_i_3_n_0 ;
  wire \tdata_out[54]_i_4_n_0 ;
  wire \tdata_out[54]_i_5_n_0 ;
  wire \tdata_out[55]_i_2_n_0 ;
  wire \tdata_out[55]_i_3_n_0 ;
  wire \tdata_out[55]_i_4_n_0 ;
  wire \tdata_out[55]_i_5_n_0 ;
  wire \tdata_out[56]_i_2_n_0 ;
  wire \tdata_out[56]_i_3_n_0 ;
  wire \tdata_out[56]_i_4_n_0 ;
  wire \tdata_out[57]_i_2_n_0 ;
  wire \tdata_out[57]_i_3_n_0 ;
  wire \tdata_out[57]_i_4_n_0 ;
  wire \tdata_out[58]_i_2_n_0 ;
  wire \tdata_out[58]_i_3_n_0 ;
  wire \tdata_out[58]_i_4_n_0 ;
  wire \tdata_out[59]_i_2_n_0 ;
  wire \tdata_out[59]_i_3_n_0 ;
  wire \tdata_out[59]_i_4_n_0 ;
  wire \tdata_out[5]_i_2_n_0 ;
  wire \tdata_out[5]_i_3_n_0 ;
  wire \tdata_out[5]_i_4_n_0 ;
  wire \tdata_out[60]_i_2_n_0 ;
  wire \tdata_out[60]_i_3_n_0 ;
  wire \tdata_out[61]_i_2_n_0 ;
  wire \tdata_out[62]_i_2_n_0 ;
  wire \tdata_out[63]_i_2_n_0 ;
  wire \tdata_out[63]_i_3_n_0 ;
  wire \tdata_out[63]_i_4_n_0 ;
  wire \tdata_out[63]_i_5_n_0 ;
  wire \tdata_out[63]_i_6_n_0 ;
  wire \tdata_out[6]_i_2_n_0 ;
  wire \tdata_out[6]_i_3_n_0 ;
  wire \tdata_out[6]_i_4_n_0 ;
  wire \tdata_out[7]_i_2_n_0 ;
  wire \tdata_out[7]_i_3_n_0 ;
  wire \tdata_out[7]_i_4_n_0 ;
  wire \tdata_out[8]_i_2_n_0 ;
  wire \tdata_out[8]_i_3_n_0 ;
  wire \tdata_out[8]_i_4_n_0 ;
  wire \tdata_out[9]_i_2_n_0 ;
  wire \tdata_out[9]_i_3_n_0 ;
  wire \tdata_out[9]_i_4_n_0 ;
  wire tvalid_in;
  wire tvalid_out;
  wire [3:2]NLW_tdata_out2_carry__14_CO_UNCONNECTED;
  wire [3:3]NLW_tdata_out2_carry__14_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \STOPRESULT_BITS_r[5]_i_1 
       (.I0(aresetn),
        .I1(en),
        .O(STOPRESULT_BITS_r_0));
  FDRE \STOPRESULT_BITS_r_reg[0] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(STOPRESULT_BITS[0]),
        .Q(STOPRESULT_BITS_r[0]),
        .R(1'b0));
  FDRE \STOPRESULT_BITS_r_reg[1] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(STOPRESULT_BITS[1]),
        .Q(STOPRESULT_BITS_r[1]),
        .R(1'b0));
  FDRE \STOPRESULT_BITS_r_reg[2] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(STOPRESULT_BITS[2]),
        .Q(STOPRESULT_BITS_r[2]),
        .R(1'b0));
  FDRE \STOPRESULT_BITS_r_reg[3] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(STOPRESULT_BITS[3]),
        .Q(STOPRESULT_BITS_r[3]),
        .R(1'b0));
  FDRE \STOPRESULT_BITS_r_reg[4] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(STOPRESULT_BITS[4]),
        .Q(STOPRESULT_BITS_r[4]),
        .R(1'b0));
  FDRE \STOPRESULT_BITS_r_reg[5] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(STOPRESULT_BITS[5]),
        .Q(STOPRESULT_BITS_r[5]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[0] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[0]),
        .Q(log_2_BIN_WIDTH_r[0]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[10] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[10]),
        .Q(log_2_BIN_WIDTH_r[10]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[11] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[11]),
        .Q(log_2_BIN_WIDTH_r[11]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[12] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[12]),
        .Q(log_2_BIN_WIDTH_r[12]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[13] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[13]),
        .Q(log_2_BIN_WIDTH_r[13]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[14] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[14]),
        .Q(log_2_BIN_WIDTH_r[14]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[15] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[15]),
        .Q(log_2_BIN_WIDTH_r[15]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[1] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[1]),
        .Q(log_2_BIN_WIDTH_r[1]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[2] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[2]),
        .Q(log_2_BIN_WIDTH_r[2]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[3] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[3]),
        .Q(log_2_BIN_WIDTH_r[3]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[4] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[4]),
        .Q(log_2_BIN_WIDTH_r[4]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[5] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[5]),
        .Q(log_2_BIN_WIDTH_r[5]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[6] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[6]),
        .Q(log_2_BIN_WIDTH_r[6]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[7] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[7]),
        .Q(log_2_BIN_WIDTH_r[7]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[8] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[8]),
        .Q(log_2_BIN_WIDTH_r[8]),
        .R(1'b0));
  FDRE \log_2_BIN_WIDTH_r_reg[9] 
       (.C(clk),
        .CE(STOPRESULT_BITS_r_0),
        .D(log_2_BIN_WIDTH[9]),
        .Q(log_2_BIN_WIDTH_r[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry
       (.CI(1'b0),
        .CO({tdata_out2_carry_n_0,tdata_out2_carry_n_1,tdata_out2_carry_n_2,tdata_out2_carry_n_3}),
        .CYINIT(tdata_out3),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry_n_4,tdata_out2_carry_n_5,tdata_out2_carry_n_6,tdata_out2_carry_n_7}),
        .S({tdata_out2_carry_i_2_n_0,tdata_out2_carry_i_3_n_0,tdata_out2_carry_i_4_n_0,tdata_out2_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__0
       (.CI(tdata_out2_carry_n_0),
        .CO({tdata_out2_carry__0_n_0,tdata_out2_carry__0_n_1,tdata_out2_carry__0_n_2,tdata_out2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__0_n_4,tdata_out2_carry__0_n_5,tdata_out2_carry__0_n_6,tdata_out2_carry__0_n_7}),
        .S({tdata_out2_carry__0_i_1_n_0,tdata_out2_carry__0_i_2_n_0,tdata_out2_carry__0_i_3_n_0,tdata_out2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    tdata_out2_carry__0_i_1
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    tdata_out2_carry__0_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    tdata_out2_carry__0_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    tdata_out2_carry__0_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__1
       (.CI(tdata_out2_carry__0_n_0),
        .CO({tdata_out2_carry__1_n_0,tdata_out2_carry__1_n_1,tdata_out2_carry__1_n_2,tdata_out2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__1_n_4,tdata_out2_carry__1_n_5,tdata_out2_carry__1_n_6,tdata_out2_carry__1_n_7}),
        .S({tdata_out2_carry__1_i_1_n_0,tdata_out2_carry__1_i_2_n_0,tdata_out2_carry__1_i_3_n_0,tdata_out2_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__10
       (.CI(tdata_out2_carry__9_n_0),
        .CO({tdata_out2_carry__10_n_0,tdata_out2_carry__10_n_1,tdata_out2_carry__10_n_2,tdata_out2_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__10_n_4,tdata_out2_carry__10_n_5,tdata_out2_carry__10_n_6,tdata_out2_carry__10_n_7}),
        .S({tdata_out2_carry__10_i_1_n_0,tdata_out2_carry__10_i_2_n_0,tdata_out2_carry__10_i_3_n_0,tdata_out2_carry__10_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    tdata_out2_carry__10_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__10_i_1_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    tdata_out2_carry__10_i_2
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__10_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    tdata_out2_carry__10_i_3
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__10_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    tdata_out2_carry__10_i_4
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__10_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__11
       (.CI(tdata_out2_carry__10_n_0),
        .CO({tdata_out2_carry__11_n_0,tdata_out2_carry__11_n_1,tdata_out2_carry__11_n_2,tdata_out2_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__11_n_4,tdata_out2_carry__11_n_5,tdata_out2_carry__11_n_6,tdata_out2_carry__11_n_7}),
        .S({tdata_out2_carry__11_i_1_n_0,tdata_out2_carry__11_i_2_n_0,tdata_out2_carry__11_i_3_n_0,tdata_out2_carry__11_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    tdata_out2_carry__11_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__11_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    tdata_out2_carry__11_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__11_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    tdata_out2_carry__11_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__11_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    tdata_out2_carry__11_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__11_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__12
       (.CI(tdata_out2_carry__11_n_0),
        .CO({tdata_out2_carry__12_n_0,tdata_out2_carry__12_n_1,tdata_out2_carry__12_n_2,tdata_out2_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__12_n_4,tdata_out2_carry__12_n_5,tdata_out2_carry__12_n_6,tdata_out2_carry__12_n_7}),
        .S({tdata_out2_carry__12_i_1_n_0,tdata_out2_carry__12_i_2_n_0,tdata_out2_carry__12_i_3_n_0,tdata_out2_carry__12_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    tdata_out2_carry__12_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__12_i_1_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    tdata_out2_carry__12_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__12_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    tdata_out2_carry__12_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__12_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    tdata_out2_carry__12_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__12_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__13
       (.CI(tdata_out2_carry__12_n_0),
        .CO({tdata_out2_carry__13_n_0,tdata_out2_carry__13_n_1,tdata_out2_carry__13_n_2,tdata_out2_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__13_n_4,tdata_out2_carry__13_n_5,tdata_out2_carry__13_n_6,tdata_out2_carry__13_n_7}),
        .S({tdata_out2_carry__13_i_1_n_0,tdata_out2_carry__13_i_2_n_0,tdata_out2_carry__13_i_3_n_0,tdata_out2_carry__13_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    tdata_out2_carry__13_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__13_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    tdata_out2_carry__13_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__13_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    tdata_out2_carry__13_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__13_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    tdata_out2_carry__13_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__13_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__14
       (.CI(tdata_out2_carry__13_n_0),
        .CO({NLW_tdata_out2_carry__14_CO_UNCONNECTED[3:2],tdata_out2_carry__14_n_2,tdata_out2_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({NLW_tdata_out2_carry__14_O_UNCONNECTED[3],tdata_out2_carry__14_n_5,tdata_out2_carry__14_n_6,tdata_out2_carry__14_n_7}),
        .S({1'b0,tdata_out2_carry__14_i_1_n_0,tdata_out2_carry__14_i_2_n_0,tdata_out2_carry__14_i_3_n_0}));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    tdata_out2_carry__14_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__14_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    tdata_out2_carry__14_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__14_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    tdata_out2_carry__14_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__14_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    tdata_out2_carry__1_i_1
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    tdata_out2_carry__1_i_2
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    tdata_out2_carry__1_i_3
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    tdata_out2_carry__1_i_4
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__2
       (.CI(tdata_out2_carry__1_n_0),
        .CO({tdata_out2_carry__2_n_0,tdata_out2_carry__2_n_1,tdata_out2_carry__2_n_2,tdata_out2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__2_n_4,tdata_out2_carry__2_n_5,tdata_out2_carry__2_n_6,tdata_out2_carry__2_n_7}),
        .S({tdata_out2_carry__2_i_1_n_0,tdata_out2_carry__2_i_2_n_0,tdata_out2_carry__2_i_3_n_0,tdata_out2_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    tdata_out2_carry__2_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    tdata_out2_carry__2_i_2
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    tdata_out2_carry__2_i_3
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    tdata_out2_carry__2_i_4
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__3
       (.CI(tdata_out2_carry__2_n_0),
        .CO({tdata_out2_carry__3_n_0,tdata_out2_carry__3_n_1,tdata_out2_carry__3_n_2,tdata_out2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__3_n_4,tdata_out2_carry__3_n_5,tdata_out2_carry__3_n_6,tdata_out2_carry__3_n_7}),
        .S({tdata_out2_carry__3_i_1_n_0,tdata_out2_carry__3_i_2_n_0,tdata_out2_carry__3_i_3_n_0,tdata_out2_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    tdata_out2_carry__3_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    tdata_out2_carry__3_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    tdata_out2_carry__3_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    tdata_out2_carry__3_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__4
       (.CI(tdata_out2_carry__3_n_0),
        .CO({tdata_out2_carry__4_n_0,tdata_out2_carry__4_n_1,tdata_out2_carry__4_n_2,tdata_out2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__4_n_4,tdata_out2_carry__4_n_5,tdata_out2_carry__4_n_6,tdata_out2_carry__4_n_7}),
        .S({tdata_out2_carry__4_i_1_n_0,tdata_out2_carry__4_i_2_n_0,tdata_out2_carry__4_i_3_n_0,tdata_out2_carry__4_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    tdata_out2_carry__4_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    tdata_out2_carry__4_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    tdata_out2_carry__4_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    tdata_out2_carry__4_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__5
       (.CI(tdata_out2_carry__4_n_0),
        .CO({tdata_out2_carry__5_n_0,tdata_out2_carry__5_n_1,tdata_out2_carry__5_n_2,tdata_out2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__5_n_4,tdata_out2_carry__5_n_5,tdata_out2_carry__5_n_6,tdata_out2_carry__5_n_7}),
        .S({tdata_out2_carry__5_i_1_n_0,tdata_out2_carry__5_i_2_n_0,tdata_out2_carry__5_i_3_n_0,tdata_out2_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    tdata_out2_carry__5_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    tdata_out2_carry__5_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    tdata_out2_carry__5_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    tdata_out2_carry__5_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__6
       (.CI(tdata_out2_carry__5_n_0),
        .CO({tdata_out2_carry__6_n_0,tdata_out2_carry__6_n_1,tdata_out2_carry__6_n_2,tdata_out2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__6_n_4,tdata_out2_carry__6_n_5,tdata_out2_carry__6_n_6,tdata_out2_carry__6_n_7}),
        .S({tdata_out2_carry__6_i_1_n_0,tdata_out2_carry__6_i_2_n_0,tdata_out2_carry__6_i_3_n_0,tdata_out2_carry__6_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    tdata_out2_carry__6_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    tdata_out2_carry__6_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    tdata_out2_carry__6_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    tdata_out2_carry__6_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__7
       (.CI(tdata_out2_carry__6_n_0),
        .CO({tdata_out2_carry__7_n_0,tdata_out2_carry__7_n_1,tdata_out2_carry__7_n_2,tdata_out2_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__7_n_4,tdata_out2_carry__7_n_5,tdata_out2_carry__7_n_6,tdata_out2_carry__7_n_7}),
        .S({tdata_out2_carry__7_i_1_n_0,tdata_out2_carry__7_i_2_n_0,tdata_out2_carry__7_i_3_n_0,tdata_out2_carry__7_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    tdata_out2_carry__7_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__7_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    tdata_out2_carry__7_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__7_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    tdata_out2_carry__7_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__7_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    tdata_out2_carry__7_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__7_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__8
       (.CI(tdata_out2_carry__7_n_0),
        .CO({tdata_out2_carry__8_n_0,tdata_out2_carry__8_n_1,tdata_out2_carry__8_n_2,tdata_out2_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__8_n_4,tdata_out2_carry__8_n_5,tdata_out2_carry__8_n_6,tdata_out2_carry__8_n_7}),
        .S({tdata_out2_carry__8_i_1_n_0,tdata_out2_carry__8_i_2_n_0,tdata_out2_carry__8_i_3_n_0,tdata_out2_carry__8_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    tdata_out2_carry__8_i_1
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__8_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    tdata_out2_carry__8_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__8_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    tdata_out2_carry__8_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__8_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    tdata_out2_carry__8_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__8_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tdata_out2_carry__9
       (.CI(tdata_out2_carry__8_n_0),
        .CO({tdata_out2_carry__9_n_0,tdata_out2_carry__9_n_1,tdata_out2_carry__9_n_2,tdata_out2_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({tdata_out2_carry__9_n_4,tdata_out2_carry__9_n_5,tdata_out2_carry__9_n_6,tdata_out2_carry__9_n_7}),
        .S({tdata_out2_carry__9_i_1_n_0,tdata_out2_carry__9_i_2_n_0,tdata_out2_carry__9_i_3_n_0,tdata_out2_carry__9_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    tdata_out2_carry__9_i_1
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__9_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    tdata_out2_carry__9_i_2
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__9_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    tdata_out2_carry__9_i_3
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__9_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    tdata_out2_carry__9_i_4
       (.I0(STOPRESULT_BITS_r[3]),
        .I1(STOPRESULT_BITS_r[4]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry__9_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    tdata_out2_carry_i_1
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out3));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    tdata_out2_carry_i_2
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    tdata_out2_carry_i_3
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    tdata_out2_carry_i_4
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[1]),
        .I4(STOPRESULT_BITS_r[0]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    tdata_out2_carry_i_5
       (.I0(STOPRESULT_BITS_r[4]),
        .I1(STOPRESULT_BITS_r[3]),
        .I2(STOPRESULT_BITS_r[5]),
        .I3(STOPRESULT_BITS_r[0]),
        .I4(STOPRESULT_BITS_r[1]),
        .I5(STOPRESULT_BITS_r[2]),
        .O(tdata_out2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \tdata_out[0]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[0]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[0]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[1]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_out[0]_i_10 
       (.I0(tdata_in[42]),
        .I1(tdata_out2_carry__9_n_6),
        .O(\tdata_out[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_out[0]_i_11 
       (.I0(tdata_in[34]),
        .I1(tdata_out2_carry__7_n_6),
        .O(\tdata_out[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[0]_i_2 
       (.I0(\tdata_out[4]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[0]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[3]),
        .I4(\tdata_out[0]_i_5_n_0 ),
        .O(\tdata_out[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[0]_i_3 
       (.I0(\tdata_out[6]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[0]_i_6_n_0 ),
        .I3(log_2_BIN_WIDTH_r[3]),
        .I4(\tdata_out[0]_i_7_n_0 ),
        .O(\tdata_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \tdata_out[0]_i_4 
       (.I0(\tdata_out[24]_i_5_n_0 ),
        .I1(log_2_BIN_WIDTH_r[4]),
        .I2(\tdata_out[0]_i_8_n_0 ),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(tdata_in[8]),
        .I5(tdata_out2_carry__0_n_4),
        .O(\tdata_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \tdata_out[0]_i_5 
       (.I0(\tdata_out[16]_i_5_n_0 ),
        .I1(log_2_BIN_WIDTH_r[4]),
        .I2(\tdata_out[0]_i_9_n_0 ),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(tdata_in[0]),
        .I5(tdata_out3),
        .O(\tdata_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \tdata_out[0]_i_6 
       (.I0(\tdata_out[26]_i_5_n_0 ),
        .I1(log_2_BIN_WIDTH_r[4]),
        .I2(\tdata_out[0]_i_10_n_0 ),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(tdata_in[10]),
        .I5(tdata_out2_carry__1_n_6),
        .O(\tdata_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \tdata_out[0]_i_7 
       (.I0(\tdata_out[18]_i_5_n_0 ),
        .I1(log_2_BIN_WIDTH_r[4]),
        .I2(\tdata_out[0]_i_11_n_0 ),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(tdata_in[2]),
        .I5(tdata_out2_carry_n_6),
        .O(\tdata_out[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_out[0]_i_8 
       (.I0(tdata_in[40]),
        .I1(tdata_out2_carry__8_n_4),
        .O(\tdata_out[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_out[0]_i_9 
       (.I0(tdata_in[32]),
        .I1(tdata_out2_carry__6_n_4),
        .O(\tdata_out[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[10]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[10]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[11]_i_2_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[10]_i_2 
       (.I0(\tdata_out[16]_i_3_n_0 ),
        .I1(\tdata_out[12]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[14]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[10]_i_3_n_0 ),
        .O(\tdata_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[10]_i_3 
       (.I0(\tdata_out[18]_i_4_n_0 ),
        .I1(\tdata_out[18]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[26]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[10]_i_4_n_0 ),
        .O(\tdata_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[10]_i_4 
       (.I0(tdata_in[42]),
        .I1(tdata_out2_carry__9_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[10]),
        .I4(tdata_out2_carry__1_n_6),
        .O(\tdata_out[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[11]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[11]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[12]_i_2_n_0 ),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[11]_i_2 
       (.I0(\tdata_out[17]_i_3_n_0 ),
        .I1(\tdata_out[13]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[15]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[11]_i_3_n_0 ),
        .O(\tdata_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[11]_i_3 
       (.I0(\tdata_out[19]_i_4_n_0 ),
        .I1(\tdata_out[19]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[27]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[11]_i_4_n_0 ),
        .O(\tdata_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[11]_i_4 
       (.I0(tdata_in[43]),
        .I1(tdata_out2_carry__9_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[11]),
        .I4(tdata_out2_carry__1_n_5),
        .O(\tdata_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[12]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[12]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[13]_i_2_n_0 ),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[12]_i_2 
       (.I0(\tdata_out[18]_i_3_n_0 ),
        .I1(\tdata_out[14]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[16]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[12]_i_3_n_0 ),
        .O(\tdata_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[12]_i_3 
       (.I0(\tdata_out[20]_i_4_n_0 ),
        .I1(\tdata_out[20]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[28]_i_6_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[12]_i_4_n_0 ),
        .O(\tdata_out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[12]_i_4 
       (.I0(tdata_in[44]),
        .I1(tdata_out2_carry__9_n_4),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[12]),
        .I4(tdata_out2_carry__1_n_4),
        .O(\tdata_out[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[13]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[13]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[14]_i_2_n_0 ),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[13]_i_2 
       (.I0(\tdata_out[19]_i_3_n_0 ),
        .I1(\tdata_out[15]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[17]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[13]_i_3_n_0 ),
        .O(\tdata_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[13]_i_3 
       (.I0(\tdata_out[21]_i_4_n_0 ),
        .I1(\tdata_out[21]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[29]_i_6_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[13]_i_4_n_0 ),
        .O(\tdata_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[13]_i_4 
       (.I0(tdata_in[45]),
        .I1(tdata_out2_carry__10_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[13]),
        .I4(tdata_out2_carry__2_n_7),
        .O(\tdata_out[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[14]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[14]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[15]_i_2_n_0 ),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[14]_i_2 
       (.I0(\tdata_out[20]_i_3_n_0 ),
        .I1(\tdata_out[16]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[18]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[14]_i_3_n_0 ),
        .O(\tdata_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[14]_i_3 
       (.I0(\tdata_out[22]_i_4_n_0 ),
        .I1(\tdata_out[22]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[30]_i_6_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[14]_i_4_n_0 ),
        .O(\tdata_out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[14]_i_4 
       (.I0(tdata_in[46]),
        .I1(tdata_out2_carry__10_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[14]),
        .I4(tdata_out2_carry__2_n_6),
        .O(\tdata_out[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[15]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[15]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[16]_i_2_n_0 ),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[15]_i_2 
       (.I0(\tdata_out[21]_i_3_n_0 ),
        .I1(\tdata_out[17]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[19]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[15]_i_3_n_0 ),
        .O(\tdata_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[15]_i_3 
       (.I0(\tdata_out[23]_i_4_n_0 ),
        .I1(\tdata_out[23]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[31]_i_6_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[15]_i_4_n_0 ),
        .O(\tdata_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[15]_i_4 
       (.I0(tdata_in[47]),
        .I1(tdata_out2_carry__10_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[15]),
        .I4(tdata_out2_carry__2_n_5),
        .O(\tdata_out[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[16]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[16]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[17]_i_2_n_0 ),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[16]_i_2 
       (.I0(\tdata_out[22]_i_3_n_0 ),
        .I1(\tdata_out[18]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[20]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[16]_i_3_n_0 ),
        .O(\tdata_out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[16]_i_3 
       (.I0(\tdata_out[24]_i_4_n_0 ),
        .I1(\tdata_out[24]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[16]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[16]_i_5_n_0 ),
        .O(\tdata_out[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[16]_i_4 
       (.I0(tdata_out2_carry__6_n_4),
        .I1(tdata_in[32]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[16]_i_5 
       (.I0(tdata_in[48]),
        .I1(tdata_out2_carry__10_n_4),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[16]),
        .I4(tdata_out2_carry__2_n_4),
        .O(\tdata_out[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[17]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[17]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[18]_i_2_n_0 ),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[17]_i_2 
       (.I0(\tdata_out[23]_i_3_n_0 ),
        .I1(\tdata_out[19]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[21]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[17]_i_3_n_0 ),
        .O(\tdata_out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[17]_i_3 
       (.I0(\tdata_out[25]_i_4_n_0 ),
        .I1(\tdata_out[25]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[17]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[17]_i_5_n_0 ),
        .O(\tdata_out[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[17]_i_4 
       (.I0(tdata_out2_carry__7_n_7),
        .I1(tdata_in[33]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[17]_i_5 
       (.I0(tdata_in[49]),
        .I1(tdata_out2_carry__11_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[17]),
        .I4(tdata_out2_carry__3_n_7),
        .O(\tdata_out[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[18]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[18]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[19]_i_2_n_0 ),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[18]_i_2 
       (.I0(\tdata_out[24]_i_3_n_0 ),
        .I1(\tdata_out[20]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[22]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[18]_i_3_n_0 ),
        .O(\tdata_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[18]_i_3 
       (.I0(\tdata_out[26]_i_4_n_0 ),
        .I1(\tdata_out[26]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[18]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[18]_i_5_n_0 ),
        .O(\tdata_out[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[18]_i_4 
       (.I0(tdata_out2_carry__7_n_6),
        .I1(tdata_in[34]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[18]_i_5 
       (.I0(tdata_in[50]),
        .I1(tdata_out2_carry__11_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[18]),
        .I4(tdata_out2_carry__3_n_6),
        .O(\tdata_out[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[19]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[19]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[20]_i_2_n_0 ),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[19]_i_2 
       (.I0(\tdata_out[25]_i_3_n_0 ),
        .I1(\tdata_out[21]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[23]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[19]_i_3_n_0 ),
        .O(\tdata_out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[19]_i_3 
       (.I0(\tdata_out[27]_i_4_n_0 ),
        .I1(\tdata_out[27]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[19]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[19]_i_5_n_0 ),
        .O(\tdata_out[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[19]_i_4 
       (.I0(tdata_out2_carry__7_n_5),
        .I1(tdata_in[35]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[19]_i_5 
       (.I0(tdata_in[51]),
        .I1(tdata_out2_carry__11_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[19]),
        .I4(tdata_out2_carry__3_n_5),
        .O(\tdata_out[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[1]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[1]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[2]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[1]_i_2 
       (.I0(\tdata_out[7]_i_3_n_0 ),
        .I1(\tdata_out[3]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[5]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[1]_i_3_n_0 ),
        .O(\tdata_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[1]_i_3 
       (.I0(\tdata_out[25]_i_5_n_0 ),
        .I1(\tdata_out[9]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[17]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[1]_i_4_n_0 ),
        .O(\tdata_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[1]_i_4 
       (.I0(tdata_in[33]),
        .I1(tdata_out2_carry__7_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[1]),
        .I4(tdata_out2_carry_n_7),
        .O(\tdata_out[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[20]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[20]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[21]_i_2_n_0 ),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[20]_i_2 
       (.I0(\tdata_out[26]_i_3_n_0 ),
        .I1(\tdata_out[22]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[24]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[20]_i_3_n_0 ),
        .O(\tdata_out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[20]_i_3 
       (.I0(\tdata_out[28]_i_5_n_0 ),
        .I1(\tdata_out[28]_i_6_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[20]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[20]_i_5_n_0 ),
        .O(\tdata_out[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[20]_i_4 
       (.I0(tdata_out2_carry__7_n_4),
        .I1(tdata_in[36]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[20]_i_5 
       (.I0(tdata_in[52]),
        .I1(tdata_out2_carry__11_n_4),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[20]),
        .I4(tdata_out2_carry__3_n_4),
        .O(\tdata_out[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[21]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[21]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[22]_i_2_n_0 ),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[21]_i_2 
       (.I0(\tdata_out[27]_i_3_n_0 ),
        .I1(\tdata_out[23]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[25]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[21]_i_3_n_0 ),
        .O(\tdata_out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[21]_i_3 
       (.I0(\tdata_out[29]_i_5_n_0 ),
        .I1(\tdata_out[29]_i_6_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[21]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[21]_i_5_n_0 ),
        .O(\tdata_out[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[21]_i_4 
       (.I0(tdata_out2_carry__8_n_7),
        .I1(tdata_in[37]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[21]_i_5 
       (.I0(tdata_in[53]),
        .I1(tdata_out2_carry__12_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[21]),
        .I4(tdata_out2_carry__4_n_7),
        .O(\tdata_out[21]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[22]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[22]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[23]_i_2_n_0 ),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[22]_i_2 
       (.I0(\tdata_out[28]_i_4_n_0 ),
        .I1(\tdata_out[24]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[26]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[22]_i_3_n_0 ),
        .O(\tdata_out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[22]_i_3 
       (.I0(\tdata_out[30]_i_5_n_0 ),
        .I1(\tdata_out[30]_i_6_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[22]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[22]_i_5_n_0 ),
        .O(\tdata_out[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[22]_i_4 
       (.I0(tdata_out2_carry__8_n_6),
        .I1(tdata_in[38]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[22]_i_5 
       (.I0(tdata_in[54]),
        .I1(tdata_out2_carry__12_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[22]),
        .I4(tdata_out2_carry__4_n_6),
        .O(\tdata_out[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[23]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[23]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[24]_i_2_n_0 ),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[23]_i_2 
       (.I0(\tdata_out[29]_i_4_n_0 ),
        .I1(\tdata_out[25]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[27]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[23]_i_3_n_0 ),
        .O(\tdata_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[23]_i_3 
       (.I0(\tdata_out[31]_i_5_n_0 ),
        .I1(\tdata_out[31]_i_6_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[23]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[23]_i_5_n_0 ),
        .O(\tdata_out[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[23]_i_4 
       (.I0(tdata_out2_carry__8_n_5),
        .I1(tdata_in[39]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[23]_i_5 
       (.I0(tdata_in[55]),
        .I1(tdata_out2_carry__12_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[23]),
        .I4(tdata_out2_carry__4_n_5),
        .O(\tdata_out[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[24]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[24]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[25]_i_2_n_0 ),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[24]_i_2 
       (.I0(\tdata_out[30]_i_4_n_0 ),
        .I1(\tdata_out[26]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[28]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[24]_i_3_n_0 ),
        .O(\tdata_out[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[24]_i_3 
       (.I0(\tdata_out[32]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[24]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[24]_i_5_n_0 ),
        .O(\tdata_out[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[24]_i_4 
       (.I0(tdata_out2_carry__8_n_4),
        .I1(tdata_in[40]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[24]_i_5 
       (.I0(tdata_in[56]),
        .I1(tdata_out2_carry__12_n_4),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[24]),
        .I4(tdata_out2_carry__4_n_4),
        .O(\tdata_out[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[25]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[25]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[26]_i_2_n_0 ),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[25]_i_2 
       (.I0(\tdata_out[31]_i_4_n_0 ),
        .I1(\tdata_out[27]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[29]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[25]_i_3_n_0 ),
        .O(\tdata_out[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[25]_i_3 
       (.I0(\tdata_out[33]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[25]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[25]_i_5_n_0 ),
        .O(\tdata_out[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[25]_i_4 
       (.I0(tdata_out2_carry__9_n_7),
        .I1(tdata_in[41]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[25]_i_5 
       (.I0(tdata_in[57]),
        .I1(tdata_out2_carry__13_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[25]),
        .I4(tdata_out2_carry__5_n_7),
        .O(\tdata_out[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[26]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[26]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[27]_i_2_n_0 ),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[26]_i_2 
       (.I0(\tdata_out[28]_i_3_n_0 ),
        .I1(\tdata_out[28]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[30]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[26]_i_3_n_0 ),
        .O(\tdata_out[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[26]_i_3 
       (.I0(\tdata_out[34]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[26]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[26]_i_5_n_0 ),
        .O(\tdata_out[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[26]_i_4 
       (.I0(tdata_out2_carry__9_n_6),
        .I1(tdata_in[42]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[26]_i_5 
       (.I0(tdata_in[58]),
        .I1(tdata_out2_carry__13_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[26]),
        .I4(tdata_out2_carry__5_n_6),
        .O(\tdata_out[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[27]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[27]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[28]_i_2_n_0 ),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[27]_i_2 
       (.I0(\tdata_out[29]_i_3_n_0 ),
        .I1(\tdata_out[29]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[31]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[27]_i_3_n_0 ),
        .O(\tdata_out[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[27]_i_3 
       (.I0(\tdata_out[35]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[27]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[27]_i_5_n_0 ),
        .O(\tdata_out[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[27]_i_4 
       (.I0(tdata_out2_carry__9_n_5),
        .I1(tdata_in[43]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[27]_i_5 
       (.I0(tdata_in[59]),
        .I1(tdata_out2_carry__13_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[27]),
        .I4(tdata_out2_carry__5_n_5),
        .O(\tdata_out[27]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[28]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[28]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[29]_i_2_n_0 ),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[28]_i_2 
       (.I0(\tdata_out[30]_i_3_n_0 ),
        .I1(\tdata_out[30]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[28]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[28]_i_4_n_0 ),
        .O(\tdata_out[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[28]_i_3 
       (.I0(\tdata_out[40]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[32]_i_3_n_0 ),
        .O(\tdata_out[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[28]_i_4 
       (.I0(\tdata_out[36]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[28]_i_5_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[28]_i_6_n_0 ),
        .O(\tdata_out[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[28]_i_5 
       (.I0(tdata_out2_carry__9_n_4),
        .I1(tdata_in[44]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[28]_i_6 
       (.I0(tdata_in[60]),
        .I1(tdata_out2_carry__13_n_4),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[28]),
        .I4(tdata_out2_carry__5_n_4),
        .O(\tdata_out[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[29]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[29]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[30]_i_2_n_0 ),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[29]_i_2 
       (.I0(\tdata_out[31]_i_3_n_0 ),
        .I1(\tdata_out[31]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[29]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[29]_i_4_n_0 ),
        .O(\tdata_out[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[29]_i_3 
       (.I0(\tdata_out[41]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[33]_i_4_n_0 ),
        .O(\tdata_out[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[29]_i_4 
       (.I0(\tdata_out[37]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[29]_i_5_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[29]_i_6_n_0 ),
        .O(\tdata_out[29]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[29]_i_5 
       (.I0(tdata_out2_carry__10_n_7),
        .I1(tdata_in[45]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[29]_i_6 
       (.I0(tdata_in[61]),
        .I1(tdata_out2_carry__14_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[29]),
        .I4(tdata_out2_carry__6_n_7),
        .O(\tdata_out[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[2]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[2]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[3]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[2]_i_2 
       (.I0(\tdata_out[8]_i_3_n_0 ),
        .I1(\tdata_out[4]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[6]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[2]_i_3_n_0 ),
        .O(\tdata_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[2]_i_3 
       (.I0(\tdata_out[26]_i_5_n_0 ),
        .I1(\tdata_out[10]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[18]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[2]_i_4_n_0 ),
        .O(\tdata_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[2]_i_4 
       (.I0(tdata_in[34]),
        .I1(tdata_out2_carry__7_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[2]),
        .I4(tdata_out2_carry_n_6),
        .O(\tdata_out[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[30]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[30]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[31]_i_2_n_0 ),
        .O(p_0_in[30]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[30]_i_2 
       (.I0(\tdata_out[32]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[30]_i_3_n_0 ),
        .I3(log_2_BIN_WIDTH_r[2]),
        .I4(\tdata_out[30]_i_4_n_0 ),
        .O(\tdata_out[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[30]_i_3 
       (.I0(\tdata_out[42]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[34]_i_3_n_0 ),
        .O(\tdata_out[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[30]_i_4 
       (.I0(\tdata_out[38]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[30]_i_5_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[30]_i_6_n_0 ),
        .O(\tdata_out[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[30]_i_5 
       (.I0(tdata_out2_carry__10_n_6),
        .I1(tdata_in[46]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[30]_i_6 
       (.I0(tdata_in[62]),
        .I1(tdata_out2_carry__14_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[30]),
        .I4(tdata_out2_carry__6_n_6),
        .O(\tdata_out[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[31]_i_1 
       (.I0(\tdata_out[34]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[32]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[31]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[31]_i_2 
       (.I0(\tdata_out[33]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[31]_i_3_n_0 ),
        .I3(log_2_BIN_WIDTH_r[2]),
        .I4(\tdata_out[31]_i_4_n_0 ),
        .O(\tdata_out[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[31]_i_3 
       (.I0(\tdata_out[43]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[35]_i_4_n_0 ),
        .O(\tdata_out[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[31]_i_4 
       (.I0(\tdata_out[39]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[3]),
        .I2(\tdata_out[31]_i_5_n_0 ),
        .I3(log_2_BIN_WIDTH_r[4]),
        .I4(\tdata_out[31]_i_6_n_0 ),
        .O(\tdata_out[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdata_out[31]_i_5 
       (.I0(tdata_out2_carry__10_n_5),
        .I1(tdata_in[47]),
        .I2(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[31]_i_6 
       (.I0(tdata_in[63]),
        .I1(tdata_out2_carry__14_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[31]),
        .I4(tdata_out2_carry__6_n_5),
        .O(\tdata_out[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[32]_i_1 
       (.I0(\tdata_out[34]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[32]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[33]_i_2_n_0 ),
        .O(p_0_in[32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[32]_i_2 
       (.I0(\tdata_out[44]_i_3_n_0 ),
        .I1(\tdata_out[36]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[40]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[32]_i_3_n_0 ),
        .O(\tdata_out[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[32]_i_3 
       (.I0(tdata_out2_carry__10_n_4),
        .I1(tdata_in[48]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__6_n_4),
        .I4(tdata_in[32]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[33]_i_1 
       (.I0(\tdata_out[36]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[34]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[33]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[33]_i_2 
       (.I0(\tdata_out[35]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[33]_i_3_n_0 ),
        .O(\tdata_out[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[33]_i_3 
       (.I0(\tdata_out[45]_i_4_n_0 ),
        .I1(\tdata_out[37]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[41]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[33]_i_4_n_0 ),
        .O(\tdata_out[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[33]_i_4 
       (.I0(tdata_out2_carry__11_n_7),
        .I1(tdata_in[49]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__7_n_7),
        .I4(tdata_in[33]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[33]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[34]_i_1 
       (.I0(\tdata_out[36]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[34]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[35]_i_2_n_0 ),
        .O(p_0_in[34]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[34]_i_2 
       (.I0(\tdata_out[46]_i_3_n_0 ),
        .I1(\tdata_out[38]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[42]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[34]_i_3_n_0 ),
        .O(\tdata_out[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[34]_i_3 
       (.I0(tdata_out2_carry__11_n_6),
        .I1(tdata_in[50]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__7_n_6),
        .I4(tdata_in[34]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[34]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[35]_i_1 
       (.I0(\tdata_out[38]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[36]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[35]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[35]_i_2 
       (.I0(\tdata_out[37]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[35]_i_3_n_0 ),
        .O(\tdata_out[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[35]_i_3 
       (.I0(\tdata_out[47]_i_4_n_0 ),
        .I1(\tdata_out[39]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[43]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[35]_i_4_n_0 ),
        .O(\tdata_out[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[35]_i_4 
       (.I0(tdata_out2_carry__11_n_5),
        .I1(tdata_in[51]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__7_n_5),
        .I4(tdata_in[35]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[35]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[36]_i_1 
       (.I0(\tdata_out[38]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[36]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[37]_i_2_n_0 ),
        .O(p_0_in[36]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[36]_i_2 
       (.I0(\tdata_out[48]_i_4_n_0 ),
        .I1(\tdata_out[40]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[44]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[36]_i_3_n_0 ),
        .O(\tdata_out[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[36]_i_3 
       (.I0(tdata_out2_carry__11_n_4),
        .I1(tdata_in[52]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__7_n_4),
        .I4(tdata_in[36]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[36]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[37]_i_1 
       (.I0(\tdata_out[40]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[38]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[37]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[37]_i_2 
       (.I0(\tdata_out[39]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[37]_i_3_n_0 ),
        .O(\tdata_out[37]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[37]_i_3 
       (.I0(\tdata_out[49]_i_5_n_0 ),
        .I1(\tdata_out[41]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[45]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[37]_i_4_n_0 ),
        .O(\tdata_out[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[37]_i_4 
       (.I0(tdata_out2_carry__12_n_7),
        .I1(tdata_in[53]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__8_n_7),
        .I4(tdata_in[37]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[37]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[38]_i_1 
       (.I0(\tdata_out[40]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[38]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[39]_i_2_n_0 ),
        .O(p_0_in[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[38]_i_2 
       (.I0(\tdata_out[50]_i_4_n_0 ),
        .I1(\tdata_out[42]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[46]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[38]_i_3_n_0 ),
        .O(\tdata_out[38]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[38]_i_3 
       (.I0(tdata_out2_carry__12_n_6),
        .I1(tdata_in[54]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__8_n_6),
        .I4(tdata_in[38]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[38]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[39]_i_1 
       (.I0(\tdata_out[42]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[40]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[39]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[39]_i_2 
       (.I0(\tdata_out[41]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[39]_i_3_n_0 ),
        .O(\tdata_out[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[39]_i_3 
       (.I0(\tdata_out[51]_i_5_n_0 ),
        .I1(\tdata_out[43]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[47]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[39]_i_4_n_0 ),
        .O(\tdata_out[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[39]_i_4 
       (.I0(tdata_out2_carry__12_n_5),
        .I1(tdata_in[55]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__8_n_5),
        .I4(tdata_in[39]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[39]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[3]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[3]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[4]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[3]_i_2 
       (.I0(\tdata_out[9]_i_3_n_0 ),
        .I1(\tdata_out[5]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[7]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[3]_i_3_n_0 ),
        .O(\tdata_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[3]_i_3 
       (.I0(\tdata_out[27]_i_5_n_0 ),
        .I1(\tdata_out[11]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[19]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[3]_i_4_n_0 ),
        .O(\tdata_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[3]_i_4 
       (.I0(tdata_in[35]),
        .I1(tdata_out2_carry__7_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[3]),
        .I4(tdata_out2_carry_n_5),
        .O(\tdata_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[40]_i_1 
       (.I0(\tdata_out[42]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[40]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[41]_i_2_n_0 ),
        .O(p_0_in[40]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[40]_i_2 
       (.I0(\tdata_out[52]_i_4_n_0 ),
        .I1(\tdata_out[44]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[48]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[40]_i_3_n_0 ),
        .O(\tdata_out[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[40]_i_3 
       (.I0(tdata_out2_carry__12_n_4),
        .I1(tdata_in[56]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__8_n_4),
        .I4(tdata_in[40]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[40]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[41]_i_1 
       (.I0(\tdata_out[44]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[42]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[41]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[41]_i_2 
       (.I0(\tdata_out[43]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[41]_i_3_n_0 ),
        .O(\tdata_out[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[41]_i_3 
       (.I0(\tdata_out[53]_i_5_n_0 ),
        .I1(\tdata_out[45]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[49]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[41]_i_4_n_0 ),
        .O(\tdata_out[41]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[41]_i_4 
       (.I0(tdata_out2_carry__13_n_7),
        .I1(tdata_in[57]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__9_n_7),
        .I4(tdata_in[41]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[41]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[42]_i_1 
       (.I0(\tdata_out[44]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[42]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[43]_i_2_n_0 ),
        .O(p_0_in[42]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[42]_i_2 
       (.I0(\tdata_out[54]_i_5_n_0 ),
        .I1(\tdata_out[46]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[50]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[42]_i_3_n_0 ),
        .O(\tdata_out[42]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[42]_i_3 
       (.I0(tdata_out2_carry__13_n_6),
        .I1(tdata_in[58]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__9_n_6),
        .I4(tdata_in[42]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[42]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[43]_i_1 
       (.I0(\tdata_out[46]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[44]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[43]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[43]_i_2 
       (.I0(\tdata_out[45]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[43]_i_3_n_0 ),
        .O(\tdata_out[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[43]_i_3 
       (.I0(\tdata_out[55]_i_5_n_0 ),
        .I1(\tdata_out[47]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[51]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[43]_i_4_n_0 ),
        .O(\tdata_out[43]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[43]_i_4 
       (.I0(tdata_out2_carry__13_n_5),
        .I1(tdata_in[59]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__9_n_5),
        .I4(tdata_in[43]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[43]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[44]_i_1 
       (.I0(\tdata_out[46]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[44]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[45]_i_2_n_0 ),
        .O(p_0_in[44]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[44]_i_2 
       (.I0(\tdata_out[48]_i_3_n_0 ),
        .I1(\tdata_out[48]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[52]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[44]_i_3_n_0 ),
        .O(\tdata_out[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[44]_i_3 
       (.I0(tdata_out2_carry__13_n_4),
        .I1(tdata_in[60]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__9_n_4),
        .I4(tdata_in[44]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[44]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[45]_i_1 
       (.I0(\tdata_out[48]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[46]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[45]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[45]_i_2 
       (.I0(\tdata_out[47]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[45]_i_3_n_0 ),
        .O(\tdata_out[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[45]_i_3 
       (.I0(\tdata_out[49]_i_4_n_0 ),
        .I1(\tdata_out[49]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[53]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[45]_i_4_n_0 ),
        .O(\tdata_out[45]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[45]_i_4 
       (.I0(tdata_out2_carry__14_n_7),
        .I1(tdata_in[61]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__10_n_7),
        .I4(tdata_in[45]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[45]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[46]_i_1 
       (.I0(\tdata_out[48]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[46]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[47]_i_2_n_0 ),
        .O(p_0_in[46]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[46]_i_2 
       (.I0(\tdata_out[50]_i_3_n_0 ),
        .I1(\tdata_out[50]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[54]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[46]_i_3_n_0 ),
        .O(\tdata_out[46]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[46]_i_3 
       (.I0(tdata_out2_carry__14_n_6),
        .I1(tdata_in[62]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__10_n_6),
        .I4(tdata_in[46]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[46]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[47]_i_1 
       (.I0(\tdata_out[50]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[48]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[47]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[47]_i_2 
       (.I0(\tdata_out[49]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[47]_i_3_n_0 ),
        .O(\tdata_out[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[47]_i_3 
       (.I0(\tdata_out[51]_i_4_n_0 ),
        .I1(\tdata_out[51]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[55]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[47]_i_4_n_0 ),
        .O(\tdata_out[47]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \tdata_out[47]_i_4 
       (.I0(tdata_out2_carry__14_n_5),
        .I1(tdata_in[63]),
        .I2(log_2_BIN_WIDTH_r[4]),
        .I3(tdata_out2_carry__10_n_5),
        .I4(tdata_in[47]),
        .I5(log_2_BIN_WIDTH_r[5]),
        .O(\tdata_out[47]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[48]_i_1 
       (.I0(\tdata_out[50]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[48]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[49]_i_2_n_0 ),
        .O(p_0_in[48]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[48]_i_2 
       (.I0(\tdata_out[52]_i_3_n_0 ),
        .I1(\tdata_out[52]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[48]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[48]_i_4_n_0 ),
        .O(\tdata_out[48]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[48]_i_3 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[56]),
        .I2(tdata_out2_carry__12_n_4),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[48]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[48]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[48]),
        .I2(tdata_out2_carry__10_n_4),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[48]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[49]_i_1 
       (.I0(\tdata_out[52]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[50]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[49]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[49]_i_2 
       (.I0(\tdata_out[51]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[49]_i_3_n_0 ),
        .O(\tdata_out[49]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[49]_i_3 
       (.I0(\tdata_out[53]_i_4_n_0 ),
        .I1(\tdata_out[53]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[49]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[49]_i_5_n_0 ),
        .O(\tdata_out[49]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[49]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[57]),
        .I2(tdata_out2_carry__13_n_7),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[49]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[49]_i_5 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[49]),
        .I2(tdata_out2_carry__11_n_7),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[49]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[4]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[4]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[5]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[4]_i_2 
       (.I0(\tdata_out[10]_i_3_n_0 ),
        .I1(\tdata_out[6]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[8]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[4]_i_3_n_0 ),
        .O(\tdata_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[4]_i_3 
       (.I0(\tdata_out[28]_i_6_n_0 ),
        .I1(\tdata_out[12]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[20]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[4]_i_4_n_0 ),
        .O(\tdata_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[4]_i_4 
       (.I0(tdata_in[36]),
        .I1(tdata_out2_carry__7_n_4),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[4]),
        .I4(tdata_out2_carry_n_4),
        .O(\tdata_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[50]_i_1 
       (.I0(\tdata_out[52]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[50]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[51]_i_2_n_0 ),
        .O(p_0_in[50]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[50]_i_2 
       (.I0(\tdata_out[54]_i_4_n_0 ),
        .I1(\tdata_out[54]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[50]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[50]_i_4_n_0 ),
        .O(\tdata_out[50]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[50]_i_3 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[58]),
        .I2(tdata_out2_carry__13_n_6),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[50]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[50]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[50]),
        .I2(tdata_out2_carry__11_n_6),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[50]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[51]_i_1 
       (.I0(\tdata_out[54]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[52]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[51]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[51]_i_2 
       (.I0(\tdata_out[53]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[51]_i_3_n_0 ),
        .O(\tdata_out[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[51]_i_3 
       (.I0(\tdata_out[55]_i_4_n_0 ),
        .I1(\tdata_out[55]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[2]),
        .I3(\tdata_out[51]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[3]),
        .I5(\tdata_out[51]_i_5_n_0 ),
        .O(\tdata_out[51]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[51]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[59]),
        .I2(tdata_out2_carry__13_n_5),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[51]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[51]_i_5 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[51]),
        .I2(tdata_out2_carry__11_n_5),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[51]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[52]_i_1 
       (.I0(\tdata_out[54]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[52]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[53]_i_2_n_0 ),
        .O(p_0_in[52]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[52]_i_2 
       (.I0(\tdata_out[56]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[52]_i_3_n_0 ),
        .I3(log_2_BIN_WIDTH_r[3]),
        .I4(\tdata_out[52]_i_4_n_0 ),
        .O(\tdata_out[52]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[52]_i_3 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[60]),
        .I2(tdata_out2_carry__13_n_4),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[52]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[52]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[52]),
        .I2(tdata_out2_carry__11_n_4),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[52]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[53]_i_1 
       (.I0(\tdata_out[54]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[54]_i_3_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[53]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[53]_i_2 
       (.I0(\tdata_out[55]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[53]_i_3_n_0 ),
        .O(\tdata_out[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[53]_i_3 
       (.I0(\tdata_out[57]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[53]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[3]),
        .I4(\tdata_out[53]_i_5_n_0 ),
        .O(\tdata_out[53]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[53]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[61]),
        .I2(tdata_out2_carry__14_n_7),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[53]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[53]_i_5 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[53]),
        .I2(tdata_out2_carry__12_n_7),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[53]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[54]_i_1 
       (.I0(\tdata_out[54]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[54]_i_3_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[55]_i_2_n_0 ),
        .O(p_0_in[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[54]_i_2 
       (.I0(\tdata_out[56]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[56]_i_4_n_0 ),
        .O(\tdata_out[54]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[54]_i_3 
       (.I0(\tdata_out[58]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[54]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[3]),
        .I4(\tdata_out[54]_i_5_n_0 ),
        .O(\tdata_out[54]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[54]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[62]),
        .I2(tdata_out2_carry__14_n_6),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[54]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[54]_i_5 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[54]),
        .I2(tdata_out2_carry__12_n_6),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[54]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[55]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[55]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[56]_i_2_n_0 ),
        .O(p_0_in[55]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tdata_out[55]_i_2 
       (.I0(\tdata_out[57]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[57]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[1]),
        .I4(\tdata_out[55]_i_3_n_0 ),
        .O(\tdata_out[55]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[55]_i_3 
       (.I0(\tdata_out[59]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[2]),
        .I2(\tdata_out[55]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[3]),
        .I4(\tdata_out[55]_i_5_n_0 ),
        .O(\tdata_out[55]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[55]_i_4 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[63]),
        .I2(tdata_out2_carry__14_n_5),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[55]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tdata_out[55]_i_5 
       (.I0(log_2_BIN_WIDTH_r[5]),
        .I1(tdata_in[55]),
        .I2(tdata_out2_carry__12_n_5),
        .I3(log_2_BIN_WIDTH_r[4]),
        .O(\tdata_out[55]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[56]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[56]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[57]_i_2_n_0 ),
        .O(p_0_in[56]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[56]_i_2 
       (.I0(\tdata_out[58]_i_3_n_0 ),
        .I1(\tdata_out[58]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[56]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[56]_i_4_n_0 ),
        .O(\tdata_out[56]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[56]_i_3 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__13_n_4),
        .I2(tdata_in[60]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[56]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[56]_i_4 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__12_n_4),
        .I2(tdata_in[56]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[56]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[57]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[57]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[58]_i_2_n_0 ),
        .O(p_0_in[57]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[57]_i_2 
       (.I0(\tdata_out[59]_i_3_n_0 ),
        .I1(\tdata_out[59]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[57]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[57]_i_4_n_0 ),
        .O(\tdata_out[57]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[57]_i_3 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__14_n_7),
        .I2(tdata_in[61]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[57]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[57]_i_4 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__13_n_7),
        .I2(tdata_in[57]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[57]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[58]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[58]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[59]_i_2_n_0 ),
        .O(p_0_in[58]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[58]_i_2 
       (.I0(\tdata_out[60]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[58]_i_3_n_0 ),
        .I3(log_2_BIN_WIDTH_r[2]),
        .I4(\tdata_out[58]_i_4_n_0 ),
        .O(\tdata_out[58]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[58]_i_3 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__14_n_6),
        .I2(tdata_in[62]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[58]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[58]_i_4 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__13_n_6),
        .I2(tdata_in[58]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[58]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \tdata_out[59]_i_1 
       (.I0(\tdata_out[62]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[60]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(\tdata_out[59]_i_2_n_0 ),
        .I5(log_2_BIN_WIDTH_r[0]),
        .O(p_0_in[59]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tdata_out[59]_i_2 
       (.I0(\tdata_out[61]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[59]_i_3_n_0 ),
        .I3(log_2_BIN_WIDTH_r[2]),
        .I4(\tdata_out[59]_i_4_n_0 ),
        .O(\tdata_out[59]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[59]_i_3 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__14_n_5),
        .I2(tdata_in[63]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[59]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \tdata_out[59]_i_4 
       (.I0(log_2_BIN_WIDTH_r[4]),
        .I1(tdata_out2_carry__13_n_5),
        .I2(tdata_in[59]),
        .I3(log_2_BIN_WIDTH_r[5]),
        .I4(log_2_BIN_WIDTH_r[3]),
        .O(\tdata_out[59]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[5]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[5]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[6]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[5]_i_2 
       (.I0(\tdata_out[11]_i_3_n_0 ),
        .I1(\tdata_out[7]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[9]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[5]_i_3_n_0 ),
        .O(\tdata_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[5]_i_3 
       (.I0(\tdata_out[29]_i_6_n_0 ),
        .I1(\tdata_out[13]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[21]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[5]_i_4_n_0 ),
        .O(\tdata_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[5]_i_4 
       (.I0(tdata_in[37]),
        .I1(tdata_out2_carry__8_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[5]),
        .I4(tdata_out2_carry__0_n_7),
        .O(\tdata_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \tdata_out[60]_i_1 
       (.I0(\tdata_out[62]_i_2_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[60]_i_2_n_0 ),
        .I3(\tdata_out[63]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[60]_i_3_n_0 ),
        .O(p_0_in[60]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tdata_out[60]_i_2 
       (.I0(log_2_BIN_WIDTH_r[3]),
        .I1(log_2_BIN_WIDTH_r[5]),
        .I2(tdata_in[60]),
        .I3(tdata_out2_carry__13_n_4),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(log_2_BIN_WIDTH_r[2]),
        .O(\tdata_out[60]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdata_out[60]_i_3 
       (.I0(\tdata_out[63]_i_4_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[61]_i_2_n_0 ),
        .O(\tdata_out[60]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \tdata_out[61]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[61]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[63]_i_4_n_0 ),
        .I4(log_2_BIN_WIDTH_r[0]),
        .I5(\tdata_out[62]_i_2_n_0 ),
        .O(p_0_in[61]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tdata_out[61]_i_2 
       (.I0(log_2_BIN_WIDTH_r[3]),
        .I1(log_2_BIN_WIDTH_r[5]),
        .I2(tdata_in[61]),
        .I3(tdata_out2_carry__14_n_7),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(log_2_BIN_WIDTH_r[2]),
        .O(\tdata_out[61]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h22200020)) 
    \tdata_out[62]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[1]),
        .I2(\tdata_out[62]_i_2_n_0 ),
        .I3(log_2_BIN_WIDTH_r[0]),
        .I4(\tdata_out[63]_i_4_n_0 ),
        .O(p_0_in[62]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tdata_out[62]_i_2 
       (.I0(log_2_BIN_WIDTH_r[3]),
        .I1(log_2_BIN_WIDTH_r[5]),
        .I2(tdata_in[62]),
        .I3(tdata_out2_carry__14_n_6),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(log_2_BIN_WIDTH_r[2]),
        .O(\tdata_out[62]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \tdata_out[63]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(log_2_BIN_WIDTH_r[0]),
        .I2(\tdata_out[63]_i_4_n_0 ),
        .I3(log_2_BIN_WIDTH_r[1]),
        .O(p_0_in[63]));
  LUT1 #(
    .INIT(2'h1)) 
    \tdata_out[63]_i_2 
       (.I0(aresetn),
        .O(\tdata_out[63]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tdata_out[63]_i_3 
       (.I0(log_2_BIN_WIDTH_r[14]),
        .I1(log_2_BIN_WIDTH_r[15]),
        .I2(\tdata_out[63]_i_5_n_0 ),
        .I3(\tdata_out[63]_i_6_n_0 ),
        .O(\tdata_out[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tdata_out[63]_i_4 
       (.I0(log_2_BIN_WIDTH_r[3]),
        .I1(log_2_BIN_WIDTH_r[5]),
        .I2(tdata_in[63]),
        .I3(tdata_out2_carry__14_n_5),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(log_2_BIN_WIDTH_r[2]),
        .O(\tdata_out[63]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tdata_out[63]_i_5 
       (.I0(log_2_BIN_WIDTH_r[8]),
        .I1(log_2_BIN_WIDTH_r[9]),
        .I2(log_2_BIN_WIDTH_r[6]),
        .I3(log_2_BIN_WIDTH_r[7]),
        .O(\tdata_out[63]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tdata_out[63]_i_6 
       (.I0(log_2_BIN_WIDTH_r[12]),
        .I1(log_2_BIN_WIDTH_r[13]),
        .I2(log_2_BIN_WIDTH_r[10]),
        .I3(log_2_BIN_WIDTH_r[11]),
        .O(\tdata_out[63]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[6]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[6]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[7]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[6]_i_2 
       (.I0(\tdata_out[12]_i_3_n_0 ),
        .I1(\tdata_out[8]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[10]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[6]_i_3_n_0 ),
        .O(\tdata_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[6]_i_3 
       (.I0(\tdata_out[30]_i_6_n_0 ),
        .I1(\tdata_out[14]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[22]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[6]_i_4_n_0 ),
        .O(\tdata_out[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[6]_i_4 
       (.I0(tdata_in[38]),
        .I1(tdata_out2_carry__8_n_6),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[6]),
        .I4(tdata_out2_carry__0_n_6),
        .O(\tdata_out[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[7]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[7]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[8]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[7]_i_2 
       (.I0(\tdata_out[13]_i_3_n_0 ),
        .I1(\tdata_out[9]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[11]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[7]_i_3_n_0 ),
        .O(\tdata_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[7]_i_3 
       (.I0(\tdata_out[31]_i_6_n_0 ),
        .I1(\tdata_out[15]_i_4_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[23]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[7]_i_4_n_0 ),
        .O(\tdata_out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[7]_i_4 
       (.I0(tdata_in[39]),
        .I1(tdata_out2_carry__8_n_5),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[7]),
        .I4(tdata_out2_carry__0_n_5),
        .O(\tdata_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[8]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[8]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[9]_i_2_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[8]_i_2 
       (.I0(\tdata_out[14]_i_3_n_0 ),
        .I1(\tdata_out[10]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[12]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[8]_i_3_n_0 ),
        .O(\tdata_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[8]_i_3 
       (.I0(\tdata_out[16]_i_4_n_0 ),
        .I1(\tdata_out[16]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[24]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[8]_i_4_n_0 ),
        .O(\tdata_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[8]_i_4 
       (.I0(tdata_in[40]),
        .I1(tdata_out2_carry__8_n_4),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[8]),
        .I4(tdata_out2_carry__0_n_4),
        .O(\tdata_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \tdata_out[9]_i_1 
       (.I0(\tdata_out[63]_i_3_n_0 ),
        .I1(\tdata_out[9]_i_2_n_0 ),
        .I2(log_2_BIN_WIDTH_r[0]),
        .I3(\tdata_out[10]_i_2_n_0 ),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[9]_i_2 
       (.I0(\tdata_out[15]_i_3_n_0 ),
        .I1(\tdata_out[11]_i_3_n_0 ),
        .I2(log_2_BIN_WIDTH_r[1]),
        .I3(\tdata_out[13]_i_3_n_0 ),
        .I4(log_2_BIN_WIDTH_r[2]),
        .I5(\tdata_out[9]_i_3_n_0 ),
        .O(\tdata_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata_out[9]_i_3 
       (.I0(\tdata_out[17]_i_4_n_0 ),
        .I1(\tdata_out[17]_i_5_n_0 ),
        .I2(log_2_BIN_WIDTH_r[3]),
        .I3(\tdata_out[25]_i_5_n_0 ),
        .I4(log_2_BIN_WIDTH_r[4]),
        .I5(\tdata_out[9]_i_4_n_0 ),
        .O(\tdata_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \tdata_out[9]_i_4 
       (.I0(tdata_in[41]),
        .I1(tdata_out2_carry__9_n_7),
        .I2(log_2_BIN_WIDTH_r[5]),
        .I3(tdata_in[9]),
        .I4(tdata_out2_carry__1_n_7),
        .O(\tdata_out[9]_i_4_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(tdata_out[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[10] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(tdata_out[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[11] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(tdata_out[11]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[12] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(tdata_out[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[13] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(tdata_out[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[14] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(tdata_out[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[15] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(tdata_out[15]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[16] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[16]),
        .Q(tdata_out[16]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[17] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[17]),
        .Q(tdata_out[17]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[18] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[18]),
        .Q(tdata_out[18]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[19] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[19]),
        .Q(tdata_out[19]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(tdata_out[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[20] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[20]),
        .Q(tdata_out[20]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[21] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[21]),
        .Q(tdata_out[21]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[22] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[22]),
        .Q(tdata_out[22]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[23] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[23]),
        .Q(tdata_out[23]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[24] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[24]),
        .Q(tdata_out[24]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[25] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[25]),
        .Q(tdata_out[25]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[26] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[26]),
        .Q(tdata_out[26]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[27] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[27]),
        .Q(tdata_out[27]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[28] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[28]),
        .Q(tdata_out[28]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[29] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[29]),
        .Q(tdata_out[29]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(tdata_out[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[30] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[30]),
        .Q(tdata_out[30]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[31] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[31]),
        .Q(tdata_out[31]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[32] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[32]),
        .Q(tdata_out[32]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[33] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[33]),
        .Q(tdata_out[33]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[34] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[34]),
        .Q(tdata_out[34]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[35] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[35]),
        .Q(tdata_out[35]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[36] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[36]),
        .Q(tdata_out[36]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[37] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[37]),
        .Q(tdata_out[37]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[38] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[38]),
        .Q(tdata_out[38]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[39] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[39]),
        .Q(tdata_out[39]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(tdata_out[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[40] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[40]),
        .Q(tdata_out[40]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[41] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[41]),
        .Q(tdata_out[41]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[42] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[42]),
        .Q(tdata_out[42]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[43] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[43]),
        .Q(tdata_out[43]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[44] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[44]),
        .Q(tdata_out[44]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[45] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[45]),
        .Q(tdata_out[45]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[46] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[46]),
        .Q(tdata_out[46]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[47] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[47]),
        .Q(tdata_out[47]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[48] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[48]),
        .Q(tdata_out[48]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[49] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[49]),
        .Q(tdata_out[49]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(tdata_out[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[50] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[50]),
        .Q(tdata_out[50]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[51] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[51]),
        .Q(tdata_out[51]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[52] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[52]),
        .Q(tdata_out[52]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[53] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[53]),
        .Q(tdata_out[53]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[54] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[54]),
        .Q(tdata_out[54]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[55] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[55]),
        .Q(tdata_out[55]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[56] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[56]),
        .Q(tdata_out[56]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[57] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[57]),
        .Q(tdata_out[57]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[58] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[58]),
        .Q(tdata_out[58]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[59] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[59]),
        .Q(tdata_out[59]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(tdata_out[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[60] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[60]),
        .Q(tdata_out[60]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[61] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[61]),
        .Q(tdata_out[61]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[62] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[62]),
        .Q(tdata_out[62]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[63] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[63]),
        .Q(tdata_out[63]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(tdata_out[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[7] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(tdata_out[7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[8] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(tdata_out[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDCE \tdata_out_reg[9] 
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(tdata_out[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID" *) 
  FDCE tvalid_out_reg
       (.C(clk),
        .CE(en),
        .CLR(\tdata_out[63]_i_2_n_0 ),
        .D(tvalid_in),
        .Q(tvalid_out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
