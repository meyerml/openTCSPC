//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Apr  6 14:33:18 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target LVDS_to_AXIS_IDDR.bd
//Design      : LVDS_to_AXIS_IDDR
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "LVDS_to_AXIS_IDDR,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=LVDS_to_AXIS_IDDR,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "LVDS_to_AXIS_IDDR.hwdef" *) 
module LVDS_to_AXIS_IDDR
   (Buffer_overflow,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    aresetn,
    axis_rd_data_count,
    axis_wr_data_count,
    clk,
    en,
    frame_n,
    frame_p,
    l_clk_in_n,
    l_clk_in_p,
    l_clk_out_n,
    l_clk_out_p,
    lvds_clk,
    msglen,
    sdo_n,
    sdo_p);
  output Buffer_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN LVDS_to_AXIS_IDDR_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  output [31:0]axis_rd_data_count;
  output [31:0]axis_wr_data_count;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M_AXIS, CLK_DOMAIN LVDS_to_AXIS_IDDR_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FRAME_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FRAME_N, CLK_DOMAIN LVDS_to_AXIS_IDDR_frame_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [0:0]frame_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FRAME_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FRAME_P, CLK_DOMAIN LVDS_to_AXIS_IDDR_frame_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [0:0]frame_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_N, CLK_DOMAIN LVDS_to_AXIS_IDDR_l_clk_in_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [0:0]l_clk_in_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_P, CLK_DOMAIN LVDS_to_AXIS_IDDR_l_clk_in_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [0:0]l_clk_in_p;
  output l_clk_out_n;
  output l_clk_out_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LVDS_CLK, CLK_DOMAIN LVDS_to_AXIS_IDDR_lvds_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input lvds_clk;
  input [5:0]msglen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDO_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDO_N, CLK_DOMAIN LVDS_to_AXIS_IDDR_sdo_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [0:0]sdo_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDO_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDO_P, CLK_DOMAIN LVDS_to_AXIS_IDDR_sdo_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [0:0]sdo_p;

  wire Buffer_overflow;
  wire [63:0]DDR_Stream_to_AXI_St_1_AXIS_TDATA;
  wire DDR_Stream_to_AXI_St_1_AXIS_TLAST;
  wire DDR_Stream_to_AXI_St_1_AXIS_TREADY;
  wire DDR_Stream_to_AXI_St_1_AXIS_TVALID;
  wire [0:0]FRAME_IBUF_OUT;
  wire [63:0]M_AXIS_tdata;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [0:0]Net;
  wire [0:0]SDO_IBUF_OUT;
  wire aresetn;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire clk;
  wire en;
  wire [0:0]frame_n;
  wire [0:0]frame_p;
  wire [0:0]l_clk_in_n;
  wire [0:0]l_clk_in_p;
  wire l_clk_out_n;
  wire l_clk_out_p;
  wire lvds_clk;
  wire [5:0]msglen;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]sdo_n;
  wire [0:0]sdo_p;

  LVDS_to_AXIS_IDDR_util_ds_buf_0_1 CLOCK
       (.IBUF_DS_N(l_clk_in_n),
        .IBUF_DS_P(l_clk_in_p),
        .IBUF_OUT(Net));
  LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0 DDR_Stream_to_AXI_St_1
       (.C_i(Net),
        .D(SDO_IBUF_OUT),
        .F(FRAME_IBUF_OUT),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .enable(en),
        .msglen(msglen),
        .tdata_delayed(DDR_Stream_to_AXI_St_1_AXIS_TDATA),
        .tlast_delayed(DDR_Stream_to_AXI_St_1_AXIS_TLAST),
        .tready(DDR_Stream_to_AXI_St_1_AXIS_TREADY),
        .tvalid_delayed(DDR_Stream_to_AXI_St_1_AXIS_TVALID));
  LVDS_to_AXIS_IDDR_util_ds_buf_0_2 FRAME
       (.IBUF_DS_N(frame_n),
        .IBUF_DS_P(frame_p),
        .IBUF_OUT(FRAME_IBUF_OUT));
  LVDS_to_AXIS_IDDR_util_ds_buf_0_0 SDO
       (.IBUF_DS_N(sdo_n),
        .IBUF_DS_P(sdo_p),
        .IBUF_OUT(SDO_IBUF_OUT));
  LVDS_to_AXIS_IDDR_axis_data_fifo_0_0 axis_data_fifo_0
       (.axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(clk),
        .m_axis_tdata(M_AXIS_tdata),
        .m_axis_tlast(M_AXIS_tlast),
        .m_axis_tready(M_AXIS_tready),
        .m_axis_tvalid(M_AXIS_tvalid),
        .prog_full(Buffer_overflow),
        .s_axis_aclk(Net),
        .s_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata(DDR_Stream_to_AXI_St_1_AXIS_TDATA),
        .s_axis_tlast(DDR_Stream_to_AXI_St_1_AXIS_TLAST),
        .s_axis_tready(DDR_Stream_to_AXI_St_1_AXIS_TREADY),
        .s_axis_tvalid(DDR_Stream_to_AXI_St_1_AXIS_TVALID));
  LVDS_to_AXIS_IDDR_lvds_output_0_0 lvds_output_0
       (.clk(lvds_clk),
        .diff_n(l_clk_out_n),
        .diff_p(l_clk_out_p),
        .en(en));
  LVDS_to_AXIS_IDDR_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(Net));
endmodule
