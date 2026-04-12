//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Fri Apr  3 23:41:13 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target LVDS_to_AXIS_wrapper.bd
//Design      : LVDS_to_AXIS_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LVDS_to_AXIS_wrapper
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
  output [63:0]M_AXIS_0_tdata;
  output M_AXIS_0_tlast;
  input M_AXIS_0_tready;
  output M_AXIS_0_tvalid;
  input aresetn;
  output [31:0]axis_rd_data_count;
  output [31:0]axis_wr_data_count;
  input clk;
  input en;
  input frame_n;
  input frame_p;
  input ila_clk;
  input l_clk_in_n;
  input l_clk_in_p;
  output l_clk_out_n;
  output l_clk_out_p;
  input lvds_clk;
  input [5:0]msglen;
  input sdo_n;
  input sdo_p;

  wire [0:0]Buffer_overflow;
  wire [4:0]CNTVALUEIN;
  wire LD;
  wire [63:0]M_AXIS_0_tdata;
  wire M_AXIS_0_tlast;
  wire M_AXIS_0_tready;
  wire M_AXIS_0_tvalid;
  wire aresetn;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire clk;
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

  LVDS_to_AXIS LVDS_to_AXIS_i
       (.Buffer_overflow(Buffer_overflow),
        .CNTVALUEIN(CNTVALUEIN),
        .LD(LD),
        .M_AXIS_0_tdata(M_AXIS_0_tdata),
        .M_AXIS_0_tlast(M_AXIS_0_tlast),
        .M_AXIS_0_tready(M_AXIS_0_tready),
        .M_AXIS_0_tvalid(M_AXIS_0_tvalid),
        .aresetn(aresetn),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .clk(clk),
        .en(en),
        .frame_n(frame_n),
        .frame_p(frame_p),
        .ila_clk(ila_clk),
        .l_clk_in_n(l_clk_in_n),
        .l_clk_in_p(l_clk_in_p),
        .l_clk_out_n(l_clk_out_n),
        .l_clk_out_p(l_clk_out_p),
        .lvds_clk(lvds_clk),
        .msglen(msglen),
        .sdo_n(sdo_n),
        .sdo_p(sdo_p));
endmodule
