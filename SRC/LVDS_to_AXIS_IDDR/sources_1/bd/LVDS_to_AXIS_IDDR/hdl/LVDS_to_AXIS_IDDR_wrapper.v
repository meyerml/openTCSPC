//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Apr 12 17:13:27 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target LVDS_to_AXIS_IDDR_wrapper.bd
//Design      : LVDS_to_AXIS_IDDR_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LVDS_to_AXIS_IDDR_wrapper
   (Buffer_overflow,
    CNTVALUEIN_CLK,
    CNTVALUEIN_FRAME,
    CNTVALUEIN_SDO,
    LD,
    M_AXIS_tdata,
    M_AXIS_tready,
    M_AXIS_tvalid,
    TRIG_IN_ack,
    TRIG_IN_trig,
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
  output Buffer_overflow;
  input [4:0]CNTVALUEIN_CLK;
  input [4:0]CNTVALUEIN_FRAME;
  input [4:0]CNTVALUEIN_SDO;
  input LD;
  output [63:0]M_AXIS_tdata;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  output TRIG_IN_ack;
  input TRIG_IN_trig;
  input aresetn;
  output [31:0]axis_rd_data_count;
  output [31:0]axis_wr_data_count;
  input clk;
  input en;
  input [0:0]frame_n;
  input [0:0]frame_p;
  input ila_clk;
  input [0:0]l_clk_in_n;
  input [0:0]l_clk_in_p;
  output l_clk_out_n;
  output l_clk_out_p;
  input lvds_clk;
  input [5:0]msglen;
  input [0:0]sdo_n;
  input [0:0]sdo_p;

  wire Buffer_overflow;
  wire [4:0]CNTVALUEIN_CLK;
  wire [4:0]CNTVALUEIN_FRAME;
  wire [4:0]CNTVALUEIN_SDO;
  wire LD;
  wire [63:0]M_AXIS_tdata;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire TRIG_IN_ack;
  wire TRIG_IN_trig;
  wire aresetn;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire clk;
  wire en;
  wire [0:0]frame_n;
  wire [0:0]frame_p;
  wire ila_clk;
  wire [0:0]l_clk_in_n;
  wire [0:0]l_clk_in_p;
  wire l_clk_out_n;
  wire l_clk_out_p;
  wire lvds_clk;
  wire [5:0]msglen;
  wire [0:0]sdo_n;
  wire [0:0]sdo_p;

  LVDS_to_AXIS_IDDR LVDS_to_AXIS_IDDR_i
       (.Buffer_overflow(Buffer_overflow),
        .CNTVALUEIN_CLK(CNTVALUEIN_CLK),
        .CNTVALUEIN_FRAME(CNTVALUEIN_FRAME),
        .CNTVALUEIN_SDO(CNTVALUEIN_SDO),
        .LD(LD),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .TRIG_IN_ack(TRIG_IN_ack),
        .TRIG_IN_trig(TRIG_IN_trig),
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
