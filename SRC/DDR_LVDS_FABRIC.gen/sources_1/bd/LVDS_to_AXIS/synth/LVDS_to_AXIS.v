//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Mar  9 14:24:27 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target LVDS_to_AXIS.bd
//Design      : LVDS_to_AXIS
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "LVDS_to_AXIS,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=LVDS_to_AXIS,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "LVDS_to_AXIS.hwdef" *) 
module LVDS_to_AXIS
   (Buffer_overflow,
    CNTVALUEIN,
    LD,
    M_AXIS_0_tdata,
    M_AXIS_0_tlast,
    M_AXIS_0_tready,
    M_AXIS_0_tvalid,
    aresetn,
    axis_rd_data_count,
    axis_wr_data_count,
    clk,
    debug_axis_before_fifo_tdata,
    debug_axis_before_fifo_tlast,
    debug_axis_before_fifo_tready,
    debug_axis_before_fifo_tvalid,
    en,
    frame_n,
    frame_p,
    ila_clk,
    l_clk_in_n,
    l_clk_in_p,
    l_clk_out_n,
    l_clk_out_p,
    lvds_clk,
    msglen,
    sdo_n,
    sdo_p);
  output [0:0]Buffer_overflow;
  input [4:0]CNTVALUEIN;
  input LD;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_0, CLK_DOMAIN LVDS_to_AXIS_clk_0, FREQ_HZ 50, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST" *) output M_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY" *) input M_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID" *) output M_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  output [31:0]axis_rd_data_count;
  output [31:0]axis_wr_data_count;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M_AXIS_0, ASSOCIATED_RESET aresetn, CLK_DOMAIN LVDS_to_AXIS_clk_0, FREQ_HZ 50, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TDATA" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME debug_axis_before_fifo, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]debug_axis_before_fifo_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TLAST" *) output debug_axis_before_fifo_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TREADY" *) output debug_axis_before_fifo_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TVALID" *) output debug_axis_before_fifo_tvalid;
  input en;
  input frame_n;
  input frame_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ILA_CLK, CLK_DOMAIN LVDS_to_AXIS_ila_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input ila_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_N, CLK_DOMAIN LVDS_to_AXIS_l_clk_in_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input l_clk_in_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_P, CLK_DOMAIN LVDS_to_AXIS_l_clk_in_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input l_clk_in_p;
  output l_clk_out_n;
  output l_clk_out_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LVDS_CLK, CLK_DOMAIN LVDS_to_AXIS_lvds_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input lvds_clk;
  input [5:0]msglen;
  input sdo_n;
  input sdo_p;

  wire \^Buffer_overflow ;
  wire [4:0]CNTVALUEIN;
  wire [0:0]DATA_IBUF_OUT;
  wire [0:0]FRAME_IBUF_OUT;
  wire IDELAY_DATA_DATAOUT;
  wire IDELAY_FRAME_DATAOUT;
  wire LD;
  wire [63:0]M_AXIS_0_tdata;
  wire M_AXIS_0_tlast;
  wire M_AXIS_0_tready;
  wire M_AXIS_0_tvalid;
  wire aresetn;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire clk;
  wire [63:0]debug_axis_before_fifo_tdata;
  wire debug_axis_before_fifo_tlast;
  wire debug_axis_before_fifo_tready;
  wire debug_axis_before_fifo_tvalid;
  wire en;
  wire frame_n;
  wire frame_p;
  wire ila_clk;
  wire l_clk_in_n;
  wire l_clk_in_p;
  wire l_clk_out_n;
  wire l_clk_out_p;
  wire lvds_clk;
  wire [5:0]msglen;
  wire sdo_n;
  wire sdo_p;
  wire [0:0]util_ds_buf_0_BUFG_O;
  wire [0:0]util_ds_buf_1_IBUF_OUT;

  assign Buffer_overflow[0] = \^Buffer_overflow ;
  LVDS_to_AXIS_util_ds_buf_0_4 BUFG_CLOCK
       (.BUFG_I(util_ds_buf_1_IBUF_OUT),
        .BUFG_O(util_ds_buf_0_BUFG_O));
  LVDS_to_AXIS_util_ds_buf_1_0 DATA
       (.IBUF_DS_N(sdo_n),
        .IBUF_DS_P(sdo_p),
        .IBUF_OUT(DATA_IBUF_OUT));
  LVDS_to_AXIS_DDR_fabric_even_simp_0_0 DDR_fabric_even_simp_0
       (.C(util_ds_buf_0_BUFG_O),
        .D(IDELAY_DATA_DATAOUT),
        .F(IDELAY_FRAME_DATAOUT),
        .aresetn(aresetn),
        .msglen(msglen),
        .tdata_delayed(debug_axis_before_fifo_tdata),
        .tlast_delayed(debug_axis_before_fifo_tlast),
        .tready(debug_axis_before_fifo_tready),
        .tvalid_delayed(debug_axis_before_fifo_tvalid));
  LVDS_to_AXIS_util_ds_buf_0_1 FRAME
       (.IBUF_DS_N(frame_n),
        .IBUF_DS_P(frame_p),
        .IBUF_OUT(FRAME_IBUF_OUT));
  LVDS_to_AXIS_util_ds_buf_1_1 IBUDS_CLOCK
       (.IBUF_DS_N(l_clk_in_n),
        .IBUF_DS_P(l_clk_in_p),
        .IBUF_OUT(util_ds_buf_1_IBUF_OUT));
  LVDS_to_AXIS_IDELAY_DATA_0_0 IDELAY_DATA
       (.C(clk),
        .CNTVALUEIN(CNTVALUEIN),
        .DATAOUT(IDELAY_DATA_DATAOUT),
        .IDATAIN(DATA_IBUF_OUT),
        .LD(LD));
  LVDS_to_AXIS_IDELAY_DATA_0_1 IDELAY_FRAME
       (.C(clk),
        .CNTVALUEIN(CNTVALUEIN),
        .DATAOUT(IDELAY_FRAME_DATAOUT),
        .IDATAIN(FRAME_IBUF_OUT),
        .LD(LD));
  LVDS_to_AXIS_axis_data_fifo_0_0 axis_data_fifo_0
       (.axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(clk),
        .m_axis_tdata(M_AXIS_0_tdata),
        .m_axis_tlast(M_AXIS_0_tlast),
        .m_axis_tready(M_AXIS_0_tready),
        .m_axis_tvalid(M_AXIS_0_tvalid),
        .prog_full(\^Buffer_overflow ),
        .s_axis_aclk(util_ds_buf_0_BUFG_O),
        .s_axis_aresetn(aresetn),
        .s_axis_tdata(debug_axis_before_fifo_tdata),
        .s_axis_tlast(debug_axis_before_fifo_tlast),
        .s_axis_tready(debug_axis_before_fifo_tready),
        .s_axis_tvalid(debug_axis_before_fifo_tvalid));
  LVDS_to_AXIS_ila_0_0 ila_LVDS
       (.clk(ila_clk),
        .probe0(util_ds_buf_0_BUFG_O),
        .probe1(IDELAY_DATA_DATAOUT),
        .probe2(IDELAY_FRAME_DATAOUT));
  LVDS_to_AXIS_lvds_output_0_0 l_clk_out
       (.clk(lvds_clk),
        .diff_n(l_clk_out_n),
        .diff_p(l_clk_out_p),
        .en(en));
endmodule
