// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Apr 24 14:56:27 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_HISTOGRAM_ARBITER_FSM_0_0/histo_HISTOGRAM_ARBITER_FSM_0_0_sim_netlist.v
// Design      : histo_HISTOGRAM_ARBITER_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "histo_HISTOGRAM_ARBITER_FSM_0_0,HISTOGRAM_ARBITER_FSM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "HISTOGRAM_ARBITER_FSM,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module histo_HISTOGRAM_ARBITER_FSM_0_0
   (clk,
    aresetn,
    en,
    pixel_done,
    BINS_TO_READ,
    bin_full_warning,
    bin_written_but_never_read_warning,
    premature_pixel_done_error,
    MAX_PIXELS,
    tdata_in,
    tvalid_in,
    tready_in,
    tlast_in,
    tdata_out,
    tvalid_out,
    tready_out,
    tlast_out,
    main_fsm_state_dbg,
    reading_fsm_state_dbg,
    tvalid_dbg,
    bram_addr_dbg,
    pixel_counter_dbg,
    tready_dbg,
    tlast_dbg,
    tdata_dbg);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXIS_IN:AXIS_OUT, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input en;
  input pixel_done;
  input [14:0]BINS_TO_READ;
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
  output [2:0]main_fsm_state_dbg;
  output [4:0]reading_fsm_state_dbg;
  output tvalid_dbg;
  output [13:0]bram_addr_dbg;
  output [31:0]pixel_counter_dbg;
  output tready_dbg;
  output tlast_dbg;
  output [63:0]tdata_dbg;

  wire \<const0> ;
  wire [14:0]BINS_TO_READ;
  wire [31:0]MAX_PIXELS;
  wire aresetn;
  wire bin_full_warning;
  wire bin_written_but_never_read_warning;
  wire [13:0]bram_addr_dbg;
  wire clk;
  wire en;
  wire [1:0]\^main_fsm_state_dbg ;
  wire [31:0]pixel_counter_dbg;
  wire pixel_done;
  wire premature_pixel_done_error;
  wire [3:0]\^reading_fsm_state_dbg ;
  wire [1:0]\^tdata_dbg ;
  wire [63:0]tdata_in;
  wire [63:2]\^tdata_out ;
  wire tlast_out;
  wire tready_in;
  wire tready_out;
  wire tvalid_in;
  wire tvalid_out;

  assign main_fsm_state_dbg[2] = premature_pixel_done_error;
  assign main_fsm_state_dbg[1:0] = \^main_fsm_state_dbg [1:0];
  assign reading_fsm_state_dbg[4] = \<const0> ;
  assign reading_fsm_state_dbg[3:0] = \^reading_fsm_state_dbg [3:0];
  assign tdata_dbg[63:2] = \^tdata_out [63:2];
  assign tdata_dbg[1:0] = \^tdata_dbg [1:0];
  assign tdata_out[63:2] = \^tdata_out [63:2];
  assign tdata_out[1:0] = \^tdata_dbg [1:0];
  assign tlast_dbg = tlast_out;
  assign tready_dbg = tready_out;
  assign tvalid_dbg = tvalid_out;
  GND GND
       (.G(\<const0> ));
  histo_HISTOGRAM_ARBITER_FSM_0_0_HISTOGRAM_ARBITER_FSM inst
       (.BINS_TO_READ(BINS_TO_READ),
        .MAX_PIXELS(MAX_PIXELS),
        .Q(\^reading_fsm_state_dbg [3]),
        .aresetn(aresetn),
        .bin_full_warning(bin_full_warning),
        .bin_written_but_never_read_warning(bin_written_but_never_read_warning),
        .\bram_addr_r_reg[13] (bram_addr_dbg),
        .clk(clk),
        .en(en),
        .main_fsm_state_dbg({premature_pixel_done_error,\^main_fsm_state_dbg }),
        .pixel_counter_dbg(pixel_counter_dbg),
        .pixel_done(pixel_done),
        .reading_fsm_state_dbg(\^reading_fsm_state_dbg [2:0]),
        .tdata_in(tdata_in),
        .tdata_out({\^tdata_out ,\^tdata_dbg }),
        .tlast_out(tlast_out),
        .tready_in(tready_in),
        .tready_out(tready_out),
        .tvalid_in(tvalid_in),
        .tvalid_out(tvalid_out));
endmodule

