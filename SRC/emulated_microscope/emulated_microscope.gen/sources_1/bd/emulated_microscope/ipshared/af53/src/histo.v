//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Fri Mar 13 11:44:24 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target histo.bd
//Design      : histo
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "histo,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=histo,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "histo.hwdef" *) 
module histo
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
    aresetn,
    bin_full_warning,
    bin_written_but_never_read_warning,
    buffer_almost_full,
    clk,
    disable_p,
    en,
    frame_clk,
    line_clk,
    log_2_BIN_WIDTH,
    negedge_frame,
    pixel_clk,
    premature_pixel_done_error,
    refres_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_IN, CLK_DOMAIN histo_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]AXIS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TLAST" *) input AXIS_IN_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TREADY" *) output AXIS_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_IN TVALID" *) input AXIS_IN_tvalid;
  input [14:0]BINS_TO_READ;
  input [31:0]MAX_PIXELS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN histo_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  input [5:0]REFINDEX_BITS;
  input [5:0]STOPRESULT_BITS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  output bin_full_warning;
  output bin_written_but_never_read_warning;
  output buffer_almost_full;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF AXIS_IN:M_AXIS, ASSOCIATED_RESET aresetn, CLK_DOMAIN histo_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  /* disables the gpx2 when not recording a pixel
 */
  output [0:0]disable_p;
  input en;
  input frame_clk;
  input line_clk;
  input [15:0]log_2_BIN_WIDTH;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.NEGEDGE_FRAME INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.NEGEDGE_FRAME, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output negedge_frame;
  input pixel_clk;
  output premature_pixel_done_error;
  /* resets gpx2 refindex counter when new pixel is started */
  output [0:0]refres_p;

  wire [63:0]AXIS_IN_tdata;
  wire AXIS_IN_tlast;
  wire AXIS_IN_tready;
  wire AXIS_IN_tvalid;
  wire [14:0]BINS_TO_READ;
  wire [63:0]HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TDATA;
  wire HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TLAST;
  wire HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TREADY;
  wire HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TVALID;
  wire [31:0]MAX_PIXELS;
  wire [63:0]M_AXIS_tdata;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [5:0]REFINDEX_BITS;
  wire [5:0]STOPRESULT_BITS;
  wire aresetn;
  wire bin_full_warning;
  wire bin_written_but_never_read_warning;
  wire buffer_almost_full;
  wire clk;
  wire [0:0]disable_p;
  wire en;
  wire frame_clk;
  wire [0:0]in_line_and_in_frame_Res;
  wire line_clk;
  wire [15:0]log_2_BIN_WIDTH;
  wire negedge_frame;
  wire pixel_clk;
  wire pixel_posedge_detect_detect_out;
  wire premature_pixel_done_error;
  wire [0:0]refres_p;
  wire [63:0]sorter_0_AXIS_OUT_TDATA;
  wire sorter_0_AXIS_OUT_TLAST;
  wire sorter_0_AXIS_OUT_TREADY;
  wire sorter_0_AXIS_OUT_TVALID;
  wire [0:0]xlconstant_0_dout;

  histo_xlconstant_0_0 HIGH
       (.dout(xlconstant_0_dout));
  histo_HISTOGRAM_ARBITER_FSM_0_0 HISTOGRAM_ARBITER_FSM_0
       (.BINS_TO_READ(BINS_TO_READ),
        .MAX_PIXELS(MAX_PIXELS),
        .aresetn(aresetn),
        .bin_full_warning(bin_full_warning),
        .bin_written_but_never_read_warning(bin_written_but_never_read_warning),
        .clk(clk),
        .en(en),
        .pixel_done(refres_p),
        .premature_pixel_done_error(premature_pixel_done_error),
        .tdata_in(sorter_0_AXIS_OUT_TDATA),
        .tdata_out(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TDATA),
        .tlast_in(sorter_0_AXIS_OUT_TLAST),
        .tlast_out(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TLAST),
        .tready_in(sorter_0_AXIS_OUT_TREADY),
        .tready_out(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TREADY),
        .tvalid_in(sorter_0_AXIS_OUT_TVALID),
        .tvalid_out(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TVALID));
  histo_axis_data_fifo_0_0 axis_data_fifo_0
       (.almost_full(buffer_almost_full),
        .m_axis_tdata(M_AXIS_tdata),
        .m_axis_tlast(M_AXIS_tlast),
        .m_axis_tready(M_AXIS_tready),
        .m_axis_tvalid(M_AXIS_tvalid),
        .s_axis_aclk(clk),
        .s_axis_aresetn(aresetn),
        .s_axis_tdata(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TDATA),
        .s_axis_tlast(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TLAST),
        .s_axis_tready(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TREADY),
        .s_axis_tvalid(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TVALID));
  histo_negedge_detect_0_0 frame_negedge_detect
       (.aresetn(aresetn),
        .clk(clk),
        .detect_out(negedge_frame),
        .edge_in(frame_clk),
        .edge_valid(xlconstant_0_dout));
  histo_ila_sorter_0 ila_histo_out
       (.clk(clk),
        .probe0(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TREADY),
        .probe1(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TDATA),
        .probe2({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .probe3(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TVALID),
        .probe4(HISTOGRAM_ARBITER_FSM_0_AXIS_OUT_TLAST),
        .probe5(1'b0),
        .probe6({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .probe7(1'b0),
        .probe8(1'b0));
  histo_in_line_and_in_frame_0 in_line_and_in_frame
       (.Op1(line_clk),
        .Op2(frame_clk),
        .Res(in_line_and_in_frame_Res));
  histo_util_vector_logic_1_1 new_pixel_or_frame_done
       (.Op1(pixel_posedge_detect_detect_out),
        .Op2(negedge_frame),
        .Res(refres_p));
  histo_util_vector_logic_0_0 not_recording
       (.Op1(in_line_and_in_frame_Res),
        .Res(disable_p));
  histo_posedge_detect_0_0 pixel_posedge_detect
       (.aresetn(aresetn),
        .clk(clk),
        .detect_out(pixel_posedge_detect_detect_out),
        .edge_in(pixel_clk),
        .edge_valid(in_line_and_in_frame_Res));
  histo_sorter_0_0 sorter_0
       (.REFINDEX_BITS(REFINDEX_BITS),
        .STOPRESULT_BITS(STOPRESULT_BITS),
        .aresetn(aresetn),
        .clk(clk),
        .en(en),
        .log_2_BIN_WIDTH(log_2_BIN_WIDTH),
        .tdata_in(AXIS_IN_tdata),
        .tdata_out(sorter_0_AXIS_OUT_TDATA),
        .tlast_in(AXIS_IN_tlast),
        .tlast_out(sorter_0_AXIS_OUT_TLAST),
        .tready_in(AXIS_IN_tready),
        .tready_out(sorter_0_AXIS_OUT_TREADY),
        .tvalid_in(AXIS_IN_tvalid),
        .tvalid_out(sorter_0_AXIS_OUT_TVALID));
endmodule
