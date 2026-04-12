//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Apr  1 14:26:49 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target histo_wrapper.bd
//Design      : histo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module histo_wrapper
   (AXIS_IN_tdata,
    AXIS_IN_tlast,
    AXIS_IN_tready,
    AXIS_IN_tvalid,
    BINS_TO_READ,
    MAX_PIXELS,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    REFINDEX_BITS,
    STOPRESULT_BITS,
    TRIG_OUT_ack,
    TRIG_OUT_trig,
    aresetn,
    bin_full_warning,
    bin_written_but_never_read_warning,
    buffer_almost_full,
    clk,
    disable_p,
    en,
    frame_clk,
    ila_clk,
    line_clk,
    log_2_BIN_WIDTH,
    negedge_frame,
    pixel_clk,
    premature_pixel_done_error,
    refres_p);
  input [63:0]AXIS_IN_tdata;
  input AXIS_IN_tlast;
  output AXIS_IN_tready;
  input AXIS_IN_tvalid;
  input [14:0]BINS_TO_READ;
  input [31:0]MAX_PIXELS;
  output [63:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [5:0]REFINDEX_BITS;
  input [5:0]STOPRESULT_BITS;
  input TRIG_OUT_ack;
  output TRIG_OUT_trig;
  input aresetn;
  output bin_full_warning;
  output bin_written_but_never_read_warning;
  output buffer_almost_full;
  input clk;
  output [0:0]disable_p;
  input en;
  input frame_clk;
  input ila_clk;
  input line_clk;
  input [15:0]log_2_BIN_WIDTH;
  output negedge_frame;
  input pixel_clk;
  output premature_pixel_done_error;
  output [0:0]refres_p;

  wire [63:0]AXIS_IN_tdata;
  wire AXIS_IN_tlast;
  wire AXIS_IN_tready;
  wire AXIS_IN_tvalid;
  wire [14:0]BINS_TO_READ;
  wire [31:0]MAX_PIXELS;
  wire [63:0]M_AXIS_tdata;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [5:0]REFINDEX_BITS;
  wire [5:0]STOPRESULT_BITS;
  wire TRIG_OUT_ack;
  wire TRIG_OUT_trig;
  wire aresetn;
  wire bin_full_warning;
  wire bin_written_but_never_read_warning;
  wire buffer_almost_full;
  wire clk;
  wire [0:0]disable_p;
  wire en;
  wire frame_clk;
  wire ila_clk;
  wire line_clk;
  wire [15:0]log_2_BIN_WIDTH;
  wire negedge_frame;
  wire pixel_clk;
  wire premature_pixel_done_error;
  wire [0:0]refres_p;

  histo histo_i
       (.AXIS_IN_tdata(AXIS_IN_tdata),
        .AXIS_IN_tlast(AXIS_IN_tlast),
        .AXIS_IN_tready(AXIS_IN_tready),
        .AXIS_IN_tvalid(AXIS_IN_tvalid),
        .BINS_TO_READ(BINS_TO_READ),
        .MAX_PIXELS(MAX_PIXELS),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .REFINDEX_BITS(REFINDEX_BITS),
        .STOPRESULT_BITS(STOPRESULT_BITS),
        .TRIG_OUT_ack(TRIG_OUT_ack),
        .TRIG_OUT_trig(TRIG_OUT_trig),
        .aresetn(aresetn),
        .bin_full_warning(bin_full_warning),
        .bin_written_but_never_read_warning(bin_written_but_never_read_warning),
        .buffer_almost_full(buffer_almost_full),
        .clk(clk),
        .disable_p(disable_p),
        .en(en),
        .frame_clk(frame_clk),
        .ila_clk(ila_clk),
        .line_clk(line_clk),
        .log_2_BIN_WIDTH(log_2_BIN_WIDTH),
        .negedge_frame(negedge_frame),
        .pixel_clk(pixel_clk),
        .premature_pixel_done_error(premature_pixel_done_error),
        .refres_p(refres_p));
endmodule