(* ORIG_REF_NAME = "BRAM_hist" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist
   (bram_reg_bram_7_0,
    bram_dout,
    bram_reg_bram_7_1,
    bram_reg_bram_7_2,
    bram_reg_bram_7_3,
    bram_reg_bram_7_4,
    bram_reg_bram_7_5,
    bram_reg_bram_7_6,
    bram_reg_bram_7_7,
    bram_reg_bram_7_8,
    bram_reg_bram_7_9,
    bram_reg_bram_7_10,
    bram_reg_bram_7_11,
    bram_reg_bram_7_12,
    bram_reg_bram_7_13,
    bram_reg_bram_7_14,
    bram_reg_bram_7_15,
    bram_reg_bram_7_16,
    bram_reg_bram_7_17,
    Q,
    \READ_FSM_DOUT_reg[0]_i_1 ,
    \READ_FSM_DOUT_reg[17]_i_1 ,
    clk,
    bram_reg_bram_7_18,
    bram_0_we);
  output bram_reg_bram_7_0;
  output [17:0]bram_dout;
  output bram_reg_bram_7_1;
  output bram_reg_bram_7_2;
  output bram_reg_bram_7_3;
  output bram_reg_bram_7_4;
  output bram_reg_bram_7_5;
  output bram_reg_bram_7_6;
  output bram_reg_bram_7_7;
  output bram_reg_bram_7_8;
  output bram_reg_bram_7_9;
  output bram_reg_bram_7_10;
  output bram_reg_bram_7_11;
  output bram_reg_bram_7_12;
  output bram_reg_bram_7_13;
  output bram_reg_bram_7_14;
  output bram_reg_bram_7_15;
  output bram_reg_bram_7_16;
  output bram_reg_bram_7_17;
  input [13:0]Q;
  input [1:0]\READ_FSM_DOUT_reg[0]_i_1 ;
  input [17:0]\READ_FSM_DOUT_reg[17]_i_1 ;
  input clk;
  input [17:0]bram_reg_bram_7_18;
  input bram_0_we;

  wire [13:0]Q;
  wire [1:0]\READ_FSM_DOUT_reg[0]_i_1 ;
  wire [17:0]\READ_FSM_DOUT_reg[17]_i_1 ;
  wire bram_0_we;
  wire [17:0]bram_dout;
  wire bram_reg_bram_0_i_1_n_0;
  wire bram_reg_bram_0_i_2_n_0;
  wire bram_reg_bram_0_n_134;
  wire bram_reg_bram_0_n_135;
  wire bram_reg_bram_0_n_20;
  wire bram_reg_bram_0_n_21;
  wire bram_reg_bram_0_n_22;
  wire bram_reg_bram_0_n_23;
  wire bram_reg_bram_0_n_24;
  wire bram_reg_bram_0_n_25;
  wire bram_reg_bram_0_n_26;
  wire bram_reg_bram_0_n_27;
  wire bram_reg_bram_0_n_28;
  wire bram_reg_bram_0_n_29;
  wire bram_reg_bram_0_n_30;
  wire bram_reg_bram_0_n_31;
  wire bram_reg_bram_0_n_32;
  wire bram_reg_bram_0_n_33;
  wire bram_reg_bram_0_n_34;
  wire bram_reg_bram_0_n_35;
  wire bram_reg_bram_1_i_1_n_0;
  wire bram_reg_bram_1_i_2_n_0;
  wire bram_reg_bram_1_i_3_n_0;
  wire bram_reg_bram_1_n_134;
  wire bram_reg_bram_1_n_135;
  wire bram_reg_bram_1_n_20;
  wire bram_reg_bram_1_n_21;
  wire bram_reg_bram_1_n_22;
  wire bram_reg_bram_1_n_23;
  wire bram_reg_bram_1_n_24;
  wire bram_reg_bram_1_n_25;
  wire bram_reg_bram_1_n_26;
  wire bram_reg_bram_1_n_27;
  wire bram_reg_bram_1_n_28;
  wire bram_reg_bram_1_n_29;
  wire bram_reg_bram_1_n_30;
  wire bram_reg_bram_1_n_31;
  wire bram_reg_bram_1_n_32;
  wire bram_reg_bram_1_n_33;
  wire bram_reg_bram_1_n_34;
  wire bram_reg_bram_1_n_35;
  wire bram_reg_bram_2_i_1_n_0;
  wire bram_reg_bram_2_i_2_n_0;
  wire bram_reg_bram_2_i_3_n_0;
  wire bram_reg_bram_2_n_134;
  wire bram_reg_bram_2_n_135;
  wire bram_reg_bram_2_n_20;
  wire bram_reg_bram_2_n_21;
  wire bram_reg_bram_2_n_22;
  wire bram_reg_bram_2_n_23;
  wire bram_reg_bram_2_n_24;
  wire bram_reg_bram_2_n_25;
  wire bram_reg_bram_2_n_26;
  wire bram_reg_bram_2_n_27;
  wire bram_reg_bram_2_n_28;
  wire bram_reg_bram_2_n_29;
  wire bram_reg_bram_2_n_30;
  wire bram_reg_bram_2_n_31;
  wire bram_reg_bram_2_n_32;
  wire bram_reg_bram_2_n_33;
  wire bram_reg_bram_2_n_34;
  wire bram_reg_bram_2_n_35;
  wire bram_reg_bram_3_i_1_n_0;
  wire bram_reg_bram_3_i_2_n_0;
  wire bram_reg_bram_3_i_3_n_0;
  wire bram_reg_bram_3_n_134;
  wire bram_reg_bram_3_n_135;
  wire bram_reg_bram_3_n_20;
  wire bram_reg_bram_3_n_21;
  wire bram_reg_bram_3_n_22;
  wire bram_reg_bram_3_n_23;
  wire bram_reg_bram_3_n_24;
  wire bram_reg_bram_3_n_25;
  wire bram_reg_bram_3_n_26;
  wire bram_reg_bram_3_n_27;
  wire bram_reg_bram_3_n_28;
  wire bram_reg_bram_3_n_29;
  wire bram_reg_bram_3_n_30;
  wire bram_reg_bram_3_n_31;
  wire bram_reg_bram_3_n_32;
  wire bram_reg_bram_3_n_33;
  wire bram_reg_bram_3_n_34;
  wire bram_reg_bram_3_n_35;
  wire bram_reg_bram_4_i_1_n_0;
  wire bram_reg_bram_4_i_2_n_0;
  wire bram_reg_bram_4_i_3_n_0;
  wire bram_reg_bram_4_n_134;
  wire bram_reg_bram_4_n_135;
  wire bram_reg_bram_4_n_20;
  wire bram_reg_bram_4_n_21;
  wire bram_reg_bram_4_n_22;
  wire bram_reg_bram_4_n_23;
  wire bram_reg_bram_4_n_24;
  wire bram_reg_bram_4_n_25;
  wire bram_reg_bram_4_n_26;
  wire bram_reg_bram_4_n_27;
  wire bram_reg_bram_4_n_28;
  wire bram_reg_bram_4_n_29;
  wire bram_reg_bram_4_n_30;
  wire bram_reg_bram_4_n_31;
  wire bram_reg_bram_4_n_32;
  wire bram_reg_bram_4_n_33;
  wire bram_reg_bram_4_n_34;
  wire bram_reg_bram_4_n_35;
  wire bram_reg_bram_5_i_1_n_0;
  wire bram_reg_bram_5_i_2_n_0;
  wire bram_reg_bram_5_i_3_n_0;
  wire bram_reg_bram_5_n_134;
  wire bram_reg_bram_5_n_135;
  wire bram_reg_bram_5_n_20;
  wire bram_reg_bram_5_n_21;
  wire bram_reg_bram_5_n_22;
  wire bram_reg_bram_5_n_23;
  wire bram_reg_bram_5_n_24;
  wire bram_reg_bram_5_n_25;
  wire bram_reg_bram_5_n_26;
  wire bram_reg_bram_5_n_27;
  wire bram_reg_bram_5_n_28;
  wire bram_reg_bram_5_n_29;
  wire bram_reg_bram_5_n_30;
  wire bram_reg_bram_5_n_31;
  wire bram_reg_bram_5_n_32;
  wire bram_reg_bram_5_n_33;
  wire bram_reg_bram_5_n_34;
  wire bram_reg_bram_5_n_35;
  wire bram_reg_bram_6_i_1_n_0;
  wire bram_reg_bram_6_i_2_n_0;
  wire bram_reg_bram_6_i_3_n_0;
  wire bram_reg_bram_6_n_134;
  wire bram_reg_bram_6_n_135;
  wire bram_reg_bram_6_n_20;
  wire bram_reg_bram_6_n_21;
  wire bram_reg_bram_6_n_22;
  wire bram_reg_bram_6_n_23;
  wire bram_reg_bram_6_n_24;
  wire bram_reg_bram_6_n_25;
  wire bram_reg_bram_6_n_26;
  wire bram_reg_bram_6_n_27;
  wire bram_reg_bram_6_n_28;
  wire bram_reg_bram_6_n_29;
  wire bram_reg_bram_6_n_30;
  wire bram_reg_bram_6_n_31;
  wire bram_reg_bram_6_n_32;
  wire bram_reg_bram_6_n_33;
  wire bram_reg_bram_6_n_34;
  wire bram_reg_bram_6_n_35;
  wire bram_reg_bram_7_0;
  wire bram_reg_bram_7_1;
  wire bram_reg_bram_7_10;
  wire bram_reg_bram_7_11;
  wire bram_reg_bram_7_12;
  wire bram_reg_bram_7_13;
  wire bram_reg_bram_7_14;
  wire bram_reg_bram_7_15;
  wire bram_reg_bram_7_16;
  wire bram_reg_bram_7_17;
  wire [17:0]bram_reg_bram_7_18;
  wire bram_reg_bram_7_2;
  wire bram_reg_bram_7_3;
  wire bram_reg_bram_7_4;
  wire bram_reg_bram_7_5;
  wire bram_reg_bram_7_6;
  wire bram_reg_bram_7_7;
  wire bram_reg_bram_7_8;
  wire bram_reg_bram_7_9;
  wire bram_reg_bram_7_i_1_n_0;
  wire bram_reg_bram_7_i_2_n_0;
  wire bram_reg_bram_7_i_3_n_0;
  wire clk;
  wire NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[0]_i_2 
       (.I0(bram_dout[0]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [0]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_17));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[10]_i_2 
       (.I0(bram_dout[10]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [10]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_7));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[11]_i_2 
       (.I0(bram_dout[11]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [11]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_6));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[12]_i_2 
       (.I0(bram_dout[12]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [12]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_5));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[13]_i_2 
       (.I0(bram_dout[13]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [13]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_4));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[14]_i_2 
       (.I0(bram_dout[14]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [14]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_3));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[15]_i_2 
       (.I0(bram_dout[15]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [15]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_2));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[16]_i_2 
       (.I0(bram_dout[16]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [16]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[17]_i_2 
       (.I0(bram_dout[17]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [17]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[1]_i_2 
       (.I0(bram_dout[1]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [1]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_16));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[2]_i_2 
       (.I0(bram_dout[2]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [2]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_15));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[3]_i_2 
       (.I0(bram_dout[3]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [3]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_14));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[4]_i_2 
       (.I0(bram_dout[4]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [4]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_13));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[5]_i_2 
       (.I0(bram_dout[5]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [5]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_12));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[6]_i_2 
       (.I0(bram_dout[6]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [6]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_11));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[7]_i_2 
       (.I0(bram_dout[7]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [7]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_10));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[8]_i_2 
       (.I0(bram_dout[8]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [8]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_9));
  LUT4 #(
    .INIT(16'hF888)) 
    \READ_FSM_DOUT_reg[9]_i_2 
       (.I0(bram_dout[9]),
        .I1(\READ_FSM_DOUT_reg[0]_i_1 [1]),
        .I2(\READ_FSM_DOUT_reg[17]_i_1 [9]),
        .I3(\READ_FSM_DOUT_reg[0]_i_1 [0]),
        .O(bram_reg_bram_7_8));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_0
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_0_n_20,bram_reg_bram_0_n_21,bram_reg_bram_0_n_22,bram_reg_bram_0_n_23,bram_reg_bram_0_n_24,bram_reg_bram_0_n_25,bram_reg_bram_0_n_26,bram_reg_bram_0_n_27,bram_reg_bram_0_n_28,bram_reg_bram_0_n_29,bram_reg_bram_0_n_30,bram_reg_bram_0_n_31,bram_reg_bram_0_n_32,bram_reg_bram_0_n_33,bram_reg_bram_0_n_34,bram_reg_bram_0_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_0_n_134,bram_reg_bram_0_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_0_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_0_i_1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_0_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_0_i_2_n_0,bram_reg_bram_0_i_2_n_0,bram_reg_bram_0_i_2_n_0,bram_reg_bram_0_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    bram_reg_bram_0_i_1
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    bram_reg_bram_0_i_2
       (.I0(bram_0_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_0_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_1
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_0_n_20,bram_reg_bram_0_n_21,bram_reg_bram_0_n_22,bram_reg_bram_0_n_23,bram_reg_bram_0_n_24,bram_reg_bram_0_n_25,bram_reg_bram_0_n_26,bram_reg_bram_0_n_27,bram_reg_bram_0_n_28,bram_reg_bram_0_n_29,bram_reg_bram_0_n_30,bram_reg_bram_0_n_31,bram_reg_bram_0_n_32,bram_reg_bram_0_n_33,bram_reg_bram_0_n_34,bram_reg_bram_0_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_0_n_134,bram_reg_bram_0_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_1_i_1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_1_n_20,bram_reg_bram_1_n_21,bram_reg_bram_1_n_22,bram_reg_bram_1_n_23,bram_reg_bram_1_n_24,bram_reg_bram_1_n_25,bram_reg_bram_1_n_26,bram_reg_bram_1_n_27,bram_reg_bram_1_n_28,bram_reg_bram_1_n_29,bram_reg_bram_1_n_30,bram_reg_bram_1_n_31,bram_reg_bram_1_n_32,bram_reg_bram_1_n_33,bram_reg_bram_1_n_34,bram_reg_bram_1_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_1_n_134,bram_reg_bram_1_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_1_i_2_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_1_i_3_n_0,bram_reg_bram_1_i_3_n_0,bram_reg_bram_1_i_3_n_0,bram_reg_bram_1_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_1_i_1
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_1_i_2
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_1_i_3
       (.I0(bram_0_we),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[11]),
        .O(bram_reg_bram_1_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "6143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_2
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_1_n_20,bram_reg_bram_1_n_21,bram_reg_bram_1_n_22,bram_reg_bram_1_n_23,bram_reg_bram_1_n_24,bram_reg_bram_1_n_25,bram_reg_bram_1_n_26,bram_reg_bram_1_n_27,bram_reg_bram_1_n_28,bram_reg_bram_1_n_29,bram_reg_bram_1_n_30,bram_reg_bram_1_n_31,bram_reg_bram_1_n_32,bram_reg_bram_1_n_33,bram_reg_bram_1_n_34,bram_reg_bram_1_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_1_n_134,bram_reg_bram_1_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_2_i_1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_2_n_20,bram_reg_bram_2_n_21,bram_reg_bram_2_n_22,bram_reg_bram_2_n_23,bram_reg_bram_2_n_24,bram_reg_bram_2_n_25,bram_reg_bram_2_n_26,bram_reg_bram_2_n_27,bram_reg_bram_2_n_28,bram_reg_bram_2_n_29,bram_reg_bram_2_n_30,bram_reg_bram_2_n_31,bram_reg_bram_2_n_32,bram_reg_bram_2_n_33,bram_reg_bram_2_n_34,bram_reg_bram_2_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_2_n_134,bram_reg_bram_2_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_2_i_2_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_2_i_3_n_0,bram_reg_bram_2_i_3_n_0,bram_reg_bram_2_i_3_n_0,bram_reg_bram_2_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_2_i_1
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_2_i_2
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_2_i_3
       (.I0(bram_0_we),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(bram_reg_bram_2_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "6144" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_3
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_2_n_20,bram_reg_bram_2_n_21,bram_reg_bram_2_n_22,bram_reg_bram_2_n_23,bram_reg_bram_2_n_24,bram_reg_bram_2_n_25,bram_reg_bram_2_n_26,bram_reg_bram_2_n_27,bram_reg_bram_2_n_28,bram_reg_bram_2_n_29,bram_reg_bram_2_n_30,bram_reg_bram_2_n_31,bram_reg_bram_2_n_32,bram_reg_bram_2_n_33,bram_reg_bram_2_n_34,bram_reg_bram_2_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_2_n_134,bram_reg_bram_2_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_3_i_1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_3_n_20,bram_reg_bram_3_n_21,bram_reg_bram_3_n_22,bram_reg_bram_3_n_23,bram_reg_bram_3_n_24,bram_reg_bram_3_n_25,bram_reg_bram_3_n_26,bram_reg_bram_3_n_27,bram_reg_bram_3_n_28,bram_reg_bram_3_n_29,bram_reg_bram_3_n_30,bram_reg_bram_3_n_31,bram_reg_bram_3_n_32,bram_reg_bram_3_n_33,bram_reg_bram_3_n_34,bram_reg_bram_3_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_3_n_134,bram_reg_bram_3_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_3_i_2_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_3_i_3_n_0,bram_reg_bram_3_i_3_n_0,bram_reg_bram_3_i_3_n_0,bram_reg_bram_3_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    bram_reg_bram_3_i_1
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    bram_reg_bram_3_i_2
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_3_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    bram_reg_bram_3_i_3
       (.I0(bram_0_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_3_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "10239" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_4
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_3_n_20,bram_reg_bram_3_n_21,bram_reg_bram_3_n_22,bram_reg_bram_3_n_23,bram_reg_bram_3_n_24,bram_reg_bram_3_n_25,bram_reg_bram_3_n_26,bram_reg_bram_3_n_27,bram_reg_bram_3_n_28,bram_reg_bram_3_n_29,bram_reg_bram_3_n_30,bram_reg_bram_3_n_31,bram_reg_bram_3_n_32,bram_reg_bram_3_n_33,bram_reg_bram_3_n_34,bram_reg_bram_3_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_3_n_134,bram_reg_bram_3_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_4_i_1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_4_n_20,bram_reg_bram_4_n_21,bram_reg_bram_4_n_22,bram_reg_bram_4_n_23,bram_reg_bram_4_n_24,bram_reg_bram_4_n_25,bram_reg_bram_4_n_26,bram_reg_bram_4_n_27,bram_reg_bram_4_n_28,bram_reg_bram_4_n_29,bram_reg_bram_4_n_30,bram_reg_bram_4_n_31,bram_reg_bram_4_n_32,bram_reg_bram_4_n_33,bram_reg_bram_4_n_34,bram_reg_bram_4_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_4_n_134,bram_reg_bram_4_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_4_i_2_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_4_i_3_n_0,bram_reg_bram_4_i_3_n_0,bram_reg_bram_4_i_3_n_0,bram_reg_bram_4_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_4_i_1
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_4_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_4_i_2
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_4_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_4_i_3
       (.I0(bram_0_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_4_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "10240" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_5
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_4_n_20,bram_reg_bram_4_n_21,bram_reg_bram_4_n_22,bram_reg_bram_4_n_23,bram_reg_bram_4_n_24,bram_reg_bram_4_n_25,bram_reg_bram_4_n_26,bram_reg_bram_4_n_27,bram_reg_bram_4_n_28,bram_reg_bram_4_n_29,bram_reg_bram_4_n_30,bram_reg_bram_4_n_31,bram_reg_bram_4_n_32,bram_reg_bram_4_n_33,bram_reg_bram_4_n_34,bram_reg_bram_4_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_4_n_134,bram_reg_bram_4_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_5_i_1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_5_n_20,bram_reg_bram_5_n_21,bram_reg_bram_5_n_22,bram_reg_bram_5_n_23,bram_reg_bram_5_n_24,bram_reg_bram_5_n_25,bram_reg_bram_5_n_26,bram_reg_bram_5_n_27,bram_reg_bram_5_n_28,bram_reg_bram_5_n_29,bram_reg_bram_5_n_30,bram_reg_bram_5_n_31,bram_reg_bram_5_n_32,bram_reg_bram_5_n_33,bram_reg_bram_5_n_34,bram_reg_bram_5_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_5_n_134,bram_reg_bram_5_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_5_i_2_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_5_i_3_n_0,bram_reg_bram_5_i_3_n_0,bram_reg_bram_5_i_3_n_0,bram_reg_bram_5_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    bram_reg_bram_5_i_1
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_5_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    bram_reg_bram_5_i_2
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_5_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    bram_reg_bram_5_i_3
       (.I0(bram_0_we),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(bram_reg_bram_5_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "14335" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_6
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_5_n_20,bram_reg_bram_5_n_21,bram_reg_bram_5_n_22,bram_reg_bram_5_n_23,bram_reg_bram_5_n_24,bram_reg_bram_5_n_25,bram_reg_bram_5_n_26,bram_reg_bram_5_n_27,bram_reg_bram_5_n_28,bram_reg_bram_5_n_29,bram_reg_bram_5_n_30,bram_reg_bram_5_n_31,bram_reg_bram_5_n_32,bram_reg_bram_5_n_33,bram_reg_bram_5_n_34,bram_reg_bram_5_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_5_n_134,bram_reg_bram_5_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_6_i_1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_6_n_20,bram_reg_bram_6_n_21,bram_reg_bram_6_n_22,bram_reg_bram_6_n_23,bram_reg_bram_6_n_24,bram_reg_bram_6_n_25,bram_reg_bram_6_n_26,bram_reg_bram_6_n_27,bram_reg_bram_6_n_28,bram_reg_bram_6_n_29,bram_reg_bram_6_n_30,bram_reg_bram_6_n_31,bram_reg_bram_6_n_32,bram_reg_bram_6_n_33,bram_reg_bram_6_n_34,bram_reg_bram_6_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_6_n_134,bram_reg_bram_6_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_6_i_2_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_6_i_3_n_0,bram_reg_bram_6_i_3_n_0,bram_reg_bram_6_i_3_n_0,bram_reg_bram_6_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    bram_reg_bram_6_i_1
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_6_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    bram_reg_bram_6_i_2
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_6_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    bram_reg_bram_6_i_3
       (.I0(bram_0_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_6_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "14336" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_7
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_6_n_20,bram_reg_bram_6_n_21,bram_reg_bram_6_n_22,bram_reg_bram_6_n_23,bram_reg_bram_6_n_24,bram_reg_bram_6_n_25,bram_reg_bram_6_n_26,bram_reg_bram_6_n_27,bram_reg_bram_6_n_28,bram_reg_bram_6_n_29,bram_reg_bram_6_n_30,bram_reg_bram_6_n_31,bram_reg_bram_6_n_32,bram_reg_bram_6_n_33,bram_reg_bram_6_n_34,bram_reg_bram_6_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_6_n_134,bram_reg_bram_6_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_7_i_1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED[31:16],bram_dout[15:0]}),
        .DOUTBDOUT(NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP({NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:2],bram_dout[17:16]}),
        .DOUTPBDOUTP(NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_7_i_2_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_7_i_3_n_0,bram_reg_bram_7_i_3_n_0,bram_reg_bram_7_i_3_n_0,bram_reg_bram_7_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    bram_reg_bram_7_i_1
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_7_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bram_reg_bram_7_i_2
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_7_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    bram_reg_bram_7_i_3
       (.I0(bram_0_we),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[11]),
        .O(bram_reg_bram_7_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "BRAM_hist" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_0
   (D,
    bram_dout,
    Q,
    \FILL_FSM_DOUT_reg[0] ,
    \FILL_FSM_DOUT_reg[17] ,
    \FILL_FSM_DOUT_reg[16] ,
    \FILL_FSM_DOUT_reg[15] ,
    \FILL_FSM_DOUT_reg[14] ,
    \FILL_FSM_DOUT_reg[13] ,
    \FILL_FSM_DOUT_reg[12] ,
    \FILL_FSM_DOUT_reg[11] ,
    \FILL_FSM_DOUT_reg[10] ,
    \FILL_FSM_DOUT_reg[9] ,
    \FILL_FSM_DOUT_reg[8] ,
    \FILL_FSM_DOUT_reg[7] ,
    \FILL_FSM_DOUT_reg[6] ,
    \FILL_FSM_DOUT_reg[5] ,
    \FILL_FSM_DOUT_reg[4] ,
    \FILL_FSM_DOUT_reg[3] ,
    \FILL_FSM_DOUT_reg[2] ,
    \FILL_FSM_DOUT_reg[1] ,
    \FILL_FSM_DOUT_reg[0]_0 ,
    clk,
    bram_reg_bram_7_0,
    bram_1_we);
  output [17:0]D;
  output [17:0]bram_dout;
  input [13:0]Q;
  input [1:0]\FILL_FSM_DOUT_reg[0] ;
  input \FILL_FSM_DOUT_reg[17] ;
  input \FILL_FSM_DOUT_reg[16] ;
  input \FILL_FSM_DOUT_reg[15] ;
  input \FILL_FSM_DOUT_reg[14] ;
  input \FILL_FSM_DOUT_reg[13] ;
  input \FILL_FSM_DOUT_reg[12] ;
  input \FILL_FSM_DOUT_reg[11] ;
  input \FILL_FSM_DOUT_reg[10] ;
  input \FILL_FSM_DOUT_reg[9] ;
  input \FILL_FSM_DOUT_reg[8] ;
  input \FILL_FSM_DOUT_reg[7] ;
  input \FILL_FSM_DOUT_reg[6] ;
  input \FILL_FSM_DOUT_reg[5] ;
  input \FILL_FSM_DOUT_reg[4] ;
  input \FILL_FSM_DOUT_reg[3] ;
  input \FILL_FSM_DOUT_reg[2] ;
  input \FILL_FSM_DOUT_reg[1] ;
  input \FILL_FSM_DOUT_reg[0]_0 ;
  input clk;
  input [17:0]bram_reg_bram_7_0;
  input bram_1_we;

  wire [17:0]D;
  wire [1:0]\FILL_FSM_DOUT_reg[0] ;
  wire \FILL_FSM_DOUT_reg[0]_0 ;
  wire \FILL_FSM_DOUT_reg[10] ;
  wire \FILL_FSM_DOUT_reg[11] ;
  wire \FILL_FSM_DOUT_reg[12] ;
  wire \FILL_FSM_DOUT_reg[13] ;
  wire \FILL_FSM_DOUT_reg[14] ;
  wire \FILL_FSM_DOUT_reg[15] ;
  wire \FILL_FSM_DOUT_reg[16] ;
  wire \FILL_FSM_DOUT_reg[17] ;
  wire \FILL_FSM_DOUT_reg[1] ;
  wire \FILL_FSM_DOUT_reg[2] ;
  wire \FILL_FSM_DOUT_reg[3] ;
  wire \FILL_FSM_DOUT_reg[4] ;
  wire \FILL_FSM_DOUT_reg[5] ;
  wire \FILL_FSM_DOUT_reg[6] ;
  wire \FILL_FSM_DOUT_reg[7] ;
  wire \FILL_FSM_DOUT_reg[8] ;
  wire \FILL_FSM_DOUT_reg[9] ;
  wire [13:0]Q;
  wire bram_1_we;
  wire [17:0]bram_dout;
  wire bram_reg_bram_0_i_1__0_n_0;
  wire bram_reg_bram_0_i_2__0_n_0;
  wire bram_reg_bram_0_n_134;
  wire bram_reg_bram_0_n_135;
  wire bram_reg_bram_0_n_20;
  wire bram_reg_bram_0_n_21;
  wire bram_reg_bram_0_n_22;
  wire bram_reg_bram_0_n_23;
  wire bram_reg_bram_0_n_24;
  wire bram_reg_bram_0_n_25;
  wire bram_reg_bram_0_n_26;
  wire bram_reg_bram_0_n_27;
  wire bram_reg_bram_0_n_28;
  wire bram_reg_bram_0_n_29;
  wire bram_reg_bram_0_n_30;
  wire bram_reg_bram_0_n_31;
  wire bram_reg_bram_0_n_32;
  wire bram_reg_bram_0_n_33;
  wire bram_reg_bram_0_n_34;
  wire bram_reg_bram_0_n_35;
  wire bram_reg_bram_1_i_1__0_n_0;
  wire bram_reg_bram_1_i_2__0_n_0;
  wire bram_reg_bram_1_i_3__0_n_0;
  wire bram_reg_bram_1_n_134;
  wire bram_reg_bram_1_n_135;
  wire bram_reg_bram_1_n_20;
  wire bram_reg_bram_1_n_21;
  wire bram_reg_bram_1_n_22;
  wire bram_reg_bram_1_n_23;
  wire bram_reg_bram_1_n_24;
  wire bram_reg_bram_1_n_25;
  wire bram_reg_bram_1_n_26;
  wire bram_reg_bram_1_n_27;
  wire bram_reg_bram_1_n_28;
  wire bram_reg_bram_1_n_29;
  wire bram_reg_bram_1_n_30;
  wire bram_reg_bram_1_n_31;
  wire bram_reg_bram_1_n_32;
  wire bram_reg_bram_1_n_33;
  wire bram_reg_bram_1_n_34;
  wire bram_reg_bram_1_n_35;
  wire bram_reg_bram_2_i_1__0_n_0;
  wire bram_reg_bram_2_i_2__0_n_0;
  wire bram_reg_bram_2_i_3__0_n_0;
  wire bram_reg_bram_2_n_134;
  wire bram_reg_bram_2_n_135;
  wire bram_reg_bram_2_n_20;
  wire bram_reg_bram_2_n_21;
  wire bram_reg_bram_2_n_22;
  wire bram_reg_bram_2_n_23;
  wire bram_reg_bram_2_n_24;
  wire bram_reg_bram_2_n_25;
  wire bram_reg_bram_2_n_26;
  wire bram_reg_bram_2_n_27;
  wire bram_reg_bram_2_n_28;
  wire bram_reg_bram_2_n_29;
  wire bram_reg_bram_2_n_30;
  wire bram_reg_bram_2_n_31;
  wire bram_reg_bram_2_n_32;
  wire bram_reg_bram_2_n_33;
  wire bram_reg_bram_2_n_34;
  wire bram_reg_bram_2_n_35;
  wire bram_reg_bram_3_i_1__0_n_0;
  wire bram_reg_bram_3_i_2__0_n_0;
  wire bram_reg_bram_3_i_3__0_n_0;
  wire bram_reg_bram_3_n_134;
  wire bram_reg_bram_3_n_135;
  wire bram_reg_bram_3_n_20;
  wire bram_reg_bram_3_n_21;
  wire bram_reg_bram_3_n_22;
  wire bram_reg_bram_3_n_23;
  wire bram_reg_bram_3_n_24;
  wire bram_reg_bram_3_n_25;
  wire bram_reg_bram_3_n_26;
  wire bram_reg_bram_3_n_27;
  wire bram_reg_bram_3_n_28;
  wire bram_reg_bram_3_n_29;
  wire bram_reg_bram_3_n_30;
  wire bram_reg_bram_3_n_31;
  wire bram_reg_bram_3_n_32;
  wire bram_reg_bram_3_n_33;
  wire bram_reg_bram_3_n_34;
  wire bram_reg_bram_3_n_35;
  wire bram_reg_bram_4_i_1__0_n_0;
  wire bram_reg_bram_4_i_2__0_n_0;
  wire bram_reg_bram_4_i_3__0_n_0;
  wire bram_reg_bram_4_n_134;
  wire bram_reg_bram_4_n_135;
  wire bram_reg_bram_4_n_20;
  wire bram_reg_bram_4_n_21;
  wire bram_reg_bram_4_n_22;
  wire bram_reg_bram_4_n_23;
  wire bram_reg_bram_4_n_24;
  wire bram_reg_bram_4_n_25;
  wire bram_reg_bram_4_n_26;
  wire bram_reg_bram_4_n_27;
  wire bram_reg_bram_4_n_28;
  wire bram_reg_bram_4_n_29;
  wire bram_reg_bram_4_n_30;
  wire bram_reg_bram_4_n_31;
  wire bram_reg_bram_4_n_32;
  wire bram_reg_bram_4_n_33;
  wire bram_reg_bram_4_n_34;
  wire bram_reg_bram_4_n_35;
  wire bram_reg_bram_5_i_1__0_n_0;
  wire bram_reg_bram_5_i_2__0_n_0;
  wire bram_reg_bram_5_i_3__0_n_0;
  wire bram_reg_bram_5_n_134;
  wire bram_reg_bram_5_n_135;
  wire bram_reg_bram_5_n_20;
  wire bram_reg_bram_5_n_21;
  wire bram_reg_bram_5_n_22;
  wire bram_reg_bram_5_n_23;
  wire bram_reg_bram_5_n_24;
  wire bram_reg_bram_5_n_25;
  wire bram_reg_bram_5_n_26;
  wire bram_reg_bram_5_n_27;
  wire bram_reg_bram_5_n_28;
  wire bram_reg_bram_5_n_29;
  wire bram_reg_bram_5_n_30;
  wire bram_reg_bram_5_n_31;
  wire bram_reg_bram_5_n_32;
  wire bram_reg_bram_5_n_33;
  wire bram_reg_bram_5_n_34;
  wire bram_reg_bram_5_n_35;
  wire bram_reg_bram_6_i_1__0_n_0;
  wire bram_reg_bram_6_i_2__0_n_0;
  wire bram_reg_bram_6_i_3__0_n_0;
  wire bram_reg_bram_6_n_134;
  wire bram_reg_bram_6_n_135;
  wire bram_reg_bram_6_n_20;
  wire bram_reg_bram_6_n_21;
  wire bram_reg_bram_6_n_22;
  wire bram_reg_bram_6_n_23;
  wire bram_reg_bram_6_n_24;
  wire bram_reg_bram_6_n_25;
  wire bram_reg_bram_6_n_26;
  wire bram_reg_bram_6_n_27;
  wire bram_reg_bram_6_n_28;
  wire bram_reg_bram_6_n_29;
  wire bram_reg_bram_6_n_30;
  wire bram_reg_bram_6_n_31;
  wire bram_reg_bram_6_n_32;
  wire bram_reg_bram_6_n_33;
  wire bram_reg_bram_6_n_34;
  wire bram_reg_bram_6_n_35;
  wire [17:0]bram_reg_bram_7_0;
  wire bram_reg_bram_7_i_1__0_n_0;
  wire bram_reg_bram_7_i_2__0_n_0;
  wire bram_reg_bram_7_i_3__0_n_0;
  wire clk;
  wire NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[0]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[0]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[0]_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[10]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[10]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[10] ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[11]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[11]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[11] ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[12]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[12]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[12] ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[13]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[13]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[13] ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[14]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[14]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[14] ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[15]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[15]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[15] ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[16]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[16]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[16] ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[17]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[17]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[17] ),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[1]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[1]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[2]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[2]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[3]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[3]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[4]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[4]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[5]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[5]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[6]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[6]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[6] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[7]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[7]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[7] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[8]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[8]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[8] ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FILL_FSM_DOUT_reg[9]_i_1 
       (.I0(\FILL_FSM_DOUT_reg[0] [1]),
        .I1(bram_dout[9]),
        .I2(\FILL_FSM_DOUT_reg[0] [0]),
        .I3(\FILL_FSM_DOUT_reg[9] ),
        .O(D[9]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_0
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_0_n_20,bram_reg_bram_0_n_21,bram_reg_bram_0_n_22,bram_reg_bram_0_n_23,bram_reg_bram_0_n_24,bram_reg_bram_0_n_25,bram_reg_bram_0_n_26,bram_reg_bram_0_n_27,bram_reg_bram_0_n_28,bram_reg_bram_0_n_29,bram_reg_bram_0_n_30,bram_reg_bram_0_n_31,bram_reg_bram_0_n_32,bram_reg_bram_0_n_33,bram_reg_bram_0_n_34,bram_reg_bram_0_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_0_n_134,bram_reg_bram_0_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_0_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_0_i_1__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_0_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_0_i_2__0_n_0,bram_reg_bram_0_i_2__0_n_0,bram_reg_bram_0_i_2__0_n_0,bram_reg_bram_0_i_2__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    bram_reg_bram_0_i_1__0
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_0_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    bram_reg_bram_0_i_2__0
       (.I0(bram_1_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_0_i_2__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_1
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_0_n_20,bram_reg_bram_0_n_21,bram_reg_bram_0_n_22,bram_reg_bram_0_n_23,bram_reg_bram_0_n_24,bram_reg_bram_0_n_25,bram_reg_bram_0_n_26,bram_reg_bram_0_n_27,bram_reg_bram_0_n_28,bram_reg_bram_0_n_29,bram_reg_bram_0_n_30,bram_reg_bram_0_n_31,bram_reg_bram_0_n_32,bram_reg_bram_0_n_33,bram_reg_bram_0_n_34,bram_reg_bram_0_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_0_n_134,bram_reg_bram_0_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_1_i_1__0_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_1_n_20,bram_reg_bram_1_n_21,bram_reg_bram_1_n_22,bram_reg_bram_1_n_23,bram_reg_bram_1_n_24,bram_reg_bram_1_n_25,bram_reg_bram_1_n_26,bram_reg_bram_1_n_27,bram_reg_bram_1_n_28,bram_reg_bram_1_n_29,bram_reg_bram_1_n_30,bram_reg_bram_1_n_31,bram_reg_bram_1_n_32,bram_reg_bram_1_n_33,bram_reg_bram_1_n_34,bram_reg_bram_1_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_1_n_134,bram_reg_bram_1_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_1_i_2__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_1_i_3__0_n_0,bram_reg_bram_1_i_3__0_n_0,bram_reg_bram_1_i_3__0_n_0,bram_reg_bram_1_i_3__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_1_i_1__0
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_1_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_1_i_2__0
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_1_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_1_i_3__0
       (.I0(bram_1_we),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[11]),
        .O(bram_reg_bram_1_i_3__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "6143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_2
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_1_n_20,bram_reg_bram_1_n_21,bram_reg_bram_1_n_22,bram_reg_bram_1_n_23,bram_reg_bram_1_n_24,bram_reg_bram_1_n_25,bram_reg_bram_1_n_26,bram_reg_bram_1_n_27,bram_reg_bram_1_n_28,bram_reg_bram_1_n_29,bram_reg_bram_1_n_30,bram_reg_bram_1_n_31,bram_reg_bram_1_n_32,bram_reg_bram_1_n_33,bram_reg_bram_1_n_34,bram_reg_bram_1_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_1_n_134,bram_reg_bram_1_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_2_i_1__0_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_2_n_20,bram_reg_bram_2_n_21,bram_reg_bram_2_n_22,bram_reg_bram_2_n_23,bram_reg_bram_2_n_24,bram_reg_bram_2_n_25,bram_reg_bram_2_n_26,bram_reg_bram_2_n_27,bram_reg_bram_2_n_28,bram_reg_bram_2_n_29,bram_reg_bram_2_n_30,bram_reg_bram_2_n_31,bram_reg_bram_2_n_32,bram_reg_bram_2_n_33,bram_reg_bram_2_n_34,bram_reg_bram_2_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_2_n_134,bram_reg_bram_2_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_2_i_2__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_2_i_3__0_n_0,bram_reg_bram_2_i_3__0_n_0,bram_reg_bram_2_i_3__0_n_0,bram_reg_bram_2_i_3__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_2_i_1__0
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_2_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_2_i_2__0
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_2_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_2_i_3__0
       (.I0(bram_1_we),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(bram_reg_bram_2_i_3__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "6144" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_3
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_2_n_20,bram_reg_bram_2_n_21,bram_reg_bram_2_n_22,bram_reg_bram_2_n_23,bram_reg_bram_2_n_24,bram_reg_bram_2_n_25,bram_reg_bram_2_n_26,bram_reg_bram_2_n_27,bram_reg_bram_2_n_28,bram_reg_bram_2_n_29,bram_reg_bram_2_n_30,bram_reg_bram_2_n_31,bram_reg_bram_2_n_32,bram_reg_bram_2_n_33,bram_reg_bram_2_n_34,bram_reg_bram_2_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_2_n_134,bram_reg_bram_2_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_3_i_1__0_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_3_n_20,bram_reg_bram_3_n_21,bram_reg_bram_3_n_22,bram_reg_bram_3_n_23,bram_reg_bram_3_n_24,bram_reg_bram_3_n_25,bram_reg_bram_3_n_26,bram_reg_bram_3_n_27,bram_reg_bram_3_n_28,bram_reg_bram_3_n_29,bram_reg_bram_3_n_30,bram_reg_bram_3_n_31,bram_reg_bram_3_n_32,bram_reg_bram_3_n_33,bram_reg_bram_3_n_34,bram_reg_bram_3_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_3_n_134,bram_reg_bram_3_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_3_i_2__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_3_i_3__0_n_0,bram_reg_bram_3_i_3__0_n_0,bram_reg_bram_3_i_3__0_n_0,bram_reg_bram_3_i_3__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    bram_reg_bram_3_i_1__0
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_3_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    bram_reg_bram_3_i_2__0
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_3_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    bram_reg_bram_3_i_3__0
       (.I0(bram_1_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_3_i_3__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "10239" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_4
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_3_n_20,bram_reg_bram_3_n_21,bram_reg_bram_3_n_22,bram_reg_bram_3_n_23,bram_reg_bram_3_n_24,bram_reg_bram_3_n_25,bram_reg_bram_3_n_26,bram_reg_bram_3_n_27,bram_reg_bram_3_n_28,bram_reg_bram_3_n_29,bram_reg_bram_3_n_30,bram_reg_bram_3_n_31,bram_reg_bram_3_n_32,bram_reg_bram_3_n_33,bram_reg_bram_3_n_34,bram_reg_bram_3_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_3_n_134,bram_reg_bram_3_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_4_i_1__0_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_4_n_20,bram_reg_bram_4_n_21,bram_reg_bram_4_n_22,bram_reg_bram_4_n_23,bram_reg_bram_4_n_24,bram_reg_bram_4_n_25,bram_reg_bram_4_n_26,bram_reg_bram_4_n_27,bram_reg_bram_4_n_28,bram_reg_bram_4_n_29,bram_reg_bram_4_n_30,bram_reg_bram_4_n_31,bram_reg_bram_4_n_32,bram_reg_bram_4_n_33,bram_reg_bram_4_n_34,bram_reg_bram_4_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_4_n_134,bram_reg_bram_4_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_4_i_2__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_4_i_3__0_n_0,bram_reg_bram_4_i_3__0_n_0,bram_reg_bram_4_i_3__0_n_0,bram_reg_bram_4_i_3__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_4_i_1__0
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_4_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_4_i_2__0
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_4_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_4_i_3__0
       (.I0(bram_1_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_4_i_3__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "10240" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_5
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_4_n_20,bram_reg_bram_4_n_21,bram_reg_bram_4_n_22,bram_reg_bram_4_n_23,bram_reg_bram_4_n_24,bram_reg_bram_4_n_25,bram_reg_bram_4_n_26,bram_reg_bram_4_n_27,bram_reg_bram_4_n_28,bram_reg_bram_4_n_29,bram_reg_bram_4_n_30,bram_reg_bram_4_n_31,bram_reg_bram_4_n_32,bram_reg_bram_4_n_33,bram_reg_bram_4_n_34,bram_reg_bram_4_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_4_n_134,bram_reg_bram_4_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_5_i_1__0_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_5_n_20,bram_reg_bram_5_n_21,bram_reg_bram_5_n_22,bram_reg_bram_5_n_23,bram_reg_bram_5_n_24,bram_reg_bram_5_n_25,bram_reg_bram_5_n_26,bram_reg_bram_5_n_27,bram_reg_bram_5_n_28,bram_reg_bram_5_n_29,bram_reg_bram_5_n_30,bram_reg_bram_5_n_31,bram_reg_bram_5_n_32,bram_reg_bram_5_n_33,bram_reg_bram_5_n_34,bram_reg_bram_5_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_5_n_134,bram_reg_bram_5_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_5_i_2__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_5_i_3__0_n_0,bram_reg_bram_5_i_3__0_n_0,bram_reg_bram_5_i_3__0_n_0,bram_reg_bram_5_i_3__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    bram_reg_bram_5_i_1__0
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_5_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    bram_reg_bram_5_i_2__0
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_5_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    bram_reg_bram_5_i_3__0
       (.I0(bram_1_we),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(bram_reg_bram_5_i_3__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "14335" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_6
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_5_n_20,bram_reg_bram_5_n_21,bram_reg_bram_5_n_22,bram_reg_bram_5_n_23,bram_reg_bram_5_n_24,bram_reg_bram_5_n_25,bram_reg_bram_5_n_26,bram_reg_bram_5_n_27,bram_reg_bram_5_n_28,bram_reg_bram_5_n_29,bram_reg_bram_5_n_30,bram_reg_bram_5_n_31,bram_reg_bram_5_n_32,bram_reg_bram_5_n_33,bram_reg_bram_5_n_34,bram_reg_bram_5_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_5_n_134,bram_reg_bram_5_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_6_i_1__0_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_6_n_20,bram_reg_bram_6_n_21,bram_reg_bram_6_n_22,bram_reg_bram_6_n_23,bram_reg_bram_6_n_24,bram_reg_bram_6_n_25,bram_reg_bram_6_n_26,bram_reg_bram_6_n_27,bram_reg_bram_6_n_28,bram_reg_bram_6_n_29,bram_reg_bram_6_n_30,bram_reg_bram_6_n_31,bram_reg_bram_6_n_32,bram_reg_bram_6_n_33,bram_reg_bram_6_n_34,bram_reg_bram_6_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_6_n_134,bram_reg_bram_6_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_6_i_2__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_6_i_3__0_n_0,bram_reg_bram_6_i_3__0_n_0,bram_reg_bram_6_i_3__0_n_0,bram_reg_bram_6_i_3__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    bram_reg_bram_6_i_1__0
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_6_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    bram_reg_bram_6_i_2__0
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_6_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    bram_reg_bram_6_i_3__0
       (.I0(bram_1_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_6_i_3__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "14336" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_7
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_6_n_20,bram_reg_bram_6_n_21,bram_reg_bram_6_n_22,bram_reg_bram_6_n_23,bram_reg_bram_6_n_24,bram_reg_bram_6_n_25,bram_reg_bram_6_n_26,bram_reg_bram_6_n_27,bram_reg_bram_6_n_28,bram_reg_bram_6_n_29,bram_reg_bram_6_n_30,bram_reg_bram_6_n_31,bram_reg_bram_6_n_32,bram_reg_bram_6_n_33,bram_reg_bram_6_n_34,bram_reg_bram_6_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_6_n_134,bram_reg_bram_6_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_7_i_1__0_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_0[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_0[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED[31:16],bram_dout[15:0]}),
        .DOUTBDOUT(NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP({NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:2],bram_dout[17:16]}),
        .DOUTPBDOUTP(NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_7_i_2__0_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_7_i_3__0_n_0,bram_reg_bram_7_i_3__0_n_0,bram_reg_bram_7_i_3__0_n_0,bram_reg_bram_7_i_3__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    bram_reg_bram_7_i_1__0
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_7_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bram_reg_bram_7_i_2__0
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_7_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    bram_reg_bram_7_i_3__0
       (.I0(bram_1_we),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[11]),
        .O(bram_reg_bram_7_i_3__0_n_0));
endmodule

(* ORIG_REF_NAME = "BRAM_hist" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_1
   (bram_reg_bram_7_0,
    bram_reg_bram_7_1,
    bram_reg_bram_7_2,
    bram_reg_bram_7_3,
    bram_reg_bram_7_4,
    bram_reg_bram_7_5,
    bram_reg_bram_7_6,
    bram_reg_bram_7_7,
    bram_reg_bram_7_8,
    bram_reg_bram_7_9,
    bram_reg_bram_7_10,
    bram_reg_bram_7_11,
    bram_reg_bram_7_12,
    bram_reg_bram_7_13,
    bram_reg_bram_7_14,
    bram_reg_bram_7_15,
    bram_reg_bram_7_16,
    bram_reg_bram_7_17,
    D,
    Q,
    \READ_FSM_DOUT_reg[0] ,
    bram_dout,
    \READ_FSM_DOUT_reg[17] ,
    \READ_FSM_DOUT_reg[16] ,
    \READ_FSM_DOUT_reg[15] ,
    \READ_FSM_DOUT_reg[14] ,
    \READ_FSM_DOUT_reg[13] ,
    \READ_FSM_DOUT_reg[12] ,
    \READ_FSM_DOUT_reg[11] ,
    \READ_FSM_DOUT_reg[10] ,
    \READ_FSM_DOUT_reg[9] ,
    \READ_FSM_DOUT_reg[8] ,
    \READ_FSM_DOUT_reg[7] ,
    \READ_FSM_DOUT_reg[6] ,
    \READ_FSM_DOUT_reg[5] ,
    \READ_FSM_DOUT_reg[4] ,
    \READ_FSM_DOUT_reg[3] ,
    \READ_FSM_DOUT_reg[2] ,
    \READ_FSM_DOUT_reg[1] ,
    \READ_FSM_DOUT_reg[0]_0 ,
    clk,
    bram_reg_bram_7_18,
    bram_2_we);
  output bram_reg_bram_7_0;
  output bram_reg_bram_7_1;
  output bram_reg_bram_7_2;
  output bram_reg_bram_7_3;
  output bram_reg_bram_7_4;
  output bram_reg_bram_7_5;
  output bram_reg_bram_7_6;
  output bram_reg_bram_7_7;
  output bram_reg_bram_7_8;
  output bram_reg_bram_7_9;
  output bram_reg_bram_7_10;
  output bram_reg_bram_7_11;
  output bram_reg_bram_7_12;
  output bram_reg_bram_7_13;
  output bram_reg_bram_7_14;
  output bram_reg_bram_7_15;
  output bram_reg_bram_7_16;
  output bram_reg_bram_7_17;
  output [17:0]D;
  input [13:0]Q;
  input [3:0]\READ_FSM_DOUT_reg[0] ;
  input [17:0]bram_dout;
  input \READ_FSM_DOUT_reg[17] ;
  input \READ_FSM_DOUT_reg[16] ;
  input \READ_FSM_DOUT_reg[15] ;
  input \READ_FSM_DOUT_reg[14] ;
  input \READ_FSM_DOUT_reg[13] ;
  input \READ_FSM_DOUT_reg[12] ;
  input \READ_FSM_DOUT_reg[11] ;
  input \READ_FSM_DOUT_reg[10] ;
  input \READ_FSM_DOUT_reg[9] ;
  input \READ_FSM_DOUT_reg[8] ;
  input \READ_FSM_DOUT_reg[7] ;
  input \READ_FSM_DOUT_reg[6] ;
  input \READ_FSM_DOUT_reg[5] ;
  input \READ_FSM_DOUT_reg[4] ;
  input \READ_FSM_DOUT_reg[3] ;
  input \READ_FSM_DOUT_reg[2] ;
  input \READ_FSM_DOUT_reg[1] ;
  input \READ_FSM_DOUT_reg[0]_0 ;
  input clk;
  input [17:0]bram_reg_bram_7_18;
  input bram_2_we;

  wire [17:0]D;
  wire [13:0]Q;
  wire [3:0]\READ_FSM_DOUT_reg[0] ;
  wire \READ_FSM_DOUT_reg[0]_0 ;
  wire \READ_FSM_DOUT_reg[10] ;
  wire \READ_FSM_DOUT_reg[11] ;
  wire \READ_FSM_DOUT_reg[12] ;
  wire \READ_FSM_DOUT_reg[13] ;
  wire \READ_FSM_DOUT_reg[14] ;
  wire \READ_FSM_DOUT_reg[15] ;
  wire \READ_FSM_DOUT_reg[16] ;
  wire \READ_FSM_DOUT_reg[17] ;
  wire \READ_FSM_DOUT_reg[1] ;
  wire \READ_FSM_DOUT_reg[2] ;
  wire \READ_FSM_DOUT_reg[3] ;
  wire \READ_FSM_DOUT_reg[4] ;
  wire \READ_FSM_DOUT_reg[5] ;
  wire \READ_FSM_DOUT_reg[6] ;
  wire \READ_FSM_DOUT_reg[7] ;
  wire \READ_FSM_DOUT_reg[8] ;
  wire \READ_FSM_DOUT_reg[9] ;
  wire [17:0]bram_2_dout;
  wire bram_2_we;
  wire [17:0]bram_dout;
  wire bram_reg_bram_0_i_1__1_n_0;
  wire bram_reg_bram_0_i_2__1_n_0;
  wire bram_reg_bram_0_n_134;
  wire bram_reg_bram_0_n_135;
  wire bram_reg_bram_0_n_20;
  wire bram_reg_bram_0_n_21;
  wire bram_reg_bram_0_n_22;
  wire bram_reg_bram_0_n_23;
  wire bram_reg_bram_0_n_24;
  wire bram_reg_bram_0_n_25;
  wire bram_reg_bram_0_n_26;
  wire bram_reg_bram_0_n_27;
  wire bram_reg_bram_0_n_28;
  wire bram_reg_bram_0_n_29;
  wire bram_reg_bram_0_n_30;
  wire bram_reg_bram_0_n_31;
  wire bram_reg_bram_0_n_32;
  wire bram_reg_bram_0_n_33;
  wire bram_reg_bram_0_n_34;
  wire bram_reg_bram_0_n_35;
  wire bram_reg_bram_1_i_1__1_n_0;
  wire bram_reg_bram_1_i_2__1_n_0;
  wire bram_reg_bram_1_i_3__1_n_0;
  wire bram_reg_bram_1_n_134;
  wire bram_reg_bram_1_n_135;
  wire bram_reg_bram_1_n_20;
  wire bram_reg_bram_1_n_21;
  wire bram_reg_bram_1_n_22;
  wire bram_reg_bram_1_n_23;
  wire bram_reg_bram_1_n_24;
  wire bram_reg_bram_1_n_25;
  wire bram_reg_bram_1_n_26;
  wire bram_reg_bram_1_n_27;
  wire bram_reg_bram_1_n_28;
  wire bram_reg_bram_1_n_29;
  wire bram_reg_bram_1_n_30;
  wire bram_reg_bram_1_n_31;
  wire bram_reg_bram_1_n_32;
  wire bram_reg_bram_1_n_33;
  wire bram_reg_bram_1_n_34;
  wire bram_reg_bram_1_n_35;
  wire bram_reg_bram_2_i_1__1_n_0;
  wire bram_reg_bram_2_i_2__1_n_0;
  wire bram_reg_bram_2_i_3__1_n_0;
  wire bram_reg_bram_2_n_134;
  wire bram_reg_bram_2_n_135;
  wire bram_reg_bram_2_n_20;
  wire bram_reg_bram_2_n_21;
  wire bram_reg_bram_2_n_22;
  wire bram_reg_bram_2_n_23;
  wire bram_reg_bram_2_n_24;
  wire bram_reg_bram_2_n_25;
  wire bram_reg_bram_2_n_26;
  wire bram_reg_bram_2_n_27;
  wire bram_reg_bram_2_n_28;
  wire bram_reg_bram_2_n_29;
  wire bram_reg_bram_2_n_30;
  wire bram_reg_bram_2_n_31;
  wire bram_reg_bram_2_n_32;
  wire bram_reg_bram_2_n_33;
  wire bram_reg_bram_2_n_34;
  wire bram_reg_bram_2_n_35;
  wire bram_reg_bram_3_i_1__1_n_0;
  wire bram_reg_bram_3_i_2__1_n_0;
  wire bram_reg_bram_3_i_3__1_n_0;
  wire bram_reg_bram_3_n_134;
  wire bram_reg_bram_3_n_135;
  wire bram_reg_bram_3_n_20;
  wire bram_reg_bram_3_n_21;
  wire bram_reg_bram_3_n_22;
  wire bram_reg_bram_3_n_23;
  wire bram_reg_bram_3_n_24;
  wire bram_reg_bram_3_n_25;
  wire bram_reg_bram_3_n_26;
  wire bram_reg_bram_3_n_27;
  wire bram_reg_bram_3_n_28;
  wire bram_reg_bram_3_n_29;
  wire bram_reg_bram_3_n_30;
  wire bram_reg_bram_3_n_31;
  wire bram_reg_bram_3_n_32;
  wire bram_reg_bram_3_n_33;
  wire bram_reg_bram_3_n_34;
  wire bram_reg_bram_3_n_35;
  wire bram_reg_bram_4_i_1__1_n_0;
  wire bram_reg_bram_4_i_2__1_n_0;
  wire bram_reg_bram_4_i_3__1_n_0;
  wire bram_reg_bram_4_n_134;
  wire bram_reg_bram_4_n_135;
  wire bram_reg_bram_4_n_20;
  wire bram_reg_bram_4_n_21;
  wire bram_reg_bram_4_n_22;
  wire bram_reg_bram_4_n_23;
  wire bram_reg_bram_4_n_24;
  wire bram_reg_bram_4_n_25;
  wire bram_reg_bram_4_n_26;
  wire bram_reg_bram_4_n_27;
  wire bram_reg_bram_4_n_28;
  wire bram_reg_bram_4_n_29;
  wire bram_reg_bram_4_n_30;
  wire bram_reg_bram_4_n_31;
  wire bram_reg_bram_4_n_32;
  wire bram_reg_bram_4_n_33;
  wire bram_reg_bram_4_n_34;
  wire bram_reg_bram_4_n_35;
  wire bram_reg_bram_5_i_1__1_n_0;
  wire bram_reg_bram_5_i_2__1_n_0;
  wire bram_reg_bram_5_i_3__1_n_0;
  wire bram_reg_bram_5_n_134;
  wire bram_reg_bram_5_n_135;
  wire bram_reg_bram_5_n_20;
  wire bram_reg_bram_5_n_21;
  wire bram_reg_bram_5_n_22;
  wire bram_reg_bram_5_n_23;
  wire bram_reg_bram_5_n_24;
  wire bram_reg_bram_5_n_25;
  wire bram_reg_bram_5_n_26;
  wire bram_reg_bram_5_n_27;
  wire bram_reg_bram_5_n_28;
  wire bram_reg_bram_5_n_29;
  wire bram_reg_bram_5_n_30;
  wire bram_reg_bram_5_n_31;
  wire bram_reg_bram_5_n_32;
  wire bram_reg_bram_5_n_33;
  wire bram_reg_bram_5_n_34;
  wire bram_reg_bram_5_n_35;
  wire bram_reg_bram_6_i_1__1_n_0;
  wire bram_reg_bram_6_i_2__1_n_0;
  wire bram_reg_bram_6_i_3__1_n_0;
  wire bram_reg_bram_6_n_134;
  wire bram_reg_bram_6_n_135;
  wire bram_reg_bram_6_n_20;
  wire bram_reg_bram_6_n_21;
  wire bram_reg_bram_6_n_22;
  wire bram_reg_bram_6_n_23;
  wire bram_reg_bram_6_n_24;
  wire bram_reg_bram_6_n_25;
  wire bram_reg_bram_6_n_26;
  wire bram_reg_bram_6_n_27;
  wire bram_reg_bram_6_n_28;
  wire bram_reg_bram_6_n_29;
  wire bram_reg_bram_6_n_30;
  wire bram_reg_bram_6_n_31;
  wire bram_reg_bram_6_n_32;
  wire bram_reg_bram_6_n_33;
  wire bram_reg_bram_6_n_34;
  wire bram_reg_bram_6_n_35;
  wire bram_reg_bram_7_0;
  wire bram_reg_bram_7_1;
  wire bram_reg_bram_7_10;
  wire bram_reg_bram_7_11;
  wire bram_reg_bram_7_12;
  wire bram_reg_bram_7_13;
  wire bram_reg_bram_7_14;
  wire bram_reg_bram_7_15;
  wire bram_reg_bram_7_16;
  wire bram_reg_bram_7_17;
  wire [17:0]bram_reg_bram_7_18;
  wire bram_reg_bram_7_2;
  wire bram_reg_bram_7_3;
  wire bram_reg_bram_7_4;
  wire bram_reg_bram_7_5;
  wire bram_reg_bram_7_6;
  wire bram_reg_bram_7_7;
  wire bram_reg_bram_7_8;
  wire bram_reg_bram_7_9;
  wire bram_reg_bram_7_i_1__1_n_0;
  wire bram_reg_bram_7_i_2__1_n_0;
  wire bram_reg_bram_7_i_3__1_n_0;
  wire clk;
  wire NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_0_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_bram_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED;
  wire [31:16]NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:2]NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[0]_i_2 
       (.I0(bram_2_dout[0]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[0]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_17));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[10]_i_2 
       (.I0(bram_2_dout[10]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[10]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_7));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[11]_i_2 
       (.I0(bram_2_dout[11]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[11]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_6));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[12]_i_2 
       (.I0(bram_2_dout[12]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[12]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_5));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[13]_i_2 
       (.I0(bram_2_dout[13]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[13]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_4));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[14]_i_2 
       (.I0(bram_2_dout[14]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[14]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_3));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[15]_i_2 
       (.I0(bram_2_dout[15]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[15]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_2));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[16]_i_2 
       (.I0(bram_2_dout[16]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[16]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[17]_i_3 
       (.I0(bram_2_dout[17]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[17]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[1]_i_2 
       (.I0(bram_2_dout[1]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[1]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_16));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[2]_i_2 
       (.I0(bram_2_dout[2]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[2]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_15));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[3]_i_2 
       (.I0(bram_2_dout[3]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[3]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_14));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[4]_i_2 
       (.I0(bram_2_dout[4]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[4]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_13));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[5]_i_2 
       (.I0(bram_2_dout[5]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[5]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_12));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[6]_i_2 
       (.I0(bram_2_dout[6]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[6]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_11));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[7]_i_2 
       (.I0(bram_2_dout[7]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[7]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_10));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[8]_i_2 
       (.I0(bram_2_dout[8]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[8]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_9));
  LUT4 #(
    .INIT(16'hF888)) 
    \FILL_FSM_DOUT_reg[9]_i_2 
       (.I0(bram_2_dout[9]),
        .I1(\READ_FSM_DOUT_reg[0] [2]),
        .I2(bram_dout[9]),
        .I3(\READ_FSM_DOUT_reg[0] [1]),
        .O(bram_reg_bram_7_8));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[0]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[0]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[0]_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[10]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[10]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[10] ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[11]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[11]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[11] ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[12]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[12]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[12] ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[13]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[13]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[13] ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[14]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[14]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[14] ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[15]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[15]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[15] ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[16]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[16]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[16] ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[17]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[17]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[17] ),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[1]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[1]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[2]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[2]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[3]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[3]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[4]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[4]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[5]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[5]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[6]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[6]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[6] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[7]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[7]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[7] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[8]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[8]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[8] ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \READ_FSM_DOUT_reg[9]_i_1 
       (.I0(\READ_FSM_DOUT_reg[0] [3]),
        .I1(bram_2_dout[9]),
        .I2(\READ_FSM_DOUT_reg[0] [0]),
        .I3(\READ_FSM_DOUT_reg[9] ),
        .O(D[9]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_0
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_0_n_20,bram_reg_bram_0_n_21,bram_reg_bram_0_n_22,bram_reg_bram_0_n_23,bram_reg_bram_0_n_24,bram_reg_bram_0_n_25,bram_reg_bram_0_n_26,bram_reg_bram_0_n_27,bram_reg_bram_0_n_28,bram_reg_bram_0_n_29,bram_reg_bram_0_n_30,bram_reg_bram_0_n_31,bram_reg_bram_0_n_32,bram_reg_bram_0_n_33,bram_reg_bram_0_n_34,bram_reg_bram_0_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_0_n_134,bram_reg_bram_0_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_0_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_0_i_1__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_0_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_0_i_2__1_n_0,bram_reg_bram_0_i_2__1_n_0,bram_reg_bram_0_i_2__1_n_0,bram_reg_bram_0_i_2__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    bram_reg_bram_0_i_1__1
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_0_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    bram_reg_bram_0_i_2__1
       (.I0(bram_2_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_0_i_2__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_1
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_0_n_20,bram_reg_bram_0_n_21,bram_reg_bram_0_n_22,bram_reg_bram_0_n_23,bram_reg_bram_0_n_24,bram_reg_bram_0_n_25,bram_reg_bram_0_n_26,bram_reg_bram_0_n_27,bram_reg_bram_0_n_28,bram_reg_bram_0_n_29,bram_reg_bram_0_n_30,bram_reg_bram_0_n_31,bram_reg_bram_0_n_32,bram_reg_bram_0_n_33,bram_reg_bram_0_n_34,bram_reg_bram_0_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_0_n_134,bram_reg_bram_0_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_1_i_1__1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_1_n_20,bram_reg_bram_1_n_21,bram_reg_bram_1_n_22,bram_reg_bram_1_n_23,bram_reg_bram_1_n_24,bram_reg_bram_1_n_25,bram_reg_bram_1_n_26,bram_reg_bram_1_n_27,bram_reg_bram_1_n_28,bram_reg_bram_1_n_29,bram_reg_bram_1_n_30,bram_reg_bram_1_n_31,bram_reg_bram_1_n_32,bram_reg_bram_1_n_33,bram_reg_bram_1_n_34,bram_reg_bram_1_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_1_n_134,bram_reg_bram_1_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_1_i_2__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_1_i_3__1_n_0,bram_reg_bram_1_i_3__1_n_0,bram_reg_bram_1_i_3__1_n_0,bram_reg_bram_1_i_3__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_1_i_1__1
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_1_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_1_i_2__1
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_1_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_1_i_3__1
       (.I0(bram_2_we),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[11]),
        .O(bram_reg_bram_1_i_3__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "6143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_2
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_1_n_20,bram_reg_bram_1_n_21,bram_reg_bram_1_n_22,bram_reg_bram_1_n_23,bram_reg_bram_1_n_24,bram_reg_bram_1_n_25,bram_reg_bram_1_n_26,bram_reg_bram_1_n_27,bram_reg_bram_1_n_28,bram_reg_bram_1_n_29,bram_reg_bram_1_n_30,bram_reg_bram_1_n_31,bram_reg_bram_1_n_32,bram_reg_bram_1_n_33,bram_reg_bram_1_n_34,bram_reg_bram_1_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_1_n_134,bram_reg_bram_1_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_2_i_1__1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_2_n_20,bram_reg_bram_2_n_21,bram_reg_bram_2_n_22,bram_reg_bram_2_n_23,bram_reg_bram_2_n_24,bram_reg_bram_2_n_25,bram_reg_bram_2_n_26,bram_reg_bram_2_n_27,bram_reg_bram_2_n_28,bram_reg_bram_2_n_29,bram_reg_bram_2_n_30,bram_reg_bram_2_n_31,bram_reg_bram_2_n_32,bram_reg_bram_2_n_33,bram_reg_bram_2_n_34,bram_reg_bram_2_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_2_n_134,bram_reg_bram_2_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_2_i_2__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_2_i_3__1_n_0,bram_reg_bram_2_i_3__1_n_0,bram_reg_bram_2_i_3__1_n_0,bram_reg_bram_2_i_3__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_2_i_1__1
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_2_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_2_i_2__1
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_2_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_2_i_3__1
       (.I0(bram_2_we),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(bram_reg_bram_2_i_3__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "6144" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_3
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_2_n_20,bram_reg_bram_2_n_21,bram_reg_bram_2_n_22,bram_reg_bram_2_n_23,bram_reg_bram_2_n_24,bram_reg_bram_2_n_25,bram_reg_bram_2_n_26,bram_reg_bram_2_n_27,bram_reg_bram_2_n_28,bram_reg_bram_2_n_29,bram_reg_bram_2_n_30,bram_reg_bram_2_n_31,bram_reg_bram_2_n_32,bram_reg_bram_2_n_33,bram_reg_bram_2_n_34,bram_reg_bram_2_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_2_n_134,bram_reg_bram_2_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_3_i_1__1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_3_n_20,bram_reg_bram_3_n_21,bram_reg_bram_3_n_22,bram_reg_bram_3_n_23,bram_reg_bram_3_n_24,bram_reg_bram_3_n_25,bram_reg_bram_3_n_26,bram_reg_bram_3_n_27,bram_reg_bram_3_n_28,bram_reg_bram_3_n_29,bram_reg_bram_3_n_30,bram_reg_bram_3_n_31,bram_reg_bram_3_n_32,bram_reg_bram_3_n_33,bram_reg_bram_3_n_34,bram_reg_bram_3_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_3_n_134,bram_reg_bram_3_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_3_i_2__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_3_i_3__1_n_0,bram_reg_bram_3_i_3__1_n_0,bram_reg_bram_3_i_3__1_n_0,bram_reg_bram_3_i_3__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    bram_reg_bram_3_i_1__1
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_3_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    bram_reg_bram_3_i_2__1
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_3_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    bram_reg_bram_3_i_3__1
       (.I0(bram_2_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_3_i_3__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "10239" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_4
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_3_n_20,bram_reg_bram_3_n_21,bram_reg_bram_3_n_22,bram_reg_bram_3_n_23,bram_reg_bram_3_n_24,bram_reg_bram_3_n_25,bram_reg_bram_3_n_26,bram_reg_bram_3_n_27,bram_reg_bram_3_n_28,bram_reg_bram_3_n_29,bram_reg_bram_3_n_30,bram_reg_bram_3_n_31,bram_reg_bram_3_n_32,bram_reg_bram_3_n_33,bram_reg_bram_3_n_34,bram_reg_bram_3_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_3_n_134,bram_reg_bram_3_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_4_i_1__1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_4_n_20,bram_reg_bram_4_n_21,bram_reg_bram_4_n_22,bram_reg_bram_4_n_23,bram_reg_bram_4_n_24,bram_reg_bram_4_n_25,bram_reg_bram_4_n_26,bram_reg_bram_4_n_27,bram_reg_bram_4_n_28,bram_reg_bram_4_n_29,bram_reg_bram_4_n_30,bram_reg_bram_4_n_31,bram_reg_bram_4_n_32,bram_reg_bram_4_n_33,bram_reg_bram_4_n_34,bram_reg_bram_4_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_4_n_134,bram_reg_bram_4_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_4_i_2__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_4_i_3__1_n_0,bram_reg_bram_4_i_3__1_n_0,bram_reg_bram_4_i_3__1_n_0,bram_reg_bram_4_i_3__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    bram_reg_bram_4_i_1__1
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_4_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_reg_bram_4_i_2__1
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_4_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    bram_reg_bram_4_i_3__1
       (.I0(bram_2_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_4_i_3__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "10240" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_5
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_4_n_20,bram_reg_bram_4_n_21,bram_reg_bram_4_n_22,bram_reg_bram_4_n_23,bram_reg_bram_4_n_24,bram_reg_bram_4_n_25,bram_reg_bram_4_n_26,bram_reg_bram_4_n_27,bram_reg_bram_4_n_28,bram_reg_bram_4_n_29,bram_reg_bram_4_n_30,bram_reg_bram_4_n_31,bram_reg_bram_4_n_32,bram_reg_bram_4_n_33,bram_reg_bram_4_n_34,bram_reg_bram_4_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_4_n_134,bram_reg_bram_4_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_5_i_1__1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_5_n_20,bram_reg_bram_5_n_21,bram_reg_bram_5_n_22,bram_reg_bram_5_n_23,bram_reg_bram_5_n_24,bram_reg_bram_5_n_25,bram_reg_bram_5_n_26,bram_reg_bram_5_n_27,bram_reg_bram_5_n_28,bram_reg_bram_5_n_29,bram_reg_bram_5_n_30,bram_reg_bram_5_n_31,bram_reg_bram_5_n_32,bram_reg_bram_5_n_33,bram_reg_bram_5_n_34,bram_reg_bram_5_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_5_n_134,bram_reg_bram_5_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_5_i_2__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_5_i_3__1_n_0,bram_reg_bram_5_i_3__1_n_0,bram_reg_bram_5_i_3__1_n_0,bram_reg_bram_5_i_3__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    bram_reg_bram_5_i_1__1
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_5_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    bram_reg_bram_5_i_2__1
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_5_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    bram_reg_bram_5_i_3__1
       (.I0(bram_2_we),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(bram_reg_bram_5_i_3__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "14335" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_6
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_5_n_20,bram_reg_bram_5_n_21,bram_reg_bram_5_n_22,bram_reg_bram_5_n_23,bram_reg_bram_5_n_24,bram_reg_bram_5_n_25,bram_reg_bram_5_n_26,bram_reg_bram_5_n_27,bram_reg_bram_5_n_28,bram_reg_bram_5_n_29,bram_reg_bram_5_n_30,bram_reg_bram_5_n_31,bram_reg_bram_5_n_32,bram_reg_bram_5_n_33,bram_reg_bram_5_n_34,bram_reg_bram_5_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_5_n_134,bram_reg_bram_5_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_6_i_1__1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA({NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED[31:16],bram_reg_bram_6_n_20,bram_reg_bram_6_n_21,bram_reg_bram_6_n_22,bram_reg_bram_6_n_23,bram_reg_bram_6_n_24,bram_reg_bram_6_n_25,bram_reg_bram_6_n_26,bram_reg_bram_6_n_27,bram_reg_bram_6_n_28,bram_reg_bram_6_n_29,bram_reg_bram_6_n_30,bram_reg_bram_6_n_31,bram_reg_bram_6_n_32,bram_reg_bram_6_n_33,bram_reg_bram_6_n_34,bram_reg_bram_6_n_35}),
        .CASDOUTB(NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA({NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED[3:2],bram_reg_bram_6_n_134,bram_reg_bram_6_n_135}),
        .CASDOUTPB(NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_6_i_2__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_6_i_3__1_n_0,bram_reg_bram_6_i_3__1_n_0,bram_reg_bram_6_i_3__1_n_0,bram_reg_bram_6_i_3__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    bram_reg_bram_6_i_1__1
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(bram_reg_bram_6_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    bram_reg_bram_6_i_2__1
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(bram_reg_bram_6_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    bram_reg_bram_6_i_3__1
       (.I0(bram_2_we),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(bram_reg_bram_6_i_3__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "14336" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    bram_reg_bram_7
       (.ADDRARDADDR({Q[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_6_n_20,bram_reg_bram_6_n_21,bram_reg_bram_6_n_22,bram_reg_bram_6_n_23,bram_reg_bram_6_n_24,bram_reg_bram_6_n_25,bram_reg_bram_6_n_26,bram_reg_bram_6_n_27,bram_reg_bram_6_n_28,bram_reg_bram_6_n_29,bram_reg_bram_6_n_30,bram_reg_bram_6_n_31,bram_reg_bram_6_n_32,bram_reg_bram_6_n_33,bram_reg_bram_6_n_34,bram_reg_bram_6_n_35}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,bram_reg_bram_6_n_134,bram_reg_bram_6_n_135}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(bram_reg_bram_7_i_1__1_n_0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_bram_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_reg_bram_7_18[15:0]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,bram_reg_bram_7_18[17:16]}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED[31:16],bram_2_dout[15:0]}),
        .DOUTBDOUT(NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP({NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:2],bram_2_dout[17:16]}),
        .DOUTPBDOUTP(NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(bram_reg_bram_7_i_2__1_n_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_bram_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({bram_reg_bram_7_i_3__1_n_0,bram_reg_bram_7_i_3__1_n_0,bram_reg_bram_7_i_3__1_n_0,bram_reg_bram_7_i_3__1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    bram_reg_bram_7_i_1__1
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .O(bram_reg_bram_7_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bram_reg_bram_7_i_2__1
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(bram_reg_bram_7_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    bram_reg_bram_7_i_3__1
       (.I0(bram_2_we),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[11]),
        .O(bram_reg_bram_7_i_3__1_n_0));
endmodule

(* ORIG_REF_NAME = "CLEARING_FSM" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0_CLEARING_FSM
   (CLEAR_FSM_WE,
    CLEAR_IDLE_FLAG,
    Q,
    bram_1_we__0,
    bram_2_we__0,
    D,
    \FSM_onehot_state_r_reg[2]_0 ,
    \FSM_onehot_state_r_reg[2]_1 ,
    \FSM_onehot_state_r_reg[2]_2 ,
    \FSM_onehot_state_r_reg[2]_3 ,
    \FSM_onehot_state_r_reg[2]_4 ,
    \FSM_onehot_state_r_reg[2]_5 ,
    \FSM_onehot_state_r_reg[2]_6 ,
    \FSM_onehot_state_r_reg[2]_7 ,
    \FSM_onehot_state_r_reg[2]_8 ,
    \FSM_onehot_state_r_reg[2]_9 ,
    \FSM_onehot_state_r_reg[2]_10 ,
    \FSM_onehot_state_r_reg[2]_11 ,
    \FSM_onehot_state_r_reg[2]_12 ,
    \FSM_onehot_state_r_reg[2]_13 ,
    SR,
    en,
    clk,
    state_n0_carry__0_0,
    pixel_done,
    \bram_0_addr_reg[0]_i_1_0 ,
    FILL_FSM_WE,
    \bram_0_addr_reg[13] ,
    \bram_0_addr_reg[13]_i_1_0 );
  output CLEAR_FSM_WE;
  output CLEAR_IDLE_FLAG;
  output [13:0]Q;
  output bram_1_we__0;
  output bram_2_we__0;
  output [13:0]D;
  output \FSM_onehot_state_r_reg[2]_0 ;
  output \FSM_onehot_state_r_reg[2]_1 ;
  output \FSM_onehot_state_r_reg[2]_2 ;
  output \FSM_onehot_state_r_reg[2]_3 ;
  output \FSM_onehot_state_r_reg[2]_4 ;
  output \FSM_onehot_state_r_reg[2]_5 ;
  output \FSM_onehot_state_r_reg[2]_6 ;
  output \FSM_onehot_state_r_reg[2]_7 ;
  output \FSM_onehot_state_r_reg[2]_8 ;
  output \FSM_onehot_state_r_reg[2]_9 ;
  output \FSM_onehot_state_r_reg[2]_10 ;
  output \FSM_onehot_state_r_reg[2]_11 ;
  output \FSM_onehot_state_r_reg[2]_12 ;
  output \FSM_onehot_state_r_reg[2]_13 ;
  input [0:0]SR;
  input en;
  input clk;
  input [14:0]state_n0_carry__0_0;
  input pixel_done;
  input [3:0]\bram_0_addr_reg[0]_i_1_0 ;
  input FILL_FSM_WE;
  input [13:0]\bram_0_addr_reg[13] ;
  input [13:0]\bram_0_addr_reg[13]_i_1_0 ;

  wire CLEAR_FSM_WE;
  wire CLEAR_IDLE_FLAG;
  wire [13:0]D;
  wire FILL_FSM_WE;
  wire \FSM_onehot_state_r[3]_i_2_n_0 ;
  wire \FSM_onehot_state_r_reg[2]_0 ;
  wire \FSM_onehot_state_r_reg[2]_1 ;
  wire \FSM_onehot_state_r_reg[2]_10 ;
  wire \FSM_onehot_state_r_reg[2]_11 ;
  wire \FSM_onehot_state_r_reg[2]_12 ;
  wire \FSM_onehot_state_r_reg[2]_13 ;
  wire \FSM_onehot_state_r_reg[2]_2 ;
  wire \FSM_onehot_state_r_reg[2]_3 ;
  wire \FSM_onehot_state_r_reg[2]_4 ;
  wire \FSM_onehot_state_r_reg[2]_5 ;
  wire \FSM_onehot_state_r_reg[2]_6 ;
  wire \FSM_onehot_state_r_reg[2]_7 ;
  wire \FSM_onehot_state_r_reg[2]_8 ;
  wire \FSM_onehot_state_r_reg[2]_9 ;
  wire \FSM_onehot_state_r_reg_n_0_[3] ;
  wire IDLE_FLAG_r_i_1__0_n_0;
  wire [13:0]Q;
  wire [0:0]SR;
  wire [3:0]\bram_0_addr_reg[0]_i_1_0 ;
  wire \bram_0_addr_reg[0]_i_2_n_0 ;
  wire \bram_0_addr_reg[10]_i_2_n_0 ;
  wire \bram_0_addr_reg[11]_i_2_n_0 ;
  wire \bram_0_addr_reg[12]_i_2_n_0 ;
  wire [13:0]\bram_0_addr_reg[13] ;
  wire [13:0]\bram_0_addr_reg[13]_i_1_0 ;
  wire \bram_0_addr_reg[13]_i_2_n_0 ;
  wire \bram_0_addr_reg[1]_i_2_n_0 ;
  wire \bram_0_addr_reg[2]_i_2_n_0 ;
  wire \bram_0_addr_reg[3]_i_2_n_0 ;
  wire \bram_0_addr_reg[4]_i_2_n_0 ;
  wire \bram_0_addr_reg[5]_i_2_n_0 ;
  wire \bram_0_addr_reg[6]_i_2_n_0 ;
  wire \bram_0_addr_reg[7]_i_2_n_0 ;
  wire \bram_0_addr_reg[8]_i_2_n_0 ;
  wire \bram_0_addr_reg[9]_i_2_n_0 ;
  wire bram_1_we__0;
  wire bram_2_we__0;
  wire bram_addr_r;
  wire \bram_addr_r[0]_i_1__0_n_0 ;
  wire \bram_addr_r[10]_i_1__0_n_0 ;
  wire \bram_addr_r[10]_i_2__0_n_0 ;
  wire \bram_addr_r[11]_i_1__0_n_0 ;
  wire \bram_addr_r[12]_i_1__0_n_0 ;
  wire \bram_addr_r[13]_i_2_n_0 ;
  wire \bram_addr_r[13]_i_3__0_n_0 ;
  wire \bram_addr_r[1]_i_1__0_n_0 ;
  wire \bram_addr_r[2]_i_1__0_n_0 ;
  wire \bram_addr_r[3]_i_1__0_n_0 ;
  wire \bram_addr_r[4]_i_1__0_n_0 ;
  wire \bram_addr_r[4]_i_2_n_0 ;
  wire \bram_addr_r[5]_i_1__0_n_0 ;
  wire \bram_addr_r[5]_i_2__0_n_0 ;
  wire \bram_addr_r[6]_i_1__0_n_0 ;
  wire \bram_addr_r[7]_i_1__0_n_0 ;
  wire \bram_addr_r[8]_i_1__0_n_0 ;
  wire \bram_addr_r[8]_i_2_n_0 ;
  wire \bram_addr_r[9]_i_1__0_n_0 ;
  wire \bram_addr_r[9]_i_2__0_n_0 ;
  wire bram_we_n;
  wire bram_we_n__0;
  wire bram_we_n_reg_i_1_n_0;
  wire clk;
  wire en;
  wire pixel_done;
  wire [14:0]state_n0_carry__0_0;
  wire state_n0_carry__0_i_1_n_0;
  wire state_n0_carry__0_i_2_n_0;
  wire state_n0_carry__0_i_3_n_0;
  wire state_n0_carry__0_n_5;
  wire state_n0_carry__0_n_6;
  wire state_n0_carry__0_n_7;
  wire state_n0_carry_i_10_n_0;
  wire state_n0_carry_i_11_n_0;
  wire state_n0_carry_i_12_n_0;
  wire state_n0_carry_i_13_n_0;
  wire state_n0_carry_i_14_n_0;
  wire state_n0_carry_i_15_n_0;
  wire state_n0_carry_i_16_n_0;
  wire state_n0_carry_i_1_n_0;
  wire state_n0_carry_i_2_n_0;
  wire state_n0_carry_i_3_n_0;
  wire state_n0_carry_i_4_n_0;
  wire state_n0_carry_i_5_n_0;
  wire state_n0_carry_i_6_n_0;
  wire state_n0_carry_i_7_n_0;
  wire state_n0_carry_i_8_n_0;
  wire state_n0_carry_i_9_n_0;
  wire state_n0_carry_n_0;
  wire state_n0_carry_n_1;
  wire state_n0_carry_n_2;
  wire state_n0_carry_n_3;
  wire state_n0_carry_n_4;
  wire state_n0_carry_n_5;
  wire state_n0_carry_n_6;
  wire state_n0_carry_n_7;
  wire [2:2]state_n__0;
  wire state_r;
  wire [2:0]state_r__0;
  wire [7:0]NLW_state_n0_carry_O_UNCONNECTED;
  wire [7:3]NLW_state_n0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_state_n0_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state_r[2]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(state_r__0[1]),
        .O(state_n__0));
  LUT6 #(
    .INIT(64'hAA888888AA080808)) 
    \FSM_onehot_state_r[3]_i_1 
       (.I0(en),
        .I1(pixel_done),
        .I2(\FSM_onehot_state_r[3]_i_2_n_0 ),
        .I3(state_n0_carry__0_n_5),
        .I4(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I5(state_r__0[2]),
        .O(state_r));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state_r[3]_i_2 
       (.I0(state_r__0[1]),
        .I1(state_r__0[0]),
        .O(\FSM_onehot_state_r[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_r_reg[0] 
       (.C(clk),
        .CE(state_r),
        .D(1'b0),
        .Q(state_r__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[1] 
       (.C(clk),
        .CE(state_r),
        .D(state_r__0[0]),
        .Q(state_r__0[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[2] 
       (.C(clk),
        .CE(state_r),
        .D(state_n__0),
        .Q(state_r__0[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[3] 
       (.C(clk),
        .CE(state_r),
        .D(state_r__0[2]),
        .Q(\FSM_onehot_state_r_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF7FFF7FAA008000)) 
    IDLE_FLAG_r_i_1__0
       (.I0(en),
        .I1(pixel_done),
        .I2(state_r__0[2]),
        .I3(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I4(state_n0_carry__0_n_5),
        .I5(CLEAR_IDLE_FLAG),
        .O(IDLE_FLAG_r_i_1__0_n_0));
  FDSE IDLE_FLAG_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(IDLE_FLAG_r_i_1__0_n_0),
        .Q(CLEAR_IDLE_FLAG),
        .S(SR));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[0]_i_1 
       (.I0(\bram_0_addr_reg[0]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [0]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[0]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[0]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [0]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[10]_i_1 
       (.I0(\bram_0_addr_reg[10]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [10]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[10]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[10]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [10]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[11]_i_1 
       (.I0(\bram_0_addr_reg[11]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [11]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[11]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[11]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [11]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[12]_i_1 
       (.I0(\bram_0_addr_reg[12]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [12]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[12]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[12]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [12]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[13]_i_1 
       (.I0(\bram_0_addr_reg[13]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [13]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[13]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[13]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [13]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[1]_i_1 
       (.I0(\bram_0_addr_reg[1]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [1]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[1]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[1]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[2]_i_1 
       (.I0(\bram_0_addr_reg[2]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [2]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[2]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[2]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [2]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[3]_i_1 
       (.I0(\bram_0_addr_reg[3]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [3]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[3]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[3]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [3]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[4]_i_1 
       (.I0(\bram_0_addr_reg[4]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [4]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[4]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[4]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [4]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[5]_i_1 
       (.I0(\bram_0_addr_reg[5]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [5]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[5]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[5]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [5]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[6]_i_1 
       (.I0(\bram_0_addr_reg[6]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [6]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[6]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[6]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [6]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[7]_i_1 
       (.I0(\bram_0_addr_reg[7]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [7]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[7]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[7]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [7]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[8]_i_1 
       (.I0(\bram_0_addr_reg[8]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [8]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[8]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[8]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [8]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bram_0_addr_reg[9]_i_1 
       (.I0(\bram_0_addr_reg[9]_i_2_n_0 ),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[13] [9]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_0_addr_reg[9]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I1(Q[9]),
        .I2(\bram_0_addr_reg[13]_i_1_0 [9]),
        .I3(\bram_0_addr_reg[0]_i_1_0 [2]),
        .O(\bram_0_addr_reg[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[0]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[0]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [0]),
        .O(\FSM_onehot_state_r_reg[2]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[10]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[10]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [10]),
        .O(\FSM_onehot_state_r_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[11]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[11]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [11]),
        .O(\FSM_onehot_state_r_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[12]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[12]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [12]),
        .O(\FSM_onehot_state_r_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[13]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[13]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [13]),
        .O(\FSM_onehot_state_r_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[1]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[1]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [1]),
        .O(\FSM_onehot_state_r_reg[2]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[2]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[2]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [2]),
        .O(\FSM_onehot_state_r_reg[2]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[3]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[3]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [3]),
        .O(\FSM_onehot_state_r_reg[2]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[4]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[4]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [4]),
        .O(\FSM_onehot_state_r_reg[2]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[5]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[5]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [5]),
        .O(\FSM_onehot_state_r_reg[2]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[6]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[6]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [6]),
        .O(\FSM_onehot_state_r_reg[2]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[7]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[7]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [7]),
        .O(\FSM_onehot_state_r_reg[2]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[8]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[8]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [8]),
        .O(\FSM_onehot_state_r_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_1_addr_reg[9]_i_2 
       (.I0(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I1(Q[9]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I3(\bram_0_addr_reg[13]_i_1_0 [9]),
        .O(\FSM_onehot_state_r_reg[2]_4 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    bram_1_we_reg_i_1
       (.I0(CLEAR_FSM_WE),
        .I1(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [3]),
        .I3(FILL_FSM_WE),
        .I4(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(bram_1_we__0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    bram_2_we_reg_i_1
       (.I0(CLEAR_FSM_WE),
        .I1(\bram_0_addr_reg[0]_i_1_0 [1]),
        .I2(\bram_0_addr_reg[0]_i_1_0 [2]),
        .I3(FILL_FSM_WE),
        .I4(\bram_0_addr_reg[0]_i_1_0 [0]),
        .O(bram_2_we__0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bram_addr_r[0]_i_1__0 
       (.I0(state_n0_carry__0_n_5),
        .I1(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I2(Q[0]),
        .O(\bram_addr_r[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \bram_addr_r[10]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[10]),
        .I2(\bram_addr_r[10]_i_2__0_n_0 ),
        .I3(state_n0_carry__0_n_5),
        .O(\bram_addr_r[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \bram_addr_r[10]_i_2__0 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\bram_addr_r[8]_i_2_n_0 ),
        .I3(Q[7]),
        .I4(Q[9]),
        .O(\bram_addr_r[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \bram_addr_r[11]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[11]),
        .I2(\bram_addr_r[13]_i_3__0_n_0 ),
        .I3(state_n0_carry__0_n_5),
        .O(\bram_addr_r[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00008288)) 
    \bram_addr_r[12]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[12]),
        .I2(\bram_addr_r[13]_i_3__0_n_0 ),
        .I3(Q[11]),
        .I4(state_n0_carry__0_n_5),
        .O(\bram_addr_r[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hA888)) 
    \bram_addr_r[13]_i_1__0 
       (.I0(en),
        .I1(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I2(pixel_done),
        .I3(state_r__0[0]),
        .O(bram_addr_r));
  LUT6 #(
    .INIT(64'h0000000088882888)) 
    \bram_addr_r[13]_i_2 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(Q[11]),
        .I4(\bram_addr_r[13]_i_3__0_n_0 ),
        .I5(state_n0_carry__0_n_5),
        .O(\bram_addr_r[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \bram_addr_r[13]_i_3__0 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\bram_addr_r[8]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[10]),
        .O(\bram_addr_r[13]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \bram_addr_r[1]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(state_n0_carry__0_n_5),
        .O(\bram_addr_r[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00002888)) 
    \bram_addr_r[2]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state_n0_carry__0_n_5),
        .O(\bram_addr_r[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \bram_addr_r[3]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(state_n0_carry__0_n_5),
        .O(\bram_addr_r[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \bram_addr_r[4]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[4]),
        .I2(\bram_addr_r[4]_i_2_n_0 ),
        .I3(state_n0_carry__0_n_5),
        .O(\bram_addr_r[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bram_addr_r[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\bram_addr_r[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0082)) 
    \bram_addr_r[5]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[5]),
        .I2(\bram_addr_r[5]_i_2__0_n_0 ),
        .I3(state_n0_carry__0_n_5),
        .O(\bram_addr_r[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bram_addr_r[5]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\bram_addr_r[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \bram_addr_r[6]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[6]),
        .I2(\bram_addr_r[8]_i_2_n_0 ),
        .I3(state_n0_carry__0_n_5),
        .O(\bram_addr_r[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00008828)) 
    \bram_addr_r[7]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\bram_addr_r[8]_i_2_n_0 ),
        .I4(state_n0_carry__0_n_5),
        .O(\bram_addr_r[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088288888)) 
    \bram_addr_r[8]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(\bram_addr_r[8]_i_2_n_0 ),
        .I4(Q[6]),
        .I5(state_n0_carry__0_n_5),
        .O(\bram_addr_r[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bram_addr_r[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\bram_addr_r[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0082)) 
    \bram_addr_r[9]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(Q[9]),
        .I2(\bram_addr_r[9]_i_2__0_n_0 ),
        .I3(state_n0_carry__0_n_5),
        .O(\bram_addr_r[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \bram_addr_r[9]_i_2__0 
       (.I0(Q[7]),
        .I1(\bram_addr_r[8]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .O(\bram_addr_r[9]_i_2__0_n_0 ));
  FDRE \bram_addr_r_reg[0] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \bram_addr_r_reg[10] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE \bram_addr_r_reg[11] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[11]_i_1__0_n_0 ),
        .Q(Q[11]),
        .R(SR));
  FDRE \bram_addr_r_reg[12] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[12]_i_1__0_n_0 ),
        .Q(Q[12]),
        .R(SR));
  FDRE \bram_addr_r_reg[13] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[13]_i_2_n_0 ),
        .Q(Q[13]),
        .R(SR));
  FDRE \bram_addr_r_reg[1] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \bram_addr_r_reg[2] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \bram_addr_r_reg[3] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \bram_addr_r_reg[4] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \bram_addr_r_reg[5] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \bram_addr_r_reg[6] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \bram_addr_r_reg[7] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \bram_addr_r_reg[8] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \bram_addr_r_reg[9] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_we_n_reg
       (.CLR(1'b0),
        .D(bram_we_n_reg_i_1_n_0),
        .G(bram_we_n__0),
        .GE(1'b1),
        .Q(bram_we_n));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFFFFFF8)) 
    bram_we_n_reg_i_1
       (.I0(state_r__0[2]),
        .I1(pixel_done),
        .I2(state_r__0[1]),
        .I3(state_r__0[0]),
        .I4(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I5(state_n0_carry__0_n_5),
        .O(bram_we_n_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    bram_we_n_reg_i_2
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(state_r__0[2]),
        .I2(pixel_done),
        .O(bram_we_n__0));
  FDRE bram_we_r_reg
       (.C(clk),
        .CE(en),
        .D(bram_we_n),
        .Q(CLEAR_FSM_WE),
        .R(SR));
  CARRY8 state_n0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({state_n0_carry_n_0,state_n0_carry_n_1,state_n0_carry_n_2,state_n0_carry_n_3,state_n0_carry_n_4,state_n0_carry_n_5,state_n0_carry_n_6,state_n0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_n0_carry_O_UNCONNECTED[7:0]),
        .S({state_n0_carry_i_1_n_0,state_n0_carry_i_2_n_0,state_n0_carry_i_3_n_0,state_n0_carry_i_4_n_0,state_n0_carry_i_5_n_0,state_n0_carry_i_6_n_0,state_n0_carry_i_7_n_0,state_n0_carry_i_8_n_0}));
  CARRY8 state_n0_carry__0
       (.CI(state_n0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_state_n0_carry__0_CO_UNCONNECTED[7:3],state_n0_carry__0_n_5,state_n0_carry__0_n_6,state_n0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_n0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,state_n0_carry__0_i_1_n_0,state_n0_carry__0_i_2_n_0,state_n0_carry__0_i_3_n_0}));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state_n0_carry__0_i_1
       (.I0(state_n0_carry__0_0[14]),
        .I1(state_n0_carry__0_0[12]),
        .I2(state_n0_carry_i_9_n_0),
        .I3(state_n0_carry__0_0[11]),
        .I4(state_n0_carry__0_0[13]),
        .O(state_n0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state_n0_carry__0_i_2
       (.I0(state_n0_carry__0_0[14]),
        .I1(state_n0_carry__0_0[12]),
        .I2(state_n0_carry_i_9_n_0),
        .I3(state_n0_carry__0_0[11]),
        .I4(state_n0_carry__0_0[13]),
        .O(state_n0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state_n0_carry__0_i_3
       (.I0(state_n0_carry__0_0[14]),
        .I1(state_n0_carry__0_0[12]),
        .I2(state_n0_carry_i_9_n_0),
        .I3(state_n0_carry__0_0[11]),
        .I4(state_n0_carry__0_0[13]),
        .O(state_n0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state_n0_carry_i_1
       (.I0(state_n0_carry__0_0[14]),
        .I1(state_n0_carry__0_0[12]),
        .I2(state_n0_carry_i_9_n_0),
        .I3(state_n0_carry__0_0[11]),
        .I4(state_n0_carry__0_0[13]),
        .O(state_n0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state_n0_carry_i_10
       (.I0(state_n0_carry__0_0[11]),
        .I1(state_n0_carry_i_9_n_0),
        .O(state_n0_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state_n0_carry_i_11
       (.I0(state_n0_carry__0_0[9]),
        .I1(state_n0_carry__0_0[7]),
        .I2(state_n0_carry_i_13_n_0),
        .I3(state_n0_carry__0_0[6]),
        .I4(state_n0_carry__0_0[8]),
        .O(state_n0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA9)) 
    state_n0_carry_i_12
       (.I0(Q[9]),
        .I1(state_n0_carry__0_0[8]),
        .I2(state_n0_carry__0_0[6]),
        .I3(state_n0_carry_i_13_n_0),
        .I4(state_n0_carry__0_0[7]),
        .I5(state_n0_carry__0_0[9]),
        .O(state_n0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    state_n0_carry_i_13
       (.I0(state_n0_carry__0_0[5]),
        .I1(state_n0_carry__0_0[3]),
        .I2(state_n0_carry__0_0[0]),
        .I3(state_n0_carry__0_0[1]),
        .I4(state_n0_carry__0_0[2]),
        .I5(state_n0_carry__0_0[4]),
        .O(state_n0_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'h7BBDDEE7)) 
    state_n0_carry_i_14
       (.I0(Q[6]),
        .I1(state_n0_carry__0_0[7]),
        .I2(state_n0_carry_i_13_n_0),
        .I3(state_n0_carry__0_0[6]),
        .I4(Q[7]),
        .O(state_n0_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    state_n0_carry_i_15
       (.I0(state_n0_carry__0_0[3]),
        .I1(state_n0_carry__0_0[0]),
        .I2(state_n0_carry__0_0[1]),
        .I3(state_n0_carry__0_0[2]),
        .O(state_n0_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    state_n0_carry_i_16
       (.I0(Q[3]),
        .I1(state_n0_carry__0_0[2]),
        .I2(state_n0_carry__0_0[1]),
        .I3(state_n0_carry__0_0[0]),
        .I4(state_n0_carry__0_0[3]),
        .O(state_n0_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state_n0_carry_i_2
       (.I0(state_n0_carry__0_0[14]),
        .I1(state_n0_carry__0_0[12]),
        .I2(state_n0_carry_i_9_n_0),
        .I3(state_n0_carry__0_0[11]),
        .I4(state_n0_carry__0_0[13]),
        .O(state_n0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state_n0_carry_i_3
       (.I0(state_n0_carry__0_0[14]),
        .I1(state_n0_carry__0_0[12]),
        .I2(state_n0_carry_i_9_n_0),
        .I3(state_n0_carry__0_0[11]),
        .I4(state_n0_carry__0_0[13]),
        .O(state_n0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2001100802200110)) 
    state_n0_carry_i_4
       (.I0(Q[13]),
        .I1(state_n0_carry__0_0[14]),
        .I2(state_n0_carry__0_0[12]),
        .I3(state_n0_carry_i_10_n_0),
        .I4(state_n0_carry__0_0[13]),
        .I5(Q[12]),
        .O(state_n0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000090090960)) 
    state_n0_carry_i_5
       (.I0(state_n0_carry__0_0[11]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(state_n0_carry_i_11_n_0),
        .I4(state_n0_carry__0_0[10]),
        .I5(state_n0_carry_i_12_n_0),
        .O(state_n0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000AAA95556)) 
    state_n0_carry_i_6
       (.I0(state_n0_carry__0_0[8]),
        .I1(state_n0_carry__0_0[6]),
        .I2(state_n0_carry_i_13_n_0),
        .I3(state_n0_carry__0_0[7]),
        .I4(Q[8]),
        .I5(state_n0_carry_i_14_n_0),
        .O(state_n0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000090090960)) 
    state_n0_carry_i_7
       (.I0(state_n0_carry__0_0[5]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(state_n0_carry_i_15_n_0),
        .I4(state_n0_carry__0_0[4]),
        .I5(state_n0_carry_i_16_n_0),
        .O(state_n0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h4120000800084120)) 
    state_n0_carry_i_8
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(state_n0_carry__0_0[1]),
        .I3(state_n0_carry__0_0[0]),
        .I4(Q[2]),
        .I5(state_n0_carry__0_0[2]),
        .O(state_n0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    state_n0_carry_i_9
       (.I0(state_n0_carry__0_0[10]),
        .I1(state_n0_carry__0_0[8]),
        .I2(state_n0_carry__0_0[6]),
        .I3(state_n0_carry_i_13_n_0),
        .I4(state_n0_carry__0_0[7]),
        .I5(state_n0_carry__0_0[9]),
        .O(state_n0_carry_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "FILLING_FSM" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0_FILLING_FSM
   (FILL_FSM_WE,
    tready_in,
    bin_full_warning,
    bin_written_but_never_read_warning,
    D,
    bram_0_we__0,
    \FSM_onehot_state_r_reg[3] ,
    \FSM_onehot_state_r_reg[0]_0 ,
    \FSM_onehot_state_r_reg[3]_0 ,
    \tdata_in[13] ,
    \FSM_onehot_state_r_reg[2]_0 ,
    \FSM_onehot_state_r_reg[2]_1 ,
    \FSM_onehot_state_r_reg[2]_2 ,
    \FSM_onehot_state_r_reg[2]_3 ,
    \FSM_onehot_state_r_reg[2]_4 ,
    \FSM_onehot_state_r_reg[2]_5 ,
    \FSM_onehot_state_r_reg[2]_6 ,
    \FSM_onehot_state_r_reg[2]_7 ,
    \FSM_onehot_state_r_reg[2]_8 ,
    \FSM_onehot_state_r_reg[2]_9 ,
    \FSM_onehot_state_r_reg[2]_10 ,
    \FSM_onehot_state_r_reg[2]_11 ,
    \FSM_onehot_state_r_reg[2]_12 ,
    \FSM_onehot_state_r_reg[2]_13 ,
    SR,
    en,
    clk,
    tvalid_in,
    pixel_done,
    Q,
    bin_written_but_never_read_warning_r0_carry_0,
    tdata_in,
    bram_reg_bram_7,
    CLEAR_FSM_WE,
    \bram_1_addr_reg[13] ,
    \bram_1_addr_reg[12] ,
    \bram_1_addr_reg[11] ,
    bram_reg_bram_7_0,
    bram_reg_bram_7_1,
    bram_reg_bram_7_2,
    bram_reg_bram_7_3,
    bram_reg_bram_7_4,
    bram_reg_bram_7_5,
    bram_reg_bram_7_6,
    bram_reg_bram_7_7,
    bram_reg_bram_7_8,
    bram_reg_bram_7_9,
    bram_reg_bram_7_10,
    \bram_2_addr_reg[13]_i_1 );
  output FILL_FSM_WE;
  output tready_in;
  output bin_full_warning;
  output bin_written_but_never_read_warning;
  output [17:0]D;
  output bram_0_we__0;
  output [17:0]\FSM_onehot_state_r_reg[3] ;
  output [17:0]\FSM_onehot_state_r_reg[0]_0 ;
  output [13:0]\FSM_onehot_state_r_reg[3]_0 ;
  output [13:0]\tdata_in[13] ;
  output \FSM_onehot_state_r_reg[2]_0 ;
  output \FSM_onehot_state_r_reg[2]_1 ;
  output \FSM_onehot_state_r_reg[2]_2 ;
  output \FSM_onehot_state_r_reg[2]_3 ;
  output \FSM_onehot_state_r_reg[2]_4 ;
  output \FSM_onehot_state_r_reg[2]_5 ;
  output \FSM_onehot_state_r_reg[2]_6 ;
  output \FSM_onehot_state_r_reg[2]_7 ;
  output \FSM_onehot_state_r_reg[2]_8 ;
  output \FSM_onehot_state_r_reg[2]_9 ;
  output \FSM_onehot_state_r_reg[2]_10 ;
  output \FSM_onehot_state_r_reg[2]_11 ;
  output \FSM_onehot_state_r_reg[2]_12 ;
  output \FSM_onehot_state_r_reg[2]_13 ;
  input [0:0]SR;
  input en;
  input clk;
  input tvalid_in;
  input pixel_done;
  input [17:0]Q;
  input [14:0]bin_written_but_never_read_warning_r0_carry_0;
  input [63:0]tdata_in;
  input [3:0]bram_reg_bram_7;
  input CLEAR_FSM_WE;
  input \bram_1_addr_reg[13] ;
  input \bram_1_addr_reg[12] ;
  input \bram_1_addr_reg[11] ;
  input bram_reg_bram_7_0;
  input bram_reg_bram_7_1;
  input bram_reg_bram_7_2;
  input bram_reg_bram_7_3;
  input bram_reg_bram_7_4;
  input bram_reg_bram_7_5;
  input bram_reg_bram_7_6;
  input bram_reg_bram_7_7;
  input bram_reg_bram_7_8;
  input bram_reg_bram_7_9;
  input bram_reg_bram_7_10;
  input [13:0]\bram_2_addr_reg[13]_i_1 ;

  wire CLEAR_FSM_WE;
  wire [17:0]D;
  wire [17:0]FILL_FSM_DIN;
  wire FILL_FSM_WE;
  wire \FSM_onehot_state_r[1]_i_1_n_0 ;
  wire [17:0]\FSM_onehot_state_r_reg[0]_0 ;
  wire \FSM_onehot_state_r_reg[2]_0 ;
  wire \FSM_onehot_state_r_reg[2]_1 ;
  wire \FSM_onehot_state_r_reg[2]_10 ;
  wire \FSM_onehot_state_r_reg[2]_11 ;
  wire \FSM_onehot_state_r_reg[2]_12 ;
  wire \FSM_onehot_state_r_reg[2]_13 ;
  wire \FSM_onehot_state_r_reg[2]_2 ;
  wire \FSM_onehot_state_r_reg[2]_3 ;
  wire \FSM_onehot_state_r_reg[2]_4 ;
  wire \FSM_onehot_state_r_reg[2]_5 ;
  wire \FSM_onehot_state_r_reg[2]_6 ;
  wire \FSM_onehot_state_r_reg[2]_7 ;
  wire \FSM_onehot_state_r_reg[2]_8 ;
  wire \FSM_onehot_state_r_reg[2]_9 ;
  wire [17:0]\FSM_onehot_state_r_reg[3] ;
  wire [13:0]\FSM_onehot_state_r_reg[3]_0 ;
  wire \FSM_onehot_state_r_reg_n_0_[0] ;
  wire \FSM_onehot_state_r_reg_n_0_[1] ;
  wire \FSM_onehot_state_r_reg_n_0_[2] ;
  wire [17:0]Q;
  wire [0:0]SR;
  wire bin_full_warning;
  wire bin_full_warning_r_i_2_n_0;
  wire bin_full_warning_r_i_3_n_0;
  wire bin_full_warning_r_i_4_n_0;
  wire bin_full_warning_r_i_5_n_0;
  wire bin_full_warning_r_i_6_n_0;
  wire bin_full_warning_r_i_7_n_0;
  wire bin_written_but_never_read_warning;
  wire bin_written_but_never_read_warning_r0;
  wire [14:0]bin_written_but_never_read_warning_r0_carry_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_10_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_11_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_12_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_13_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_14_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_15_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_16_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_1_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_2_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_3_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_4_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_5_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_6_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_7_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_8_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_i_9_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_n_0;
  wire bin_written_but_never_read_warning_r0_carry__0_n_1;
  wire bin_written_but_never_read_warning_r0_carry__0_n_2;
  wire bin_written_but_never_read_warning_r0_carry__0_n_3;
  wire bin_written_but_never_read_warning_r0_carry__0_n_4;
  wire bin_written_but_never_read_warning_r0_carry__0_n_5;
  wire bin_written_but_never_read_warning_r0_carry__0_n_6;
  wire bin_written_but_never_read_warning_r0_carry__0_n_7;
  wire bin_written_but_never_read_warning_r0_carry__1_i_10_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_11_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_12_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_13_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_14_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_15_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_16_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_1_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_2_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_3_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_4_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_5_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_6_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_7_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_8_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_i_9_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_n_0;
  wire bin_written_but_never_read_warning_r0_carry__1_n_1;
  wire bin_written_but_never_read_warning_r0_carry__1_n_2;
  wire bin_written_but_never_read_warning_r0_carry__1_n_3;
  wire bin_written_but_never_read_warning_r0_carry__1_n_4;
  wire bin_written_but_never_read_warning_r0_carry__1_n_5;
  wire bin_written_but_never_read_warning_r0_carry__1_n_6;
  wire bin_written_but_never_read_warning_r0_carry__1_n_7;
  wire bin_written_but_never_read_warning_r0_carry__2_i_10_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_11_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_12_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_13_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_14_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_15_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_16_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_1_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_2_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_3_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_4_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_5_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_6_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_7_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_8_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_i_9_n_0;
  wire bin_written_but_never_read_warning_r0_carry__2_n_1;
  wire bin_written_but_never_read_warning_r0_carry__2_n_2;
  wire bin_written_but_never_read_warning_r0_carry__2_n_3;
  wire bin_written_but_never_read_warning_r0_carry__2_n_4;
  wire bin_written_but_never_read_warning_r0_carry__2_n_5;
  wire bin_written_but_never_read_warning_r0_carry__2_n_6;
  wire bin_written_but_never_read_warning_r0_carry__2_n_7;
  wire bin_written_but_never_read_warning_r0_carry_i_10_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_11_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_12_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_13_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_14_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_15_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_16_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_1_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_2_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_3_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_4_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_5_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_6_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_7_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_8_n_0;
  wire bin_written_but_never_read_warning_r0_carry_i_9_n_0;
  wire bin_written_but_never_read_warning_r0_carry_n_0;
  wire bin_written_but_never_read_warning_r0_carry_n_1;
  wire bin_written_but_never_read_warning_r0_carry_n_2;
  wire bin_written_but_never_read_warning_r0_carry_n_3;
  wire bin_written_but_never_read_warning_r0_carry_n_4;
  wire bin_written_but_never_read_warning_r0_carry_n_5;
  wire bin_written_but_never_read_warning_r0_carry_n_6;
  wire bin_written_but_never_read_warning_r0_carry_n_7;
  wire bin_written_but_never_read_warning_r_i_1_n_0;
  wire bram_0_we__0;
  wire \bram_1_addr_reg[11] ;
  wire \bram_1_addr_reg[12] ;
  wire \bram_1_addr_reg[13] ;
  wire [13:0]\bram_2_addr_reg[13]_i_1 ;
  wire \bram_addr_reg[13]_i_1_n_0 ;
  wire [17:1]bram_din0;
  wire bram_din0_carry__0_n_0;
  wire bram_din0_carry__0_n_1;
  wire bram_din0_carry__0_n_2;
  wire bram_din0_carry__0_n_3;
  wire bram_din0_carry__0_n_4;
  wire bram_din0_carry__0_n_5;
  wire bram_din0_carry__0_n_6;
  wire bram_din0_carry__0_n_7;
  wire bram_din0_carry_n_0;
  wire bram_din0_carry_n_1;
  wire bram_din0_carry_n_2;
  wire bram_din0_carry_n_3;
  wire bram_din0_carry_n_4;
  wire bram_din0_carry_n_5;
  wire bram_din0_carry_n_6;
  wire bram_din0_carry_n_7;
  wire \bram_din_reg[0]_i_1_n_0 ;
  wire \bram_din_reg[10]_i_1_n_0 ;
  wire \bram_din_reg[11]_i_1_n_0 ;
  wire \bram_din_reg[12]_i_1_n_0 ;
  wire \bram_din_reg[13]_i_1_n_0 ;
  wire \bram_din_reg[14]_i_1_n_0 ;
  wire \bram_din_reg[15]_i_1_n_0 ;
  wire \bram_din_reg[16]_i_1_n_0 ;
  wire \bram_din_reg[17]_i_1_n_0 ;
  wire \bram_din_reg[1]_i_1_n_0 ;
  wire \bram_din_reg[2]_i_1_n_0 ;
  wire \bram_din_reg[3]_i_1_n_0 ;
  wire \bram_din_reg[4]_i_1_n_0 ;
  wire \bram_din_reg[5]_i_1_n_0 ;
  wire \bram_din_reg[6]_i_1_n_0 ;
  wire \bram_din_reg[7]_i_1_n_0 ;
  wire \bram_din_reg[8]_i_1_n_0 ;
  wire \bram_din_reg[9]_i_1_n_0 ;
  wire [3:0]bram_reg_bram_7;
  wire bram_reg_bram_7_0;
  wire bram_reg_bram_7_1;
  wire bram_reg_bram_7_10;
  wire bram_reg_bram_7_2;
  wire bram_reg_bram_7_3;
  wire bram_reg_bram_7_4;
  wire bram_reg_bram_7_5;
  wire bram_reg_bram_7_6;
  wire bram_reg_bram_7_7;
  wire bram_reg_bram_7_8;
  wire bram_reg_bram_7_9;
  wire bram_we_reg_i_1_n_0;
  wire clk;
  wire en;
  wire pixel_done;
  wire [17:0]read_value;
  wire state_r;
  wire [63:0]tdata_in;
  wire [13:0]\tdata_in[13] ;
  wire tready_in;
  wire tready_in_n;
  wire tvalid_in;
  wire [7:0]NLW_bin_written_but_never_read_warning_r0_carry_O_UNCONNECTED;
  wire [7:0]NLW_bin_written_but_never_read_warning_r0_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_bin_written_but_never_read_warning_r0_carry__1_O_UNCONNECTED;
  wire [7:0]NLW_bin_written_but_never_read_warning_r0_carry__2_O_UNCONNECTED;
  wire [7:0]NLW_bram_din0_carry__1_CO_UNCONNECTED;
  wire [7:1]NLW_bram_din0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state_r[1]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .O(\FSM_onehot_state_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \FSM_onehot_state_r[2]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I3(tvalid_in),
        .I4(pixel_done),
        .I5(\FSM_onehot_state_r_reg_n_0_[0] ),
        .O(state_r));
  (* FSM_ENCODED_STATES = "IDLE:001,READ:010,WRITE:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_r_reg[0] 
       (.C(clk),
        .CE(state_r),
        .D(1'b0),
        .Q(\FSM_onehot_state_r_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "IDLE:001,READ:010,WRITE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[1] 
       (.C(clk),
        .CE(state_r),
        .D(\FSM_onehot_state_r[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_r_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:001,READ:010,WRITE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[2] 
       (.C(clk),
        .CE(state_r),
        .D(\FSM_onehot_state_r_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_r_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    bin_full_warning_r_i_2
       (.I0(bin_full_warning_r_i_3_n_0),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(en),
        .I3(bin_full_warning),
        .O(bin_full_warning_r_i_2_n_0));
  LUT5 #(
    .INIT(32'h00002000)) 
    bin_full_warning_r_i_3
       (.I0(Q[12]),
        .I1(pixel_done),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(bin_full_warning_r_i_4_n_0),
        .O(bin_full_warning_r_i_3_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    bin_full_warning_r_i_4
       (.I0(bin_full_warning_r_i_5_n_0),
        .I1(bin_full_warning_r_i_6_n_0),
        .I2(bin_full_warning_r_i_7_n_0),
        .I3(Q[15]),
        .I4(Q[0]),
        .I5(Q[10]),
        .O(bin_full_warning_r_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    bin_full_warning_r_i_5
       (.I0(Q[7]),
        .I1(Q[14]),
        .I2(Q[9]),
        .I3(Q[13]),
        .O(bin_full_warning_r_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    bin_full_warning_r_i_6
       (.I0(Q[8]),
        .I1(Q[16]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(bin_full_warning_r_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    bin_full_warning_r_i_7
       (.I0(Q[3]),
        .I1(Q[17]),
        .I2(Q[1]),
        .I3(Q[11]),
        .O(bin_full_warning_r_i_7_n_0));
  FDRE bin_full_warning_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(bin_full_warning_r_i_2_n_0),
        .Q(bin_full_warning),
        .R(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 bin_written_but_never_read_warning_r0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({bin_written_but_never_read_warning_r0_carry_n_0,bin_written_but_never_read_warning_r0_carry_n_1,bin_written_but_never_read_warning_r0_carry_n_2,bin_written_but_never_read_warning_r0_carry_n_3,bin_written_but_never_read_warning_r0_carry_n_4,bin_written_but_never_read_warning_r0_carry_n_5,bin_written_but_never_read_warning_r0_carry_n_6,bin_written_but_never_read_warning_r0_carry_n_7}),
        .DI({bin_written_but_never_read_warning_r0_carry_i_1_n_0,bin_written_but_never_read_warning_r0_carry_i_2_n_0,bin_written_but_never_read_warning_r0_carry_i_3_n_0,bin_written_but_never_read_warning_r0_carry_i_4_n_0,bin_written_but_never_read_warning_r0_carry_i_5_n_0,bin_written_but_never_read_warning_r0_carry_i_6_n_0,bin_written_but_never_read_warning_r0_carry_i_7_n_0,bin_written_but_never_read_warning_r0_carry_i_8_n_0}),
        .O(NLW_bin_written_but_never_read_warning_r0_carry_O_UNCONNECTED[7:0]),
        .S({bin_written_but_never_read_warning_r0_carry_i_9_n_0,bin_written_but_never_read_warning_r0_carry_i_10_n_0,bin_written_but_never_read_warning_r0_carry_i_11_n_0,bin_written_but_never_read_warning_r0_carry_i_12_n_0,bin_written_but_never_read_warning_r0_carry_i_13_n_0,bin_written_but_never_read_warning_r0_carry_i_14_n_0,bin_written_but_never_read_warning_r0_carry_i_15_n_0,bin_written_but_never_read_warning_r0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 bin_written_but_never_read_warning_r0_carry__0
       (.CI(bin_written_but_never_read_warning_r0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({bin_written_but_never_read_warning_r0_carry__0_n_0,bin_written_but_never_read_warning_r0_carry__0_n_1,bin_written_but_never_read_warning_r0_carry__0_n_2,bin_written_but_never_read_warning_r0_carry__0_n_3,bin_written_but_never_read_warning_r0_carry__0_n_4,bin_written_but_never_read_warning_r0_carry__0_n_5,bin_written_but_never_read_warning_r0_carry__0_n_6,bin_written_but_never_read_warning_r0_carry__0_n_7}),
        .DI({bin_written_but_never_read_warning_r0_carry__0_i_1_n_0,bin_written_but_never_read_warning_r0_carry__0_i_2_n_0,bin_written_but_never_read_warning_r0_carry__0_i_3_n_0,bin_written_but_never_read_warning_r0_carry__0_i_4_n_0,bin_written_but_never_read_warning_r0_carry__0_i_5_n_0,bin_written_but_never_read_warning_r0_carry__0_i_6_n_0,bin_written_but_never_read_warning_r0_carry__0_i_7_n_0,bin_written_but_never_read_warning_r0_carry__0_i_8_n_0}),
        .O(NLW_bin_written_but_never_read_warning_r0_carry__0_O_UNCONNECTED[7:0]),
        .S({bin_written_but_never_read_warning_r0_carry__0_i_9_n_0,bin_written_but_never_read_warning_r0_carry__0_i_10_n_0,bin_written_but_never_read_warning_r0_carry__0_i_11_n_0,bin_written_but_never_read_warning_r0_carry__0_i_12_n_0,bin_written_but_never_read_warning_r0_carry__0_i_13_n_0,bin_written_but_never_read_warning_r0_carry__0_i_14_n_0,bin_written_but_never_read_warning_r0_carry__0_i_15_n_0,bin_written_but_never_read_warning_r0_carry__0_i_16_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_1
       (.I0(tdata_in[31]),
        .I1(tdata_in[30]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_10
       (.I0(tdata_in[28]),
        .I1(tdata_in[29]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_11
       (.I0(tdata_in[26]),
        .I1(tdata_in[27]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_12
       (.I0(tdata_in[24]),
        .I1(tdata_in[25]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_13
       (.I0(tdata_in[22]),
        .I1(tdata_in[23]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_14
       (.I0(tdata_in[20]),
        .I1(tdata_in[21]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_15
       (.I0(tdata_in[18]),
        .I1(tdata_in[19]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_16
       (.I0(tdata_in[16]),
        .I1(tdata_in[17]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_2
       (.I0(tdata_in[29]),
        .I1(tdata_in[28]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_3
       (.I0(tdata_in[27]),
        .I1(tdata_in[26]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_4
       (.I0(tdata_in[25]),
        .I1(tdata_in[24]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_5
       (.I0(tdata_in[23]),
        .I1(tdata_in[22]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_6
       (.I0(tdata_in[21]),
        .I1(tdata_in[20]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_7
       (.I0(tdata_in[19]),
        .I1(tdata_in[18]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__0_i_8
       (.I0(tdata_in[17]),
        .I1(tdata_in[16]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__0_i_9
       (.I0(tdata_in[30]),
        .I1(tdata_in[31]),
        .O(bin_written_but_never_read_warning_r0_carry__0_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 bin_written_but_never_read_warning_r0_carry__1
       (.CI(bin_written_but_never_read_warning_r0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({bin_written_but_never_read_warning_r0_carry__1_n_0,bin_written_but_never_read_warning_r0_carry__1_n_1,bin_written_but_never_read_warning_r0_carry__1_n_2,bin_written_but_never_read_warning_r0_carry__1_n_3,bin_written_but_never_read_warning_r0_carry__1_n_4,bin_written_but_never_read_warning_r0_carry__1_n_5,bin_written_but_never_read_warning_r0_carry__1_n_6,bin_written_but_never_read_warning_r0_carry__1_n_7}),
        .DI({bin_written_but_never_read_warning_r0_carry__1_i_1_n_0,bin_written_but_never_read_warning_r0_carry__1_i_2_n_0,bin_written_but_never_read_warning_r0_carry__1_i_3_n_0,bin_written_but_never_read_warning_r0_carry__1_i_4_n_0,bin_written_but_never_read_warning_r0_carry__1_i_5_n_0,bin_written_but_never_read_warning_r0_carry__1_i_6_n_0,bin_written_but_never_read_warning_r0_carry__1_i_7_n_0,bin_written_but_never_read_warning_r0_carry__1_i_8_n_0}),
        .O(NLW_bin_written_but_never_read_warning_r0_carry__1_O_UNCONNECTED[7:0]),
        .S({bin_written_but_never_read_warning_r0_carry__1_i_9_n_0,bin_written_but_never_read_warning_r0_carry__1_i_10_n_0,bin_written_but_never_read_warning_r0_carry__1_i_11_n_0,bin_written_but_never_read_warning_r0_carry__1_i_12_n_0,bin_written_but_never_read_warning_r0_carry__1_i_13_n_0,bin_written_but_never_read_warning_r0_carry__1_i_14_n_0,bin_written_but_never_read_warning_r0_carry__1_i_15_n_0,bin_written_but_never_read_warning_r0_carry__1_i_16_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_1
       (.I0(tdata_in[47]),
        .I1(tdata_in[46]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_10
       (.I0(tdata_in[44]),
        .I1(tdata_in[45]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_11
       (.I0(tdata_in[42]),
        .I1(tdata_in[43]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_12
       (.I0(tdata_in[40]),
        .I1(tdata_in[41]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_13
       (.I0(tdata_in[38]),
        .I1(tdata_in[39]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_14
       (.I0(tdata_in[36]),
        .I1(tdata_in[37]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_15
       (.I0(tdata_in[34]),
        .I1(tdata_in[35]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_16
       (.I0(tdata_in[32]),
        .I1(tdata_in[33]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_2
       (.I0(tdata_in[45]),
        .I1(tdata_in[44]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_3
       (.I0(tdata_in[43]),
        .I1(tdata_in[42]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_4
       (.I0(tdata_in[41]),
        .I1(tdata_in[40]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_5
       (.I0(tdata_in[39]),
        .I1(tdata_in[38]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_6
       (.I0(tdata_in[37]),
        .I1(tdata_in[36]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_7
       (.I0(tdata_in[35]),
        .I1(tdata_in[34]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__1_i_8
       (.I0(tdata_in[33]),
        .I1(tdata_in[32]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__1_i_9
       (.I0(tdata_in[46]),
        .I1(tdata_in[47]),
        .O(bin_written_but_never_read_warning_r0_carry__1_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 bin_written_but_never_read_warning_r0_carry__2
       (.CI(bin_written_but_never_read_warning_r0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({bin_written_but_never_read_warning_r0,bin_written_but_never_read_warning_r0_carry__2_n_1,bin_written_but_never_read_warning_r0_carry__2_n_2,bin_written_but_never_read_warning_r0_carry__2_n_3,bin_written_but_never_read_warning_r0_carry__2_n_4,bin_written_but_never_read_warning_r0_carry__2_n_5,bin_written_but_never_read_warning_r0_carry__2_n_6,bin_written_but_never_read_warning_r0_carry__2_n_7}),
        .DI({bin_written_but_never_read_warning_r0_carry__2_i_1_n_0,bin_written_but_never_read_warning_r0_carry__2_i_2_n_0,bin_written_but_never_read_warning_r0_carry__2_i_3_n_0,bin_written_but_never_read_warning_r0_carry__2_i_4_n_0,bin_written_but_never_read_warning_r0_carry__2_i_5_n_0,bin_written_but_never_read_warning_r0_carry__2_i_6_n_0,bin_written_but_never_read_warning_r0_carry__2_i_7_n_0,bin_written_but_never_read_warning_r0_carry__2_i_8_n_0}),
        .O(NLW_bin_written_but_never_read_warning_r0_carry__2_O_UNCONNECTED[7:0]),
        .S({bin_written_but_never_read_warning_r0_carry__2_i_9_n_0,bin_written_but_never_read_warning_r0_carry__2_i_10_n_0,bin_written_but_never_read_warning_r0_carry__2_i_11_n_0,bin_written_but_never_read_warning_r0_carry__2_i_12_n_0,bin_written_but_never_read_warning_r0_carry__2_i_13_n_0,bin_written_but_never_read_warning_r0_carry__2_i_14_n_0,bin_written_but_never_read_warning_r0_carry__2_i_15_n_0,bin_written_but_never_read_warning_r0_carry__2_i_16_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_1
       (.I0(tdata_in[63]),
        .I1(tdata_in[62]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_10
       (.I0(tdata_in[60]),
        .I1(tdata_in[61]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_11
       (.I0(tdata_in[58]),
        .I1(tdata_in[59]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_12
       (.I0(tdata_in[56]),
        .I1(tdata_in[57]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_13
       (.I0(tdata_in[54]),
        .I1(tdata_in[55]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_14
       (.I0(tdata_in[52]),
        .I1(tdata_in[53]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_15
       (.I0(tdata_in[50]),
        .I1(tdata_in[51]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_16
       (.I0(tdata_in[48]),
        .I1(tdata_in[49]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_2
       (.I0(tdata_in[61]),
        .I1(tdata_in[60]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_3
       (.I0(tdata_in[59]),
        .I1(tdata_in[58]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_4
       (.I0(tdata_in[57]),
        .I1(tdata_in[56]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_5
       (.I0(tdata_in[55]),
        .I1(tdata_in[54]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_6
       (.I0(tdata_in[53]),
        .I1(tdata_in[52]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_7
       (.I0(tdata_in[51]),
        .I1(tdata_in[50]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bin_written_but_never_read_warning_r0_carry__2_i_8
       (.I0(tdata_in[49]),
        .I1(tdata_in[48]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bin_written_but_never_read_warning_r0_carry__2_i_9
       (.I0(tdata_in[62]),
        .I1(tdata_in[63]),
        .O(bin_written_but_never_read_warning_r0_carry__2_i_9_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    bin_written_but_never_read_warning_r0_carry_i_1
       (.I0(tdata_in[15]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[14]),
        .I2(tdata_in[14]),
        .O(bin_written_but_never_read_warning_r0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bin_written_but_never_read_warning_r0_carry_i_10
       (.I0(bin_written_but_never_read_warning_r0_carry_0[13]),
        .I1(tdata_in[13]),
        .I2(bin_written_but_never_read_warning_r0_carry_0[12]),
        .I3(tdata_in[12]),
        .O(bin_written_but_never_read_warning_r0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bin_written_but_never_read_warning_r0_carry_i_11
       (.I0(bin_written_but_never_read_warning_r0_carry_0[11]),
        .I1(tdata_in[11]),
        .I2(bin_written_but_never_read_warning_r0_carry_0[10]),
        .I3(tdata_in[10]),
        .O(bin_written_but_never_read_warning_r0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bin_written_but_never_read_warning_r0_carry_i_12
       (.I0(bin_written_but_never_read_warning_r0_carry_0[9]),
        .I1(tdata_in[9]),
        .I2(bin_written_but_never_read_warning_r0_carry_0[8]),
        .I3(tdata_in[8]),
        .O(bin_written_but_never_read_warning_r0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bin_written_but_never_read_warning_r0_carry_i_13
       (.I0(bin_written_but_never_read_warning_r0_carry_0[7]),
        .I1(tdata_in[7]),
        .I2(bin_written_but_never_read_warning_r0_carry_0[6]),
        .I3(tdata_in[6]),
        .O(bin_written_but_never_read_warning_r0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bin_written_but_never_read_warning_r0_carry_i_14
       (.I0(bin_written_but_never_read_warning_r0_carry_0[5]),
        .I1(tdata_in[5]),
        .I2(bin_written_but_never_read_warning_r0_carry_0[4]),
        .I3(tdata_in[4]),
        .O(bin_written_but_never_read_warning_r0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bin_written_but_never_read_warning_r0_carry_i_15
       (.I0(bin_written_but_never_read_warning_r0_carry_0[3]),
        .I1(tdata_in[3]),
        .I2(bin_written_but_never_read_warning_r0_carry_0[2]),
        .I3(tdata_in[2]),
        .O(bin_written_but_never_read_warning_r0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bin_written_but_never_read_warning_r0_carry_i_16
       (.I0(bin_written_but_never_read_warning_r0_carry_0[1]),
        .I1(tdata_in[1]),
        .I2(bin_written_but_never_read_warning_r0_carry_0[0]),
        .I3(tdata_in[0]),
        .O(bin_written_but_never_read_warning_r0_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    bin_written_but_never_read_warning_r0_carry_i_2
       (.I0(tdata_in[13]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[13]),
        .I2(tdata_in[12]),
        .I3(bin_written_but_never_read_warning_r0_carry_0[12]),
        .O(bin_written_but_never_read_warning_r0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    bin_written_but_never_read_warning_r0_carry_i_3
       (.I0(tdata_in[11]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[11]),
        .I2(tdata_in[10]),
        .I3(bin_written_but_never_read_warning_r0_carry_0[10]),
        .O(bin_written_but_never_read_warning_r0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    bin_written_but_never_read_warning_r0_carry_i_4
       (.I0(tdata_in[9]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[9]),
        .I2(tdata_in[8]),
        .I3(bin_written_but_never_read_warning_r0_carry_0[8]),
        .O(bin_written_but_never_read_warning_r0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    bin_written_but_never_read_warning_r0_carry_i_5
       (.I0(tdata_in[7]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[7]),
        .I2(tdata_in[6]),
        .I3(bin_written_but_never_read_warning_r0_carry_0[6]),
        .O(bin_written_but_never_read_warning_r0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    bin_written_but_never_read_warning_r0_carry_i_6
       (.I0(tdata_in[5]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[5]),
        .I2(tdata_in[4]),
        .I3(bin_written_but_never_read_warning_r0_carry_0[4]),
        .O(bin_written_but_never_read_warning_r0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    bin_written_but_never_read_warning_r0_carry_i_7
       (.I0(tdata_in[3]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[3]),
        .I2(tdata_in[2]),
        .I3(bin_written_but_never_read_warning_r0_carry_0[2]),
        .O(bin_written_but_never_read_warning_r0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    bin_written_but_never_read_warning_r0_carry_i_8
       (.I0(tdata_in[1]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[1]),
        .I2(tdata_in[0]),
        .I3(bin_written_but_never_read_warning_r0_carry_0[0]),
        .O(bin_written_but_never_read_warning_r0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    bin_written_but_never_read_warning_r0_carry_i_9
       (.I0(tdata_in[15]),
        .I1(bin_written_but_never_read_warning_r0_carry_0[14]),
        .I2(tdata_in[14]),
        .O(bin_written_but_never_read_warning_r0_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    bin_written_but_never_read_warning_r_i_1
       (.I0(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I1(tvalid_in),
        .I2(en),
        .I3(bin_written_but_never_read_warning_r0),
        .I4(bin_written_but_never_read_warning),
        .O(bin_written_but_never_read_warning_r_i_1_n_0));
  FDRE bin_written_but_never_read_warning_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(bin_written_but_never_read_warning_r_i_1_n_0),
        .Q(bin_written_but_never_read_warning),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[0]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[0]),
        .I2(bram_reg_bram_7[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[10]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[10]),
        .I2(bram_reg_bram_7[0]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[11]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[11]),
        .I2(bram_reg_bram_7[0]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[12]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[12]),
        .I2(bram_reg_bram_7[0]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[13]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[13]),
        .I2(bram_reg_bram_7[0]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[14]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[14]),
        .I2(bram_reg_bram_7[0]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[15]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[15]),
        .I2(bram_reg_bram_7[0]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[16]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[16]),
        .I2(bram_reg_bram_7[0]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[17]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[17]),
        .I2(bram_reg_bram_7[0]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[1]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[1]),
        .I2(bram_reg_bram_7[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[2]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[2]),
        .I2(bram_reg_bram_7[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[3]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[3]),
        .I2(bram_reg_bram_7[0]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[4]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[4]),
        .I2(bram_reg_bram_7[0]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[5]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[5]),
        .I2(bram_reg_bram_7[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[6]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[6]),
        .I2(bram_reg_bram_7[0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[7]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[7]),
        .I2(bram_reg_bram_7[0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[8]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[8]),
        .I2(bram_reg_bram_7[0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_0_din_reg[9]_i_1 
       (.I0(bram_reg_bram_7[1]),
        .I1(FILL_FSM_DIN[9]),
        .I2(bram_reg_bram_7[0]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    bram_0_we_reg_i_1
       (.I0(FILL_FSM_WE),
        .I1(bram_reg_bram_7[1]),
        .I2(bram_reg_bram_7[3]),
        .I3(CLEAR_FSM_WE),
        .I4(bram_reg_bram_7[0]),
        .O(bram_0_we__0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[0]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [0]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_10),
        .O(\FSM_onehot_state_r_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[10]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [10]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_0),
        .O(\FSM_onehot_state_r_reg[3]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[11]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [11]),
        .I2(bram_reg_bram_7[0]),
        .I3(\bram_1_addr_reg[11] ),
        .O(\FSM_onehot_state_r_reg[3]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[12]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [12]),
        .I2(bram_reg_bram_7[0]),
        .I3(\bram_1_addr_reg[12] ),
        .O(\FSM_onehot_state_r_reg[3]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[13]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [13]),
        .I2(bram_reg_bram_7[0]),
        .I3(\bram_1_addr_reg[13] ),
        .O(\FSM_onehot_state_r_reg[3]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[1]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [1]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_9),
        .O(\FSM_onehot_state_r_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[2]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [2]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_8),
        .O(\FSM_onehot_state_r_reg[3]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[3]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [3]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_7),
        .O(\FSM_onehot_state_r_reg[3]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[4]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [4]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_6),
        .O(\FSM_onehot_state_r_reg[3]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[5]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [5]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_5),
        .O(\FSM_onehot_state_r_reg[3]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[6]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [6]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_4),
        .O(\FSM_onehot_state_r_reg[3]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[7]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [7]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_3),
        .O(\FSM_onehot_state_r_reg[3]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[8]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [8]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_2),
        .O(\FSM_onehot_state_r_reg[3]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_1_addr_reg[9]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(\tdata_in[13] [9]),
        .I2(bram_reg_bram_7[0]),
        .I3(bram_reg_bram_7_1),
        .O(\FSM_onehot_state_r_reg[3]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[0]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[0]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[10]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[10]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [10]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[11]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[11]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [11]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[12]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[12]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [12]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[13]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[13]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[14]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[14]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [14]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[15]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[15]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [15]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[16]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[16]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [16]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[17]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[17]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[1]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[1]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[2]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[2]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[3]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[3]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[4]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[4]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[5]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[5]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[6]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[6]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[7]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[7]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[8]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[8]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_1_din_reg[9]_i_1 
       (.I0(bram_reg_bram_7[3]),
        .I1(FILL_FSM_DIN[9]),
        .I2(bram_reg_bram_7[0]),
        .O(\FSM_onehot_state_r_reg[3] [9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[0]_i_2 
       (.I0(\tdata_in[13] [0]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [0]),
        .O(\FSM_onehot_state_r_reg[2]_13 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[10]_i_2 
       (.I0(\tdata_in[13] [10]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [10]),
        .O(\FSM_onehot_state_r_reg[2]_3 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[11]_i_2 
       (.I0(\tdata_in[13] [11]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [11]),
        .O(\FSM_onehot_state_r_reg[2]_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[12]_i_2 
       (.I0(\tdata_in[13] [12]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [12]),
        .O(\FSM_onehot_state_r_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[13]_i_2 
       (.I0(\tdata_in[13] [13]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [13]),
        .O(\FSM_onehot_state_r_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[1]_i_2 
       (.I0(\tdata_in[13] [1]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [1]),
        .O(\FSM_onehot_state_r_reg[2]_12 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[2]_i_2 
       (.I0(\tdata_in[13] [2]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [2]),
        .O(\FSM_onehot_state_r_reg[2]_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[3]_i_2 
       (.I0(\tdata_in[13] [3]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [3]),
        .O(\FSM_onehot_state_r_reg[2]_10 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[4]_i_2 
       (.I0(\tdata_in[13] [4]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [4]),
        .O(\FSM_onehot_state_r_reg[2]_9 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[5]_i_2 
       (.I0(\tdata_in[13] [5]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [5]),
        .O(\FSM_onehot_state_r_reg[2]_8 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[6]_i_2 
       (.I0(\tdata_in[13] [6]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [6]),
        .O(\FSM_onehot_state_r_reg[2]_7 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[7]_i_2 
       (.I0(\tdata_in[13] [7]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [7]),
        .O(\FSM_onehot_state_r_reg[2]_6 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[8]_i_2 
       (.I0(\tdata_in[13] [8]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [8]),
        .O(\FSM_onehot_state_r_reg[2]_5 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_2_addr_reg[9]_i_2 
       (.I0(\tdata_in[13] [9]),
        .I1(bram_reg_bram_7[2]),
        .I2(bram_reg_bram_7[1]),
        .I3(\bram_2_addr_reg[13]_i_1 [9]),
        .O(\FSM_onehot_state_r_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[0]_i_1 
       (.I0(FILL_FSM_DIN[0]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[10]_i_1 
       (.I0(FILL_FSM_DIN[10]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[11]_i_1 
       (.I0(FILL_FSM_DIN[11]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[12]_i_1 
       (.I0(FILL_FSM_DIN[12]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[13]_i_1 
       (.I0(FILL_FSM_DIN[13]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[14]_i_1 
       (.I0(FILL_FSM_DIN[14]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[15]_i_1 
       (.I0(FILL_FSM_DIN[15]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[16]_i_1 
       (.I0(FILL_FSM_DIN[16]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[17]_i_1 
       (.I0(FILL_FSM_DIN[17]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[1]_i_1 
       (.I0(FILL_FSM_DIN[1]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[2]_i_1 
       (.I0(FILL_FSM_DIN[2]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[3]_i_1 
       (.I0(FILL_FSM_DIN[3]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[4]_i_1 
       (.I0(FILL_FSM_DIN[4]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[5]_i_1 
       (.I0(FILL_FSM_DIN[5]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[6]_i_1 
       (.I0(FILL_FSM_DIN[6]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[7]_i_1 
       (.I0(FILL_FSM_DIN[7]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[8]_i_1 
       (.I0(FILL_FSM_DIN[8]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \bram_2_din_reg[9]_i_1 
       (.I0(FILL_FSM_DIN[9]),
        .I1(bram_reg_bram_7[0]),
        .I2(bram_reg_bram_7[2]),
        .O(\FSM_onehot_state_r_reg[0]_0 [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[0] 
       (.CLR(1'b0),
        .D(tdata_in[0]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[10] 
       (.CLR(1'b0),
        .D(tdata_in[10]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[11] 
       (.CLR(1'b0),
        .D(tdata_in[11]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[12] 
       (.CLR(1'b0),
        .D(tdata_in[12]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[13] 
       (.CLR(1'b0),
        .D(tdata_in[13]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_reg[13]_i_1 
       (.I0(tvalid_in),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .O(\bram_addr_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[1] 
       (.CLR(1'b0),
        .D(tdata_in[1]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[2] 
       (.CLR(1'b0),
        .D(tdata_in[2]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[3] 
       (.CLR(1'b0),
        .D(tdata_in[3]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[4] 
       (.CLR(1'b0),
        .D(tdata_in[4]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[5] 
       (.CLR(1'b0),
        .D(tdata_in[5]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[6] 
       (.CLR(1'b0),
        .D(tdata_in[6]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[7] 
       (.CLR(1'b0),
        .D(tdata_in[7]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[8] 
       (.CLR(1'b0),
        .D(tdata_in[8]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_reg[9] 
       (.CLR(1'b0),
        .D(tdata_in[9]),
        .G(\bram_addr_reg[13]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tdata_in[13] [9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 bram_din0_carry
       (.CI(read_value[0]),
        .CI_TOP(1'b0),
        .CO({bram_din0_carry_n_0,bram_din0_carry_n_1,bram_din0_carry_n_2,bram_din0_carry_n_3,bram_din0_carry_n_4,bram_din0_carry_n_5,bram_din0_carry_n_6,bram_din0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(bram_din0[8:1]),
        .S(read_value[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 bram_din0_carry__0
       (.CI(bram_din0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({bram_din0_carry__0_n_0,bram_din0_carry__0_n_1,bram_din0_carry__0_n_2,bram_din0_carry__0_n_3,bram_din0_carry__0_n_4,bram_din0_carry__0_n_5,bram_din0_carry__0_n_6,bram_din0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(bram_din0[16:9]),
        .S(read_value[16:9]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_1
       (.I0(Q[16]),
        .I1(pixel_done),
        .O(read_value[16]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_2
       (.I0(Q[15]),
        .I1(pixel_done),
        .O(read_value[15]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_3
       (.I0(Q[14]),
        .I1(pixel_done),
        .O(read_value[14]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_4
       (.I0(Q[13]),
        .I1(pixel_done),
        .O(read_value[13]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_5
       (.I0(Q[12]),
        .I1(pixel_done),
        .O(read_value[12]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_6
       (.I0(Q[11]),
        .I1(pixel_done),
        .O(read_value[11]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_7
       (.I0(Q[10]),
        .I1(pixel_done),
        .O(read_value[10]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__0_i_8
       (.I0(Q[9]),
        .I1(pixel_done),
        .O(read_value[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 bram_din0_carry__1
       (.CI(bram_din0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO(NLW_bram_din0_carry__1_CO_UNCONNECTED[7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bram_din0_carry__1_O_UNCONNECTED[7:1],bram_din0[17]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,read_value[17]}));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry__1_i_1
       (.I0(Q[17]),
        .I1(pixel_done),
        .O(read_value[17]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_1
       (.I0(Q[0]),
        .I1(pixel_done),
        .O(read_value[0]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_2
       (.I0(Q[8]),
        .I1(pixel_done),
        .O(read_value[8]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_3
       (.I0(Q[7]),
        .I1(pixel_done),
        .O(read_value[7]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_4
       (.I0(Q[6]),
        .I1(pixel_done),
        .O(read_value[6]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_5
       (.I0(Q[5]),
        .I1(pixel_done),
        .O(read_value[5]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_6
       (.I0(Q[4]),
        .I1(pixel_done),
        .O(read_value[4]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_7
       (.I0(Q[3]),
        .I1(pixel_done),
        .O(read_value[3]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_8
       (.I0(Q[2]),
        .I1(pixel_done),
        .O(read_value[2]));
  LUT2 #(
    .INIT(4'h2)) 
    bram_din0_carry_i_9
       (.I0(Q[1]),
        .I1(pixel_done),
        .O(read_value[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[0] 
       (.CLR(1'b0),
        .D(\bram_din_reg[0]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \bram_din_reg[0]_i_1 
       (.I0(bin_full_warning_r_i_3_n_0),
        .I1(pixel_done),
        .I2(Q[0]),
        .O(\bram_din_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[10] 
       (.CLR(1'b0),
        .D(\bram_din_reg[10]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[10]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[10]_i_1 
       (.I0(bram_din0[10]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[11] 
       (.CLR(1'b0),
        .D(\bram_din_reg[11]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[11]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[11]_i_1 
       (.I0(bram_din0[11]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[12] 
       (.CLR(1'b0),
        .D(\bram_din_reg[12]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[12]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[12]_i_1 
       (.I0(bram_din0[12]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[13] 
       (.CLR(1'b0),
        .D(\bram_din_reg[13]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[13]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[13]_i_1 
       (.I0(bram_din0[13]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[14] 
       (.CLR(1'b0),
        .D(\bram_din_reg[14]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[14]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[14]_i_1 
       (.I0(bram_din0[14]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[15] 
       (.CLR(1'b0),
        .D(\bram_din_reg[15]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[15]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[15]_i_1 
       (.I0(bram_din0[15]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[16] 
       (.CLR(1'b0),
        .D(\bram_din_reg[16]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[16]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[16]_i_1 
       (.I0(bram_din0[16]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[17] 
       (.CLR(1'b0),
        .D(\bram_din_reg[17]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[17]));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[17]_i_1 
       (.I0(bram_din0[17]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[1] 
       (.CLR(1'b0),
        .D(\bram_din_reg[1]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[1]_i_1 
       (.I0(bram_din0[1]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[2] 
       (.CLR(1'b0),
        .D(\bram_din_reg[2]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[2]_i_1 
       (.I0(bram_din0[2]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[3] 
       (.CLR(1'b0),
        .D(\bram_din_reg[3]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[3]_i_1 
       (.I0(bram_din0[3]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[4] 
       (.CLR(1'b0),
        .D(\bram_din_reg[4]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[4]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[4]_i_1 
       (.I0(bram_din0[4]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[5] 
       (.CLR(1'b0),
        .D(\bram_din_reg[5]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[5]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[5]_i_1 
       (.I0(bram_din0[5]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[6] 
       (.CLR(1'b0),
        .D(\bram_din_reg[6]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[6]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[6]_i_1 
       (.I0(bram_din0[6]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[7] 
       (.CLR(1'b0),
        .D(\bram_din_reg[7]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[7]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[7]_i_1 
       (.I0(bram_din0[7]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[8] 
       (.CLR(1'b0),
        .D(\bram_din_reg[8]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[8]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[8]_i_1 
       (.I0(bram_din0[8]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_din_reg[9] 
       (.CLR(1'b0),
        .D(\bram_din_reg[9]_i_1_n_0 ),
        .G(\FSM_onehot_state_r_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(FILL_FSM_DIN[9]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_din_reg[9]_i_1 
       (.I0(bram_din0[9]),
        .I1(bin_full_warning_r_i_3_n_0),
        .O(\bram_din_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_we_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_r_reg_n_0_[2] ),
        .G(bram_we_reg_i_1_n_0),
        .GE(1'b1),
        .Q(FILL_FSM_WE));
  LUT2 #(
    .INIT(4'hE)) 
    bram_we_reg_i_1
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .O(bram_we_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    tready_in_r_i_1
       (.I0(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(tvalid_in),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .O(tready_in_n));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *) 
  FDRE tready_in_r_reg
       (.C(clk),
        .CE(en),
        .D(tready_in_n),
        .Q(tready_in),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "HISTOGRAM_ARBITER_FSM" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0_HISTOGRAM_ARBITER_FSM
   (Q,
    \bram_addr_r_reg[13] ,
    tready_in,
    pixel_counter_dbg,
    tdata_out,
    tvalid_out,
    tlast_out,
    main_fsm_state_dbg,
    reading_fsm_state_dbg,
    bin_full_warning,
    bin_written_but_never_read_warning,
    tready_out,
    en,
    clk,
    tdata_in,
    MAX_PIXELS,
    BINS_TO_READ,
    tvalid_in,
    pixel_done,
    aresetn);
  output [0:0]Q;
  output [13:0]\bram_addr_r_reg[13] ;
  output tready_in;
  output [31:0]pixel_counter_dbg;
  output [63:0]tdata_out;
  output tvalid_out;
  output tlast_out;
  output [2:0]main_fsm_state_dbg;
  output [2:0]reading_fsm_state_dbg;
  output bin_full_warning;
  output bin_written_but_never_read_warning;
  input tready_out;
  input en;
  input clk;
  input [63:0]tdata_in;
  input [31:0]MAX_PIXELS;
  input [14:0]BINS_TO_READ;
  input tvalid_in;
  input pixel_done;
  input aresetn;

  wire [14:0]BINS_TO_READ;
  wire [14:0]BINS_TO_READ_R;
  wire \BINS_TO_READ_R[14]_i_1_n_0 ;
  wire [13:0]CLEAR_FSM_ADDR;
  wire CLEAR_FSM_WE;
  wire CLEAR_IDLE_FLAG;
  wire [13:0]FILL_FSM_ADDR;
  wire [17:0]FILL_FSM_DOUT;
  wire [17:0]FILL_FSM_DOUT__0;
  wire \FILL_FSM_DOUT_reg[17]_i_2_n_0 ;
  wire FILL_FSM_WE;
  wire \FSM_onehot_state_r[4]_i_1_n_0 ;
  wire \FSM_onehot_state_r_reg_n_0_[0] ;
  wire \FSM_onehot_state_r_reg_n_0_[1] ;
  wire \FSM_onehot_state_r_reg_n_0_[2] ;
  wire \FSM_onehot_state_r_reg_n_0_[3] ;
  wire [31:0]MAX_PIXELS;
  wire [0:0]Q;
  wire [17:0]READ_FSM_DOUT;
  wire [17:0]READ_FSM_DOUT__0;
  wire aresetn;
  wire bin_full_warning;
  wire bin_written_but_never_read_warning;
  wire [13:0]bram_0_addr;
  wire [13:0]bram_0_addr__0;
  wire [17:0]bram_0_din;
  wire [17:0]bram_0_din__0;
  wire [17:0]bram_0_dout;
  wire bram_0_n_0;
  wire bram_0_n_19;
  wire bram_0_n_20;
  wire bram_0_n_21;
  wire bram_0_n_22;
  wire bram_0_n_23;
  wire bram_0_n_24;
  wire bram_0_n_25;
  wire bram_0_n_26;
  wire bram_0_n_27;
  wire bram_0_n_28;
  wire bram_0_n_29;
  wire bram_0_n_30;
  wire bram_0_n_31;
  wire bram_0_n_32;
  wire bram_0_n_33;
  wire bram_0_n_34;
  wire bram_0_n_35;
  wire bram_0_we;
  wire bram_0_we__0;
  wire [13:0]bram_1_addr;
  wire [13:0]bram_1_addr__0;
  wire [17:0]bram_1_din;
  wire [17:0]bram_1_din__0;
  wire [17:0]bram_1_dout;
  wire bram_1_we;
  wire bram_1_we__0;
  wire [13:0]bram_2_addr;
  wire [13:0]bram_2_addr__0;
  wire [17:0]bram_2_din;
  wire [17:0]bram_2_din__0;
  wire bram_2_n_0;
  wire bram_2_n_1;
  wire bram_2_n_10;
  wire bram_2_n_11;
  wire bram_2_n_12;
  wire bram_2_n_13;
  wire bram_2_n_14;
  wire bram_2_n_15;
  wire bram_2_n_16;
  wire bram_2_n_17;
  wire bram_2_n_2;
  wire bram_2_n_3;
  wire bram_2_n_4;
  wire bram_2_n_5;
  wire bram_2_n_6;
  wire bram_2_n_7;
  wire bram_2_n_8;
  wire bram_2_n_9;
  wire bram_2_we;
  wire bram_2_we__0;
  wire [13:0]\bram_addr_r_reg[13] ;
  wire clearing_fsm_n_32;
  wire clearing_fsm_n_33;
  wire clearing_fsm_n_34;
  wire clearing_fsm_n_35;
  wire clearing_fsm_n_36;
  wire clearing_fsm_n_37;
  wire clearing_fsm_n_38;
  wire clearing_fsm_n_39;
  wire clearing_fsm_n_40;
  wire clearing_fsm_n_41;
  wire clearing_fsm_n_42;
  wire clearing_fsm_n_43;
  wire clearing_fsm_n_44;
  wire clearing_fsm_n_45;
  wire clk;
  wire en;
  wire filling_fsm_n_100;
  wire filling_fsm_n_87;
  wire filling_fsm_n_88;
  wire filling_fsm_n_89;
  wire filling_fsm_n_90;
  wire filling_fsm_n_91;
  wire filling_fsm_n_92;
  wire filling_fsm_n_93;
  wire filling_fsm_n_94;
  wire filling_fsm_n_95;
  wire filling_fsm_n_96;
  wire filling_fsm_n_97;
  wire filling_fsm_n_98;
  wire filling_fsm_n_99;
  wire [2:0]main_fsm_state_dbg;
  wire [31:0]pixel_counter_dbg;
  wire pixel_done;
  wire reading_fsm_n_1;
  wire reading_fsm_n_117;
  wire reading_fsm_n_118;
  wire reading_fsm_n_119;
  wire reading_fsm_n_120;
  wire [2:0]reading_fsm_state_dbg;
  wire [63:0]tdata_in;
  wire [63:0]tdata_out;
  wire tlast_out;
  wire tready_in;
  wire tready_out;
  wire tvalid_in;
  wire tvalid_out;

  LUT2 #(
    .INIT(4'h8)) 
    \BINS_TO_READ_R[14]_i_1 
       (.I0(aresetn),
        .I1(BINS_TO_READ[14]),
        .O(\BINS_TO_READ_R[14]_i_1_n_0 ));
  FDRE \BINS_TO_READ_R_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[0]),
        .Q(BINS_TO_READ_R[0]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[10]),
        .Q(BINS_TO_READ_R[10]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[11]),
        .Q(BINS_TO_READ_R[11]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[12]),
        .Q(BINS_TO_READ_R[12]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[13]),
        .Q(BINS_TO_READ_R[13]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\BINS_TO_READ_R[14]_i_1_n_0 ),
        .Q(BINS_TO_READ_R[14]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[1]),
        .Q(BINS_TO_READ_R[1]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[2]),
        .Q(BINS_TO_READ_R[2]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[3]),
        .Q(BINS_TO_READ_R[3]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[4]),
        .Q(BINS_TO_READ_R[4]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[5]),
        .Q(BINS_TO_READ_R[5]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[6]),
        .Q(BINS_TO_READ_R[6]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[7]),
        .Q(BINS_TO_READ_R[7]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[8]),
        .Q(BINS_TO_READ_R[8]),
        .R(1'b0));
  FDRE \BINS_TO_READ_R_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(BINS_TO_READ[9]),
        .Q(BINS_TO_READ_R[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[0] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[10] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[11] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[12] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[13] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[14] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[14]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[15] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[15]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[16] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[16]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[17] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[17]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[17]));
  LUT3 #(
    .INIT(8'hFE)) 
    \FILL_FSM_DOUT_reg[17]_i_2 
       (.I0(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .O(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[1] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[2] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[3] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[4] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[5] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[6] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[7] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[8] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FILL_FSM_DOUT_reg[9] 
       (.CLR(1'b0),
        .D(FILL_FSM_DOUT__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(FILL_FSM_DOUT[9]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \FSM_onehot_state_r[4]_i_1 
       (.I0(pixel_done),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\FSM_onehot_state_r[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_r_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_r[4]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_state_r_reg_n_0_[0] ),
        .S(reading_fsm_n_1));
  (* FSM_ENCODED_STATES = "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state_r[4]_i_1_n_0 ),
        .D(reading_fsm_n_120),
        .Q(\FSM_onehot_state_r_reg_n_0_[1] ),
        .R(reading_fsm_n_1));
  (* FSM_ENCODED_STATES = "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state_r[4]_i_1_n_0 ),
        .D(reading_fsm_n_119),
        .Q(\FSM_onehot_state_r_reg_n_0_[2] ),
        .R(reading_fsm_n_1));
  (* FSM_ENCODED_STATES = "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state_r[4]_i_1_n_0 ),
        .D(reading_fsm_n_118),
        .Q(\FSM_onehot_state_r_reg_n_0_[3] ),
        .R(reading_fsm_n_1));
  (* FSM_ENCODED_STATES = "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state_r[4]_i_1_n_0 ),
        .D(reading_fsm_n_117),
        .Q(main_fsm_state_dbg[2]),
        .R(reading_fsm_n_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[0] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[10] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[11] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[12] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[13] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[14] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[14]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[15] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[15]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[16] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[16]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[17] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[17]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[1] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[2] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[3] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[4] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[5] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[6] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[7] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[8] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \READ_FSM_DOUT_reg[9] 
       (.CLR(1'b0),
        .D(READ_FSM_DOUT__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(READ_FSM_DOUT[9]));
  histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist bram_0
       (.Q(bram_0_addr),
        .\READ_FSM_DOUT_reg[0]_i_1 ({\FSM_onehot_state_r_reg_n_0_[2] ,\FSM_onehot_state_r_reg_n_0_[1] }),
        .\READ_FSM_DOUT_reg[17]_i_1 (bram_1_dout),
        .bram_0_we(bram_0_we),
        .bram_dout(bram_0_dout),
        .bram_reg_bram_7_0(bram_0_n_0),
        .bram_reg_bram_7_1(bram_0_n_19),
        .bram_reg_bram_7_10(bram_0_n_28),
        .bram_reg_bram_7_11(bram_0_n_29),
        .bram_reg_bram_7_12(bram_0_n_30),
        .bram_reg_bram_7_13(bram_0_n_31),
        .bram_reg_bram_7_14(bram_0_n_32),
        .bram_reg_bram_7_15(bram_0_n_33),
        .bram_reg_bram_7_16(bram_0_n_34),
        .bram_reg_bram_7_17(bram_0_n_35),
        .bram_reg_bram_7_18(bram_0_din),
        .bram_reg_bram_7_2(bram_0_n_20),
        .bram_reg_bram_7_3(bram_0_n_21),
        .bram_reg_bram_7_4(bram_0_n_22),
        .bram_reg_bram_7_5(bram_0_n_23),
        .bram_reg_bram_7_6(bram_0_n_24),
        .bram_reg_bram_7_7(bram_0_n_25),
        .bram_reg_bram_7_8(bram_0_n_26),
        .bram_reg_bram_7_9(bram_0_n_27),
        .clk(clk));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[0] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[10] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[11] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[12] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[13] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[1] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[2] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[3] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[4] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[5] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[6] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[7] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[8] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_addr_reg[9] 
       (.CLR(1'b0),
        .D(bram_0_addr__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_addr[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[0] 
       (.CLR(1'b0),
        .D(bram_0_din__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[10] 
       (.CLR(1'b0),
        .D(bram_0_din__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[11] 
       (.CLR(1'b0),
        .D(bram_0_din__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[12] 
       (.CLR(1'b0),
        .D(bram_0_din__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[13] 
       (.CLR(1'b0),
        .D(bram_0_din__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[14] 
       (.CLR(1'b0),
        .D(bram_0_din__0[14]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[15] 
       (.CLR(1'b0),
        .D(bram_0_din__0[15]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[16] 
       (.CLR(1'b0),
        .D(bram_0_din__0[16]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[17] 
       (.CLR(1'b0),
        .D(bram_0_din__0[17]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[1] 
       (.CLR(1'b0),
        .D(bram_0_din__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[2] 
       (.CLR(1'b0),
        .D(bram_0_din__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[3] 
       (.CLR(1'b0),
        .D(bram_0_din__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[4] 
       (.CLR(1'b0),
        .D(bram_0_din__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[5] 
       (.CLR(1'b0),
        .D(bram_0_din__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[6] 
       (.CLR(1'b0),
        .D(bram_0_din__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[7] 
       (.CLR(1'b0),
        .D(bram_0_din__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[8] 
       (.CLR(1'b0),
        .D(bram_0_din__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_0_din_reg[9] 
       (.CLR(1'b0),
        .D(bram_0_din__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_din[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_0_we_reg
       (.CLR(1'b0),
        .D(bram_0_we__0),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_0_we));
  histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_0 bram_1
       (.D(FILL_FSM_DOUT__0),
        .\FILL_FSM_DOUT_reg[0] ({\FSM_onehot_state_r_reg_n_0_[3] ,\FSM_onehot_state_r_reg_n_0_[0] }),
        .\FILL_FSM_DOUT_reg[0]_0 (bram_2_n_17),
        .\FILL_FSM_DOUT_reg[10] (bram_2_n_7),
        .\FILL_FSM_DOUT_reg[11] (bram_2_n_6),
        .\FILL_FSM_DOUT_reg[12] (bram_2_n_5),
        .\FILL_FSM_DOUT_reg[13] (bram_2_n_4),
        .\FILL_FSM_DOUT_reg[14] (bram_2_n_3),
        .\FILL_FSM_DOUT_reg[15] (bram_2_n_2),
        .\FILL_FSM_DOUT_reg[16] (bram_2_n_1),
        .\FILL_FSM_DOUT_reg[17] (bram_2_n_0),
        .\FILL_FSM_DOUT_reg[1] (bram_2_n_16),
        .\FILL_FSM_DOUT_reg[2] (bram_2_n_15),
        .\FILL_FSM_DOUT_reg[3] (bram_2_n_14),
        .\FILL_FSM_DOUT_reg[4] (bram_2_n_13),
        .\FILL_FSM_DOUT_reg[5] (bram_2_n_12),
        .\FILL_FSM_DOUT_reg[6] (bram_2_n_11),
        .\FILL_FSM_DOUT_reg[7] (bram_2_n_10),
        .\FILL_FSM_DOUT_reg[8] (bram_2_n_9),
        .\FILL_FSM_DOUT_reg[9] (bram_2_n_8),
        .Q(bram_1_addr),
        .bram_1_we(bram_1_we),
        .bram_dout(bram_1_dout),
        .bram_reg_bram_7_0(bram_1_din),
        .clk(clk));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[0] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[10] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[11] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[12] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[13] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[1] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[2] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[3] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[4] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[5] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[6] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[7] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[8] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_addr_reg[9] 
       (.CLR(1'b0),
        .D(bram_1_addr__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_addr[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[0] 
       (.CLR(1'b0),
        .D(bram_1_din__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[10] 
       (.CLR(1'b0),
        .D(bram_1_din__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[11] 
       (.CLR(1'b0),
        .D(bram_1_din__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[12] 
       (.CLR(1'b0),
        .D(bram_1_din__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[13] 
       (.CLR(1'b0),
        .D(bram_1_din__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[14] 
       (.CLR(1'b0),
        .D(bram_1_din__0[14]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[15] 
       (.CLR(1'b0),
        .D(bram_1_din__0[15]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[16] 
       (.CLR(1'b0),
        .D(bram_1_din__0[16]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[17] 
       (.CLR(1'b0),
        .D(bram_1_din__0[17]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[1] 
       (.CLR(1'b0),
        .D(bram_1_din__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[2] 
       (.CLR(1'b0),
        .D(bram_1_din__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[3] 
       (.CLR(1'b0),
        .D(bram_1_din__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[4] 
       (.CLR(1'b0),
        .D(bram_1_din__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[5] 
       (.CLR(1'b0),
        .D(bram_1_din__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[6] 
       (.CLR(1'b0),
        .D(bram_1_din__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[7] 
       (.CLR(1'b0),
        .D(bram_1_din__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[8] 
       (.CLR(1'b0),
        .D(bram_1_din__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_1_din_reg[9] 
       (.CLR(1'b0),
        .D(bram_1_din__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_din[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_1_we_reg
       (.CLR(1'b0),
        .D(bram_1_we__0),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_1_we));
  histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_1 bram_2
       (.D(READ_FSM_DOUT__0),
        .Q(bram_2_addr),
        .\READ_FSM_DOUT_reg[0] ({\FSM_onehot_state_r_reg_n_0_[3] ,\FSM_onehot_state_r_reg_n_0_[2] ,\FSM_onehot_state_r_reg_n_0_[1] ,\FSM_onehot_state_r_reg_n_0_[0] }),
        .\READ_FSM_DOUT_reg[0]_0 (bram_0_n_35),
        .\READ_FSM_DOUT_reg[10] (bram_0_n_25),
        .\READ_FSM_DOUT_reg[11] (bram_0_n_24),
        .\READ_FSM_DOUT_reg[12] (bram_0_n_23),
        .\READ_FSM_DOUT_reg[13] (bram_0_n_22),
        .\READ_FSM_DOUT_reg[14] (bram_0_n_21),
        .\READ_FSM_DOUT_reg[15] (bram_0_n_20),
        .\READ_FSM_DOUT_reg[16] (bram_0_n_19),
        .\READ_FSM_DOUT_reg[17] (bram_0_n_0),
        .\READ_FSM_DOUT_reg[1] (bram_0_n_34),
        .\READ_FSM_DOUT_reg[2] (bram_0_n_33),
        .\READ_FSM_DOUT_reg[3] (bram_0_n_32),
        .\READ_FSM_DOUT_reg[4] (bram_0_n_31),
        .\READ_FSM_DOUT_reg[5] (bram_0_n_30),
        .\READ_FSM_DOUT_reg[6] (bram_0_n_29),
        .\READ_FSM_DOUT_reg[7] (bram_0_n_28),
        .\READ_FSM_DOUT_reg[8] (bram_0_n_27),
        .\READ_FSM_DOUT_reg[9] (bram_0_n_26),
        .bram_2_we(bram_2_we),
        .bram_dout(bram_0_dout),
        .bram_reg_bram_7_0(bram_2_n_0),
        .bram_reg_bram_7_1(bram_2_n_1),
        .bram_reg_bram_7_10(bram_2_n_10),
        .bram_reg_bram_7_11(bram_2_n_11),
        .bram_reg_bram_7_12(bram_2_n_12),
        .bram_reg_bram_7_13(bram_2_n_13),
        .bram_reg_bram_7_14(bram_2_n_14),
        .bram_reg_bram_7_15(bram_2_n_15),
        .bram_reg_bram_7_16(bram_2_n_16),
        .bram_reg_bram_7_17(bram_2_n_17),
        .bram_reg_bram_7_18(bram_2_din),
        .bram_reg_bram_7_2(bram_2_n_2),
        .bram_reg_bram_7_3(bram_2_n_3),
        .bram_reg_bram_7_4(bram_2_n_4),
        .bram_reg_bram_7_5(bram_2_n_5),
        .bram_reg_bram_7_6(bram_2_n_6),
        .bram_reg_bram_7_7(bram_2_n_7),
        .bram_reg_bram_7_8(bram_2_n_8),
        .bram_reg_bram_7_9(bram_2_n_9),
        .clk(clk));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[0] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[10] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[11] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[12] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[13] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[1] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[2] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[3] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[4] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[5] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[6] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[7] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[8] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_addr_reg[9] 
       (.CLR(1'b0),
        .D(bram_2_addr__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_addr[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[0] 
       (.CLR(1'b0),
        .D(bram_2_din__0[0]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[10] 
       (.CLR(1'b0),
        .D(bram_2_din__0[10]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[11] 
       (.CLR(1'b0),
        .D(bram_2_din__0[11]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[12] 
       (.CLR(1'b0),
        .D(bram_2_din__0[12]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[13] 
       (.CLR(1'b0),
        .D(bram_2_din__0[13]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[14] 
       (.CLR(1'b0),
        .D(bram_2_din__0[14]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[15] 
       (.CLR(1'b0),
        .D(bram_2_din__0[15]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[16] 
       (.CLR(1'b0),
        .D(bram_2_din__0[16]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[17] 
       (.CLR(1'b0),
        .D(bram_2_din__0[17]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[1] 
       (.CLR(1'b0),
        .D(bram_2_din__0[1]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[2] 
       (.CLR(1'b0),
        .D(bram_2_din__0[2]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[3] 
       (.CLR(1'b0),
        .D(bram_2_din__0[3]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[4] 
       (.CLR(1'b0),
        .D(bram_2_din__0[4]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[5] 
       (.CLR(1'b0),
        .D(bram_2_din__0[5]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[6] 
       (.CLR(1'b0),
        .D(bram_2_din__0[6]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[7] 
       (.CLR(1'b0),
        .D(bram_2_din__0[7]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[8] 
       (.CLR(1'b0),
        .D(bram_2_din__0[8]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_2_din_reg[9] 
       (.CLR(1'b0),
        .D(bram_2_din__0[9]),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_din[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_2_we_reg
       (.CLR(1'b0),
        .D(bram_2_we__0),
        .G(\FILL_FSM_DOUT_reg[17]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_2_we));
  histo_HISTOGRAM_ARBITER_FSM_0_0_CLEARING_FSM clearing_fsm
       (.CLEAR_FSM_WE(CLEAR_FSM_WE),
        .CLEAR_IDLE_FLAG(CLEAR_IDLE_FLAG),
        .D(bram_0_addr__0),
        .FILL_FSM_WE(FILL_FSM_WE),
        .\FSM_onehot_state_r_reg[2]_0 (clearing_fsm_n_32),
        .\FSM_onehot_state_r_reg[2]_1 (clearing_fsm_n_33),
        .\FSM_onehot_state_r_reg[2]_10 (clearing_fsm_n_42),
        .\FSM_onehot_state_r_reg[2]_11 (clearing_fsm_n_43),
        .\FSM_onehot_state_r_reg[2]_12 (clearing_fsm_n_44),
        .\FSM_onehot_state_r_reg[2]_13 (clearing_fsm_n_45),
        .\FSM_onehot_state_r_reg[2]_2 (clearing_fsm_n_34),
        .\FSM_onehot_state_r_reg[2]_3 (clearing_fsm_n_35),
        .\FSM_onehot_state_r_reg[2]_4 (clearing_fsm_n_36),
        .\FSM_onehot_state_r_reg[2]_5 (clearing_fsm_n_37),
        .\FSM_onehot_state_r_reg[2]_6 (clearing_fsm_n_38),
        .\FSM_onehot_state_r_reg[2]_7 (clearing_fsm_n_39),
        .\FSM_onehot_state_r_reg[2]_8 (clearing_fsm_n_40),
        .\FSM_onehot_state_r_reg[2]_9 (clearing_fsm_n_41),
        .Q(CLEAR_FSM_ADDR),
        .SR(reading_fsm_n_1),
        .\bram_0_addr_reg[0]_i_1_0 ({\FSM_onehot_state_r_reg_n_0_[3] ,\FSM_onehot_state_r_reg_n_0_[2] ,\FSM_onehot_state_r_reg_n_0_[1] ,\FSM_onehot_state_r_reg_n_0_[0] }),
        .\bram_0_addr_reg[13] (FILL_FSM_ADDR),
        .\bram_0_addr_reg[13]_i_1_0 (\bram_addr_r_reg[13] ),
        .bram_1_we__0(bram_1_we__0),
        .bram_2_we__0(bram_2_we__0),
        .clk(clk),
        .en(en),
        .pixel_done(pixel_done),
        .state_n0_carry__0_0(BINS_TO_READ_R));
  histo_HISTOGRAM_ARBITER_FSM_0_0_FILLING_FSM filling_fsm
       (.CLEAR_FSM_WE(CLEAR_FSM_WE),
        .D(bram_0_din__0),
        .FILL_FSM_WE(FILL_FSM_WE),
        .\FSM_onehot_state_r_reg[0]_0 (bram_2_din__0),
        .\FSM_onehot_state_r_reg[2]_0 (filling_fsm_n_87),
        .\FSM_onehot_state_r_reg[2]_1 (filling_fsm_n_88),
        .\FSM_onehot_state_r_reg[2]_10 (filling_fsm_n_97),
        .\FSM_onehot_state_r_reg[2]_11 (filling_fsm_n_98),
        .\FSM_onehot_state_r_reg[2]_12 (filling_fsm_n_99),
        .\FSM_onehot_state_r_reg[2]_13 (filling_fsm_n_100),
        .\FSM_onehot_state_r_reg[2]_2 (filling_fsm_n_89),
        .\FSM_onehot_state_r_reg[2]_3 (filling_fsm_n_90),
        .\FSM_onehot_state_r_reg[2]_4 (filling_fsm_n_91),
        .\FSM_onehot_state_r_reg[2]_5 (filling_fsm_n_92),
        .\FSM_onehot_state_r_reg[2]_6 (filling_fsm_n_93),
        .\FSM_onehot_state_r_reg[2]_7 (filling_fsm_n_94),
        .\FSM_onehot_state_r_reg[2]_8 (filling_fsm_n_95),
        .\FSM_onehot_state_r_reg[2]_9 (filling_fsm_n_96),
        .\FSM_onehot_state_r_reg[3] (bram_1_din__0),
        .\FSM_onehot_state_r_reg[3]_0 (bram_1_addr__0),
        .Q(FILL_FSM_DOUT),
        .SR(reading_fsm_n_1),
        .bin_full_warning(bin_full_warning),
        .bin_written_but_never_read_warning(bin_written_but_never_read_warning),
        .bin_written_but_never_read_warning_r0_carry_0(BINS_TO_READ_R),
        .bram_0_we__0(bram_0_we__0),
        .\bram_1_addr_reg[11] (clearing_fsm_n_34),
        .\bram_1_addr_reg[12] (clearing_fsm_n_33),
        .\bram_1_addr_reg[13] (clearing_fsm_n_32),
        .\bram_2_addr_reg[13]_i_1 (CLEAR_FSM_ADDR),
        .bram_reg_bram_7({\FSM_onehot_state_r_reg_n_0_[3] ,\FSM_onehot_state_r_reg_n_0_[2] ,\FSM_onehot_state_r_reg_n_0_[1] ,\FSM_onehot_state_r_reg_n_0_[0] }),
        .bram_reg_bram_7_0(clearing_fsm_n_35),
        .bram_reg_bram_7_1(clearing_fsm_n_36),
        .bram_reg_bram_7_10(clearing_fsm_n_45),
        .bram_reg_bram_7_2(clearing_fsm_n_37),
        .bram_reg_bram_7_3(clearing_fsm_n_38),
        .bram_reg_bram_7_4(clearing_fsm_n_39),
        .bram_reg_bram_7_5(clearing_fsm_n_40),
        .bram_reg_bram_7_6(clearing_fsm_n_41),
        .bram_reg_bram_7_7(clearing_fsm_n_42),
        .bram_reg_bram_7_8(clearing_fsm_n_43),
        .bram_reg_bram_7_9(clearing_fsm_n_44),
        .clk(clk),
        .en(en),
        .pixel_done(pixel_done),
        .tdata_in(tdata_in),
        .\tdata_in[13] (FILL_FSM_ADDR),
        .tready_in(tready_in),
        .tvalid_in(tvalid_in));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \main_fsm_state_dbg[0]_INST_0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .O(main_fsm_state_dbg[0]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \main_fsm_state_dbg[1]_INST_0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(main_fsm_state_dbg[1]));
  histo_HISTOGRAM_ARBITER_FSM_0_0_READING_FSM reading_fsm
       (.CLEAR_IDLE_FLAG(CLEAR_IDLE_FLAG),
        .D({reading_fsm_n_117,reading_fsm_n_118,reading_fsm_n_119,reading_fsm_n_120}),
        .\FSM_onehot_state_r_reg[3] (bram_2_addr__0),
        .\FSM_onehot_state_r_reg[4] ({\FSM_onehot_state_r_reg_n_0_[3] ,\FSM_onehot_state_r_reg_n_0_[2] ,\FSM_onehot_state_r_reg_n_0_[1] ,\FSM_onehot_state_r_reg_n_0_[0] }),
        .\FSM_sequential_state_r_reg[3]_0 (Q),
        .MAX_PIXELS(MAX_PIXELS),
        .Q(pixel_counter_dbg),
        .SR(reading_fsm_n_1),
        .aresetn(aresetn),
        .\bram_2_addr_reg[11] (filling_fsm_n_89),
        .\bram_2_addr_reg[12] (filling_fsm_n_88),
        .\bram_2_addr_reg[13] (filling_fsm_n_87),
        .\bram_addr_r_reg[13]_0 (\bram_addr_r_reg[13] ),
        .bram_reg_bram_7(filling_fsm_n_90),
        .bram_reg_bram_7_0(filling_fsm_n_91),
        .bram_reg_bram_7_1(filling_fsm_n_92),
        .bram_reg_bram_7_2(filling_fsm_n_93),
        .bram_reg_bram_7_3(filling_fsm_n_94),
        .bram_reg_bram_7_4(filling_fsm_n_95),
        .bram_reg_bram_7_5(filling_fsm_n_96),
        .bram_reg_bram_7_6(filling_fsm_n_97),
        .bram_reg_bram_7_7(filling_fsm_n_98),
        .bram_reg_bram_7_8(filling_fsm_n_99),
        .bram_reg_bram_7_9(filling_fsm_n_100),
        .clk(clk),
        .en(en),
        .pixel_done(pixel_done),
        .reading_fsm_state_dbg(reading_fsm_state_dbg),
        .tdata_out(tdata_out),
        .\tdata_out_r_reg[17]_0 (READ_FSM_DOUT),
        .tlast_out(tlast_out),
        .tlast_out_r_i_2_0(BINS_TO_READ_R),
        .tready_out(tready_out),
        .tvalid_out(tvalid_out));
endmodule

(* ORIG_REF_NAME = "READING_FSM" *) 
module histo_HISTOGRAM_ARBITER_FSM_0_0_READING_FSM
   (tvalid_out,
    SR,
    tlast_out,
    Q,
    \FSM_sequential_state_r_reg[3]_0 ,
    \bram_addr_r_reg[13]_0 ,
    tdata_out,
    reading_fsm_state_dbg,
    D,
    \FSM_onehot_state_r_reg[3] ,
    en,
    clk,
    tready_out,
    pixel_done,
    \tdata_out_r_reg[17]_0 ,
    tlast_out_r_i_2_0,
    \FSM_onehot_state_r_reg[4] ,
    CLEAR_IDLE_FLAG,
    \bram_2_addr_reg[13] ,
    \bram_2_addr_reg[12] ,
    \bram_2_addr_reg[11] ,
    bram_reg_bram_7,
    bram_reg_bram_7_0,
    bram_reg_bram_7_1,
    bram_reg_bram_7_2,
    bram_reg_bram_7_3,
    bram_reg_bram_7_4,
    bram_reg_bram_7_5,
    bram_reg_bram_7_6,
    bram_reg_bram_7_7,
    bram_reg_bram_7_8,
    bram_reg_bram_7_9,
    aresetn,
    MAX_PIXELS);
  output tvalid_out;
  output [0:0]SR;
  output tlast_out;
  output [31:0]Q;
  output [0:0]\FSM_sequential_state_r_reg[3]_0 ;
  output [13:0]\bram_addr_r_reg[13]_0 ;
  output [63:0]tdata_out;
  output [2:0]reading_fsm_state_dbg;
  output [3:0]D;
  output [13:0]\FSM_onehot_state_r_reg[3] ;
  input en;
  input clk;
  input tready_out;
  input pixel_done;
  input [17:0]\tdata_out_r_reg[17]_0 ;
  input [14:0]tlast_out_r_i_2_0;
  input [3:0]\FSM_onehot_state_r_reg[4] ;
  input CLEAR_IDLE_FLAG;
  input \bram_2_addr_reg[13] ;
  input \bram_2_addr_reg[12] ;
  input \bram_2_addr_reg[11] ;
  input bram_reg_bram_7;
  input bram_reg_bram_7_0;
  input bram_reg_bram_7_1;
  input bram_reg_bram_7_2;
  input bram_reg_bram_7_3;
  input bram_reg_bram_7_4;
  input bram_reg_bram_7_5;
  input bram_reg_bram_7_6;
  input bram_reg_bram_7_7;
  input bram_reg_bram_7_8;
  input bram_reg_bram_7_9;
  input aresetn;
  input [31:0]MAX_PIXELS;

  wire CLEAR_IDLE_FLAG;
  wire [3:0]D;
  wire [13:0]\FSM_onehot_state_r_reg[3] ;
  wire [3:0]\FSM_onehot_state_r_reg[4] ;
  wire \FSM_sequential_state_r[0]_i_2_n_0 ;
  wire \FSM_sequential_state_r[2]_i_2_n_0 ;
  wire \FSM_sequential_state_r[3]_i_3_n_0 ;
  wire [0:0]\FSM_sequential_state_r_reg[3]_0 ;
  wire IDLE_FLAG_r_i_1_n_0;
  wire IDLE_FLAG_r_i_2_n_0;
  wire IDLE_FLAG_r_i_3_n_0;
  wire IDLE_FLAG_r_i_4_n_0;
  wire IDLE_FLAG_r_i_5_n_0;
  wire [31:0]MAX_PIXELS;
  wire [31:0]MAX_PIXELS_R;
  wire [31:0]Q;
  wire READ_IDLE_FLAG;
  wire [0:0]SR;
  wire aresetn;
  wire \bram_2_addr_reg[11] ;
  wire \bram_2_addr_reg[12] ;
  wire \bram_2_addr_reg[13] ;
  wire bram_addr_r;
  wire \bram_addr_r[0]_i_1_n_0 ;
  wire \bram_addr_r[10]_i_1_n_0 ;
  wire \bram_addr_r[10]_i_2_n_0 ;
  wire \bram_addr_r[11]_i_1_n_0 ;
  wire \bram_addr_r[12]_i_1_n_0 ;
  wire \bram_addr_r[13]_i_2__0_n_0 ;
  wire \bram_addr_r[13]_i_3_n_0 ;
  wire \bram_addr_r[13]_i_4_n_0 ;
  wire \bram_addr_r[13]_i_5_n_0 ;
  wire \bram_addr_r[13]_i_6_n_0 ;
  wire \bram_addr_r[13]_i_7_n_0 ;
  wire \bram_addr_r[13]_i_8_n_0 ;
  wire \bram_addr_r[1]_i_1_n_0 ;
  wire \bram_addr_r[2]_i_1_n_0 ;
  wire \bram_addr_r[3]_i_1_n_0 ;
  wire \bram_addr_r[4]_i_1_n_0 ;
  wire \bram_addr_r[5]_i_1_n_0 ;
  wire \bram_addr_r[5]_i_2_n_0 ;
  wire \bram_addr_r[6]_i_1_n_0 ;
  wire \bram_addr_r[7]_i_1_n_0 ;
  wire \bram_addr_r[8]_i_1_n_0 ;
  wire \bram_addr_r[9]_i_1_n_0 ;
  wire \bram_addr_r[9]_i_2_n_0 ;
  wire [13:0]\bram_addr_r_reg[13]_0 ;
  wire bram_reg_bram_7;
  wire bram_reg_bram_7_0;
  wire bram_reg_bram_7_1;
  wire bram_reg_bram_7_2;
  wire bram_reg_bram_7_3;
  wire bram_reg_bram_7_4;
  wire bram_reg_bram_7_5;
  wire bram_reg_bram_7_6;
  wire bram_reg_bram_7_7;
  wire bram_reg_bram_7_8;
  wire bram_reg_bram_7_9;
  wire clk;
  wire en;
  wire [31:1]in7;
  wire pixel_counter_n0_carry__0_n_0;
  wire pixel_counter_n0_carry__0_n_1;
  wire pixel_counter_n0_carry__0_n_2;
  wire pixel_counter_n0_carry__0_n_3;
  wire pixel_counter_n0_carry__0_n_4;
  wire pixel_counter_n0_carry__0_n_5;
  wire pixel_counter_n0_carry__0_n_6;
  wire pixel_counter_n0_carry__0_n_7;
  wire pixel_counter_n0_carry__1_n_0;
  wire pixel_counter_n0_carry__1_n_1;
  wire pixel_counter_n0_carry__1_n_2;
  wire pixel_counter_n0_carry__1_n_3;
  wire pixel_counter_n0_carry__1_n_4;
  wire pixel_counter_n0_carry__1_n_5;
  wire pixel_counter_n0_carry__1_n_6;
  wire pixel_counter_n0_carry__1_n_7;
  wire pixel_counter_n0_carry__2_n_2;
  wire pixel_counter_n0_carry__2_n_3;
  wire pixel_counter_n0_carry__2_n_4;
  wire pixel_counter_n0_carry__2_n_5;
  wire pixel_counter_n0_carry__2_n_6;
  wire pixel_counter_n0_carry__2_n_7;
  wire pixel_counter_n0_carry_n_0;
  wire pixel_counter_n0_carry_n_1;
  wire pixel_counter_n0_carry_n_2;
  wire pixel_counter_n0_carry_n_3;
  wire pixel_counter_n0_carry_n_4;
  wire pixel_counter_n0_carry_n_5;
  wire pixel_counter_n0_carry_n_6;
  wire pixel_counter_n0_carry_n_7;
  wire [31:0]pixel_counter_n__0;
  wire pixel_counter_r;
  wire pixel_done;
  wire [2:0]reading_fsm_state_dbg;
  wire state_n11_in;
  wire state_n1_carry__0_i_1_n_0;
  wire state_n1_carry__0_i_2_n_0;
  wire state_n1_carry__0_i_3_n_0;
  wire state_n1_carry__0_n_6;
  wire state_n1_carry__0_n_7;
  wire state_n1_carry_i_1_n_0;
  wire state_n1_carry_i_2_n_0;
  wire state_n1_carry_i_3_n_0;
  wire state_n1_carry_i_4_n_0;
  wire state_n1_carry_i_5_n_0;
  wire state_n1_carry_i_6_n_0;
  wire state_n1_carry_i_7_n_0;
  wire state_n1_carry_i_8_n_0;
  wire state_n1_carry_n_0;
  wire state_n1_carry_n_1;
  wire state_n1_carry_n_2;
  wire state_n1_carry_n_3;
  wire state_n1_carry_n_4;
  wire state_n1_carry_n_5;
  wire state_n1_carry_n_6;
  wire state_n1_carry_n_7;
  wire [3:0]state_n__0;
  wire state_r;
  wire [2:0]state_r__0;
  wire [63:0]tdata_out;
  wire [63:0]tdata_out_n;
  wire \tdata_out_r[17]_i_2_n_0 ;
  wire [17:0]\tdata_out_r_reg[17]_0 ;
  wire tlast_out;
  wire tlast_out_n;
  wire [14:0]tlast_out_r_i_2_0;
  wire tlast_out_r_i_2_n_0;
  wire tlast_out_r_i_3_n_0;
  wire tlast_out_r_i_4_n_0;
  wire tlast_out_r_i_5_n_0;
  wire tlast_out_r_i_6_n_0;
  wire tlast_out_r_i_7_n_0;
  wire tready_out;
  wire tvalid_out;
  wire tvalid_out_r_i_1_n_0;
  wire [7:6]NLW_pixel_counter_n0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_pixel_counter_n0_carry__2_O_UNCONNECTED;
  wire [7:0]NLW_state_n1_carry_O_UNCONNECTED;
  wire [7:3]NLW_state_n1_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_state_n1_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FSM_onehot_state_r[1]_i_1__0 
       (.I0(READ_IDLE_FLAG),
        .I1(CLEAR_IDLE_FLAG),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(\FSM_onehot_state_r_reg[4] [3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state_r[2]_i_1__1 
       (.I0(\FSM_onehot_state_r_reg[4] [1]),
        .I1(READ_IDLE_FLAG),
        .I2(CLEAR_IDLE_FLAG),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state_r[3]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg[4] [2]),
        .I1(READ_IDLE_FLAG),
        .I2(CLEAR_IDLE_FLAG),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000FFFEFFFEFFFE)) 
    \FSM_onehot_state_r[4]_i_2 
       (.I0(\FSM_onehot_state_r_reg[4] [1]),
        .I1(\FSM_onehot_state_r_reg[4] [0]),
        .I2(\FSM_onehot_state_r_reg[4] [3]),
        .I3(\FSM_onehot_state_r_reg[4] [2]),
        .I4(READ_IDLE_FLAG),
        .I5(CLEAR_IDLE_FLAG),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBB11BB11BF11BB11)) 
    \FSM_sequential_state_r[0]_i_1 
       (.I0(\FSM_sequential_state_r_reg[3]_0 ),
        .I1(state_r__0[0]),
        .I2(state_n11_in),
        .I3(\FSM_sequential_state_r[2]_i_2_n_0 ),
        .I4(tready_out),
        .I5(\FSM_sequential_state_r[0]_i_2_n_0 ),
        .O(state_n__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state_r[0]_i_2 
       (.I0(state_r__0[1]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(\FSM_sequential_state_r[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state_r[1]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(state_n__0[1]));
  LUT6 #(
    .INIT(64'h555555554FF0F0F0)) 
    \FSM_sequential_state_r[2]_i_1 
       (.I0(\FSM_sequential_state_r[2]_i_2_n_0 ),
        .I1(tready_out),
        .I2(state_r__0[2]),
        .I3(state_r__0[1]),
        .I4(state_r__0[0]),
        .I5(\FSM_sequential_state_r_reg[3]_0 ),
        .O(state_n__0[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_r[2]_i_2 
       (.I0(tlast_out_r_i_2_n_0),
        .I1(\bram_addr_r[13]_i_6_n_0 ),
        .O(\FSM_sequential_state_r[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_r[3]_i_1 
       (.I0(en),
        .I1(\FSM_sequential_state_r[3]_i_3_n_0 ),
        .O(state_r));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \FSM_sequential_state_r[3]_i_2 
       (.I0(tready_out),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(state_n__0[3]));
  LUT6 #(
    .INIT(64'hAAAAABA2AAAAABF7)) 
    \FSM_sequential_state_r[3]_i_3 
       (.I0(\FSM_sequential_state_r_reg[3]_0 ),
        .I1(tready_out),
        .I2(state_r__0[0]),
        .I3(state_r__0[1]),
        .I4(state_r__0[2]),
        .I5(pixel_done),
        .O(\FSM_sequential_state_r[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001" *) 
  FDRE \FSM_sequential_state_r_reg[0] 
       (.C(clk),
        .CE(state_r),
        .D(state_n__0[0]),
        .Q(state_r__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001" *) 
  FDRE \FSM_sequential_state_r_reg[1] 
       (.C(clk),
        .CE(state_r),
        .D(state_n__0[1]),
        .Q(state_r__0[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001" *) 
  FDRE \FSM_sequential_state_r_reg[2] 
       (.C(clk),
        .CE(state_r),
        .D(state_n__0[2]),
        .Q(state_r__0[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001" *) 
  FDRE \FSM_sequential_state_r_reg[3] 
       (.C(clk),
        .CE(state_r),
        .D(state_n__0[3]),
        .Q(\FSM_sequential_state_r_reg[3]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFBBBFB00088808)) 
    IDLE_FLAG_r_i_1
       (.I0(IDLE_FLAG_r_i_2_n_0),
        .I1(en),
        .I2(IDLE_FLAG_r_i_3_n_0),
        .I3(state_r__0[0]),
        .I4(IDLE_FLAG_r_i_4_n_0),
        .I5(READ_IDLE_FLAG),
        .O(IDLE_FLAG_r_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h01F10000)) 
    IDLE_FLAG_r_i_2
       (.I0(state_r__0[1]),
        .I1(state_r__0[0]),
        .I2(state_r__0[2]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(tready_out),
        .O(IDLE_FLAG_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFFFEFFFEFFFFFFF)) 
    IDLE_FLAG_r_i_3
       (.I0(state_r__0[2]),
        .I1(state_r__0[1]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .I3(tready_out),
        .I4(\bram_addr_r[13]_i_6_n_0 ),
        .I5(tlast_out_r_i_2_n_0),
        .O(IDLE_FLAG_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h2AAA2AAA2AAAAAAA)) 
    IDLE_FLAG_r_i_4
       (.I0(IDLE_FLAG_r_i_5_n_0),
        .I1(state_r__0[1]),
        .I2(reading_fsm_state_dbg[2]),
        .I3(tready_out),
        .I4(\bram_addr_r[13]_i_6_n_0 ),
        .I5(tlast_out_r_i_2_n_0),
        .O(IDLE_FLAG_r_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    IDLE_FLAG_r_i_5
       (.I0(pixel_done),
        .I1(state_r__0[1]),
        .I2(state_r__0[2]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .O(IDLE_FLAG_r_i_5_n_0));
  FDSE IDLE_FLAG_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(IDLE_FLAG_r_i_1_n_0),
        .Q(READ_IDLE_FLAG),
        .S(SR));
  FDRE \MAX_PIXELS_R_reg[0] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[0]),
        .Q(MAX_PIXELS_R[0]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[10] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[10]),
        .Q(MAX_PIXELS_R[10]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[11] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[11]),
        .Q(MAX_PIXELS_R[11]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[12] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[12]),
        .Q(MAX_PIXELS_R[12]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[13] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[13]),
        .Q(MAX_PIXELS_R[13]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[14] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[14]),
        .Q(MAX_PIXELS_R[14]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[15] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[15]),
        .Q(MAX_PIXELS_R[15]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[16] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[16]),
        .Q(MAX_PIXELS_R[16]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[17] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[17]),
        .Q(MAX_PIXELS_R[17]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[18] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[18]),
        .Q(MAX_PIXELS_R[18]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[19] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[19]),
        .Q(MAX_PIXELS_R[19]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[1] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[1]),
        .Q(MAX_PIXELS_R[1]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[20] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[20]),
        .Q(MAX_PIXELS_R[20]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[21] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[21]),
        .Q(MAX_PIXELS_R[21]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[22] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[22]),
        .Q(MAX_PIXELS_R[22]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[23] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[23]),
        .Q(MAX_PIXELS_R[23]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[24] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[24]),
        .Q(MAX_PIXELS_R[24]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[25] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[25]),
        .Q(MAX_PIXELS_R[25]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[26] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[26]),
        .Q(MAX_PIXELS_R[26]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[27] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[27]),
        .Q(MAX_PIXELS_R[27]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[28] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[28]),
        .Q(MAX_PIXELS_R[28]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[29] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[29]),
        .Q(MAX_PIXELS_R[29]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[2] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[2]),
        .Q(MAX_PIXELS_R[2]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[30] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[30]),
        .Q(MAX_PIXELS_R[30]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[31] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[31]),
        .Q(MAX_PIXELS_R[31]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[3] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[3]),
        .Q(MAX_PIXELS_R[3]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[4] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[4]),
        .Q(MAX_PIXELS_R[4]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[5] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[5]),
        .Q(MAX_PIXELS_R[5]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[6] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[6]),
        .Q(MAX_PIXELS_R[6]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[7] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[7]),
        .Q(MAX_PIXELS_R[7]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[8] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[8]),
        .Q(MAX_PIXELS_R[8]),
        .R(1'b0));
  FDRE \MAX_PIXELS_R_reg[9] 
       (.C(clk),
        .CE(en),
        .D(MAX_PIXELS[9]),
        .Q(MAX_PIXELS_R[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    bin_full_warning_r_i_1
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[0]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [0]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_9),
        .O(\FSM_onehot_state_r_reg[3] [0]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[10]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [10]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7),
        .O(\FSM_onehot_state_r_reg[3] [10]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[11]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [11]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(\bram_2_addr_reg[11] ),
        .O(\FSM_onehot_state_r_reg[3] [11]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[12]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [12]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(\bram_2_addr_reg[12] ),
        .O(\FSM_onehot_state_r_reg[3] [12]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[13]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [13]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(\bram_2_addr_reg[13] ),
        .O(\FSM_onehot_state_r_reg[3] [13]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[1]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [1]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_8),
        .O(\FSM_onehot_state_r_reg[3] [1]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[2]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [2]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_7),
        .O(\FSM_onehot_state_r_reg[3] [2]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[3]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [3]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_6),
        .O(\FSM_onehot_state_r_reg[3] [3]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[4]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [4]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_5),
        .O(\FSM_onehot_state_r_reg[3] [4]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[5]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [5]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_4),
        .O(\FSM_onehot_state_r_reg[3] [5]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[6]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [6]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_3),
        .O(\FSM_onehot_state_r_reg[3] [6]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[7]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [7]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_2),
        .O(\FSM_onehot_state_r_reg[3] [7]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[8]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [8]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_1),
        .O(\FSM_onehot_state_r_reg[3] [8]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bram_2_addr_reg[9]_i_1 
       (.I0(\FSM_onehot_state_r_reg[4] [3]),
        .I1(\bram_addr_r_reg[13]_0 [9]),
        .I2(\FSM_onehot_state_r_reg[4] [0]),
        .I3(bram_reg_bram_7_0),
        .O(\FSM_onehot_state_r_reg[3] [9]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_addr_r[0]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [0]),
        .O(\bram_addr_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \bram_addr_r[10]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [8]),
        .I2(\bram_addr_r[10]_i_2_n_0 ),
        .I3(\bram_addr_r_reg[13]_0 [7]),
        .I4(\bram_addr_r_reg[13]_0 [9]),
        .I5(\bram_addr_r_reg[13]_0 [10]),
        .O(\bram_addr_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \bram_addr_r[10]_i_2 
       (.I0(\bram_addr_r_reg[13]_0 [5]),
        .I1(\bram_addr_r_reg[13]_0 [3]),
        .I2(\bram_addr_r[5]_i_2_n_0 ),
        .I3(\bram_addr_r_reg[13]_0 [2]),
        .I4(\bram_addr_r_reg[13]_0 [4]),
        .I5(\bram_addr_r_reg[13]_0 [6]),
        .O(\bram_addr_r[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \bram_addr_r[11]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r[13]_i_4_n_0 ),
        .I2(\bram_addr_r_reg[13]_0 [11]),
        .O(\bram_addr_r[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \bram_addr_r[12]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [11]),
        .I2(\bram_addr_r[13]_i_4_n_0 ),
        .I3(\bram_addr_r_reg[13]_0 [12]),
        .O(\bram_addr_r[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bram_addr_r[13]_i_1 
       (.I0(en),
        .I1(\bram_addr_r[13]_i_3_n_0 ),
        .O(bram_addr_r));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hDF200000)) 
    \bram_addr_r[13]_i_2__0 
       (.I0(\bram_addr_r_reg[13]_0 [11]),
        .I1(\bram_addr_r[13]_i_4_n_0 ),
        .I2(\bram_addr_r_reg[13]_0 [12]),
        .I3(\bram_addr_r_reg[13]_0 [13]),
        .I4(\bram_addr_r[13]_i_5_n_0 ),
        .O(\bram_addr_r[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAAAFFFF27)) 
    \bram_addr_r[13]_i_3 
       (.I0(\FSM_sequential_state_r_reg[3]_0 ),
        .I1(tready_out),
        .I2(pixel_done),
        .I3(state_r__0[0]),
        .I4(state_r__0[1]),
        .I5(state_r__0[2]),
        .O(\bram_addr_r[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \bram_addr_r[13]_i_4 
       (.I0(\bram_addr_r_reg[13]_0 [9]),
        .I1(\bram_addr_r_reg[13]_0 [7]),
        .I2(\bram_addr_r[9]_i_2_n_0 ),
        .I3(\bram_addr_r_reg[13]_0 [6]),
        .I4(\bram_addr_r_reg[13]_0 [8]),
        .I5(\bram_addr_r_reg[13]_0 [10]),
        .O(\bram_addr_r[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h007E007E007E01FE)) 
    \bram_addr_r[13]_i_5 
       (.I0(state_r__0[1]),
        .I1(state_r__0[2]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(tlast_out_r_i_2_n_0),
        .I5(\bram_addr_r[13]_i_6_n_0 ),
        .O(\bram_addr_r[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bram_addr_r[13]_i_6 
       (.I0(\bram_addr_r[13]_i_7_n_0 ),
        .I1(\bram_addr_r[13]_i_8_n_0 ),
        .I2(\bram_addr_r_reg[13]_0 [11]),
        .I3(\bram_addr_r_reg[13]_0 [3]),
        .I4(\bram_addr_r_reg[13]_0 [12]),
        .I5(\bram_addr_r_reg[13]_0 [4]),
        .O(\bram_addr_r[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bram_addr_r[13]_i_7 
       (.I0(\bram_addr_r_reg[13]_0 [1]),
        .I1(\bram_addr_r_reg[13]_0 [0]),
        .I2(\bram_addr_r_reg[13]_0 [5]),
        .I3(\bram_addr_r_reg[13]_0 [10]),
        .I4(\bram_addr_r_reg[13]_0 [6]),
        .I5(\bram_addr_r_reg[13]_0 [7]),
        .O(\bram_addr_r[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram_addr_r[13]_i_8 
       (.I0(\bram_addr_r_reg[13]_0 [13]),
        .I1(\bram_addr_r_reg[13]_0 [8]),
        .I2(\bram_addr_r_reg[13]_0 [9]),
        .I3(\bram_addr_r_reg[13]_0 [2]),
        .O(\bram_addr_r[13]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bram_addr_r[1]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [0]),
        .I2(\bram_addr_r_reg[13]_0 [1]),
        .O(\bram_addr_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bram_addr_r[2]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [0]),
        .I2(\bram_addr_r_reg[13]_0 [1]),
        .I3(\bram_addr_r_reg[13]_0 [2]),
        .O(\bram_addr_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bram_addr_r[3]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [1]),
        .I2(\bram_addr_r_reg[13]_0 [0]),
        .I3(\bram_addr_r_reg[13]_0 [2]),
        .I4(\bram_addr_r_reg[13]_0 [3]),
        .O(\bram_addr_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \bram_addr_r[4]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [2]),
        .I2(\bram_addr_r_reg[13]_0 [0]),
        .I3(\bram_addr_r_reg[13]_0 [1]),
        .I4(\bram_addr_r_reg[13]_0 [3]),
        .I5(\bram_addr_r_reg[13]_0 [4]),
        .O(\bram_addr_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \bram_addr_r[5]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [3]),
        .I2(\bram_addr_r[5]_i_2_n_0 ),
        .I3(\bram_addr_r_reg[13]_0 [2]),
        .I4(\bram_addr_r_reg[13]_0 [4]),
        .I5(\bram_addr_r_reg[13]_0 [5]),
        .O(\bram_addr_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr_r[5]_i_2 
       (.I0(\bram_addr_r_reg[13]_0 [0]),
        .I1(\bram_addr_r_reg[13]_0 [1]),
        .O(\bram_addr_r[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \bram_addr_r[6]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r[9]_i_2_n_0 ),
        .I2(\bram_addr_r_reg[13]_0 [6]),
        .O(\bram_addr_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \bram_addr_r[7]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r[9]_i_2_n_0 ),
        .I2(\bram_addr_r_reg[13]_0 [6]),
        .I3(\bram_addr_r_reg[13]_0 [7]),
        .O(\bram_addr_r[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \bram_addr_r[8]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [6]),
        .I2(\bram_addr_r[9]_i_2_n_0 ),
        .I3(\bram_addr_r_reg[13]_0 [7]),
        .I4(\bram_addr_r_reg[13]_0 [8]),
        .O(\bram_addr_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \bram_addr_r[9]_i_1 
       (.I0(\bram_addr_r[13]_i_5_n_0 ),
        .I1(\bram_addr_r_reg[13]_0 [7]),
        .I2(\bram_addr_r[9]_i_2_n_0 ),
        .I3(\bram_addr_r_reg[13]_0 [6]),
        .I4(\bram_addr_r_reg[13]_0 [8]),
        .I5(\bram_addr_r_reg[13]_0 [9]),
        .O(\bram_addr_r[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bram_addr_r[9]_i_2 
       (.I0(\bram_addr_r_reg[13]_0 [4]),
        .I1(\bram_addr_r_reg[13]_0 [2]),
        .I2(\bram_addr_r_reg[13]_0 [0]),
        .I3(\bram_addr_r_reg[13]_0 [1]),
        .I4(\bram_addr_r_reg[13]_0 [3]),
        .I5(\bram_addr_r_reg[13]_0 [5]),
        .O(\bram_addr_r[9]_i_2_n_0 ));
  FDRE \bram_addr_r_reg[0] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[0]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [0]),
        .R(SR));
  FDRE \bram_addr_r_reg[10] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[10]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [10]),
        .R(SR));
  FDRE \bram_addr_r_reg[11] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[11]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [11]),
        .R(SR));
  FDRE \bram_addr_r_reg[12] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[12]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [12]),
        .R(SR));
  FDRE \bram_addr_r_reg[13] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[13]_i_2__0_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [13]),
        .R(SR));
  FDRE \bram_addr_r_reg[1] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[1]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [1]),
        .R(SR));
  FDRE \bram_addr_r_reg[2] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[2]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [2]),
        .R(SR));
  FDRE \bram_addr_r_reg[3] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[3]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [3]),
        .R(SR));
  FDRE \bram_addr_r_reg[4] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[4]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [4]),
        .R(SR));
  FDRE \bram_addr_r_reg[5] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[5]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [5]),
        .R(SR));
  FDRE \bram_addr_r_reg[6] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[6]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [6]),
        .R(SR));
  FDRE \bram_addr_r_reg[7] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[7]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [7]),
        .R(SR));
  FDRE \bram_addr_r_reg[8] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[8]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [8]),
        .R(SR));
  FDRE \bram_addr_r_reg[9] 
       (.C(clk),
        .CE(bram_addr_r),
        .D(\bram_addr_r[9]_i_1_n_0 ),
        .Q(\bram_addr_r_reg[13]_0 [9]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pixel_counter_n0_carry
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({pixel_counter_n0_carry_n_0,pixel_counter_n0_carry_n_1,pixel_counter_n0_carry_n_2,pixel_counter_n0_carry_n_3,pixel_counter_n0_carry_n_4,pixel_counter_n0_carry_n_5,pixel_counter_n0_carry_n_6,pixel_counter_n0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in7[8:1]),
        .S(Q[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pixel_counter_n0_carry__0
       (.CI(pixel_counter_n0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pixel_counter_n0_carry__0_n_0,pixel_counter_n0_carry__0_n_1,pixel_counter_n0_carry__0_n_2,pixel_counter_n0_carry__0_n_3,pixel_counter_n0_carry__0_n_4,pixel_counter_n0_carry__0_n_5,pixel_counter_n0_carry__0_n_6,pixel_counter_n0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in7[16:9]),
        .S(Q[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pixel_counter_n0_carry__1
       (.CI(pixel_counter_n0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({pixel_counter_n0_carry__1_n_0,pixel_counter_n0_carry__1_n_1,pixel_counter_n0_carry__1_n_2,pixel_counter_n0_carry__1_n_3,pixel_counter_n0_carry__1_n_4,pixel_counter_n0_carry__1_n_5,pixel_counter_n0_carry__1_n_6,pixel_counter_n0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in7[24:17]),
        .S(Q[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pixel_counter_n0_carry__2
       (.CI(pixel_counter_n0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pixel_counter_n0_carry__2_CO_UNCONNECTED[7:6],pixel_counter_n0_carry__2_n_2,pixel_counter_n0_carry__2_n_3,pixel_counter_n0_carry__2_n_4,pixel_counter_n0_carry__2_n_5,pixel_counter_n0_carry__2_n_6,pixel_counter_n0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pixel_counter_n0_carry__2_O_UNCONNECTED[7],in7[31:25]}),
        .S({1'b0,Q[31:25]}));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pixel_counter_r[0]_i_1 
       (.I0(Q[0]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[10]_i_1 
       (.I0(in7[10]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[11]_i_1 
       (.I0(in7[11]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[12]_i_1 
       (.I0(in7[12]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[13]_i_1 
       (.I0(in7[13]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[14]_i_1 
       (.I0(in7[14]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[15]_i_1 
       (.I0(in7[15]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[16]_i_1 
       (.I0(in7[16]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[17]_i_1 
       (.I0(in7[17]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[18]_i_1 
       (.I0(in7[18]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[19]_i_1 
       (.I0(in7[19]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[1]_i_1 
       (.I0(in7[1]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[20]_i_1 
       (.I0(in7[20]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[21]_i_1 
       (.I0(in7[21]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[22]_i_1 
       (.I0(in7[22]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[23]_i_1 
       (.I0(in7[23]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[24]_i_1 
       (.I0(in7[24]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[25]_i_1 
       (.I0(in7[25]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[26]_i_1 
       (.I0(in7[26]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[27]_i_1 
       (.I0(in7[27]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[28]_i_1 
       (.I0(in7[28]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[29]_i_1 
       (.I0(in7[29]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[2]_i_1 
       (.I0(in7[2]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[30]_i_1 
       (.I0(in7[30]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[30]));
  LUT6 #(
    .INIT(64'hB380000000000000)) 
    \pixel_counter_r[31]_i_1 
       (.I0(tlast_out_r_i_2_n_0),
        .I1(state_r__0[2]),
        .I2(state_n11_in),
        .I3(tready_out),
        .I4(tvalid_out_r_i_1_n_0),
        .I5(en),
        .O(pixel_counter_r));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[31]_i_2 
       (.I0(in7[31]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[31]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[3]_i_1 
       (.I0(in7[3]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[4]_i_1 
       (.I0(in7[4]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[5]_i_1 
       (.I0(in7[5]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[6]_i_1 
       (.I0(in7[6]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[7]_i_1 
       (.I0(in7[7]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[8]_i_1 
       (.I0(in7[8]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pixel_counter_r[9]_i_1 
       (.I0(in7[9]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .O(pixel_counter_n__0[9]));
  FDRE \pixel_counter_r_reg[0] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \pixel_counter_r_reg[10] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \pixel_counter_r_reg[11] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \pixel_counter_r_reg[12] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \pixel_counter_r_reg[13] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \pixel_counter_r_reg[14] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \pixel_counter_r_reg[15] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \pixel_counter_r_reg[16] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \pixel_counter_r_reg[17] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \pixel_counter_r_reg[18] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \pixel_counter_r_reg[19] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \pixel_counter_r_reg[1] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \pixel_counter_r_reg[20] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \pixel_counter_r_reg[21] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \pixel_counter_r_reg[22] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \pixel_counter_r_reg[23] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \pixel_counter_r_reg[24] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \pixel_counter_r_reg[25] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \pixel_counter_r_reg[26] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \pixel_counter_r_reg[27] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \pixel_counter_r_reg[28] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \pixel_counter_r_reg[29] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \pixel_counter_r_reg[2] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \pixel_counter_r_reg[30] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \pixel_counter_r_reg[31] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \pixel_counter_r_reg[3] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \pixel_counter_r_reg[4] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \pixel_counter_r_reg[5] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \pixel_counter_r_reg[6] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \pixel_counter_r_reg[7] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \pixel_counter_r_reg[8] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \pixel_counter_r_reg[9] 
       (.C(clk),
        .CE(pixel_counter_r),
        .D(pixel_counter_n__0[9]),
        .Q(Q[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reading_fsm_state_dbg[0]_INST_0 
       (.I0(state_r__0[0]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .O(reading_fsm_state_dbg[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reading_fsm_state_dbg[1]_INST_0 
       (.I0(state_r__0[1]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .O(reading_fsm_state_dbg[1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reading_fsm_state_dbg[2]_INST_0 
       (.I0(state_r__0[2]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .O(reading_fsm_state_dbg[2]));
  CARRY8 state_n1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({state_n1_carry_n_0,state_n1_carry_n_1,state_n1_carry_n_2,state_n1_carry_n_3,state_n1_carry_n_4,state_n1_carry_n_5,state_n1_carry_n_6,state_n1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_n1_carry_O_UNCONNECTED[7:0]),
        .S({state_n1_carry_i_1_n_0,state_n1_carry_i_2_n_0,state_n1_carry_i_3_n_0,state_n1_carry_i_4_n_0,state_n1_carry_i_5_n_0,state_n1_carry_i_6_n_0,state_n1_carry_i_7_n_0,state_n1_carry_i_8_n_0}));
  CARRY8 state_n1_carry__0
       (.CI(state_n1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_state_n1_carry__0_CO_UNCONNECTED[7:3],state_n11_in,state_n1_carry__0_n_6,state_n1_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_n1_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,state_n1_carry__0_i_1_n_0,state_n1_carry__0_i_2_n_0,state_n1_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    state_n1_carry__0_i_1
       (.I0(MAX_PIXELS_R[31]),
        .I1(Q[31]),
        .I2(MAX_PIXELS_R[30]),
        .I3(Q[30]),
        .O(state_n1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry__0_i_2
       (.I0(Q[27]),
        .I1(MAX_PIXELS_R[27]),
        .I2(Q[28]),
        .I3(MAX_PIXELS_R[28]),
        .I4(MAX_PIXELS_R[29]),
        .I5(Q[29]),
        .O(state_n1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry__0_i_3
       (.I0(Q[25]),
        .I1(MAX_PIXELS_R[25]),
        .I2(Q[24]),
        .I3(MAX_PIXELS_R[24]),
        .I4(MAX_PIXELS_R[26]),
        .I5(Q[26]),
        .O(state_n1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_1
       (.I0(Q[21]),
        .I1(MAX_PIXELS_R[21]),
        .I2(Q[22]),
        .I3(MAX_PIXELS_R[22]),
        .I4(MAX_PIXELS_R[23]),
        .I5(Q[23]),
        .O(state_n1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_2
       (.I0(Q[18]),
        .I1(MAX_PIXELS_R[18]),
        .I2(Q[19]),
        .I3(MAX_PIXELS_R[19]),
        .I4(MAX_PIXELS_R[20]),
        .I5(Q[20]),
        .O(state_n1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_3
       (.I0(Q[15]),
        .I1(MAX_PIXELS_R[15]),
        .I2(Q[16]),
        .I3(MAX_PIXELS_R[16]),
        .I4(MAX_PIXELS_R[17]),
        .I5(Q[17]),
        .O(state_n1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_4
       (.I0(Q[12]),
        .I1(MAX_PIXELS_R[12]),
        .I2(Q[13]),
        .I3(MAX_PIXELS_R[13]),
        .I4(MAX_PIXELS_R[14]),
        .I5(Q[14]),
        .O(state_n1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_5
       (.I0(Q[10]),
        .I1(MAX_PIXELS_R[10]),
        .I2(Q[9]),
        .I3(MAX_PIXELS_R[9]),
        .I4(MAX_PIXELS_R[11]),
        .I5(Q[11]),
        .O(state_n1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_6
       (.I0(Q[7]),
        .I1(MAX_PIXELS_R[7]),
        .I2(Q[6]),
        .I3(MAX_PIXELS_R[6]),
        .I4(MAX_PIXELS_R[8]),
        .I5(Q[8]),
        .O(state_n1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_7
       (.I0(Q[5]),
        .I1(MAX_PIXELS_R[5]),
        .I2(Q[3]),
        .I3(MAX_PIXELS_R[3]),
        .I4(MAX_PIXELS_R[4]),
        .I5(Q[4]),
        .O(state_n1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state_n1_carry_i_8
       (.I0(Q[2]),
        .I1(MAX_PIXELS_R[2]),
        .I2(Q[0]),
        .I3(MAX_PIXELS_R[0]),
        .I4(MAX_PIXELS_R[1]),
        .I5(Q[1]),
        .O(state_n1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[0]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[0]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [0]),
        .O(tdata_out_n[0]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[10]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[10]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [10]),
        .O(tdata_out_n[10]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[11]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[11]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [11]),
        .O(tdata_out_n[11]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[12]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[12]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [12]),
        .O(tdata_out_n[12]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[13]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[13]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [13]),
        .O(tdata_out_n[13]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[14]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[14]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [14]),
        .O(tdata_out_n[14]));
  LUT6 #(
    .INIT(64'h080B080808080808)) 
    \tdata_out_r[15]_i_1 
       (.I0(\tdata_out_r_reg[17]_0 [15]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .I3(state_r__0[0]),
        .I4(state_r__0[1]),
        .I5(Q[15]),
        .O(tdata_out_n[15]));
  LUT6 #(
    .INIT(64'h44444444FFF44444)) 
    \tdata_out_r[16]_i_1 
       (.I0(\tdata_out_r[17]_i_2_n_0 ),
        .I1(Q[16]),
        .I2(\tdata_out_r_reg[17]_0 [16]),
        .I3(tdata_out[0]),
        .I4(state_r__0[2]),
        .I5(\FSM_sequential_state_r_reg[3]_0 ),
        .O(tdata_out_n[16]));
  LUT6 #(
    .INIT(64'h44444444FFF44444)) 
    \tdata_out_r[17]_i_1 
       (.I0(\tdata_out_r[17]_i_2_n_0 ),
        .I1(Q[17]),
        .I2(\tdata_out_r_reg[17]_0 [17]),
        .I3(tdata_out[1]),
        .I4(state_r__0[2]),
        .I5(\FSM_sequential_state_r_reg[3]_0 ),
        .O(tdata_out_n[17]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \tdata_out_r[17]_i_2 
       (.I0(state_r__0[2]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[0]),
        .I3(state_r__0[1]),
        .O(\tdata_out_r[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[18]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[18]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[2]),
        .O(tdata_out_n[18]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[19]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[19]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[3]),
        .O(tdata_out_n[19]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[1]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[1]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [1]),
        .O(tdata_out_n[1]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[20]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[20]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[4]),
        .O(tdata_out_n[20]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[21]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[21]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[5]),
        .O(tdata_out_n[21]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[22]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[22]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[6]),
        .O(tdata_out_n[22]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[23]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[23]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[7]),
        .O(tdata_out_n[23]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[24]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[24]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[8]),
        .O(tdata_out_n[24]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[25]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[25]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[9]),
        .O(tdata_out_n[25]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[26]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[26]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[10]),
        .O(tdata_out_n[26]));
  LUT6 #(
    .INIT(64'h080B080808080808)) 
    \tdata_out_r[27]_i_1 
       (.I0(tdata_out[11]),
        .I1(state_r__0[2]),
        .I2(\FSM_sequential_state_r_reg[3]_0 ),
        .I3(state_r__0[0]),
        .I4(state_r__0[1]),
        .I5(Q[27]),
        .O(tdata_out_n[27]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[28]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[28]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[12]),
        .O(tdata_out_n[28]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[29]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[29]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[13]),
        .O(tdata_out_n[29]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[2]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[2]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [2]),
        .O(tdata_out_n[2]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[30]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[30]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[14]),
        .O(tdata_out_n[30]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[31]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[31]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(tdata_out[15]),
        .O(tdata_out_n[31]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[32]_i_1 
       (.I0(tdata_out[16]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[32]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[33]_i_1 
       (.I0(tdata_out[17]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[33]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[34]_i_1 
       (.I0(tdata_out[18]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[34]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[35]_i_1 
       (.I0(tdata_out[19]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[35]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[36]_i_1 
       (.I0(tdata_out[20]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[36]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[37]_i_1 
       (.I0(tdata_out[21]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[37]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[38]_i_1 
       (.I0(tdata_out[22]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[38]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[39]_i_1 
       (.I0(tdata_out[23]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[39]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[3]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[3]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [3]),
        .O(tdata_out_n[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[40]_i_1 
       (.I0(tdata_out[24]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[40]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[41]_i_1 
       (.I0(tdata_out[25]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[41]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[42]_i_1 
       (.I0(tdata_out[26]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[42]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[43]_i_1 
       (.I0(tdata_out[27]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[43]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[44]_i_1 
       (.I0(tdata_out[28]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[44]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[45]_i_1 
       (.I0(tdata_out[29]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[45]));
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[46]_i_1 
       (.I0(tdata_out[30]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[46]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[47]_i_1 
       (.I0(tdata_out[31]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[47]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[48]_i_1 
       (.I0(tdata_out[32]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[48]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[49]_i_1 
       (.I0(tdata_out[33]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[49]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[4]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[4]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [4]),
        .O(tdata_out_n[4]));
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[50]_i_1 
       (.I0(tdata_out[34]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[50]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[51]_i_1 
       (.I0(tdata_out[35]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[51]));
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[52]_i_1 
       (.I0(tdata_out[36]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[52]));
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[53]_i_1 
       (.I0(tdata_out[37]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[53]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[54]_i_1 
       (.I0(tdata_out[38]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[54]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[55]_i_1 
       (.I0(tdata_out[39]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[55]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[56]_i_1 
       (.I0(tdata_out[40]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[56]));
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[57]_i_1 
       (.I0(tdata_out[41]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[57]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[58]_i_1 
       (.I0(tdata_out[42]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[58]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[59]_i_1 
       (.I0(tdata_out[43]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[59]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[5]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[5]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [5]),
        .O(tdata_out_n[5]));
  LUT5 #(
    .INIT(32'h00AA000C)) 
    \tdata_out_r[60]_i_1 
       (.I0(tdata_out[44]),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(\FSM_sequential_state_r_reg[3]_0 ),
        .I4(state_r__0[2]),
        .O(tdata_out_n[60]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[61]_i_1 
       (.I0(tdata_out[45]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[61]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[62]_i_1 
       (.I0(tdata_out[46]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[62]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tdata_out_r[63]_i_1 
       (.I0(tdata_out[47]),
        .I1(\FSM_sequential_state_r_reg[3]_0 ),
        .I2(state_r__0[2]),
        .O(tdata_out_n[63]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[6]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[6]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [6]),
        .O(tdata_out_n[6]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[7]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[7]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [7]),
        .O(tdata_out_n[7]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[8]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[8]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [8]),
        .O(tdata_out_n[8]));
  LUT6 #(
    .INIT(64'h0000FF4000000040)) 
    \tdata_out_r[9]_i_1 
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .I2(Q[9]),
        .I3(state_r__0[2]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(\tdata_out_r_reg[17]_0 [9]),
        .O(tdata_out_n[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[0] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[0]),
        .Q(tdata_out[0]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[10] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[10]),
        .Q(tdata_out[10]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[11] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[11]),
        .Q(tdata_out[11]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[12] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[12]),
        .Q(tdata_out[12]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[13] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[13]),
        .Q(tdata_out[13]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[14] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[14]),
        .Q(tdata_out[14]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[15] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[15]),
        .Q(tdata_out[15]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[16] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[16]),
        .Q(tdata_out[16]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[17] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[17]),
        .Q(tdata_out[17]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[18] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[18]),
        .Q(tdata_out[18]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[19] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[19]),
        .Q(tdata_out[19]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[1] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[1]),
        .Q(tdata_out[1]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[20] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[20]),
        .Q(tdata_out[20]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[21] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[21]),
        .Q(tdata_out[21]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[22] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[22]),
        .Q(tdata_out[22]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[23] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[23]),
        .Q(tdata_out[23]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[24] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[24]),
        .Q(tdata_out[24]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[25] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[25]),
        .Q(tdata_out[25]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[26] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[26]),
        .Q(tdata_out[26]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[27] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[27]),
        .Q(tdata_out[27]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[28] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[28]),
        .Q(tdata_out[28]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[29] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[29]),
        .Q(tdata_out[29]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[2] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[2]),
        .Q(tdata_out[2]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[30] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[30]),
        .Q(tdata_out[30]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[31] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[31]),
        .Q(tdata_out[31]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[32] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[32]),
        .Q(tdata_out[32]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[33] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[33]),
        .Q(tdata_out[33]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[34] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[34]),
        .Q(tdata_out[34]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[35] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[35]),
        .Q(tdata_out[35]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[36] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[36]),
        .Q(tdata_out[36]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[37] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[37]),
        .Q(tdata_out[37]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[38] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[38]),
        .Q(tdata_out[38]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[39] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[39]),
        .Q(tdata_out[39]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[3] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[3]),
        .Q(tdata_out[3]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[40] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[40]),
        .Q(tdata_out[40]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[41] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[41]),
        .Q(tdata_out[41]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[42] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[42]),
        .Q(tdata_out[42]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[43] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[43]),
        .Q(tdata_out[43]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[44] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[44]),
        .Q(tdata_out[44]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[45] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[45]),
        .Q(tdata_out[45]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[46] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[46]),
        .Q(tdata_out[46]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[47] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[47]),
        .Q(tdata_out[47]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[48] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[48]),
        .Q(tdata_out[48]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[49] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[49]),
        .Q(tdata_out[49]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[4] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[4]),
        .Q(tdata_out[4]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[50] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[50]),
        .Q(tdata_out[50]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[51] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[51]),
        .Q(tdata_out[51]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[52] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[52]),
        .Q(tdata_out[52]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[53] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[53]),
        .Q(tdata_out[53]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[54] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[54]),
        .Q(tdata_out[54]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[55] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[55]),
        .Q(tdata_out[55]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[56] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[56]),
        .Q(tdata_out[56]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[57] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[57]),
        .Q(tdata_out[57]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[58] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[58]),
        .Q(tdata_out[58]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[59] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[59]),
        .Q(tdata_out[59]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[5] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[5]),
        .Q(tdata_out[5]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[60] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[60]),
        .Q(tdata_out[60]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[61] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[61]),
        .Q(tdata_out[61]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[62] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[62]),
        .Q(tdata_out[62]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[63] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[63]),
        .Q(tdata_out[63]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[6] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[6]),
        .Q(tdata_out[6]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[7] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[7]),
        .Q(tdata_out[7]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[8] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[8]),
        .Q(tdata_out[8]),
        .R(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA" *) 
  FDRE \tdata_out_r_reg[9] 
       (.C(clk),
        .CE(en),
        .D(tdata_out_n[9]),
        .Q(tdata_out[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    tlast_out_r_i_1
       (.I0(tlast_out_r_i_2_n_0),
        .I1(state_r__0[2]),
        .I2(state_n11_in),
        .I3(state_r__0[0]),
        .I4(\FSM_sequential_state_r_reg[3]_0 ),
        .I5(state_r__0[1]),
        .O(tlast_out_n));
  LUT5 #(
    .INIT(32'h00000010)) 
    tlast_out_r_i_2
       (.I0(tlast_out_r_i_3_n_0),
        .I1(tlast_out_r_i_4_n_0),
        .I2(tlast_out_r_i_5_n_0),
        .I3(tlast_out_r_i_6_n_0),
        .I4(tlast_out_r_i_7_n_0),
        .O(tlast_out_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    tlast_out_r_i_3
       (.I0(\bram_addr_r_reg[13]_0 [6]),
        .I1(tlast_out_r_i_2_0[6]),
        .I2(tlast_out_r_i_2_0[8]),
        .I3(\bram_addr_r_reg[13]_0 [8]),
        .I4(tlast_out_r_i_2_0[7]),
        .I5(\bram_addr_r_reg[13]_0 [7]),
        .O(tlast_out_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    tlast_out_r_i_4
       (.I0(tlast_out_r_i_2_0[4]),
        .I1(\bram_addr_r_reg[13]_0 [4]),
        .I2(tlast_out_r_i_2_0[5]),
        .I3(\bram_addr_r_reg[13]_0 [5]),
        .I4(\bram_addr_r_reg[13]_0 [3]),
        .I5(tlast_out_r_i_2_0[3]),
        .O(tlast_out_r_i_4_n_0));
  LUT5 #(
    .INIT(32'h00009009)) 
    tlast_out_r_i_5
       (.I0(\bram_addr_r_reg[13]_0 [12]),
        .I1(tlast_out_r_i_2_0[12]),
        .I2(tlast_out_r_i_2_0[13]),
        .I3(\bram_addr_r_reg[13]_0 [13]),
        .I4(tlast_out_r_i_2_0[14]),
        .O(tlast_out_r_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    tlast_out_r_i_6
       (.I0(\bram_addr_r_reg[13]_0 [9]),
        .I1(tlast_out_r_i_2_0[9]),
        .I2(tlast_out_r_i_2_0[11]),
        .I3(\bram_addr_r_reg[13]_0 [11]),
        .I4(tlast_out_r_i_2_0[10]),
        .I5(\bram_addr_r_reg[13]_0 [10]),
        .O(tlast_out_r_i_6_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    tlast_out_r_i_7
       (.I0(tlast_out_r_i_2_0[1]),
        .I1(\bram_addr_r_reg[13]_0 [1]),
        .I2(tlast_out_r_i_2_0[2]),
        .I3(\bram_addr_r_reg[13]_0 [2]),
        .I4(\bram_addr_r_reg[13]_0 [0]),
        .I5(tlast_out_r_i_2_0[0]),
        .O(tlast_out_r_i_7_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST" *) 
  FDRE tlast_out_r_reg
       (.C(clk),
        .CE(en),
        .D(tlast_out_n),
        .Q(tlast_out),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    tvalid_out_r_i_1
       (.I0(\FSM_sequential_state_r_reg[3]_0 ),
        .I1(state_r__0[1]),
        .I2(state_r__0[0]),
        .I3(state_r__0[2]),
        .O(tvalid_out_r_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID" *) 
  FDRE tvalid_out_r_reg
       (.C(clk),
        .CE(en),
        .D(tvalid_out_r_i_1_n_0),
        .Q(tvalid_out),
        .R(SR));
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
