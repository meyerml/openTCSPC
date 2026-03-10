// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Mar 10 16:59:58 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/Microscope/Microscope.gen/sources_1/bd/laser/ip/laser_laser_signal_generat_0_0/laser_laser_signal_generat_0_0_sim_netlist.v
// Design      : laser_laser_signal_generat_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "laser_laser_signal_generat_0_0,laser_signal_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "laser_signal_generator,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module laser_laser_signal_generat_0_0
   (en,
    aresetn,
    clk,
    image_size,
    pulses_per_pixel,
    refclk_out,
    stop_out,
    frame_clk_r,
    line_clk_r,
    pixel_clk_r,
    CNTVALUEOUT_dbg,
    warmup_pulse_counter_dbg,
    start_frame_dbg,
    state_dbg,
    line_complete_dbg,
    pixel_complete_dbg,
    m_arvalid_n_dbg,
    m_arvalid_r_dbg,
    m_araddr,
    m_arvalid,
    m_arready,
    m_rdata,
    m_rvalid,
    m_rready);
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXI4lite_m, ASSOCIATED_RESET aresetn, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN laser_laser_clk, INSERT_VIP 0" *) input clk;
  input [31:0]image_size;
  input [31:0]pulses_per_pixel;
  output refclk_out;
  output stop_out;
  output frame_clk_r;
  output line_clk_r;
  output pixel_clk_r;
  output [4:0]CNTVALUEOUT_dbg;
  output [3:0]warmup_pulse_counter_dbg;
  output start_frame_dbg;
  output [2:0]state_dbg;
  output line_complete_dbg;
  output pixel_complete_dbg;
  output m_arvalid_n_dbg;
  output m_arvalid_r_dbg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI4lite_m, FREQ_HZ 10000000, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN laser_laser_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [17:0]m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID" *) output m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARREADY" *) input m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RDATA" *) input [31:0]m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RVALID" *) input m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY" *) output m_rready;

  wire \<const0> ;
  wire [4:0]CNTVALUEOUT_dbg;
  wire aresetn;
  wire clk;
  wire en;
  wire frame_clk_r;
  wire [31:0]image_size;
  wire line_clk_r;
  wire line_complete_dbg;
  wire [17:2]\^m_araddr ;
  wire m_arready;
  wire m_arvalid_n_dbg;
  wire m_arvalid_r_dbg;
  wire [31:0]m_rdata;
  wire m_rready;
  wire pixel_clk_r;
  wire pixel_complete_dbg;
  wire [31:0]pulses_per_pixel;
  wire refclk_out;
  wire start_frame_dbg;
  wire [2:0]state_dbg;
  wire stop_out;
  wire [3:0]warmup_pulse_counter_dbg;

  assign m_araddr[17:2] = \^m_araddr [17:2];
  assign m_araddr[1] = \<const0> ;
  assign m_araddr[0] = \<const0> ;
  assign m_arvalid = m_arvalid_r_dbg;
  GND GND
       (.G(\<const0> ));
  laser_laser_signal_generat_0_0_laser_signal_generator inst
       (.CNTVALUEOUT_dbg(CNTVALUEOUT_dbg),
        .aresetn(aresetn),
        .clk(clk),
        .en(en),
        .frame_clk_r(frame_clk_r),
        .image_size(image_size),
        .line_clk_r(line_clk_r),
        .line_complete_dbg(line_complete_dbg),
        .m_araddr(\^m_araddr ),
        .m_arready(m_arready),
        .m_arvalid_n_dbg(m_arvalid_n_dbg),
        .m_arvalid_r_dbg(m_arvalid_r_dbg),
        .m_rdata({m_rdata[28:24],m_rdata[20:16],m_rdata[12:8],m_rdata[4:0]}),
        .m_rready(m_rready),
        .pixel_clk_r(pixel_clk_r),
        .pixel_complete_dbg(pixel_complete_dbg),
        .pulses_per_pixel(pulses_per_pixel),
        .refclk_out(refclk_out),
        .start_frame_r_reg_0(start_frame_dbg),
        .state_dbg(state_dbg),
        .stop_out(stop_out),
        .warmup_pulse_counter_dbg(warmup_pulse_counter_dbg));
endmodule

(* ORIG_REF_NAME = "DelayChain" *) 
module laser_laser_signal_generat_0_0_DelayChain
   (refclk_out,
    S,
    \pulses_per_pixel[24] ,
    \image_size[31] ,
    \pixel_counter_r_reg[30] ,
    \return_counter_r_reg[10] ,
    \line_counter_r_reg[20] ,
    \line_counter_r_reg[4] ,
    \return_counter_r_reg[10]_0 ,
    \return_counter_r_reg[2] ,
    \return_counter_r_reg[26] ,
    \return_counter_r_reg[18] ,
    \return_counter_r_reg[29] ,
    \return_counter_r_reg[21] ,
    stop_out,
    CNTVALUEOUT_dbg,
    clk,
    Q,
    pixel_complete_dbg,
    image_size,
    line_complete1,
    line_complete0_carry__1,
    CO,
    frame_clk_r_i_5_0,
    pulses_per_pixel,
    m_arvalid_n_dbg_INST_0_i_7,
    m_rdata,
    shift_counter_r,
    \DELAY_CHAIN[0].IDELAYE2_inst_i_0 ,
    gate_stop_r,
    LD_r);
  output refclk_out;
  output [2:0]S;
  output [22:0]\pulses_per_pixel[24] ;
  output [2:0]\image_size[31] ;
  output [2:0]\pixel_counter_r_reg[30] ;
  output \return_counter_r_reg[10] ;
  output \line_counter_r_reg[20] ;
  output \line_counter_r_reg[4] ;
  output \return_counter_r_reg[10]_0 ;
  output \return_counter_r_reg[2] ;
  output \return_counter_r_reg[26] ;
  output \return_counter_r_reg[18] ;
  output \return_counter_r_reg[29] ;
  output \return_counter_r_reg[21] ;
  output stop_out;
  output [4:0]CNTVALUEOUT_dbg;
  input clk;
  input [2:0]Q;
  input [7:0]pixel_complete_dbg;
  input [2:0]image_size;
  input [7:0]line_complete1;
  input [7:0]line_complete0_carry__1;
  input [0:0]CO;
  input [31:0]frame_clk_r_i_5_0;
  input [31:0]pulses_per_pixel;
  input [31:0]m_arvalid_n_dbg_INST_0_i_7;
  input [19:0]m_rdata;
  input [1:0]shift_counter_r;
  input [0:0]\DELAY_CHAIN[0].IDELAYE2_inst_i_0 ;
  input gate_stop_r;
  input LD_r;

  wire [4:0]CNTVALUEIN;
  wire [4:0]CNTVALUEOUT_dbg;
  wire [0:0]CO;
  wire [0:0]\DELAY_CHAIN[0].IDELAYE2_inst_i_0 ;
  wire \DELAY_CHAIN[0].IDELAYE2_inst_i_i_10_n_0 ;
  wire \DELAY_CHAIN[0].IDELAYE2_inst_i_i_11_n_0 ;
  wire \DELAY_CHAIN[0].IDELAYE2_inst_i_i_12_n_0 ;
  wire \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0 ;
  wire \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0 ;
  wire \DELAY_CHAIN[0].IDELAYE2_inst_i_i_8_n_0 ;
  wire \DELAY_CHAIN[0].IDELAYE2_inst_i_i_9_n_0 ;
  wire LD_r;
  wire [2:0]Q;
  wire [2:0]S;
  wire clk;
  wire [8:0]delayed_signals;
  wire frame_clk_r_i_10_n_0;
  wire frame_clk_r_i_11_n_0;
  wire frame_clk_r_i_12_n_0;
  wire frame_clk_r_i_13_n_0;
  wire frame_clk_r_i_14_n_0;
  wire frame_clk_r_i_15_n_0;
  wire frame_clk_r_i_16_n_0;
  wire frame_clk_r_i_17_n_0;
  wire frame_clk_r_i_18_n_0;
  wire [31:0]frame_clk_r_i_5_0;
  wire frame_clk_r_i_7_n_0;
  wire frame_clk_r_i_8_n_0;
  wire frame_clk_r_i_9_n_0;
  wire gate_stop_r;
  wire [2:0]image_size;
  wire [2:0]\image_size[31] ;
  wire [7:0]line_complete0_carry__1;
  wire [7:0]line_complete1;
  wire \line_counter_r_reg[20] ;
  wire \line_counter_r_reg[4] ;
  wire m_arvalid_n_dbg_INST_0_i_15_n_0;
  wire m_arvalid_n_dbg_INST_0_i_16_n_0;
  wire [31:0]m_arvalid_n_dbg_INST_0_i_7;
  wire [19:0]m_rdata;
  wire [31:24]pixel_complete0;
  wire pixel_complete_carry__0_i_10_n_0;
  wire pixel_complete_carry__0_i_11_n_0;
  wire pixel_complete_carry__0_i_12_n_0;
  wire pixel_complete_carry__0_i_13_n_0;
  wire pixel_complete_carry__0_i_14_n_0;
  wire pixel_complete_carry__0_i_5_n_0;
  wire pixel_complete_carry__0_i_5_n_1;
  wire pixel_complete_carry__0_i_5_n_2;
  wire pixel_complete_carry__0_i_5_n_3;
  wire pixel_complete_carry__0_i_6_n_0;
  wire pixel_complete_carry__0_i_6_n_1;
  wire pixel_complete_carry__0_i_6_n_2;
  wire pixel_complete_carry__0_i_6_n_3;
  wire pixel_complete_carry__0_i_7_n_0;
  wire pixel_complete_carry__0_i_8_n_0;
  wire pixel_complete_carry__0_i_9_n_0;
  wire pixel_complete_carry__1_i_10_n_0;
  wire pixel_complete_carry__1_i_11_n_0;
  wire pixel_complete_carry__1_i_12_n_0;
  wire pixel_complete_carry__1_i_13_n_0;
  wire pixel_complete_carry__1_i_14_n_0;
  wire pixel_complete_carry__1_i_15_n_0;
  wire pixel_complete_carry__1_i_16_n_0;
  wire pixel_complete_carry__1_i_17_n_0;
  wire pixel_complete_carry__1_i_4_n_2;
  wire pixel_complete_carry__1_i_4_n_3;
  wire pixel_complete_carry__1_i_5_n_0;
  wire pixel_complete_carry__1_i_5_n_1;
  wire pixel_complete_carry__1_i_5_n_2;
  wire pixel_complete_carry__1_i_5_n_3;
  wire pixel_complete_carry__1_i_6_n_0;
  wire pixel_complete_carry__1_i_6_n_1;
  wire pixel_complete_carry__1_i_6_n_2;
  wire pixel_complete_carry__1_i_6_n_3;
  wire pixel_complete_carry__1_i_7_n_0;
  wire pixel_complete_carry__1_i_8_n_0;
  wire pixel_complete_carry__1_i_9_n_0;
  wire pixel_complete_carry_i_10_n_0;
  wire pixel_complete_carry_i_11_n_0;
  wire pixel_complete_carry_i_12_n_0;
  wire pixel_complete_carry_i_13_n_0;
  wire pixel_complete_carry_i_14_n_0;
  wire pixel_complete_carry_i_15_n_0;
  wire pixel_complete_carry_i_16_n_0;
  wire pixel_complete_carry_i_17_n_0;
  wire pixel_complete_carry_i_18_n_0;
  wire pixel_complete_carry_i_19_n_0;
  wire pixel_complete_carry_i_5_n_0;
  wire pixel_complete_carry_i_5_n_1;
  wire pixel_complete_carry_i_5_n_2;
  wire pixel_complete_carry_i_5_n_3;
  wire pixel_complete_carry_i_6_n_0;
  wire pixel_complete_carry_i_6_n_1;
  wire pixel_complete_carry_i_6_n_2;
  wire pixel_complete_carry_i_6_n_3;
  wire pixel_complete_carry_i_7_n_0;
  wire pixel_complete_carry_i_7_n_1;
  wire pixel_complete_carry_i_7_n_2;
  wire pixel_complete_carry_i_7_n_3;
  wire pixel_complete_carry_i_8_n_0;
  wire pixel_complete_carry_i_9_n_0;
  wire [7:0]pixel_complete_dbg;
  wire [2:0]\pixel_counter_r_reg[30] ;
  wire [31:0]pulses_per_pixel;
  wire [22:0]\pulses_per_pixel[24] ;
  wire refclk_out;
  wire refclk_out_delayed;
  wire \return_counter_r_reg[10] ;
  wire \return_counter_r_reg[10]_0 ;
  wire \return_counter_r_reg[18] ;
  wire \return_counter_r_reg[21] ;
  wire \return_counter_r_reg[26] ;
  wire \return_counter_r_reg[29] ;
  wire \return_counter_r_reg[2] ;
  wire [1:0]shift_counter_r;
  wire stop_out;
  wire \NLW_DELAY_CHAIN[0].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ;
  wire [4:0]\NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED ;
  wire [3:2]NLW_pixel_complete_carry__1_i_4_CO_UNCONNECTED;
  wire [3:3]NLW_pixel_complete_carry__1_i_4_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(CNTVALUEOUT_dbg),
        .DATAIN(refclk_out),
        .DATAOUT(delayed_signals[0]),
        .IDATAIN(\NLW_DELAY_CHAIN[0].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  LUT6 #(
    .INIT(64'hFFFFABFB00000000)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_1 
       (.I0(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0 ),
        .I1(\return_counter_r_reg[10] ),
        .I2(Q[1]),
        .I3(CO),
        .I4(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0 ),
        .I5(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_8_n_0 ),
        .O(CNTVALUEIN[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_10 
       (.I0(m_rdata[7]),
        .I1(m_rdata[17]),
        .I2(shift_counter_r[0]),
        .I3(m_rdata[2]),
        .I4(shift_counter_r[1]),
        .I5(m_rdata[12]),
        .O(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_11 
       (.I0(m_rdata[6]),
        .I1(m_rdata[16]),
        .I2(shift_counter_r[0]),
        .I3(m_rdata[1]),
        .I4(shift_counter_r[1]),
        .I5(m_rdata[11]),
        .O(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_12 
       (.I0(m_rdata[5]),
        .I1(m_rdata[15]),
        .I2(shift_counter_r[0]),
        .I3(m_rdata[0]),
        .I4(shift_counter_r[1]),
        .I5(m_rdata[10]),
        .O(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABFB00000000)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_2 
       (.I0(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0 ),
        .I1(\return_counter_r_reg[10] ),
        .I2(Q[1]),
        .I3(CO),
        .I4(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0 ),
        .I5(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_9_n_0 ),
        .O(CNTVALUEIN[3]));
  LUT6 #(
    .INIT(64'hFFFFABFB00000000)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_3 
       (.I0(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0 ),
        .I1(\return_counter_r_reg[10] ),
        .I2(Q[1]),
        .I3(CO),
        .I4(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0 ),
        .I5(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_10_n_0 ),
        .O(CNTVALUEIN[2]));
  LUT6 #(
    .INIT(64'hFFFFABFB00000000)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_4 
       (.I0(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0 ),
        .I1(\return_counter_r_reg[10] ),
        .I2(Q[1]),
        .I3(CO),
        .I4(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0 ),
        .I5(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_11_n_0 ),
        .O(CNTVALUEIN[1]));
  LUT6 #(
    .INIT(64'hFFFFABFB00000000)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_5 
       (.I0(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0 ),
        .I1(\return_counter_r_reg[10] ),
        .I2(Q[1]),
        .I3(CO),
        .I4(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0 ),
        .I5(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_12_n_0 ),
        .O(CNTVALUEIN[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFABF)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6 
       (.I0(Q[2]),
        .I1(\DELAY_CHAIN[0].IDELAYE2_inst_i_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7 
       (.I0(Q[1]),
        .I1(\line_counter_r_reg[20] ),
        .I2(\line_counter_r_reg[4] ),
        .O(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_8 
       (.I0(m_rdata[9]),
        .I1(m_rdata[19]),
        .I2(shift_counter_r[0]),
        .I3(m_rdata[4]),
        .I4(shift_counter_r[1]),
        .I5(m_rdata[14]),
        .O(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DELAY_CHAIN[0].IDELAYE2_inst_i_i_9 
       (.I0(m_rdata[8]),
        .I1(m_rdata[18]),
        .I2(shift_counter_r[0]),
        .I3(m_rdata[3]),
        .I4(shift_counter_r[1]),
        .I5(m_rdata[13]),
        .O(\DELAY_CHAIN[0].IDELAYE2_inst_i_i_9_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[1].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[0]),
        .DATAOUT(delayed_signals[1]),
        .IDATAIN(\NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[2].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[1]),
        .DATAOUT(delayed_signals[2]),
        .IDATAIN(\NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[3].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[2]),
        .DATAOUT(delayed_signals[3]),
        .IDATAIN(\NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[4].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[3]),
        .DATAOUT(delayed_signals[4]),
        .IDATAIN(\NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[5].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[4]),
        .DATAOUT(delayed_signals[5]),
        .IDATAIN(\NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[6].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[5]),
        .DATAOUT(delayed_signals[6]),
        .IDATAIN(\NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[7].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[6]),
        .DATAOUT(delayed_signals[7]),
        .IDATAIN(\NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[8].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[7]),
        .DATAOUT(delayed_signals[8]),
        .IDATAIN(\NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("DATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \DELAY_CHAIN[9].IDELAYE2_inst_i 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(\NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(delayed_signals[8]),
        .DATAOUT(refclk_out_delayed),
        .IDATAIN(\NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_IDATAIN_UNCONNECTED ),
        .INC(1'b0),
        .LD(LD_r),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_10
       (.I0(frame_clk_r_i_5_0[18]),
        .I1(frame_clk_r_i_5_0[19]),
        .O(frame_clk_r_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    frame_clk_r_i_11
       (.I0(frame_clk_r_i_5_0[29]),
        .I1(frame_clk_r_i_5_0[28]),
        .I2(frame_clk_r_i_5_0[31]),
        .I3(frame_clk_r_i_5_0[30]),
        .O(frame_clk_r_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    frame_clk_r_i_12
       (.I0(frame_clk_r_i_5_0[25]),
        .I1(frame_clk_r_i_5_0[24]),
        .I2(frame_clk_r_i_5_0[27]),
        .I3(frame_clk_r_i_5_0[26]),
        .O(frame_clk_r_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_13
       (.I0(frame_clk_r_i_5_0[4]),
        .I1(frame_clk_r_i_5_0[5]),
        .O(frame_clk_r_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_14
       (.I0(frame_clk_r_i_5_0[6]),
        .I1(frame_clk_r_i_5_0[7]),
        .O(frame_clk_r_i_14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_15
       (.I0(frame_clk_r_i_5_0[0]),
        .I1(frame_clk_r_i_5_0[1]),
        .O(frame_clk_r_i_15_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_16
       (.I0(frame_clk_r_i_5_0[2]),
        .I1(frame_clk_r_i_5_0[3]),
        .O(frame_clk_r_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    frame_clk_r_i_17
       (.I0(frame_clk_r_i_5_0[13]),
        .I1(frame_clk_r_i_5_0[12]),
        .I2(frame_clk_r_i_5_0[15]),
        .I3(frame_clk_r_i_5_0[14]),
        .O(frame_clk_r_i_17_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    frame_clk_r_i_18
       (.I0(frame_clk_r_i_5_0[9]),
        .I1(frame_clk_r_i_5_0[8]),
        .I2(frame_clk_r_i_5_0[11]),
        .I3(frame_clk_r_i_5_0[10]),
        .O(frame_clk_r_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    frame_clk_r_i_5
       (.I0(frame_clk_r_i_7_n_0),
        .I1(frame_clk_r_i_8_n_0),
        .I2(frame_clk_r_i_9_n_0),
        .I3(frame_clk_r_i_10_n_0),
        .I4(frame_clk_r_i_11_n_0),
        .I5(frame_clk_r_i_12_n_0),
        .O(\line_counter_r_reg[20] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    frame_clk_r_i_6
       (.I0(frame_clk_r_i_13_n_0),
        .I1(frame_clk_r_i_14_n_0),
        .I2(frame_clk_r_i_15_n_0),
        .I3(frame_clk_r_i_16_n_0),
        .I4(frame_clk_r_i_17_n_0),
        .I5(frame_clk_r_i_18_n_0),
        .O(\line_counter_r_reg[4] ));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_7
       (.I0(frame_clk_r_i_5_0[20]),
        .I1(frame_clk_r_i_5_0[21]),
        .O(frame_clk_r_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_8
       (.I0(frame_clk_r_i_5_0[22]),
        .I1(frame_clk_r_i_5_0[23]),
        .O(frame_clk_r_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_clk_r_i_9
       (.I0(frame_clk_r_i_5_0[16]),
        .I1(frame_clk_r_i_5_0[17]),
        .O(frame_clk_r_i_9_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    line_clk_r_i_2
       (.I0(\return_counter_r_reg[10]_0 ),
        .I1(\return_counter_r_reg[2] ),
        .I2(\return_counter_r_reg[26] ),
        .I3(\return_counter_r_reg[18] ),
        .O(\return_counter_r_reg[10] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    line_clk_r_i_5
       (.I0(m_arvalid_n_dbg_INST_0_i_7[26]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[27]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[24]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[25]),
        .I4(\return_counter_r_reg[29] ),
        .O(\return_counter_r_reg[26] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    line_clk_r_i_6
       (.I0(m_arvalid_n_dbg_INST_0_i_7[18]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[19]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[16]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[17]),
        .I4(\return_counter_r_reg[21] ),
        .O(\return_counter_r_reg[18] ));
  LUT4 #(
    .INIT(16'h9009)) 
    line_complete0_carry__1_i_1
       (.I0(line_complete0_carry__1[6]),
        .I1(line_complete1[6]),
        .I2(line_complete0_carry__1[7]),
        .I3(line_complete1[7]),
        .O(\pixel_counter_r_reg[30] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry__1_i_2
       (.I0(line_complete1[5]),
        .I1(line_complete0_carry__1[5]),
        .I2(line_complete1[4]),
        .I3(line_complete0_carry__1[4]),
        .I4(line_complete0_carry__1[3]),
        .I5(line_complete1[3]),
        .O(\pixel_counter_r_reg[30] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry__1_i_3
       (.I0(line_complete1[2]),
        .I1(line_complete0_carry__1[2]),
        .I2(line_complete1[1]),
        .I3(line_complete0_carry__1[1]),
        .I4(line_complete0_carry__1[0]),
        .I5(line_complete1[0]),
        .O(\pixel_counter_r_reg[30] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__6_i_1
       (.I0(image_size[2]),
        .O(\image_size[31] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__6_i_2
       (.I0(image_size[1]),
        .O(\image_size[31] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__6_i_3
       (.I0(image_size[0]),
        .O(\image_size[31] [0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_arvalid_n_dbg_INST_0_i_11
       (.I0(m_arvalid_n_dbg_INST_0_i_7[21]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[20]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[23]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[22]),
        .O(\return_counter_r_reg[21] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_arvalid_n_dbg_INST_0_i_13
       (.I0(m_arvalid_n_dbg_INST_0_i_7[29]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[28]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[31]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[30]),
        .O(\return_counter_r_reg[29] ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    m_arvalid_n_dbg_INST_0_i_15
       (.I0(m_arvalid_n_dbg_INST_0_i_7[4]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[5]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[7]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[6]),
        .O(m_arvalid_n_dbg_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_arvalid_n_dbg_INST_0_i_16
       (.I0(m_arvalid_n_dbg_INST_0_i_7[13]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[12]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[15]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[14]),
        .O(m_arvalid_n_dbg_INST_0_i_16_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_arvalid_n_dbg_INST_0_i_8
       (.I0(m_arvalid_n_dbg_INST_0_i_7[2]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[3]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[0]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[1]),
        .I4(m_arvalid_n_dbg_INST_0_i_15_n_0),
        .O(\return_counter_r_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_arvalid_n_dbg_INST_0_i_9
       (.I0(m_arvalid_n_dbg_INST_0_i_7[10]),
        .I1(m_arvalid_n_dbg_INST_0_i_7[11]),
        .I2(m_arvalid_n_dbg_INST_0_i_7[8]),
        .I3(m_arvalid_n_dbg_INST_0_i_7[9]),
        .I4(m_arvalid_n_dbg_INST_0_i_16_n_0),
        .O(\return_counter_r_reg[10]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_10
       (.I0(pulses_per_pixel[17]),
        .O(pixel_complete_carry__0_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_11
       (.I0(pulses_per_pixel[16]),
        .O(pixel_complete_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_12
       (.I0(pulses_per_pixel[15]),
        .O(pixel_complete_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_13
       (.I0(pulses_per_pixel[14]),
        .O(pixel_complete_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_14
       (.I0(pulses_per_pixel[13]),
        .O(pixel_complete_carry__0_i_14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry__0_i_5
       (.CI(pixel_complete_carry__0_i_6_n_0),
        .CO({pixel_complete_carry__0_i_5_n_0,pixel_complete_carry__0_i_5_n_1,pixel_complete_carry__0_i_5_n_2,pixel_complete_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[20:17]),
        .O(\pulses_per_pixel[24] [19:16]),
        .S({pixel_complete_carry__0_i_7_n_0,pixel_complete_carry__0_i_8_n_0,pixel_complete_carry__0_i_9_n_0,pixel_complete_carry__0_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry__0_i_6
       (.CI(pixel_complete_carry_i_5_n_0),
        .CO({pixel_complete_carry__0_i_6_n_0,pixel_complete_carry__0_i_6_n_1,pixel_complete_carry__0_i_6_n_2,pixel_complete_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[16:13]),
        .O(\pulses_per_pixel[24] [15:12]),
        .S({pixel_complete_carry__0_i_11_n_0,pixel_complete_carry__0_i_12_n_0,pixel_complete_carry__0_i_13_n_0,pixel_complete_carry__0_i_14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_7
       (.I0(pulses_per_pixel[20]),
        .O(pixel_complete_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_8
       (.I0(pulses_per_pixel[19]),
        .O(pixel_complete_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__0_i_9
       (.I0(pulses_per_pixel[18]),
        .O(pixel_complete_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_complete_carry__1_i_1
       (.I0(pixel_complete_dbg[6]),
        .I1(pixel_complete0[30]),
        .I2(pixel_complete_dbg[7]),
        .I3(pixel_complete0[31]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_10
       (.I0(pulses_per_pixel[28]),
        .O(pixel_complete_carry__1_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_11
       (.I0(pulses_per_pixel[27]),
        .O(pixel_complete_carry__1_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_12
       (.I0(pulses_per_pixel[26]),
        .O(pixel_complete_carry__1_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_13
       (.I0(pulses_per_pixel[25]),
        .O(pixel_complete_carry__1_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_14
       (.I0(pulses_per_pixel[24]),
        .O(pixel_complete_carry__1_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_15
       (.I0(pulses_per_pixel[23]),
        .O(pixel_complete_carry__1_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_16
       (.I0(pulses_per_pixel[22]),
        .O(pixel_complete_carry__1_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_17
       (.I0(pulses_per_pixel[21]),
        .O(pixel_complete_carry__1_i_17_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry__1_i_2
       (.I0(pixel_complete0[29]),
        .I1(pixel_complete_dbg[5]),
        .I2(pixel_complete0[28]),
        .I3(pixel_complete_dbg[4]),
        .I4(pixel_complete_dbg[3]),
        .I5(pixel_complete0[27]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry__1_i_3
       (.I0(pixel_complete0[26]),
        .I1(pixel_complete_dbg[2]),
        .I2(pixel_complete0[25]),
        .I3(pixel_complete_dbg[1]),
        .I4(pixel_complete_dbg[0]),
        .I5(pixel_complete0[24]),
        .O(S[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry__1_i_4
       (.CI(pixel_complete_carry__1_i_5_n_0),
        .CO({NLW_pixel_complete_carry__1_i_4_CO_UNCONNECTED[3:2],pixel_complete_carry__1_i_4_n_2,pixel_complete_carry__1_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulses_per_pixel[30:29]}),
        .O({NLW_pixel_complete_carry__1_i_4_O_UNCONNECTED[3],pixel_complete0[31:29]}),
        .S({1'b0,pixel_complete_carry__1_i_7_n_0,pixel_complete_carry__1_i_8_n_0,pixel_complete_carry__1_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry__1_i_5
       (.CI(pixel_complete_carry__1_i_6_n_0),
        .CO({pixel_complete_carry__1_i_5_n_0,pixel_complete_carry__1_i_5_n_1,pixel_complete_carry__1_i_5_n_2,pixel_complete_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[28:25]),
        .O(pixel_complete0[28:25]),
        .S({pixel_complete_carry__1_i_10_n_0,pixel_complete_carry__1_i_11_n_0,pixel_complete_carry__1_i_12_n_0,pixel_complete_carry__1_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry__1_i_6
       (.CI(pixel_complete_carry__0_i_5_n_0),
        .CO({pixel_complete_carry__1_i_6_n_0,pixel_complete_carry__1_i_6_n_1,pixel_complete_carry__1_i_6_n_2,pixel_complete_carry__1_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[24:21]),
        .O({pixel_complete0[24],\pulses_per_pixel[24] [22:20]}),
        .S({pixel_complete_carry__1_i_14_n_0,pixel_complete_carry__1_i_15_n_0,pixel_complete_carry__1_i_16_n_0,pixel_complete_carry__1_i_17_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_7
       (.I0(pulses_per_pixel[31]),
        .O(pixel_complete_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_8
       (.I0(pulses_per_pixel[30]),
        .O(pixel_complete_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry__1_i_9
       (.I0(pulses_per_pixel[29]),
        .O(pixel_complete_carry__1_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_10
       (.I0(pulses_per_pixel[10]),
        .O(pixel_complete_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_11
       (.I0(pulses_per_pixel[9]),
        .O(pixel_complete_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_12
       (.I0(pulses_per_pixel[8]),
        .O(pixel_complete_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_13
       (.I0(pulses_per_pixel[7]),
        .O(pixel_complete_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_14
       (.I0(pulses_per_pixel[6]),
        .O(pixel_complete_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_15
       (.I0(pulses_per_pixel[5]),
        .O(pixel_complete_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_16
       (.I0(pulses_per_pixel[4]),
        .O(pixel_complete_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_17
       (.I0(pulses_per_pixel[3]),
        .O(pixel_complete_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_18
       (.I0(pulses_per_pixel[2]),
        .O(pixel_complete_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_19
       (.I0(pulses_per_pixel[1]),
        .O(pixel_complete_carry_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry_i_5
       (.CI(pixel_complete_carry_i_6_n_0),
        .CO({pixel_complete_carry_i_5_n_0,pixel_complete_carry_i_5_n_1,pixel_complete_carry_i_5_n_2,pixel_complete_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[12:9]),
        .O(\pulses_per_pixel[24] [11:8]),
        .S({pixel_complete_carry_i_8_n_0,pixel_complete_carry_i_9_n_0,pixel_complete_carry_i_10_n_0,pixel_complete_carry_i_11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry_i_6
       (.CI(pixel_complete_carry_i_7_n_0),
        .CO({pixel_complete_carry_i_6_n_0,pixel_complete_carry_i_6_n_1,pixel_complete_carry_i_6_n_2,pixel_complete_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[8:5]),
        .O(\pulses_per_pixel[24] [7:4]),
        .S({pixel_complete_carry_i_12_n_0,pixel_complete_carry_i_13_n_0,pixel_complete_carry_i_14_n_0,pixel_complete_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pixel_complete_carry_i_7
       (.CI(1'b0),
        .CO({pixel_complete_carry_i_7_n_0,pixel_complete_carry_i_7_n_1,pixel_complete_carry_i_7_n_2,pixel_complete_carry_i_7_n_3}),
        .CYINIT(pulses_per_pixel[0]),
        .DI(pulses_per_pixel[4:1]),
        .O(\pulses_per_pixel[24] [3:0]),
        .S({pixel_complete_carry_i_16_n_0,pixel_complete_carry_i_17_n_0,pixel_complete_carry_i_18_n_0,pixel_complete_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_8
       (.I0(pulses_per_pixel[12]),
        .O(pixel_complete_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_complete_carry_i_9
       (.I0(pulses_per_pixel[11]),
        .O(pixel_complete_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    refclk_out_INST_0
       (.I0(clk),
        .I1(Q[2]),
        .O(refclk_out));
  LUT2 #(
    .INIT(4'h8)) 
    stop_out_INST_0
       (.I0(refclk_out_delayed),
        .I1(gate_stop_r),
        .O(stop_out));
endmodule

(* ORIG_REF_NAME = "laser_signal_generator" *) 
module laser_laser_signal_generat_0_0_laser_signal_generator
   (warmup_pulse_counter_dbg,
    refclk_out,
    start_frame_r_reg_0,
    CNTVALUEOUT_dbg,
    m_arvalid_r_dbg,
    m_arvalid_n_dbg,
    m_araddr,
    pixel_complete_dbg,
    line_complete_dbg,
    state_dbg,
    stop_out,
    frame_clk_r,
    line_clk_r,
    pixel_clk_r,
    m_rready,
    clk,
    m_arready,
    pulses_per_pixel,
    image_size,
    m_rdata,
    en,
    aresetn);
  output [3:0]warmup_pulse_counter_dbg;
  output refclk_out;
  output start_frame_r_reg_0;
  output [4:0]CNTVALUEOUT_dbg;
  output m_arvalid_r_dbg;
  output m_arvalid_n_dbg;
  output [15:0]m_araddr;
  output pixel_complete_dbg;
  output line_complete_dbg;
  output [2:0]state_dbg;
  output stop_out;
  output frame_clk_r;
  output line_clk_r;
  output pixel_clk_r;
  output m_rready;
  input clk;
  input m_arready;
  input [31:0]pulses_per_pixel;
  input [31:0]image_size;
  input [19:0]m_rdata;
  input en;
  input aresetn;

  wire [4:0]CNTVALUEOUT_dbg;
  wire DelayChain_inst_n_1;
  wire DelayChain_inst_n_2;
  wire DelayChain_inst_n_27;
  wire DelayChain_inst_n_28;
  wire DelayChain_inst_n_29;
  wire DelayChain_inst_n_3;
  wire DelayChain_inst_n_30;
  wire DelayChain_inst_n_31;
  wire DelayChain_inst_n_32;
  wire DelayChain_inst_n_33;
  wire DelayChain_inst_n_34;
  wire DelayChain_inst_n_35;
  wire DelayChain_inst_n_36;
  wire DelayChain_inst_n_37;
  wire DelayChain_inst_n_38;
  wire DelayChain_inst_n_39;
  wire DelayChain_inst_n_40;
  wire DelayChain_inst_n_41;
  wire \FSM_sequential_state_r[0]_i_2_n_0 ;
  wire \FSM_sequential_state_r[0]_i_3_n_0 ;
  wire \FSM_sequential_state_r[2]_i_1_n_0 ;
  wire LD_r;
  wire LD_r_i_1_n_0;
  wire LD_r_i_2_n_0;
  wire aresetn;
  wire clk;
  wire [31:0]clk_counter_n;
  wire clk_counter_n0_carry__0_n_0;
  wire clk_counter_n0_carry__0_n_1;
  wire clk_counter_n0_carry__0_n_2;
  wire clk_counter_n0_carry__0_n_3;
  wire clk_counter_n0_carry__1_n_0;
  wire clk_counter_n0_carry__1_n_1;
  wire clk_counter_n0_carry__1_n_2;
  wire clk_counter_n0_carry__1_n_3;
  wire clk_counter_n0_carry__2_n_0;
  wire clk_counter_n0_carry__2_n_1;
  wire clk_counter_n0_carry__2_n_2;
  wire clk_counter_n0_carry__2_n_3;
  wire clk_counter_n0_carry__3_n_0;
  wire clk_counter_n0_carry__3_n_1;
  wire clk_counter_n0_carry__3_n_2;
  wire clk_counter_n0_carry__3_n_3;
  wire clk_counter_n0_carry__4_n_0;
  wire clk_counter_n0_carry__4_n_1;
  wire clk_counter_n0_carry__4_n_2;
  wire clk_counter_n0_carry__4_n_3;
  wire clk_counter_n0_carry__5_n_0;
  wire clk_counter_n0_carry__5_n_1;
  wire clk_counter_n0_carry__5_n_2;
  wire clk_counter_n0_carry__5_n_3;
  wire clk_counter_n0_carry__6_n_2;
  wire clk_counter_n0_carry__6_n_3;
  wire clk_counter_n0_carry_n_0;
  wire clk_counter_n0_carry_n_1;
  wire clk_counter_n0_carry_n_2;
  wire clk_counter_n0_carry_n_3;
  wire clk_counter_n_1;
  wire [31:0]clk_counter_r;
  wire en;
  wire frame_clk_r;
  wire frame_clk_r_i_1_n_0;
  wire frame_clk_r_i_2_n_0;
  wire frame_clk_r_i_3_n_0;
  wire frame_clk_r_i_4_n_0;
  wire gate_stop_r;
  wire gate_stop_r_i_1_n_0;
  wire gate_stop_r_i_2_n_0;
  wire [31:0]image_size;
  wire [31:1]in22;
  wire line_clk_r;
  wire line_clk_r_i_1_n_0;
  wire line_clk_r_i_3_n_0;
  wire line_clk_r_i_4_n_0;
  wire line_clk_r_i_7_n_0;
  wire line_complete0;
  wire line_complete0_carry__0_i_1_n_0;
  wire line_complete0_carry__0_i_2_n_0;
  wire line_complete0_carry__0_i_3_n_0;
  wire line_complete0_carry__0_i_4_n_0;
  wire line_complete0_carry__0_n_0;
  wire line_complete0_carry__0_n_1;
  wire line_complete0_carry__0_n_2;
  wire line_complete0_carry__0_n_3;
  wire line_complete0_carry__1_n_2;
  wire line_complete0_carry__1_n_3;
  wire line_complete0_carry_i_1_n_0;
  wire line_complete0_carry_i_2_n_0;
  wire line_complete0_carry_i_3_n_0;
  wire line_complete0_carry_i_4_n_0;
  wire line_complete0_carry_n_0;
  wire line_complete0_carry_n_1;
  wire line_complete0_carry_n_2;
  wire line_complete0_carry_n_3;
  wire [31:1]line_complete1;
  wire line_complete1_carry__0_i_1_n_0;
  wire line_complete1_carry__0_i_2_n_0;
  wire line_complete1_carry__0_i_3_n_0;
  wire line_complete1_carry__0_i_4_n_0;
  wire line_complete1_carry__0_n_0;
  wire line_complete1_carry__0_n_1;
  wire line_complete1_carry__0_n_2;
  wire line_complete1_carry__0_n_3;
  wire line_complete1_carry__1_i_1_n_0;
  wire line_complete1_carry__1_i_2_n_0;
  wire line_complete1_carry__1_i_3_n_0;
  wire line_complete1_carry__1_i_4_n_0;
  wire line_complete1_carry__1_n_0;
  wire line_complete1_carry__1_n_1;
  wire line_complete1_carry__1_n_2;
  wire line_complete1_carry__1_n_3;
  wire line_complete1_carry__2_i_1_n_0;
  wire line_complete1_carry__2_i_2_n_0;
  wire line_complete1_carry__2_i_3_n_0;
  wire line_complete1_carry__2_i_4_n_0;
  wire line_complete1_carry__2_n_0;
  wire line_complete1_carry__2_n_1;
  wire line_complete1_carry__2_n_2;
  wire line_complete1_carry__2_n_3;
  wire line_complete1_carry__3_i_1_n_0;
  wire line_complete1_carry__3_i_2_n_0;
  wire line_complete1_carry__3_i_3_n_0;
  wire line_complete1_carry__3_i_4_n_0;
  wire line_complete1_carry__3_n_0;
  wire line_complete1_carry__3_n_1;
  wire line_complete1_carry__3_n_2;
  wire line_complete1_carry__3_n_3;
  wire line_complete1_carry__4_i_1_n_0;
  wire line_complete1_carry__4_i_2_n_0;
  wire line_complete1_carry__4_i_3_n_0;
  wire line_complete1_carry__4_i_4_n_0;
  wire line_complete1_carry__4_n_0;
  wire line_complete1_carry__4_n_1;
  wire line_complete1_carry__4_n_2;
  wire line_complete1_carry__4_n_3;
  wire line_complete1_carry__5_i_1_n_0;
  wire line_complete1_carry__5_i_2_n_0;
  wire line_complete1_carry__5_i_3_n_0;
  wire line_complete1_carry__5_i_4_n_0;
  wire line_complete1_carry__5_n_0;
  wire line_complete1_carry__5_n_1;
  wire line_complete1_carry__5_n_2;
  wire line_complete1_carry__5_n_3;
  wire line_complete1_carry__6_n_2;
  wire line_complete1_carry__6_n_3;
  wire line_complete1_carry_i_1_n_0;
  wire line_complete1_carry_i_2_n_0;
  wire line_complete1_carry_i_3_n_0;
  wire line_complete1_carry_i_4_n_0;
  wire line_complete1_carry_n_0;
  wire line_complete1_carry_n_1;
  wire line_complete1_carry_n_2;
  wire line_complete1_carry_n_3;
  wire line_complete_dbg;
  wire [31:0]line_counter_n;
  wire [31:1]line_counter_n0;
  wire line_counter_n1;
  wire line_counter_n1_carry__0_i_1_n_0;
  wire line_counter_n1_carry__0_i_2_n_0;
  wire line_counter_n1_carry__0_i_3_n_0;
  wire line_counter_n1_carry__0_i_4_n_0;
  wire line_counter_n1_carry__0_i_5_n_0;
  wire line_counter_n1_carry__0_i_6_n_0;
  wire line_counter_n1_carry__0_i_7_n_0;
  wire line_counter_n1_carry__0_i_8_n_0;
  wire line_counter_n1_carry__0_n_0;
  wire line_counter_n1_carry__0_n_1;
  wire line_counter_n1_carry__0_n_2;
  wire line_counter_n1_carry__0_n_3;
  wire line_counter_n1_carry__1_i_1_n_0;
  wire line_counter_n1_carry__1_i_2_n_0;
  wire line_counter_n1_carry__1_i_3_n_0;
  wire line_counter_n1_carry__1_i_4_n_0;
  wire line_counter_n1_carry__1_i_5_n_0;
  wire line_counter_n1_carry__1_i_6_n_0;
  wire line_counter_n1_carry__1_i_7_n_0;
  wire line_counter_n1_carry__1_i_8_n_0;
  wire line_counter_n1_carry__1_n_0;
  wire line_counter_n1_carry__1_n_1;
  wire line_counter_n1_carry__1_n_2;
  wire line_counter_n1_carry__1_n_3;
  wire line_counter_n1_carry__2_i_1_n_0;
  wire line_counter_n1_carry__2_i_2_n_0;
  wire line_counter_n1_carry__2_i_3_n_0;
  wire line_counter_n1_carry__2_i_4_n_0;
  wire line_counter_n1_carry__2_i_5_n_0;
  wire line_counter_n1_carry__2_i_6_n_0;
  wire line_counter_n1_carry__2_i_7_n_0;
  wire line_counter_n1_carry__2_i_8_n_0;
  wire line_counter_n1_carry__2_n_1;
  wire line_counter_n1_carry__2_n_2;
  wire line_counter_n1_carry__2_n_3;
  wire line_counter_n1_carry_i_1_n_0;
  wire line_counter_n1_carry_i_2_n_0;
  wire line_counter_n1_carry_i_3_n_0;
  wire line_counter_n1_carry_i_4_n_0;
  wire line_counter_n1_carry_i_5_n_0;
  wire line_counter_n1_carry_i_6_n_0;
  wire line_counter_n1_carry_i_7_n_0;
  wire line_counter_n1_carry_i_8_n_0;
  wire line_counter_n1_carry_n_0;
  wire line_counter_n1_carry_n_1;
  wire line_counter_n1_carry_n_2;
  wire line_counter_n1_carry_n_3;
  wire line_counter_n_2;
  wire [31:0]line_counter_r;
  wire \line_counter_r_reg[12]_i_2_n_0 ;
  wire \line_counter_r_reg[12]_i_2_n_1 ;
  wire \line_counter_r_reg[12]_i_2_n_2 ;
  wire \line_counter_r_reg[12]_i_2_n_3 ;
  wire \line_counter_r_reg[16]_i_2_n_0 ;
  wire \line_counter_r_reg[16]_i_2_n_1 ;
  wire \line_counter_r_reg[16]_i_2_n_2 ;
  wire \line_counter_r_reg[16]_i_2_n_3 ;
  wire \line_counter_r_reg[20]_i_2_n_0 ;
  wire \line_counter_r_reg[20]_i_2_n_1 ;
  wire \line_counter_r_reg[20]_i_2_n_2 ;
  wire \line_counter_r_reg[20]_i_2_n_3 ;
  wire \line_counter_r_reg[24]_i_2_n_0 ;
  wire \line_counter_r_reg[24]_i_2_n_1 ;
  wire \line_counter_r_reg[24]_i_2_n_2 ;
  wire \line_counter_r_reg[24]_i_2_n_3 ;
  wire \line_counter_r_reg[28]_i_2_n_0 ;
  wire \line_counter_r_reg[28]_i_2_n_1 ;
  wire \line_counter_r_reg[28]_i_2_n_2 ;
  wire \line_counter_r_reg[28]_i_2_n_3 ;
  wire \line_counter_r_reg[31]_i_3_n_2 ;
  wire \line_counter_r_reg[31]_i_3_n_3 ;
  wire \line_counter_r_reg[4]_i_2_n_0 ;
  wire \line_counter_r_reg[4]_i_2_n_1 ;
  wire \line_counter_r_reg[4]_i_2_n_2 ;
  wire \line_counter_r_reg[4]_i_2_n_3 ;
  wire \line_counter_r_reg[8]_i_2_n_0 ;
  wire \line_counter_r_reg[8]_i_2_n_1 ;
  wire \line_counter_r_reg[8]_i_2_n_2 ;
  wire \line_counter_r_reg[8]_i_2_n_3 ;
  wire [15:0]m_araddr;
  wire \m_araddr_r[17]_i_1_n_0 ;
  wire \m_araddr_r[17]_i_3_n_0 ;
  wire \m_araddr_r[5]_i_2_n_0 ;
  wire \m_araddr_r_reg[13]_i_1_n_0 ;
  wire \m_araddr_r_reg[13]_i_1_n_1 ;
  wire \m_araddr_r_reg[13]_i_1_n_2 ;
  wire \m_araddr_r_reg[13]_i_1_n_3 ;
  wire \m_araddr_r_reg[13]_i_1_n_4 ;
  wire \m_araddr_r_reg[13]_i_1_n_5 ;
  wire \m_araddr_r_reg[13]_i_1_n_6 ;
  wire \m_araddr_r_reg[13]_i_1_n_7 ;
  wire \m_araddr_r_reg[17]_i_2_n_1 ;
  wire \m_araddr_r_reg[17]_i_2_n_2 ;
  wire \m_araddr_r_reg[17]_i_2_n_3 ;
  wire \m_araddr_r_reg[17]_i_2_n_4 ;
  wire \m_araddr_r_reg[17]_i_2_n_5 ;
  wire \m_araddr_r_reg[17]_i_2_n_6 ;
  wire \m_araddr_r_reg[17]_i_2_n_7 ;
  wire \m_araddr_r_reg[5]_i_1_n_0 ;
  wire \m_araddr_r_reg[5]_i_1_n_1 ;
  wire \m_araddr_r_reg[5]_i_1_n_2 ;
  wire \m_araddr_r_reg[5]_i_1_n_3 ;
  wire \m_araddr_r_reg[5]_i_1_n_4 ;
  wire \m_araddr_r_reg[5]_i_1_n_5 ;
  wire \m_araddr_r_reg[5]_i_1_n_6 ;
  wire \m_araddr_r_reg[5]_i_1_n_7 ;
  wire \m_araddr_r_reg[9]_i_1_n_0 ;
  wire \m_araddr_r_reg[9]_i_1_n_1 ;
  wire \m_araddr_r_reg[9]_i_1_n_2 ;
  wire \m_araddr_r_reg[9]_i_1_n_3 ;
  wire \m_araddr_r_reg[9]_i_1_n_4 ;
  wire \m_araddr_r_reg[9]_i_1_n_5 ;
  wire \m_araddr_r_reg[9]_i_1_n_6 ;
  wire \m_araddr_r_reg[9]_i_1_n_7 ;
  wire m_arready;
  wire m_arvalid_n_dbg;
  wire m_arvalid_n_dbg_INST_0_i_10_n_0;
  wire m_arvalid_n_dbg_INST_0_i_12_n_0;
  wire m_arvalid_n_dbg_INST_0_i_14_n_0;
  wire m_arvalid_n_dbg_INST_0_i_1_n_0;
  wire m_arvalid_n_dbg_INST_0_i_2_n_0;
  wire m_arvalid_n_dbg_INST_0_i_3_n_0;
  wire m_arvalid_n_dbg_INST_0_i_4_n_0;
  wire m_arvalid_n_dbg_INST_0_i_5_n_0;
  wire m_arvalid_n_dbg_INST_0_i_6_n_0;
  wire m_arvalid_n_dbg_INST_0_i_7_n_0;
  wire m_arvalid_r_dbg;
  wire [19:0]m_rdata;
  wire m_rready;
  wire m_rready_r_i_1_n_0;
  wire m_rready_r_i_2_n_0;
  wire m_rready_r_i_3_n_0;
  wire m_rready_r_i_4_n_0;
  wire m_rready_r_i_5_n_0;
  wire m_rready_r_i_6_n_0;
  wire [1:0]p_0_in;
  wire [31:1]p_0_in__0;
  wire pixel_clk_r;
  wire pixel_clk_r_i_1_n_0;
  wire pixel_clk_r_i_2_n_0;
  wire pixel_clk_r_i_3_n_0;
  wire pixel_clk_r_i_4_n_0;
  wire [23:1]pixel_complete0;
  wire pixel_complete_carry__0_i_1_n_0;
  wire pixel_complete_carry__0_i_2_n_0;
  wire pixel_complete_carry__0_i_3_n_0;
  wire pixel_complete_carry__0_i_4_n_0;
  wire pixel_complete_carry__0_n_0;
  wire pixel_complete_carry__0_n_1;
  wire pixel_complete_carry__0_n_2;
  wire pixel_complete_carry__0_n_3;
  wire pixel_complete_carry__1_n_2;
  wire pixel_complete_carry__1_n_3;
  wire pixel_complete_carry_i_1_n_0;
  wire pixel_complete_carry_i_2_n_0;
  wire pixel_complete_carry_i_3_n_0;
  wire pixel_complete_carry_i_4_n_0;
  wire pixel_complete_carry_n_0;
  wire pixel_complete_carry_n_1;
  wire pixel_complete_carry_n_2;
  wire pixel_complete_carry_n_3;
  wire pixel_complete_dbg;
  wire [31:0]pixel_counter_n;
  wire [31:1]pixel_counter_n0;
  wire pixel_counter_n1;
  wire pixel_counter_n1_carry__0_i_1_n_0;
  wire pixel_counter_n1_carry__0_i_2_n_0;
  wire pixel_counter_n1_carry__0_i_3_n_0;
  wire pixel_counter_n1_carry__0_i_4_n_0;
  wire pixel_counter_n1_carry__0_i_5_n_0;
  wire pixel_counter_n1_carry__0_i_6_n_0;
  wire pixel_counter_n1_carry__0_i_7_n_0;
  wire pixel_counter_n1_carry__0_i_8_n_0;
  wire pixel_counter_n1_carry__0_n_0;
  wire pixel_counter_n1_carry__0_n_1;
  wire pixel_counter_n1_carry__0_n_2;
  wire pixel_counter_n1_carry__0_n_3;
  wire pixel_counter_n1_carry__1_i_1_n_0;
  wire pixel_counter_n1_carry__1_i_2_n_0;
  wire pixel_counter_n1_carry__1_i_3_n_0;
  wire pixel_counter_n1_carry__1_i_4_n_0;
  wire pixel_counter_n1_carry__1_i_5_n_0;
  wire pixel_counter_n1_carry__1_i_6_n_0;
  wire pixel_counter_n1_carry__1_i_7_n_0;
  wire pixel_counter_n1_carry__1_i_8_n_0;
  wire pixel_counter_n1_carry__1_n_0;
  wire pixel_counter_n1_carry__1_n_1;
  wire pixel_counter_n1_carry__1_n_2;
  wire pixel_counter_n1_carry__1_n_3;
  wire pixel_counter_n1_carry__2_i_1_n_0;
  wire pixel_counter_n1_carry__2_i_2_n_0;
  wire pixel_counter_n1_carry__2_i_3_n_0;
  wire pixel_counter_n1_carry__2_i_4_n_0;
  wire pixel_counter_n1_carry__2_i_5_n_0;
  wire pixel_counter_n1_carry__2_i_6_n_0;
  wire pixel_counter_n1_carry__2_i_7_n_0;
  wire pixel_counter_n1_carry__2_i_8_n_0;
  wire pixel_counter_n1_carry__2_n_1;
  wire pixel_counter_n1_carry__2_n_2;
  wire pixel_counter_n1_carry__2_n_3;
  wire pixel_counter_n1_carry_i_1_n_0;
  wire pixel_counter_n1_carry_i_2_n_0;
  wire pixel_counter_n1_carry_i_3_n_0;
  wire pixel_counter_n1_carry_i_4_n_0;
  wire pixel_counter_n1_carry_i_5_n_0;
  wire pixel_counter_n1_carry_i_6_n_0;
  wire pixel_counter_n1_carry_i_7_n_0;
  wire pixel_counter_n1_carry_i_8_n_0;
  wire pixel_counter_n1_carry_n_0;
  wire pixel_counter_n1_carry_n_1;
  wire pixel_counter_n1_carry_n_2;
  wire pixel_counter_n1_carry_n_3;
  wire pixel_counter_n_0;
  wire [31:0]pixel_counter_r;
  wire \pixel_counter_r_reg[12]_i_2_n_0 ;
  wire \pixel_counter_r_reg[12]_i_2_n_1 ;
  wire \pixel_counter_r_reg[12]_i_2_n_2 ;
  wire \pixel_counter_r_reg[12]_i_2_n_3 ;
  wire \pixel_counter_r_reg[16]_i_2_n_0 ;
  wire \pixel_counter_r_reg[16]_i_2_n_1 ;
  wire \pixel_counter_r_reg[16]_i_2_n_2 ;
  wire \pixel_counter_r_reg[16]_i_2_n_3 ;
  wire \pixel_counter_r_reg[20]_i_2_n_0 ;
  wire \pixel_counter_r_reg[20]_i_2_n_1 ;
  wire \pixel_counter_r_reg[20]_i_2_n_2 ;
  wire \pixel_counter_r_reg[20]_i_2_n_3 ;
  wire \pixel_counter_r_reg[24]_i_2_n_0 ;
  wire \pixel_counter_r_reg[24]_i_2_n_1 ;
  wire \pixel_counter_r_reg[24]_i_2_n_2 ;
  wire \pixel_counter_r_reg[24]_i_2_n_3 ;
  wire \pixel_counter_r_reg[28]_i_2_n_0 ;
  wire \pixel_counter_r_reg[28]_i_2_n_1 ;
  wire \pixel_counter_r_reg[28]_i_2_n_2 ;
  wire \pixel_counter_r_reg[28]_i_2_n_3 ;
  wire \pixel_counter_r_reg[31]_i_3_n_2 ;
  wire \pixel_counter_r_reg[31]_i_3_n_3 ;
  wire \pixel_counter_r_reg[4]_i_2_n_0 ;
  wire \pixel_counter_r_reg[4]_i_2_n_1 ;
  wire \pixel_counter_r_reg[4]_i_2_n_2 ;
  wire \pixel_counter_r_reg[4]_i_2_n_3 ;
  wire \pixel_counter_r_reg[8]_i_2_n_0 ;
  wire \pixel_counter_r_reg[8]_i_2_n_1 ;
  wire \pixel_counter_r_reg[8]_i_2_n_2 ;
  wire \pixel_counter_r_reg[8]_i_2_n_3 ;
  wire pixel_halftime;
  wire [30:1]pixel_halftime0;
  wire pixel_halftime_carry__0_i_10_n_0;
  wire pixel_halftime_carry__0_i_11_n_0;
  wire pixel_halftime_carry__0_i_12_n_0;
  wire pixel_halftime_carry__0_i_13_n_0;
  wire pixel_halftime_carry__0_i_14_n_0;
  wire pixel_halftime_carry__0_i_15_n_0;
  wire pixel_halftime_carry__0_i_16_n_0;
  wire pixel_halftime_carry__0_i_17_n_0;
  wire pixel_halftime_carry__0_i_18_n_0;
  wire pixel_halftime_carry__0_i_19_n_0;
  wire pixel_halftime_carry__0_i_1_n_0;
  wire pixel_halftime_carry__0_i_2_n_0;
  wire pixel_halftime_carry__0_i_3_n_0;
  wire pixel_halftime_carry__0_i_4_n_0;
  wire pixel_halftime_carry__0_i_5_n_0;
  wire pixel_halftime_carry__0_i_5_n_1;
  wire pixel_halftime_carry__0_i_5_n_2;
  wire pixel_halftime_carry__0_i_5_n_3;
  wire pixel_halftime_carry__0_i_6_n_0;
  wire pixel_halftime_carry__0_i_6_n_1;
  wire pixel_halftime_carry__0_i_6_n_2;
  wire pixel_halftime_carry__0_i_6_n_3;
  wire pixel_halftime_carry__0_i_7_n_0;
  wire pixel_halftime_carry__0_i_7_n_1;
  wire pixel_halftime_carry__0_i_7_n_2;
  wire pixel_halftime_carry__0_i_7_n_3;
  wire pixel_halftime_carry__0_i_8_n_0;
  wire pixel_halftime_carry__0_i_9_n_0;
  wire pixel_halftime_carry__0_n_0;
  wire pixel_halftime_carry__0_n_1;
  wire pixel_halftime_carry__0_n_2;
  wire pixel_halftime_carry__0_n_3;
  wire pixel_halftime_carry__1_i_10_n_0;
  wire pixel_halftime_carry__1_i_11_n_0;
  wire pixel_halftime_carry__1_i_1_n_0;
  wire pixel_halftime_carry__1_i_2_n_0;
  wire pixel_halftime_carry__1_i_3_n_0;
  wire pixel_halftime_carry__1_i_4_n_1;
  wire pixel_halftime_carry__1_i_4_n_3;
  wire pixel_halftime_carry__1_i_5_n_0;
  wire pixel_halftime_carry__1_i_5_n_1;
  wire pixel_halftime_carry__1_i_5_n_2;
  wire pixel_halftime_carry__1_i_5_n_3;
  wire pixel_halftime_carry__1_i_6_n_0;
  wire pixel_halftime_carry__1_i_7_n_0;
  wire pixel_halftime_carry__1_i_8_n_0;
  wire pixel_halftime_carry__1_i_9_n_0;
  wire pixel_halftime_carry__1_n_2;
  wire pixel_halftime_carry__1_n_3;
  wire pixel_halftime_carry_i_10_n_0;
  wire pixel_halftime_carry_i_11_n_0;
  wire pixel_halftime_carry_i_12_n_0;
  wire pixel_halftime_carry_i_13_n_0;
  wire pixel_halftime_carry_i_14_n_0;
  wire pixel_halftime_carry_i_15_n_0;
  wire pixel_halftime_carry_i_16_n_0;
  wire pixel_halftime_carry_i_17_n_0;
  wire pixel_halftime_carry_i_18_n_0;
  wire pixel_halftime_carry_i_19_n_0;
  wire pixel_halftime_carry_i_1_n_0;
  wire pixel_halftime_carry_i_2_n_0;
  wire pixel_halftime_carry_i_3_n_0;
  wire pixel_halftime_carry_i_4_n_0;
  wire pixel_halftime_carry_i_5_n_0;
  wire pixel_halftime_carry_i_5_n_1;
  wire pixel_halftime_carry_i_5_n_2;
  wire pixel_halftime_carry_i_5_n_3;
  wire pixel_halftime_carry_i_6_n_0;
  wire pixel_halftime_carry_i_6_n_1;
  wire pixel_halftime_carry_i_6_n_2;
  wire pixel_halftime_carry_i_6_n_3;
  wire pixel_halftime_carry_i_7_n_0;
  wire pixel_halftime_carry_i_7_n_1;
  wire pixel_halftime_carry_i_7_n_2;
  wire pixel_halftime_carry_i_7_n_3;
  wire pixel_halftime_carry_i_8_n_0;
  wire pixel_halftime_carry_i_9_n_0;
  wire pixel_halftime_carry_n_0;
  wire pixel_halftime_carry_n_1;
  wire pixel_halftime_carry_n_2;
  wire pixel_halftime_carry_n_3;
  wire [31:0]pulses_per_pixel;
  wire refclk_out;
  wire [31:0]return_counter_n;
  wire return_counter_n0_carry__0_n_0;
  wire return_counter_n0_carry__0_n_1;
  wire return_counter_n0_carry__0_n_2;
  wire return_counter_n0_carry__0_n_3;
  wire return_counter_n0_carry__1_n_0;
  wire return_counter_n0_carry__1_n_1;
  wire return_counter_n0_carry__1_n_2;
  wire return_counter_n0_carry__1_n_3;
  wire return_counter_n0_carry__2_n_0;
  wire return_counter_n0_carry__2_n_1;
  wire return_counter_n0_carry__2_n_2;
  wire return_counter_n0_carry__2_n_3;
  wire return_counter_n0_carry__3_n_0;
  wire return_counter_n0_carry__3_n_1;
  wire return_counter_n0_carry__3_n_2;
  wire return_counter_n0_carry__3_n_3;
  wire return_counter_n0_carry__4_n_0;
  wire return_counter_n0_carry__4_n_1;
  wire return_counter_n0_carry__4_n_2;
  wire return_counter_n0_carry__4_n_3;
  wire return_counter_n0_carry__5_n_0;
  wire return_counter_n0_carry__5_n_1;
  wire return_counter_n0_carry__5_n_2;
  wire return_counter_n0_carry__5_n_3;
  wire return_counter_n0_carry__6_n_2;
  wire return_counter_n0_carry__6_n_3;
  wire return_counter_n0_carry_n_0;
  wire return_counter_n0_carry_n_1;
  wire return_counter_n0_carry_n_2;
  wire return_counter_n0_carry_n_3;
  wire return_counter_n_3;
  wire [31:0]return_counter_r;
  wire [1:0]shift_counter_r;
  wire \shift_counter_r[0]_i_1_n_0 ;
  wire \shift_counter_r[1]_i_1_n_0 ;
  wire start_frame_r_i_1_n_0;
  wire start_frame_r_reg_0;
  wire [2:0]state_dbg;
  wire [1:0]state_n__0;
  wire [2:0]state_r;
  wire stop_out;
  wire [3:0]warmup_pulse_counter_dbg;
  wire warmup_pulse_counter_n;
  wire \warmup_pulse_counter_r[2]_i_1_n_0 ;
  wire \warmup_pulse_counter_r[3]_i_2_n_0 ;
  wire [3:2]NLW_clk_counter_n0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_clk_counter_n0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_line_complete0_carry_O_UNCONNECTED;
  wire [3:0]NLW_line_complete0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_line_complete0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_line_complete0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_line_complete1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_line_complete1_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_line_counter_n1_carry_O_UNCONNECTED;
  wire [3:0]NLW_line_counter_n1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_line_counter_n1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_line_counter_n1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_line_counter_r_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_counter_r_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_m_araddr_r_reg[17]_i_2_CO_UNCONNECTED ;
  wire [3:0]NLW_pixel_complete_carry_O_UNCONNECTED;
  wire [3:0]NLW_pixel_complete_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_pixel_complete_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_pixel_complete_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_pixel_counter_n1_carry_O_UNCONNECTED;
  wire [3:0]NLW_pixel_counter_n1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pixel_counter_n1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_pixel_counter_n1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_pixel_counter_r_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_pixel_counter_r_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_pixel_halftime_carry_O_UNCONNECTED;
  wire [3:0]NLW_pixel_halftime_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_pixel_halftime_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_pixel_halftime_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_pixel_halftime_carry__1_i_4_CO_UNCONNECTED;
  wire [3:2]NLW_pixel_halftime_carry__1_i_4_O_UNCONNECTED;
  wire [3:2]NLW_return_counter_n0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_return_counter_n0_carry__6_O_UNCONNECTED;

  laser_laser_signal_generat_0_0_DelayChain DelayChain_inst
       (.CNTVALUEOUT_dbg(CNTVALUEOUT_dbg),
        .CO(pixel_complete_dbg),
        .\DELAY_CHAIN[0].IDELAYE2_inst_i_0 (line_complete0),
        .LD_r(LD_r),
        .Q(state_r),
        .S({DelayChain_inst_n_1,DelayChain_inst_n_2,DelayChain_inst_n_3}),
        .clk(clk),
        .frame_clk_r_i_5_0(line_counter_r),
        .gate_stop_r(gate_stop_r),
        .image_size(image_size[31:29]),
        .\image_size[31] ({DelayChain_inst_n_27,DelayChain_inst_n_28,DelayChain_inst_n_29}),
        .line_complete0_carry__1(pixel_counter_r[31:24]),
        .line_complete1(line_complete1[31:24]),
        .\line_counter_r_reg[20] (DelayChain_inst_n_34),
        .\line_counter_r_reg[4] (DelayChain_inst_n_35),
        .m_arvalid_n_dbg_INST_0_i_7(return_counter_r),
        .m_rdata(m_rdata),
        .pixel_complete_dbg(clk_counter_r[31:24]),
        .\pixel_counter_r_reg[30] ({DelayChain_inst_n_30,DelayChain_inst_n_31,DelayChain_inst_n_32}),
        .pulses_per_pixel(pulses_per_pixel),
        .\pulses_per_pixel[24] (pixel_complete0),
        .refclk_out(refclk_out),
        .\return_counter_r_reg[10] (DelayChain_inst_n_33),
        .\return_counter_r_reg[10]_0 (DelayChain_inst_n_36),
        .\return_counter_r_reg[18] (DelayChain_inst_n_39),
        .\return_counter_r_reg[21] (DelayChain_inst_n_41),
        .\return_counter_r_reg[26] (DelayChain_inst_n_38),
        .\return_counter_r_reg[29] (DelayChain_inst_n_40),
        .\return_counter_r_reg[2] (DelayChain_inst_n_37),
        .shift_counter_r(shift_counter_r),
        .stop_out(stop_out));
  LUT6 #(
    .INIT(64'hEEFEEEEEEEEEEEEE)) 
    \FSM_sequential_state_r[0]_i_1 
       (.I0(m_rready_r_i_3_n_0),
        .I1(\FSM_sequential_state_r[0]_i_2_n_0 ),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(state_r[0]),
        .I5(\FSM_sequential_state_r[0]_i_3_n_0 ),
        .O(state_n__0[0]));
  LUT6 #(
    .INIT(64'hFFFF00008888A000)) 
    \FSM_sequential_state_r[0]_i_2 
       (.I0(state_r[1]),
        .I1(frame_clk_r_i_4_n_0),
        .I2(pixel_complete_dbg),
        .I3(line_complete0),
        .I4(state_r[0]),
        .I5(state_r[2]),
        .O(\FSM_sequential_state_r[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_r[0]_i_3 
       (.I0(DelayChain_inst_n_35),
        .I1(DelayChain_inst_n_34),
        .O(\FSM_sequential_state_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAC0FFC0C0)) 
    \FSM_sequential_state_r[1]_i_1 
       (.I0(start_frame_r_reg_0),
        .I1(line_clk_r_i_4_n_0),
        .I2(state_r[1]),
        .I3(DelayChain_inst_n_33),
        .I4(state_r[0]),
        .I5(state_r[2]),
        .O(state_n__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_r[2]_i_1 
       (.I0(state_r[2]),
        .I1(start_frame_r_reg_0),
        .O(\FSM_sequential_state_r[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:100,WARMUP:011,RETURN:001,PIXEL:010,DONE:000" *) 
  FDCE \FSM_sequential_state_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(state_n__0[0]),
        .Q(state_r[0]));
  (* FSM_ENCODED_STATES = "IDLE:100,WARMUP:011,RETURN:001,PIXEL:010,DONE:000" *) 
  FDCE \FSM_sequential_state_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(state_n__0[1]),
        .Q(state_r[1]));
  (* FSM_ENCODED_STATES = "IDLE:100,WARMUP:011,RETURN:001,PIXEL:010,DONE:000" *) 
  FDPE \FSM_sequential_state_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_r[2]_i_1_n_0 ),
        .PRE(frame_clk_r_i_2_n_0),
        .Q(state_r[2]));
  LUT6 #(
    .INIT(64'hFFA8FFFFFFA80000)) 
    LD_r_i_1
       (.I0(state_r[0]),
        .I1(m_arvalid_n_dbg_INST_0_i_10_n_0),
        .I2(LD_r_i_2_n_0),
        .I3(m_arvalid_n_dbg_INST_0_i_2_n_0),
        .I4(aresetn),
        .I5(LD_r),
        .O(LD_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    LD_r_i_2
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(DelayChain_inst_n_39),
        .I3(DelayChain_inst_n_38),
        .I4(DelayChain_inst_n_37),
        .I5(DelayChain_inst_n_36),
        .O(LD_r_i_2_n_0));
  FDRE LD_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(LD_r_i_1_n_0),
        .Q(LD_r),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry
       (.CI(1'b0),
        .CO({clk_counter_n0_carry_n_0,clk_counter_n0_carry_n_1,clk_counter_n0_carry_n_2,clk_counter_n0_carry_n_3}),
        .CYINIT(clk_counter_r[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[4:1]),
        .S(clk_counter_r[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry__0
       (.CI(clk_counter_n0_carry_n_0),
        .CO({clk_counter_n0_carry__0_n_0,clk_counter_n0_carry__0_n_1,clk_counter_n0_carry__0_n_2,clk_counter_n0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:5]),
        .S(clk_counter_r[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry__1
       (.CI(clk_counter_n0_carry__0_n_0),
        .CO({clk_counter_n0_carry__1_n_0,clk_counter_n0_carry__1_n_1,clk_counter_n0_carry__1_n_2,clk_counter_n0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[12:9]),
        .S(clk_counter_r[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry__2
       (.CI(clk_counter_n0_carry__1_n_0),
        .CO({clk_counter_n0_carry__2_n_0,clk_counter_n0_carry__2_n_1,clk_counter_n0_carry__2_n_2,clk_counter_n0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[16:13]),
        .S(clk_counter_r[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry__3
       (.CI(clk_counter_n0_carry__2_n_0),
        .CO({clk_counter_n0_carry__3_n_0,clk_counter_n0_carry__3_n_1,clk_counter_n0_carry__3_n_2,clk_counter_n0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[20:17]),
        .S(clk_counter_r[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry__4
       (.CI(clk_counter_n0_carry__3_n_0),
        .CO({clk_counter_n0_carry__4_n_0,clk_counter_n0_carry__4_n_1,clk_counter_n0_carry__4_n_2,clk_counter_n0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[24:21]),
        .S(clk_counter_r[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry__5
       (.CI(clk_counter_n0_carry__4_n_0),
        .CO({clk_counter_n0_carry__5_n_0,clk_counter_n0_carry__5_n_1,clk_counter_n0_carry__5_n_2,clk_counter_n0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[28:25]),
        .S(clk_counter_r[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter_n0_carry__6
       (.CI(clk_counter_n0_carry__5_n_0),
        .CO({NLW_clk_counter_n0_carry__6_CO_UNCONNECTED[3:2],clk_counter_n0_carry__6_n_2,clk_counter_n0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_counter_n0_carry__6_O_UNCONNECTED[3],p_0_in__0[31:29]}),
        .S({1'b0,clk_counter_r[31:29]}));
  LUT5 #(
    .INIT(32'h000011F1)) 
    \clk_counter_r[0]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(clk_counter_r[0]),
        .O(clk_counter_n[0]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[10]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[10]),
        .O(clk_counter_n[10]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[11]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[11]),
        .O(clk_counter_n[11]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[12]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[12]),
        .O(clk_counter_n[12]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[13]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[13]),
        .O(clk_counter_n[13]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[14]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[14]),
        .O(clk_counter_n[14]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[15]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[15]),
        .O(clk_counter_n[15]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[16]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[16]),
        .O(clk_counter_n[16]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[17]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[17]),
        .O(clk_counter_n[17]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[18]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[18]),
        .O(clk_counter_n[18]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[19]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[19]),
        .O(clk_counter_n[19]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[1]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[1]),
        .O(clk_counter_n[1]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[20]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[20]),
        .O(clk_counter_n[20]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[21]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[21]),
        .O(clk_counter_n[21]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[22]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[22]),
        .O(clk_counter_n[22]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[23]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[23]),
        .O(clk_counter_n[23]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[24]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[24]),
        .O(clk_counter_n[24]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[25]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[25]),
        .O(clk_counter_n[25]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[26]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[26]),
        .O(clk_counter_n[26]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[27]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[27]),
        .O(clk_counter_n[27]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[28]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[28]),
        .O(clk_counter_n[28]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[29]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[29]),
        .O(clk_counter_n[29]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[2]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[2]),
        .O(clk_counter_n[2]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[30]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[30]),
        .O(clk_counter_n[30]));
  LUT4 #(
    .INIT(16'h007A)) 
    \clk_counter_r[31]_i_1 
       (.I0(state_r[0]),
        .I1(frame_clk_r_i_4_n_0),
        .I2(state_r[1]),
        .I3(state_r[2]),
        .O(clk_counter_n_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[31]_i_2 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[31]),
        .O(clk_counter_n[31]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[3]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[3]),
        .O(clk_counter_n[3]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[4]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[4]),
        .O(clk_counter_n[4]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[5]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[5]),
        .O(clk_counter_n[5]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[6]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[6]),
        .O(clk_counter_n[6]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[7]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[7]),
        .O(clk_counter_n[7]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[8]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[8]),
        .O(clk_counter_n[8]));
  LUT5 #(
    .INIT(32'h11F10000)) 
    \clk_counter_r[9]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_complete_dbg),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[1]),
        .I4(p_0_in__0[9]),
        .O(clk_counter_n[9]));
  FDCE \clk_counter_r_reg[0] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[0]),
        .Q(clk_counter_r[0]));
  FDCE \clk_counter_r_reg[10] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[10]),
        .Q(clk_counter_r[10]));
  FDCE \clk_counter_r_reg[11] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[11]),
        .Q(clk_counter_r[11]));
  FDCE \clk_counter_r_reg[12] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[12]),
        .Q(clk_counter_r[12]));
  FDCE \clk_counter_r_reg[13] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[13]),
        .Q(clk_counter_r[13]));
  FDCE \clk_counter_r_reg[14] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[14]),
        .Q(clk_counter_r[14]));
  FDCE \clk_counter_r_reg[15] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[15]),
        .Q(clk_counter_r[15]));
  FDCE \clk_counter_r_reg[16] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[16]),
        .Q(clk_counter_r[16]));
  FDCE \clk_counter_r_reg[17] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[17]),
        .Q(clk_counter_r[17]));
  FDCE \clk_counter_r_reg[18] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[18]),
        .Q(clk_counter_r[18]));
  FDCE \clk_counter_r_reg[19] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[19]),
        .Q(clk_counter_r[19]));
  FDCE \clk_counter_r_reg[1] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[1]),
        .Q(clk_counter_r[1]));
  FDCE \clk_counter_r_reg[20] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[20]),
        .Q(clk_counter_r[20]));
  FDCE \clk_counter_r_reg[21] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[21]),
        .Q(clk_counter_r[21]));
  FDCE \clk_counter_r_reg[22] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[22]),
        .Q(clk_counter_r[22]));
  FDCE \clk_counter_r_reg[23] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[23]),
        .Q(clk_counter_r[23]));
  FDCE \clk_counter_r_reg[24] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[24]),
        .Q(clk_counter_r[24]));
  FDCE \clk_counter_r_reg[25] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[25]),
        .Q(clk_counter_r[25]));
  FDCE \clk_counter_r_reg[26] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[26]),
        .Q(clk_counter_r[26]));
  FDCE \clk_counter_r_reg[27] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[27]),
        .Q(clk_counter_r[27]));
  FDCE \clk_counter_r_reg[28] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[28]),
        .Q(clk_counter_r[28]));
  FDCE \clk_counter_r_reg[29] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[29]),
        .Q(clk_counter_r[29]));
  FDCE \clk_counter_r_reg[2] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[2]),
        .Q(clk_counter_r[2]));
  FDCE \clk_counter_r_reg[30] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[30]),
        .Q(clk_counter_r[30]));
  FDCE \clk_counter_r_reg[31] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[31]),
        .Q(clk_counter_r[31]));
  FDCE \clk_counter_r_reg[3] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[3]),
        .Q(clk_counter_r[3]));
  FDCE \clk_counter_r_reg[4] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[4]),
        .Q(clk_counter_r[4]));
  FDCE \clk_counter_r_reg[5] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[5]),
        .Q(clk_counter_r[5]));
  FDCE \clk_counter_r_reg[6] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[6]),
        .Q(clk_counter_r[6]));
  FDCE \clk_counter_r_reg[7] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[7]),
        .Q(clk_counter_r[7]));
  FDCE \clk_counter_r_reg[8] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[8]),
        .Q(clk_counter_r[8]));
  FDCE \clk_counter_r_reg[9] 
       (.C(clk),
        .CE(clk_counter_n_1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(clk_counter_n[9]),
        .Q(clk_counter_r[9]));
  LUT6 #(
    .INIT(64'h5F555F550B000A00)) 
    frame_clk_r_i_1
       (.I0(frame_clk_r_i_3_n_0),
        .I1(frame_clk_r_i_4_n_0),
        .I2(state_r[2]),
        .I3(state_r[1]),
        .I4(state_r[0]),
        .I5(frame_clk_r),
        .O(frame_clk_r_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    frame_clk_r_i_2
       (.I0(aresetn),
        .O(frame_clk_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    frame_clk_r_i_3
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(DelayChain_inst_n_34),
        .I4(DelayChain_inst_n_35),
        .O(frame_clk_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    frame_clk_r_i_4
       (.I0(warmup_pulse_counter_dbg[2]),
        .I1(warmup_pulse_counter_dbg[0]),
        .I2(warmup_pulse_counter_dbg[1]),
        .I3(warmup_pulse_counter_dbg[3]),
        .O(frame_clk_r_i_4_n_0));
  FDCE frame_clk_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(frame_clk_r_i_1_n_0),
        .Q(frame_clk_r));
  LUT6 #(
    .INIT(64'hFFEFFFAA002000AA)) 
    gate_stop_r_i_1
       (.I0(gate_stop_r_i_2_n_0),
        .I1(state_r[1]),
        .I2(DelayChain_inst_n_33),
        .I3(state_r[2]),
        .I4(state_r[0]),
        .I5(gate_stop_r),
        .O(gate_stop_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010001000110010)) 
    gate_stop_r_i_2
       (.I0(clk_counter_r[1]),
        .I1(clk_counter_r[0]),
        .I2(state_r[1]),
        .I3(state_r[2]),
        .I4(state_r[0]),
        .I5(clk_counter_r[2]),
        .O(gate_stop_r_i_2_n_0));
  FDCE gate_stop_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(gate_stop_r_i_1_n_0),
        .Q(gate_stop_r));
  LUT6 #(
    .INIT(64'hF4FFF4F4F400F4F4)) 
    line_clk_r_i_1
       (.I0(DelayChain_inst_n_33),
        .I1(state_dbg[1]),
        .I2(warmup_pulse_counter_n),
        .I3(line_clk_r_i_3_n_0),
        .I4(line_clk_r_i_4_n_0),
        .I5(line_clk_r),
        .O(line_clk_r_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    line_clk_r_i_3
       (.I0(DelayChain_inst_n_36),
        .I1(DelayChain_inst_n_37),
        .I2(DelayChain_inst_n_38),
        .I3(DelayChain_inst_n_39),
        .I4(m_arvalid_n_dbg_INST_0_i_6_n_0),
        .I5(line_clk_r_i_7_n_0),
        .O(line_clk_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    line_clk_r_i_4
       (.I0(pixel_complete_dbg),
        .I1(state_r[0]),
        .I2(state_r[2]),
        .I3(line_complete0),
        .O(line_clk_r_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0043)) 
    line_clk_r_i_7
       (.I0(frame_clk_r_i_4_n_0),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(state_r[2]),
        .O(line_clk_r_i_7_n_0));
  FDCE line_clk_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_clk_r_i_1_n_0),
        .Q(line_clk_r));
  CARRY4 line_complete0_carry
       (.CI(1'b0),
        .CO({line_complete0_carry_n_0,line_complete0_carry_n_1,line_complete0_carry_n_2,line_complete0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_line_complete0_carry_O_UNCONNECTED[3:0]),
        .S({line_complete0_carry_i_1_n_0,line_complete0_carry_i_2_n_0,line_complete0_carry_i_3_n_0,line_complete0_carry_i_4_n_0}));
  CARRY4 line_complete0_carry__0
       (.CI(line_complete0_carry_n_0),
        .CO({line_complete0_carry__0_n_0,line_complete0_carry__0_n_1,line_complete0_carry__0_n_2,line_complete0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_line_complete0_carry__0_O_UNCONNECTED[3:0]),
        .S({line_complete0_carry__0_i_1_n_0,line_complete0_carry__0_i_2_n_0,line_complete0_carry__0_i_3_n_0,line_complete0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry__0_i_1
       (.I0(line_complete1[23]),
        .I1(pixel_counter_r[23]),
        .I2(line_complete1[22]),
        .I3(pixel_counter_r[22]),
        .I4(pixel_counter_r[21]),
        .I5(line_complete1[21]),
        .O(line_complete0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry__0_i_2
       (.I0(line_complete1[20]),
        .I1(pixel_counter_r[20]),
        .I2(line_complete1[19]),
        .I3(pixel_counter_r[19]),
        .I4(pixel_counter_r[18]),
        .I5(line_complete1[18]),
        .O(line_complete0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry__0_i_3
       (.I0(line_complete1[17]),
        .I1(pixel_counter_r[17]),
        .I2(line_complete1[16]),
        .I3(pixel_counter_r[16]),
        .I4(pixel_counter_r[15]),
        .I5(line_complete1[15]),
        .O(line_complete0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry__0_i_4
       (.I0(line_complete1[14]),
        .I1(pixel_counter_r[14]),
        .I2(line_complete1[13]),
        .I3(pixel_counter_r[13]),
        .I4(pixel_counter_r[12]),
        .I5(line_complete1[12]),
        .O(line_complete0_carry__0_i_4_n_0));
  CARRY4 line_complete0_carry__1
       (.CI(line_complete0_carry__0_n_0),
        .CO({NLW_line_complete0_carry__1_CO_UNCONNECTED[3],line_complete0,line_complete0_carry__1_n_2,line_complete0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_line_complete0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,DelayChain_inst_n_30,DelayChain_inst_n_31,DelayChain_inst_n_32}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry_i_1
       (.I0(line_complete1[11]),
        .I1(pixel_counter_r[11]),
        .I2(line_complete1[10]),
        .I3(pixel_counter_r[10]),
        .I4(pixel_counter_r[9]),
        .I5(line_complete1[9]),
        .O(line_complete0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry_i_2
       (.I0(line_complete1[8]),
        .I1(pixel_counter_r[8]),
        .I2(line_complete1[7]),
        .I3(pixel_counter_r[7]),
        .I4(pixel_counter_r[6]),
        .I5(line_complete1[6]),
        .O(line_complete0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    line_complete0_carry_i_3
       (.I0(line_complete1[5]),
        .I1(pixel_counter_r[5]),
        .I2(line_complete1[4]),
        .I3(pixel_counter_r[4]),
        .I4(pixel_counter_r[3]),
        .I5(line_complete1[3]),
        .O(line_complete0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    line_complete0_carry_i_4
       (.I0(line_complete1[2]),
        .I1(pixel_counter_r[2]),
        .I2(line_complete1[1]),
        .I3(pixel_counter_r[1]),
        .I4(pixel_counter_r[0]),
        .I5(image_size[0]),
        .O(line_complete0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry
       (.CI(1'b0),
        .CO({line_complete1_carry_n_0,line_complete1_carry_n_1,line_complete1_carry_n_2,line_complete1_carry_n_3}),
        .CYINIT(image_size[0]),
        .DI(image_size[4:1]),
        .O(line_complete1[4:1]),
        .S({line_complete1_carry_i_1_n_0,line_complete1_carry_i_2_n_0,line_complete1_carry_i_3_n_0,line_complete1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry__0
       (.CI(line_complete1_carry_n_0),
        .CO({line_complete1_carry__0_n_0,line_complete1_carry__0_n_1,line_complete1_carry__0_n_2,line_complete1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(image_size[8:5]),
        .O(line_complete1[8:5]),
        .S({line_complete1_carry__0_i_1_n_0,line_complete1_carry__0_i_2_n_0,line_complete1_carry__0_i_3_n_0,line_complete1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__0_i_1
       (.I0(image_size[8]),
        .O(line_complete1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__0_i_2
       (.I0(image_size[7]),
        .O(line_complete1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__0_i_3
       (.I0(image_size[6]),
        .O(line_complete1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__0_i_4
       (.I0(image_size[5]),
        .O(line_complete1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry__1
       (.CI(line_complete1_carry__0_n_0),
        .CO({line_complete1_carry__1_n_0,line_complete1_carry__1_n_1,line_complete1_carry__1_n_2,line_complete1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(image_size[12:9]),
        .O(line_complete1[12:9]),
        .S({line_complete1_carry__1_i_1_n_0,line_complete1_carry__1_i_2_n_0,line_complete1_carry__1_i_3_n_0,line_complete1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__1_i_1
       (.I0(image_size[12]),
        .O(line_complete1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__1_i_2
       (.I0(image_size[11]),
        .O(line_complete1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__1_i_3
       (.I0(image_size[10]),
        .O(line_complete1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__1_i_4
       (.I0(image_size[9]),
        .O(line_complete1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry__2
       (.CI(line_complete1_carry__1_n_0),
        .CO({line_complete1_carry__2_n_0,line_complete1_carry__2_n_1,line_complete1_carry__2_n_2,line_complete1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(image_size[16:13]),
        .O(line_complete1[16:13]),
        .S({line_complete1_carry__2_i_1_n_0,line_complete1_carry__2_i_2_n_0,line_complete1_carry__2_i_3_n_0,line_complete1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__2_i_1
       (.I0(image_size[16]),
        .O(line_complete1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__2_i_2
       (.I0(image_size[15]),
        .O(line_complete1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__2_i_3
       (.I0(image_size[14]),
        .O(line_complete1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__2_i_4
       (.I0(image_size[13]),
        .O(line_complete1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry__3
       (.CI(line_complete1_carry__2_n_0),
        .CO({line_complete1_carry__3_n_0,line_complete1_carry__3_n_1,line_complete1_carry__3_n_2,line_complete1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(image_size[20:17]),
        .O(line_complete1[20:17]),
        .S({line_complete1_carry__3_i_1_n_0,line_complete1_carry__3_i_2_n_0,line_complete1_carry__3_i_3_n_0,line_complete1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__3_i_1
       (.I0(image_size[20]),
        .O(line_complete1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__3_i_2
       (.I0(image_size[19]),
        .O(line_complete1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__3_i_3
       (.I0(image_size[18]),
        .O(line_complete1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__3_i_4
       (.I0(image_size[17]),
        .O(line_complete1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry__4
       (.CI(line_complete1_carry__3_n_0),
        .CO({line_complete1_carry__4_n_0,line_complete1_carry__4_n_1,line_complete1_carry__4_n_2,line_complete1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(image_size[24:21]),
        .O(line_complete1[24:21]),
        .S({line_complete1_carry__4_i_1_n_0,line_complete1_carry__4_i_2_n_0,line_complete1_carry__4_i_3_n_0,line_complete1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__4_i_1
       (.I0(image_size[24]),
        .O(line_complete1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__4_i_2
       (.I0(image_size[23]),
        .O(line_complete1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__4_i_3
       (.I0(image_size[22]),
        .O(line_complete1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__4_i_4
       (.I0(image_size[21]),
        .O(line_complete1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry__5
       (.CI(line_complete1_carry__4_n_0),
        .CO({line_complete1_carry__5_n_0,line_complete1_carry__5_n_1,line_complete1_carry__5_n_2,line_complete1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(image_size[28:25]),
        .O(line_complete1[28:25]),
        .S({line_complete1_carry__5_i_1_n_0,line_complete1_carry__5_i_2_n_0,line_complete1_carry__5_i_3_n_0,line_complete1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__5_i_1
       (.I0(image_size[28]),
        .O(line_complete1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__5_i_2
       (.I0(image_size[27]),
        .O(line_complete1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__5_i_3
       (.I0(image_size[26]),
        .O(line_complete1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry__5_i_4
       (.I0(image_size[25]),
        .O(line_complete1_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_complete1_carry__6
       (.CI(line_complete1_carry__5_n_0),
        .CO({NLW_line_complete1_carry__6_CO_UNCONNECTED[3:2],line_complete1_carry__6_n_2,line_complete1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,image_size[30:29]}),
        .O({NLW_line_complete1_carry__6_O_UNCONNECTED[3],line_complete1[31:29]}),
        .S({1'b0,DelayChain_inst_n_27,DelayChain_inst_n_28,DelayChain_inst_n_29}));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry_i_1
       (.I0(image_size[4]),
        .O(line_complete1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry_i_2
       (.I0(image_size[3]),
        .O(line_complete1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry_i_3
       (.I0(image_size[2]),
        .O(line_complete1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_complete1_carry_i_4
       (.I0(image_size[1]),
        .O(line_complete1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    line_complete_dbg_INST_0
       (.I0(pixel_complete_dbg),
        .I1(line_complete0),
        .O(line_complete_dbg));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 line_counter_n1_carry
       (.CI(1'b0),
        .CO({line_counter_n1_carry_n_0,line_counter_n1_carry_n_1,line_counter_n1_carry_n_2,line_counter_n1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({line_counter_n1_carry_i_1_n_0,line_counter_n1_carry_i_2_n_0,line_counter_n1_carry_i_3_n_0,line_counter_n1_carry_i_4_n_0}),
        .O(NLW_line_counter_n1_carry_O_UNCONNECTED[3:0]),
        .S({line_counter_n1_carry_i_5_n_0,line_counter_n1_carry_i_6_n_0,line_counter_n1_carry_i_7_n_0,line_counter_n1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 line_counter_n1_carry__0
       (.CI(line_counter_n1_carry_n_0),
        .CO({line_counter_n1_carry__0_n_0,line_counter_n1_carry__0_n_1,line_counter_n1_carry__0_n_2,line_counter_n1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({line_counter_n1_carry__0_i_1_n_0,line_counter_n1_carry__0_i_2_n_0,line_counter_n1_carry__0_i_3_n_0,line_counter_n1_carry__0_i_4_n_0}),
        .O(NLW_line_counter_n1_carry__0_O_UNCONNECTED[3:0]),
        .S({line_counter_n1_carry__0_i_5_n_0,line_counter_n1_carry__0_i_6_n_0,line_counter_n1_carry__0_i_7_n_0,line_counter_n1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__0_i_1
       (.I0(line_complete1[15]),
        .I1(line_counter_r[14]),
        .I2(line_counter_r[15]),
        .I3(line_complete1[14]),
        .O(line_counter_n1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__0_i_2
       (.I0(line_complete1[13]),
        .I1(line_counter_r[12]),
        .I2(line_counter_r[13]),
        .I3(line_complete1[12]),
        .O(line_counter_n1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__0_i_3
       (.I0(line_complete1[11]),
        .I1(line_counter_r[10]),
        .I2(line_counter_r[11]),
        .I3(line_complete1[10]),
        .O(line_counter_n1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__0_i_4
       (.I0(line_complete1[9]),
        .I1(line_counter_r[8]),
        .I2(line_counter_r[9]),
        .I3(line_complete1[8]),
        .O(line_counter_n1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__0_i_5
       (.I0(line_complete1[15]),
        .I1(line_counter_r[15]),
        .I2(line_complete1[14]),
        .I3(line_counter_r[14]),
        .O(line_counter_n1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__0_i_6
       (.I0(line_complete1[13]),
        .I1(line_counter_r[13]),
        .I2(line_complete1[12]),
        .I3(line_counter_r[12]),
        .O(line_counter_n1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__0_i_7
       (.I0(line_complete1[11]),
        .I1(line_counter_r[11]),
        .I2(line_complete1[10]),
        .I3(line_counter_r[10]),
        .O(line_counter_n1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__0_i_8
       (.I0(line_complete1[9]),
        .I1(line_counter_r[9]),
        .I2(line_complete1[8]),
        .I3(line_counter_r[8]),
        .O(line_counter_n1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 line_counter_n1_carry__1
       (.CI(line_counter_n1_carry__0_n_0),
        .CO({line_counter_n1_carry__1_n_0,line_counter_n1_carry__1_n_1,line_counter_n1_carry__1_n_2,line_counter_n1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({line_counter_n1_carry__1_i_1_n_0,line_counter_n1_carry__1_i_2_n_0,line_counter_n1_carry__1_i_3_n_0,line_counter_n1_carry__1_i_4_n_0}),
        .O(NLW_line_counter_n1_carry__1_O_UNCONNECTED[3:0]),
        .S({line_counter_n1_carry__1_i_5_n_0,line_counter_n1_carry__1_i_6_n_0,line_counter_n1_carry__1_i_7_n_0,line_counter_n1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__1_i_1
       (.I0(line_complete1[23]),
        .I1(line_counter_r[22]),
        .I2(line_counter_r[23]),
        .I3(line_complete1[22]),
        .O(line_counter_n1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__1_i_2
       (.I0(line_complete1[21]),
        .I1(line_counter_r[20]),
        .I2(line_counter_r[21]),
        .I3(line_complete1[20]),
        .O(line_counter_n1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__1_i_3
       (.I0(line_complete1[19]),
        .I1(line_counter_r[18]),
        .I2(line_counter_r[19]),
        .I3(line_complete1[18]),
        .O(line_counter_n1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__1_i_4
       (.I0(line_complete1[17]),
        .I1(line_counter_r[16]),
        .I2(line_counter_r[17]),
        .I3(line_complete1[16]),
        .O(line_counter_n1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__1_i_5
       (.I0(line_complete1[23]),
        .I1(line_counter_r[23]),
        .I2(line_complete1[22]),
        .I3(line_counter_r[22]),
        .O(line_counter_n1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__1_i_6
       (.I0(line_complete1[21]),
        .I1(line_counter_r[21]),
        .I2(line_complete1[20]),
        .I3(line_counter_r[20]),
        .O(line_counter_n1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__1_i_7
       (.I0(line_complete1[19]),
        .I1(line_counter_r[19]),
        .I2(line_complete1[18]),
        .I3(line_counter_r[18]),
        .O(line_counter_n1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__1_i_8
       (.I0(line_complete1[17]),
        .I1(line_counter_r[17]),
        .I2(line_complete1[16]),
        .I3(line_counter_r[16]),
        .O(line_counter_n1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 line_counter_n1_carry__2
       (.CI(line_counter_n1_carry__1_n_0),
        .CO({line_counter_n1,line_counter_n1_carry__2_n_1,line_counter_n1_carry__2_n_2,line_counter_n1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({line_counter_n1_carry__2_i_1_n_0,line_counter_n1_carry__2_i_2_n_0,line_counter_n1_carry__2_i_3_n_0,line_counter_n1_carry__2_i_4_n_0}),
        .O(NLW_line_counter_n1_carry__2_O_UNCONNECTED[3:0]),
        .S({line_counter_n1_carry__2_i_5_n_0,line_counter_n1_carry__2_i_6_n_0,line_counter_n1_carry__2_i_7_n_0,line_counter_n1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__2_i_1
       (.I0(line_complete1[31]),
        .I1(line_counter_r[30]),
        .I2(line_counter_r[31]),
        .I3(line_complete1[30]),
        .O(line_counter_n1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__2_i_2
       (.I0(line_complete1[29]),
        .I1(line_counter_r[28]),
        .I2(line_counter_r[29]),
        .I3(line_complete1[28]),
        .O(line_counter_n1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__2_i_3
       (.I0(line_complete1[27]),
        .I1(line_counter_r[26]),
        .I2(line_counter_r[27]),
        .I3(line_complete1[26]),
        .O(line_counter_n1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry__2_i_4
       (.I0(line_complete1[25]),
        .I1(line_counter_r[24]),
        .I2(line_counter_r[25]),
        .I3(line_complete1[24]),
        .O(line_counter_n1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__2_i_5
       (.I0(line_complete1[31]),
        .I1(line_counter_r[31]),
        .I2(line_complete1[30]),
        .I3(line_counter_r[30]),
        .O(line_counter_n1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__2_i_6
       (.I0(line_complete1[29]),
        .I1(line_counter_r[29]),
        .I2(line_complete1[28]),
        .I3(line_counter_r[28]),
        .O(line_counter_n1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__2_i_7
       (.I0(line_complete1[27]),
        .I1(line_counter_r[27]),
        .I2(line_complete1[26]),
        .I3(line_counter_r[26]),
        .O(line_counter_n1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry__2_i_8
       (.I0(line_complete1[25]),
        .I1(line_counter_r[25]),
        .I2(line_complete1[24]),
        .I3(line_counter_r[24]),
        .O(line_counter_n1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry_i_1
       (.I0(line_complete1[7]),
        .I1(line_counter_r[6]),
        .I2(line_counter_r[7]),
        .I3(line_complete1[6]),
        .O(line_counter_n1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry_i_2
       (.I0(line_complete1[5]),
        .I1(line_counter_r[4]),
        .I2(line_counter_r[5]),
        .I3(line_complete1[4]),
        .O(line_counter_n1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    line_counter_n1_carry_i_3
       (.I0(line_complete1[3]),
        .I1(line_counter_r[2]),
        .I2(line_counter_r[3]),
        .I3(line_complete1[2]),
        .O(line_counter_n1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1F01)) 
    line_counter_n1_carry_i_4
       (.I0(line_counter_r[0]),
        .I1(image_size[0]),
        .I2(line_counter_r[1]),
        .I3(line_complete1[1]),
        .O(line_counter_n1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry_i_5
       (.I0(line_complete1[7]),
        .I1(line_counter_r[7]),
        .I2(line_complete1[6]),
        .I3(line_counter_r[6]),
        .O(line_counter_n1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry_i_6
       (.I0(line_complete1[5]),
        .I1(line_counter_r[5]),
        .I2(line_complete1[4]),
        .I3(line_counter_r[4]),
        .O(line_counter_n1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    line_counter_n1_carry_i_7
       (.I0(line_complete1[3]),
        .I1(line_counter_r[3]),
        .I2(line_complete1[2]),
        .I3(line_counter_r[2]),
        .O(line_counter_n1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h4812)) 
    line_counter_n1_carry_i_8
       (.I0(line_counter_r[0]),
        .I1(line_counter_r[1]),
        .I2(image_size[0]),
        .I3(line_complete1[1]),
        .O(line_counter_n1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \line_counter_r[0]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_r[0]),
        .O(line_counter_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[10]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[10]),
        .O(line_counter_n[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[11]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[11]),
        .O(line_counter_n[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[12]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[12]),
        .O(line_counter_n[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[13]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[13]),
        .O(line_counter_n[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[14]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[14]),
        .O(line_counter_n[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[15]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[15]),
        .O(line_counter_n[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[16]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[16]),
        .O(line_counter_n[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[17]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[17]),
        .O(line_counter_n[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[18]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[18]),
        .O(line_counter_n[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[19]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[19]),
        .O(line_counter_n[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[1]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[1]),
        .O(line_counter_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[20]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[20]),
        .O(line_counter_n[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[21]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[21]),
        .O(line_counter_n[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[22]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[22]),
        .O(line_counter_n[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[23]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[23]),
        .O(line_counter_n[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[24]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[24]),
        .O(line_counter_n[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[25]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[25]),
        .O(line_counter_n[25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[26]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[26]),
        .O(line_counter_n[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[27]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[27]),
        .O(line_counter_n[27]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[28]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[28]),
        .O(line_counter_n[28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[29]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[29]),
        .O(line_counter_n[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[2]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[2]),
        .O(line_counter_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[30]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[30]),
        .O(line_counter_n[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \line_counter_r[31]_i_1 
       (.I0(frame_clk_r_i_3_n_0),
        .I1(line_complete0),
        .I2(state_r[1]),
        .I3(pixel_complete_dbg),
        .I4(state_r[0]),
        .I5(state_r[2]),
        .O(line_counter_n_2));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[31]_i_2 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[31]),
        .O(line_counter_n[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[3]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[3]),
        .O(line_counter_n[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[4]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[4]),
        .O(line_counter_n[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[5]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[5]),
        .O(line_counter_n[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[6]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[6]),
        .O(line_counter_n[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[7]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[7]),
        .O(line_counter_n[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[8]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[8]),
        .O(line_counter_n[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \line_counter_r[9]_i_1 
       (.I0(line_counter_n1),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(line_counter_n0[9]),
        .O(line_counter_n[9]));
  FDCE \line_counter_r_reg[0] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[0]),
        .Q(line_counter_r[0]));
  FDCE \line_counter_r_reg[10] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[10]),
        .Q(line_counter_r[10]));
  FDCE \line_counter_r_reg[11] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[11]),
        .Q(line_counter_r[11]));
  FDCE \line_counter_r_reg[12] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[12]),
        .Q(line_counter_r[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[12]_i_2 
       (.CI(\line_counter_r_reg[8]_i_2_n_0 ),
        .CO({\line_counter_r_reg[12]_i_2_n_0 ,\line_counter_r_reg[12]_i_2_n_1 ,\line_counter_r_reg[12]_i_2_n_2 ,\line_counter_r_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_counter_n0[12:9]),
        .S(line_counter_r[12:9]));
  FDCE \line_counter_r_reg[13] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[13]),
        .Q(line_counter_r[13]));
  FDCE \line_counter_r_reg[14] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[14]),
        .Q(line_counter_r[14]));
  FDCE \line_counter_r_reg[15] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[15]),
        .Q(line_counter_r[15]));
  FDCE \line_counter_r_reg[16] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[16]),
        .Q(line_counter_r[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[16]_i_2 
       (.CI(\line_counter_r_reg[12]_i_2_n_0 ),
        .CO({\line_counter_r_reg[16]_i_2_n_0 ,\line_counter_r_reg[16]_i_2_n_1 ,\line_counter_r_reg[16]_i_2_n_2 ,\line_counter_r_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_counter_n0[16:13]),
        .S(line_counter_r[16:13]));
  FDCE \line_counter_r_reg[17] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[17]),
        .Q(line_counter_r[17]));
  FDCE \line_counter_r_reg[18] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[18]),
        .Q(line_counter_r[18]));
  FDCE \line_counter_r_reg[19] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[19]),
        .Q(line_counter_r[19]));
  FDCE \line_counter_r_reg[1] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[1]),
        .Q(line_counter_r[1]));
  FDCE \line_counter_r_reg[20] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[20]),
        .Q(line_counter_r[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[20]_i_2 
       (.CI(\line_counter_r_reg[16]_i_2_n_0 ),
        .CO({\line_counter_r_reg[20]_i_2_n_0 ,\line_counter_r_reg[20]_i_2_n_1 ,\line_counter_r_reg[20]_i_2_n_2 ,\line_counter_r_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_counter_n0[20:17]),
        .S(line_counter_r[20:17]));
  FDCE \line_counter_r_reg[21] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[21]),
        .Q(line_counter_r[21]));
  FDCE \line_counter_r_reg[22] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[22]),
        .Q(line_counter_r[22]));
  FDCE \line_counter_r_reg[23] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[23]),
        .Q(line_counter_r[23]));
  FDCE \line_counter_r_reg[24] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[24]),
        .Q(line_counter_r[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[24]_i_2 
       (.CI(\line_counter_r_reg[20]_i_2_n_0 ),
        .CO({\line_counter_r_reg[24]_i_2_n_0 ,\line_counter_r_reg[24]_i_2_n_1 ,\line_counter_r_reg[24]_i_2_n_2 ,\line_counter_r_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_counter_n0[24:21]),
        .S(line_counter_r[24:21]));
  FDCE \line_counter_r_reg[25] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[25]),
        .Q(line_counter_r[25]));
  FDCE \line_counter_r_reg[26] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[26]),
        .Q(line_counter_r[26]));
  FDCE \line_counter_r_reg[27] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[27]),
        .Q(line_counter_r[27]));
  FDCE \line_counter_r_reg[28] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[28]),
        .Q(line_counter_r[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[28]_i_2 
       (.CI(\line_counter_r_reg[24]_i_2_n_0 ),
        .CO({\line_counter_r_reg[28]_i_2_n_0 ,\line_counter_r_reg[28]_i_2_n_1 ,\line_counter_r_reg[28]_i_2_n_2 ,\line_counter_r_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_counter_n0[28:25]),
        .S(line_counter_r[28:25]));
  FDCE \line_counter_r_reg[29] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[29]),
        .Q(line_counter_r[29]));
  FDCE \line_counter_r_reg[2] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[2]),
        .Q(line_counter_r[2]));
  FDCE \line_counter_r_reg[30] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[30]),
        .Q(line_counter_r[30]));
  FDCE \line_counter_r_reg[31] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[31]),
        .Q(line_counter_r[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[31]_i_3 
       (.CI(\line_counter_r_reg[28]_i_2_n_0 ),
        .CO({\NLW_line_counter_r_reg[31]_i_3_CO_UNCONNECTED [3:2],\line_counter_r_reg[31]_i_3_n_2 ,\line_counter_r_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_line_counter_r_reg[31]_i_3_O_UNCONNECTED [3],line_counter_n0[31:29]}),
        .S({1'b0,line_counter_r[31:29]}));
  FDCE \line_counter_r_reg[3] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[3]),
        .Q(line_counter_r[3]));
  FDCE \line_counter_r_reg[4] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[4]),
        .Q(line_counter_r[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\line_counter_r_reg[4]_i_2_n_0 ,\line_counter_r_reg[4]_i_2_n_1 ,\line_counter_r_reg[4]_i_2_n_2 ,\line_counter_r_reg[4]_i_2_n_3 }),
        .CYINIT(line_counter_r[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_counter_n0[4:1]),
        .S(line_counter_r[4:1]));
  FDCE \line_counter_r_reg[5] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[5]),
        .Q(line_counter_r[5]));
  FDCE \line_counter_r_reg[6] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[6]),
        .Q(line_counter_r[6]));
  FDCE \line_counter_r_reg[7] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[7]),
        .Q(line_counter_r[7]));
  FDCE \line_counter_r_reg[8] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[8]),
        .Q(line_counter_r[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_counter_r_reg[8]_i_2 
       (.CI(\line_counter_r_reg[4]_i_2_n_0 ),
        .CO({\line_counter_r_reg[8]_i_2_n_0 ,\line_counter_r_reg[8]_i_2_n_1 ,\line_counter_r_reg[8]_i_2_n_2 ,\line_counter_r_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_counter_n0[8:5]),
        .S(line_counter_r[8:5]));
  FDCE \line_counter_r_reg[9] 
       (.C(clk),
        .CE(line_counter_n_2),
        .CLR(frame_clk_r_i_2_n_0),
        .D(line_counter_n[9]),
        .Q(line_counter_r[9]));
  LUT6 #(
    .INIT(64'hAAAA88A888888888)) 
    \m_araddr_r[17]_i_1 
       (.I0(m_arvalid_n_dbg_INST_0_i_3_n_0),
        .I1(\m_araddr_r[17]_i_3_n_0 ),
        .I2(m_arvalid_n_dbg_INST_0_i_6_n_0),
        .I3(DelayChain_inst_n_33),
        .I4(m_arvalid_n_dbg_INST_0_i_10_n_0),
        .I5(state_r[0]),
        .O(\m_araddr_r[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \m_araddr_r[17]_i_3 
       (.I0(state_r[2]),
        .I1(state_r[0]),
        .I2(pixel_complete_dbg),
        .I3(state_r[1]),
        .I4(line_complete0),
        .O(\m_araddr_r[17]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_araddr_r[5]_i_2 
       (.I0(m_araddr[0]),
        .O(\m_araddr_r[5]_i_2_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[10] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[13]_i_1_n_7 ),
        .Q(m_araddr[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[11] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[13]_i_1_n_6 ),
        .Q(m_araddr[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[12] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[13]_i_1_n_5 ),
        .Q(m_araddr[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[13] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[13]_i_1_n_4 ),
        .Q(m_araddr[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \m_araddr_r_reg[13]_i_1 
       (.CI(\m_araddr_r_reg[9]_i_1_n_0 ),
        .CO({\m_araddr_r_reg[13]_i_1_n_0 ,\m_araddr_r_reg[13]_i_1_n_1 ,\m_araddr_r_reg[13]_i_1_n_2 ,\m_araddr_r_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\m_araddr_r_reg[13]_i_1_n_4 ,\m_araddr_r_reg[13]_i_1_n_5 ,\m_araddr_r_reg[13]_i_1_n_6 ,\m_araddr_r_reg[13]_i_1_n_7 }),
        .S(m_araddr[11:8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[14] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[17]_i_2_n_7 ),
        .Q(m_araddr[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[15] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[17]_i_2_n_6 ),
        .Q(m_araddr[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[16] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[17]_i_2_n_5 ),
        .Q(m_araddr[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[17] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[17]_i_2_n_4 ),
        .Q(m_araddr[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \m_araddr_r_reg[17]_i_2 
       (.CI(\m_araddr_r_reg[13]_i_1_n_0 ),
        .CO({\NLW_m_araddr_r_reg[17]_i_2_CO_UNCONNECTED [3],\m_araddr_r_reg[17]_i_2_n_1 ,\m_araddr_r_reg[17]_i_2_n_2 ,\m_araddr_r_reg[17]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\m_araddr_r_reg[17]_i_2_n_4 ,\m_araddr_r_reg[17]_i_2_n_5 ,\m_araddr_r_reg[17]_i_2_n_6 ,\m_araddr_r_reg[17]_i_2_n_7 }),
        .S(m_araddr[15:12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[2] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[5]_i_1_n_7 ),
        .Q(m_araddr[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[3] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[5]_i_1_n_6 ),
        .Q(m_araddr[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[4] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[5]_i_1_n_5 ),
        .Q(m_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[5] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[5]_i_1_n_4 ),
        .Q(m_araddr[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \m_araddr_r_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\m_araddr_r_reg[5]_i_1_n_0 ,\m_araddr_r_reg[5]_i_1_n_1 ,\m_araddr_r_reg[5]_i_1_n_2 ,\m_araddr_r_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\m_araddr_r_reg[5]_i_1_n_4 ,\m_araddr_r_reg[5]_i_1_n_5 ,\m_araddr_r_reg[5]_i_1_n_6 ,\m_araddr_r_reg[5]_i_1_n_7 }),
        .S({m_araddr[3:1],\m_araddr_r[5]_i_2_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[6] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[9]_i_1_n_7 ),
        .Q(m_araddr[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[7] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[9]_i_1_n_6 ),
        .Q(m_araddr[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[8] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[9]_i_1_n_5 ),
        .Q(m_araddr[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) 
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 10000000" *) 
  FDCE \m_araddr_r_reg[9] 
       (.C(clk),
        .CE(\m_araddr_r[17]_i_1_n_0 ),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\m_araddr_r_reg[9]_i_1_n_4 ),
        .Q(m_araddr[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \m_araddr_r_reg[9]_i_1 
       (.CI(\m_araddr_r_reg[5]_i_1_n_0 ),
        .CO({\m_araddr_r_reg[9]_i_1_n_0 ,\m_araddr_r_reg[9]_i_1_n_1 ,\m_araddr_r_reg[9]_i_1_n_2 ,\m_araddr_r_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\m_araddr_r_reg[9]_i_1_n_4 ,\m_araddr_r_reg[9]_i_1_n_5 ,\m_araddr_r_reg[9]_i_1_n_6 ,\m_araddr_r_reg[9]_i_1_n_7 }),
        .S(m_araddr[7:4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBA00)) 
    m_arvalid_n_dbg_INST_0
       (.I0(m_arvalid_n_dbg_INST_0_i_1_n_0),
        .I1(line_complete0),
        .I2(m_arvalid_n_dbg_INST_0_i_2_n_0),
        .I3(m_arvalid_n_dbg_INST_0_i_3_n_0),
        .I4(m_arvalid_n_dbg_INST_0_i_4_n_0),
        .I5(m_arvalid_n_dbg_INST_0_i_5_n_0),
        .O(m_arvalid_n_dbg));
  LUT6 #(
    .INIT(64'hFFFF000200000000)) 
    m_arvalid_n_dbg_INST_0_i_1
       (.I0(m_arvalid_n_dbg_INST_0_i_6_n_0),
        .I1(m_arvalid_n_dbg_INST_0_i_7_n_0),
        .I2(DelayChain_inst_n_37),
        .I3(DelayChain_inst_n_36),
        .I4(m_arvalid_n_dbg_INST_0_i_10_n_0),
        .I5(state_r[0]),
        .O(m_arvalid_n_dbg_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    m_arvalid_n_dbg_INST_0_i_10
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(warmup_pulse_counter_dbg[3]),
        .I3(warmup_pulse_counter_dbg[1]),
        .I4(warmup_pulse_counter_dbg[0]),
        .I5(warmup_pulse_counter_dbg[2]),
        .O(m_arvalid_n_dbg_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_arvalid_n_dbg_INST_0_i_12
       (.I0(return_counter_r[17]),
        .I1(return_counter_r[16]),
        .I2(return_counter_r[19]),
        .I3(return_counter_r[18]),
        .O(m_arvalid_n_dbg_INST_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_arvalid_n_dbg_INST_0_i_14
       (.I0(return_counter_r[25]),
        .I1(return_counter_r[24]),
        .I2(return_counter_r[27]),
        .I3(return_counter_r[26]),
        .O(m_arvalid_n_dbg_INST_0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    m_arvalid_n_dbg_INST_0_i_2
       (.I0(state_r[1]),
        .I1(pixel_complete_dbg),
        .I2(state_r[0]),
        .I3(state_r[2]),
        .O(m_arvalid_n_dbg_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    m_arvalid_n_dbg_INST_0_i_3
       (.I0(shift_counter_r[0]),
        .I1(shift_counter_r[1]),
        .O(m_arvalid_n_dbg_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    m_arvalid_n_dbg_INST_0_i_4
       (.I0(m_arvalid_r_dbg),
        .I1(start_frame_r_reg_0),
        .I2(state_r[2]),
        .O(m_arvalid_n_dbg_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h00550000FF7F0000)) 
    m_arvalid_n_dbg_INST_0_i_5
       (.I0(state_r[1]),
        .I1(pixel_complete_dbg),
        .I2(line_complete0),
        .I3(state_r[0]),
        .I4(m_arvalid_r_dbg),
        .I5(m_arready),
        .O(m_arvalid_n_dbg_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    m_arvalid_n_dbg_INST_0_i_6
       (.I0(state_r[1]),
        .I1(state_r[2]),
        .O(m_arvalid_n_dbg_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_arvalid_n_dbg_INST_0_i_7
       (.I0(DelayChain_inst_n_41),
        .I1(m_arvalid_n_dbg_INST_0_i_12_n_0),
        .I2(DelayChain_inst_n_40),
        .I3(m_arvalid_n_dbg_INST_0_i_14_n_0),
        .O(m_arvalid_n_dbg_INST_0_i_7_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID" *) 
  FDCE m_arvalid_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(m_arvalid_n_dbg),
        .Q(m_arvalid_r_dbg));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAA80)) 
    m_rready_r_i_1
       (.I0(m_rready_r_i_2_n_0),
        .I1(m_rready_r_i_3_n_0),
        .I2(m_rready_r_i_4_n_0),
        .I3(m_rready_r_i_5_n_0),
        .I4(m_rready_r_i_6_n_0),
        .I5(m_rready),
        .O(m_rready_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h10BA10BA10BA10FF)) 
    m_rready_r_i_2
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .I2(start_frame_r_reg_0),
        .I3(state_r[2]),
        .I4(shift_counter_r[0]),
        .I5(shift_counter_r[1]),
        .O(m_rready_r_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    m_rready_r_i_3
       (.I0(state_r[2]),
        .I1(start_frame_r_reg_0),
        .O(m_rready_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    m_rready_r_i_4
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .O(m_rready_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000F0000008800)) 
    m_rready_r_i_5
       (.I0(state_r[1]),
        .I1(pixel_complete_dbg),
        .I2(frame_clk_r_i_4_n_0),
        .I3(m_arvalid_n_dbg_INST_0_i_3_n_0),
        .I4(state_r[2]),
        .I5(state_r[0]),
        .O(m_rready_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    m_rready_r_i_6
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .O(m_rready_r_i_6_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY" *) 
  FDCE m_rready_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(m_rready_r_i_1_n_0),
        .Q(m_rready));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    pixel_clk_r_i_1
       (.I0(pixel_clk_r_i_2_n_0),
        .I1(warmup_pulse_counter_n),
        .I2(pixel_clk_r_i_3_n_0),
        .I3(pixel_clk_r_i_4_n_0),
        .I4(line_clk_r_i_3_n_0),
        .I5(pixel_clk_r),
        .O(pixel_clk_r_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    pixel_clk_r_i_2
       (.I0(line_complete0),
        .I1(pixel_complete_dbg),
        .I2(state_r[2]),
        .I3(state_r[1]),
        .O(pixel_clk_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    pixel_clk_r_i_3
       (.I0(state_r[2]),
        .I1(state_r[0]),
        .I2(DelayChain_inst_n_39),
        .I3(DelayChain_inst_n_38),
        .I4(DelayChain_inst_n_37),
        .I5(DelayChain_inst_n_36),
        .O(pixel_clk_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    pixel_clk_r_i_4
       (.I0(pixel_halftime),
        .I1(pixel_complete_dbg),
        .I2(state_r[0]),
        .I3(state_r[2]),
        .O(pixel_clk_r_i_4_n_0));
  FDCE pixel_clk_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_clk_r_i_1_n_0),
        .Q(pixel_clk_r));
  CARRY4 pixel_complete_carry
       (.CI(1'b0),
        .CO({pixel_complete_carry_n_0,pixel_complete_carry_n_1,pixel_complete_carry_n_2,pixel_complete_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pixel_complete_carry_O_UNCONNECTED[3:0]),
        .S({pixel_complete_carry_i_1_n_0,pixel_complete_carry_i_2_n_0,pixel_complete_carry_i_3_n_0,pixel_complete_carry_i_4_n_0}));
  CARRY4 pixel_complete_carry__0
       (.CI(pixel_complete_carry_n_0),
        .CO({pixel_complete_carry__0_n_0,pixel_complete_carry__0_n_1,pixel_complete_carry__0_n_2,pixel_complete_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pixel_complete_carry__0_O_UNCONNECTED[3:0]),
        .S({pixel_complete_carry__0_i_1_n_0,pixel_complete_carry__0_i_2_n_0,pixel_complete_carry__0_i_3_n_0,pixel_complete_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry__0_i_1
       (.I0(pixel_complete0[23]),
        .I1(clk_counter_r[23]),
        .I2(pixel_complete0[22]),
        .I3(clk_counter_r[22]),
        .I4(clk_counter_r[21]),
        .I5(pixel_complete0[21]),
        .O(pixel_complete_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry__0_i_2
       (.I0(pixel_complete0[20]),
        .I1(clk_counter_r[20]),
        .I2(pixel_complete0[19]),
        .I3(clk_counter_r[19]),
        .I4(clk_counter_r[18]),
        .I5(pixel_complete0[18]),
        .O(pixel_complete_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry__0_i_3
       (.I0(pixel_complete0[17]),
        .I1(clk_counter_r[17]),
        .I2(pixel_complete0[16]),
        .I3(clk_counter_r[16]),
        .I4(clk_counter_r[15]),
        .I5(pixel_complete0[15]),
        .O(pixel_complete_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry__0_i_4
       (.I0(pixel_complete0[14]),
        .I1(clk_counter_r[14]),
        .I2(pixel_complete0[13]),
        .I3(clk_counter_r[13]),
        .I4(clk_counter_r[12]),
        .I5(pixel_complete0[12]),
        .O(pixel_complete_carry__0_i_4_n_0));
  CARRY4 pixel_complete_carry__1
       (.CI(pixel_complete_carry__0_n_0),
        .CO({NLW_pixel_complete_carry__1_CO_UNCONNECTED[3],pixel_complete_dbg,pixel_complete_carry__1_n_2,pixel_complete_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pixel_complete_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,DelayChain_inst_n_1,DelayChain_inst_n_2,DelayChain_inst_n_3}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry_i_1
       (.I0(pixel_complete0[11]),
        .I1(clk_counter_r[11]),
        .I2(pixel_complete0[10]),
        .I3(clk_counter_r[10]),
        .I4(clk_counter_r[9]),
        .I5(pixel_complete0[9]),
        .O(pixel_complete_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry_i_2
       (.I0(pixel_complete0[8]),
        .I1(clk_counter_r[8]),
        .I2(pixel_complete0[7]),
        .I3(clk_counter_r[7]),
        .I4(clk_counter_r[6]),
        .I5(pixel_complete0[6]),
        .O(pixel_complete_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_complete_carry_i_3
       (.I0(pixel_complete0[5]),
        .I1(clk_counter_r[5]),
        .I2(pixel_complete0[4]),
        .I3(clk_counter_r[4]),
        .I4(clk_counter_r[3]),
        .I5(pixel_complete0[3]),
        .O(pixel_complete_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    pixel_complete_carry_i_4
       (.I0(pixel_complete0[2]),
        .I1(clk_counter_r[2]),
        .I2(pixel_complete0[1]),
        .I3(clk_counter_r[1]),
        .I4(clk_counter_r[0]),
        .I5(pulses_per_pixel[0]),
        .O(pixel_complete_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pixel_counter_n1_carry
       (.CI(1'b0),
        .CO({pixel_counter_n1_carry_n_0,pixel_counter_n1_carry_n_1,pixel_counter_n1_carry_n_2,pixel_counter_n1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_counter_n1_carry_i_1_n_0,pixel_counter_n1_carry_i_2_n_0,pixel_counter_n1_carry_i_3_n_0,pixel_counter_n1_carry_i_4_n_0}),
        .O(NLW_pixel_counter_n1_carry_O_UNCONNECTED[3:0]),
        .S({pixel_counter_n1_carry_i_5_n_0,pixel_counter_n1_carry_i_6_n_0,pixel_counter_n1_carry_i_7_n_0,pixel_counter_n1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pixel_counter_n1_carry__0
       (.CI(pixel_counter_n1_carry_n_0),
        .CO({pixel_counter_n1_carry__0_n_0,pixel_counter_n1_carry__0_n_1,pixel_counter_n1_carry__0_n_2,pixel_counter_n1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_counter_n1_carry__0_i_1_n_0,pixel_counter_n1_carry__0_i_2_n_0,pixel_counter_n1_carry__0_i_3_n_0,pixel_counter_n1_carry__0_i_4_n_0}),
        .O(NLW_pixel_counter_n1_carry__0_O_UNCONNECTED[3:0]),
        .S({pixel_counter_n1_carry__0_i_5_n_0,pixel_counter_n1_carry__0_i_6_n_0,pixel_counter_n1_carry__0_i_7_n_0,pixel_counter_n1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__0_i_1
       (.I0(line_complete1[15]),
        .I1(pixel_counter_r[15]),
        .I2(line_complete1[14]),
        .I3(pixel_counter_r[14]),
        .O(pixel_counter_n1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__0_i_2
       (.I0(line_complete1[13]),
        .I1(pixel_counter_r[13]),
        .I2(line_complete1[12]),
        .I3(pixel_counter_r[12]),
        .O(pixel_counter_n1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__0_i_3
       (.I0(line_complete1[11]),
        .I1(pixel_counter_r[11]),
        .I2(line_complete1[10]),
        .I3(pixel_counter_r[10]),
        .O(pixel_counter_n1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__0_i_4
       (.I0(line_complete1[9]),
        .I1(pixel_counter_r[9]),
        .I2(line_complete1[8]),
        .I3(pixel_counter_r[8]),
        .O(pixel_counter_n1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__0_i_5
       (.I0(line_complete1[15]),
        .I1(pixel_counter_r[15]),
        .I2(line_complete1[14]),
        .I3(pixel_counter_r[14]),
        .O(pixel_counter_n1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__0_i_6
       (.I0(line_complete1[13]),
        .I1(pixel_counter_r[13]),
        .I2(line_complete1[12]),
        .I3(pixel_counter_r[12]),
        .O(pixel_counter_n1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__0_i_7
       (.I0(line_complete1[11]),
        .I1(pixel_counter_r[11]),
        .I2(line_complete1[10]),
        .I3(pixel_counter_r[10]),
        .O(pixel_counter_n1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__0_i_8
       (.I0(line_complete1[9]),
        .I1(pixel_counter_r[9]),
        .I2(line_complete1[8]),
        .I3(pixel_counter_r[8]),
        .O(pixel_counter_n1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pixel_counter_n1_carry__1
       (.CI(pixel_counter_n1_carry__0_n_0),
        .CO({pixel_counter_n1_carry__1_n_0,pixel_counter_n1_carry__1_n_1,pixel_counter_n1_carry__1_n_2,pixel_counter_n1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_counter_n1_carry__1_i_1_n_0,pixel_counter_n1_carry__1_i_2_n_0,pixel_counter_n1_carry__1_i_3_n_0,pixel_counter_n1_carry__1_i_4_n_0}),
        .O(NLW_pixel_counter_n1_carry__1_O_UNCONNECTED[3:0]),
        .S({pixel_counter_n1_carry__1_i_5_n_0,pixel_counter_n1_carry__1_i_6_n_0,pixel_counter_n1_carry__1_i_7_n_0,pixel_counter_n1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__1_i_1
       (.I0(line_complete1[23]),
        .I1(pixel_counter_r[23]),
        .I2(line_complete1[22]),
        .I3(pixel_counter_r[22]),
        .O(pixel_counter_n1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__1_i_2
       (.I0(line_complete1[21]),
        .I1(pixel_counter_r[21]),
        .I2(line_complete1[20]),
        .I3(pixel_counter_r[20]),
        .O(pixel_counter_n1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__1_i_3
       (.I0(line_complete1[19]),
        .I1(pixel_counter_r[19]),
        .I2(line_complete1[18]),
        .I3(pixel_counter_r[18]),
        .O(pixel_counter_n1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__1_i_4
       (.I0(line_complete1[17]),
        .I1(pixel_counter_r[17]),
        .I2(line_complete1[16]),
        .I3(pixel_counter_r[16]),
        .O(pixel_counter_n1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__1_i_5
       (.I0(line_complete1[23]),
        .I1(pixel_counter_r[23]),
        .I2(line_complete1[22]),
        .I3(pixel_counter_r[22]),
        .O(pixel_counter_n1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__1_i_6
       (.I0(line_complete1[21]),
        .I1(pixel_counter_r[21]),
        .I2(line_complete1[20]),
        .I3(pixel_counter_r[20]),
        .O(pixel_counter_n1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__1_i_7
       (.I0(line_complete1[19]),
        .I1(pixel_counter_r[19]),
        .I2(line_complete1[18]),
        .I3(pixel_counter_r[18]),
        .O(pixel_counter_n1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__1_i_8
       (.I0(line_complete1[17]),
        .I1(pixel_counter_r[17]),
        .I2(line_complete1[16]),
        .I3(pixel_counter_r[16]),
        .O(pixel_counter_n1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pixel_counter_n1_carry__2
       (.CI(pixel_counter_n1_carry__1_n_0),
        .CO({pixel_counter_n1,pixel_counter_n1_carry__2_n_1,pixel_counter_n1_carry__2_n_2,pixel_counter_n1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_counter_n1_carry__2_i_1_n_0,pixel_counter_n1_carry__2_i_2_n_0,pixel_counter_n1_carry__2_i_3_n_0,pixel_counter_n1_carry__2_i_4_n_0}),
        .O(NLW_pixel_counter_n1_carry__2_O_UNCONNECTED[3:0]),
        .S({pixel_counter_n1_carry__2_i_5_n_0,pixel_counter_n1_carry__2_i_6_n_0,pixel_counter_n1_carry__2_i_7_n_0,pixel_counter_n1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__2_i_1
       (.I0(line_complete1[31]),
        .I1(pixel_counter_r[31]),
        .I2(line_complete1[30]),
        .I3(pixel_counter_r[30]),
        .O(pixel_counter_n1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__2_i_2
       (.I0(line_complete1[29]),
        .I1(pixel_counter_r[29]),
        .I2(line_complete1[28]),
        .I3(pixel_counter_r[28]),
        .O(pixel_counter_n1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__2_i_3
       (.I0(line_complete1[27]),
        .I1(pixel_counter_r[27]),
        .I2(line_complete1[26]),
        .I3(pixel_counter_r[26]),
        .O(pixel_counter_n1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry__2_i_4
       (.I0(line_complete1[25]),
        .I1(pixel_counter_r[25]),
        .I2(line_complete1[24]),
        .I3(pixel_counter_r[24]),
        .O(pixel_counter_n1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__2_i_5
       (.I0(line_complete1[31]),
        .I1(pixel_counter_r[31]),
        .I2(line_complete1[30]),
        .I3(pixel_counter_r[30]),
        .O(pixel_counter_n1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__2_i_6
       (.I0(line_complete1[29]),
        .I1(pixel_counter_r[29]),
        .I2(line_complete1[28]),
        .I3(pixel_counter_r[28]),
        .O(pixel_counter_n1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__2_i_7
       (.I0(line_complete1[27]),
        .I1(pixel_counter_r[27]),
        .I2(line_complete1[26]),
        .I3(pixel_counter_r[26]),
        .O(pixel_counter_n1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry__2_i_8
       (.I0(line_complete1[25]),
        .I1(pixel_counter_r[25]),
        .I2(line_complete1[24]),
        .I3(pixel_counter_r[24]),
        .O(pixel_counter_n1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry_i_1
       (.I0(line_complete1[7]),
        .I1(pixel_counter_r[7]),
        .I2(line_complete1[6]),
        .I3(pixel_counter_r[6]),
        .O(pixel_counter_n1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry_i_2
       (.I0(line_complete1[5]),
        .I1(pixel_counter_r[5]),
        .I2(line_complete1[4]),
        .I3(pixel_counter_r[4]),
        .O(pixel_counter_n1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pixel_counter_n1_carry_i_3
       (.I0(line_complete1[3]),
        .I1(pixel_counter_r[3]),
        .I2(line_complete1[2]),
        .I3(pixel_counter_r[2]),
        .O(pixel_counter_n1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h222B)) 
    pixel_counter_n1_carry_i_4
       (.I0(line_complete1[1]),
        .I1(pixel_counter_r[1]),
        .I2(pixel_counter_r[0]),
        .I3(image_size[0]),
        .O(pixel_counter_n1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry_i_5
       (.I0(line_complete1[7]),
        .I1(pixel_counter_r[7]),
        .I2(line_complete1[6]),
        .I3(pixel_counter_r[6]),
        .O(pixel_counter_n1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry_i_6
       (.I0(line_complete1[5]),
        .I1(pixel_counter_r[5]),
        .I2(line_complete1[4]),
        .I3(pixel_counter_r[4]),
        .O(pixel_counter_n1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pixel_counter_n1_carry_i_7
       (.I0(line_complete1[3]),
        .I1(pixel_counter_r[3]),
        .I2(line_complete1[2]),
        .I3(pixel_counter_r[2]),
        .O(pixel_counter_n1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    pixel_counter_n1_carry_i_8
       (.I0(pixel_counter_r[0]),
        .I1(image_size[0]),
        .I2(line_complete1[1]),
        .I3(pixel_counter_r[1]),
        .O(pixel_counter_n1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pixel_counter_r[0]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_r[0]),
        .O(pixel_counter_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[10]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[10]),
        .O(pixel_counter_n[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[11]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[11]),
        .O(pixel_counter_n[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[12]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[12]),
        .O(pixel_counter_n[12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[13]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[13]),
        .O(pixel_counter_n[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[14]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[14]),
        .O(pixel_counter_n[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[15]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[15]),
        .O(pixel_counter_n[15]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[16]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[16]),
        .O(pixel_counter_n[16]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[17]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[17]),
        .O(pixel_counter_n[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[18]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[18]),
        .O(pixel_counter_n[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[19]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[19]),
        .O(pixel_counter_n[19]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[1]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[1]),
        .O(pixel_counter_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[20]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[20]),
        .O(pixel_counter_n[20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[21]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[21]),
        .O(pixel_counter_n[21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[22]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[22]),
        .O(pixel_counter_n[22]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[23]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[23]),
        .O(pixel_counter_n[23]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[24]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[24]),
        .O(pixel_counter_n[24]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[25]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[25]),
        .O(pixel_counter_n[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[26]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[26]),
        .O(pixel_counter_n[26]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[27]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[27]),
        .O(pixel_counter_n[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[28]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[28]),
        .O(pixel_counter_n[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[29]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[29]),
        .O(pixel_counter_n[29]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[2]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[2]),
        .O(pixel_counter_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[30]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[30]),
        .O(pixel_counter_n[30]));
  LUT5 #(
    .INIT(32'h13100000)) 
    \pixel_counter_r[31]_i_1 
       (.I0(frame_clk_r_i_4_n_0),
        .I1(state_r[2]),
        .I2(state_r[0]),
        .I3(pixel_complete_dbg),
        .I4(state_r[1]),
        .O(pixel_counter_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[31]_i_2 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[31]),
        .O(pixel_counter_n[31]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[3]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[3]),
        .O(pixel_counter_n[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[4]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[4]),
        .O(pixel_counter_n[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[5]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[5]),
        .O(pixel_counter_n[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[6]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[6]),
        .O(pixel_counter_n[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[7]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[7]),
        .O(pixel_counter_n[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[8]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[8]),
        .O(pixel_counter_n[8]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_counter_r[9]_i_1 
       (.I0(state_r[0]),
        .I1(pixel_counter_n1),
        .I2(pixel_counter_n0[9]),
        .O(pixel_counter_n[9]));
  FDCE \pixel_counter_r_reg[0] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[0]),
        .Q(pixel_counter_r[0]));
  FDCE \pixel_counter_r_reg[10] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[10]),
        .Q(pixel_counter_r[10]));
  FDCE \pixel_counter_r_reg[11] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[11]),
        .Q(pixel_counter_r[11]));
  FDCE \pixel_counter_r_reg[12] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[12]),
        .Q(pixel_counter_r[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[12]_i_2 
       (.CI(\pixel_counter_r_reg[8]_i_2_n_0 ),
        .CO({\pixel_counter_r_reg[12]_i_2_n_0 ,\pixel_counter_r_reg[12]_i_2_n_1 ,\pixel_counter_r_reg[12]_i_2_n_2 ,\pixel_counter_r_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pixel_counter_n0[12:9]),
        .S(pixel_counter_r[12:9]));
  FDCE \pixel_counter_r_reg[13] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[13]),
        .Q(pixel_counter_r[13]));
  FDCE \pixel_counter_r_reg[14] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[14]),
        .Q(pixel_counter_r[14]));
  FDCE \pixel_counter_r_reg[15] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[15]),
        .Q(pixel_counter_r[15]));
  FDCE \pixel_counter_r_reg[16] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[16]),
        .Q(pixel_counter_r[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[16]_i_2 
       (.CI(\pixel_counter_r_reg[12]_i_2_n_0 ),
        .CO({\pixel_counter_r_reg[16]_i_2_n_0 ,\pixel_counter_r_reg[16]_i_2_n_1 ,\pixel_counter_r_reg[16]_i_2_n_2 ,\pixel_counter_r_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pixel_counter_n0[16:13]),
        .S(pixel_counter_r[16:13]));
  FDCE \pixel_counter_r_reg[17] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[17]),
        .Q(pixel_counter_r[17]));
  FDCE \pixel_counter_r_reg[18] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[18]),
        .Q(pixel_counter_r[18]));
  FDCE \pixel_counter_r_reg[19] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[19]),
        .Q(pixel_counter_r[19]));
  FDCE \pixel_counter_r_reg[1] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[1]),
        .Q(pixel_counter_r[1]));
  FDCE \pixel_counter_r_reg[20] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[20]),
        .Q(pixel_counter_r[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[20]_i_2 
       (.CI(\pixel_counter_r_reg[16]_i_2_n_0 ),
        .CO({\pixel_counter_r_reg[20]_i_2_n_0 ,\pixel_counter_r_reg[20]_i_2_n_1 ,\pixel_counter_r_reg[20]_i_2_n_2 ,\pixel_counter_r_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pixel_counter_n0[20:17]),
        .S(pixel_counter_r[20:17]));
  FDCE \pixel_counter_r_reg[21] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[21]),
        .Q(pixel_counter_r[21]));
  FDCE \pixel_counter_r_reg[22] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[22]),
        .Q(pixel_counter_r[22]));
  FDCE \pixel_counter_r_reg[23] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[23]),
        .Q(pixel_counter_r[23]));
  FDCE \pixel_counter_r_reg[24] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[24]),
        .Q(pixel_counter_r[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[24]_i_2 
       (.CI(\pixel_counter_r_reg[20]_i_2_n_0 ),
        .CO({\pixel_counter_r_reg[24]_i_2_n_0 ,\pixel_counter_r_reg[24]_i_2_n_1 ,\pixel_counter_r_reg[24]_i_2_n_2 ,\pixel_counter_r_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pixel_counter_n0[24:21]),
        .S(pixel_counter_r[24:21]));
  FDCE \pixel_counter_r_reg[25] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[25]),
        .Q(pixel_counter_r[25]));
  FDCE \pixel_counter_r_reg[26] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[26]),
        .Q(pixel_counter_r[26]));
  FDCE \pixel_counter_r_reg[27] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[27]),
        .Q(pixel_counter_r[27]));
  FDCE \pixel_counter_r_reg[28] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[28]),
        .Q(pixel_counter_r[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[28]_i_2 
       (.CI(\pixel_counter_r_reg[24]_i_2_n_0 ),
        .CO({\pixel_counter_r_reg[28]_i_2_n_0 ,\pixel_counter_r_reg[28]_i_2_n_1 ,\pixel_counter_r_reg[28]_i_2_n_2 ,\pixel_counter_r_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pixel_counter_n0[28:25]),
        .S(pixel_counter_r[28:25]));
  FDCE \pixel_counter_r_reg[29] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[29]),
        .Q(pixel_counter_r[29]));
  FDCE \pixel_counter_r_reg[2] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[2]),
        .Q(pixel_counter_r[2]));
  FDCE \pixel_counter_r_reg[30] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[30]),
        .Q(pixel_counter_r[30]));
  FDCE \pixel_counter_r_reg[31] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[31]),
        .Q(pixel_counter_r[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[31]_i_3 
       (.CI(\pixel_counter_r_reg[28]_i_2_n_0 ),
        .CO({\NLW_pixel_counter_r_reg[31]_i_3_CO_UNCONNECTED [3:2],\pixel_counter_r_reg[31]_i_3_n_2 ,\pixel_counter_r_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pixel_counter_r_reg[31]_i_3_O_UNCONNECTED [3],pixel_counter_n0[31:29]}),
        .S({1'b0,pixel_counter_r[31:29]}));
  FDCE \pixel_counter_r_reg[3] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[3]),
        .Q(pixel_counter_r[3]));
  FDCE \pixel_counter_r_reg[4] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[4]),
        .Q(pixel_counter_r[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pixel_counter_r_reg[4]_i_2_n_0 ,\pixel_counter_r_reg[4]_i_2_n_1 ,\pixel_counter_r_reg[4]_i_2_n_2 ,\pixel_counter_r_reg[4]_i_2_n_3 }),
        .CYINIT(pixel_counter_r[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pixel_counter_n0[4:1]),
        .S(pixel_counter_r[4:1]));
  FDCE \pixel_counter_r_reg[5] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[5]),
        .Q(pixel_counter_r[5]));
  FDCE \pixel_counter_r_reg[6] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[6]),
        .Q(pixel_counter_r[6]));
  FDCE \pixel_counter_r_reg[7] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[7]),
        .Q(pixel_counter_r[7]));
  FDCE \pixel_counter_r_reg[8] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[8]),
        .Q(pixel_counter_r[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_r_reg[8]_i_2 
       (.CI(\pixel_counter_r_reg[4]_i_2_n_0 ),
        .CO({\pixel_counter_r_reg[8]_i_2_n_0 ,\pixel_counter_r_reg[8]_i_2_n_1 ,\pixel_counter_r_reg[8]_i_2_n_2 ,\pixel_counter_r_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pixel_counter_n0[8:5]),
        .S(pixel_counter_r[8:5]));
  FDCE \pixel_counter_r_reg[9] 
       (.C(clk),
        .CE(pixel_counter_n_0),
        .CLR(frame_clk_r_i_2_n_0),
        .D(pixel_counter_n[9]),
        .Q(pixel_counter_r[9]));
  CARRY4 pixel_halftime_carry
       (.CI(1'b0),
        .CO({pixel_halftime_carry_n_0,pixel_halftime_carry_n_1,pixel_halftime_carry_n_2,pixel_halftime_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pixel_halftime_carry_O_UNCONNECTED[3:0]),
        .S({pixel_halftime_carry_i_1_n_0,pixel_halftime_carry_i_2_n_0,pixel_halftime_carry_i_3_n_0,pixel_halftime_carry_i_4_n_0}));
  CARRY4 pixel_halftime_carry__0
       (.CI(pixel_halftime_carry_n_0),
        .CO({pixel_halftime_carry__0_n_0,pixel_halftime_carry__0_n_1,pixel_halftime_carry__0_n_2,pixel_halftime_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pixel_halftime_carry__0_O_UNCONNECTED[3:0]),
        .S({pixel_halftime_carry__0_i_1_n_0,pixel_halftime_carry__0_i_2_n_0,pixel_halftime_carry__0_i_3_n_0,pixel_halftime_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry__0_i_1
       (.I0(pixel_halftime0[23]),
        .I1(clk_counter_r[23]),
        .I2(pixel_halftime0[22]),
        .I3(clk_counter_r[22]),
        .I4(clk_counter_r[21]),
        .I5(pixel_halftime0[21]),
        .O(pixel_halftime_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_10
       (.I0(pulses_per_pixel[23]),
        .O(pixel_halftime_carry__0_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_11
       (.I0(pulses_per_pixel[22]),
        .O(pixel_halftime_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_12
       (.I0(pulses_per_pixel[21]),
        .O(pixel_halftime_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_13
       (.I0(pulses_per_pixel[20]),
        .O(pixel_halftime_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_14
       (.I0(pulses_per_pixel[19]),
        .O(pixel_halftime_carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_15
       (.I0(pulses_per_pixel[18]),
        .O(pixel_halftime_carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_16
       (.I0(pulses_per_pixel[17]),
        .O(pixel_halftime_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_17
       (.I0(pulses_per_pixel[16]),
        .O(pixel_halftime_carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_18
       (.I0(pulses_per_pixel[15]),
        .O(pixel_halftime_carry__0_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_19
       (.I0(pulses_per_pixel[14]),
        .O(pixel_halftime_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry__0_i_2
       (.I0(pixel_halftime0[20]),
        .I1(clk_counter_r[20]),
        .I2(pixel_halftime0[19]),
        .I3(clk_counter_r[19]),
        .I4(clk_counter_r[18]),
        .I5(pixel_halftime0[18]),
        .O(pixel_halftime_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry__0_i_3
       (.I0(pixel_halftime0[17]),
        .I1(clk_counter_r[17]),
        .I2(pixel_halftime0[16]),
        .I3(clk_counter_r[16]),
        .I4(clk_counter_r[15]),
        .I5(pixel_halftime0[15]),
        .O(pixel_halftime_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry__0_i_4
       (.I0(pixel_halftime0[14]),
        .I1(clk_counter_r[14]),
        .I2(pixel_halftime0[13]),
        .I3(clk_counter_r[13]),
        .I4(clk_counter_r[12]),
        .I5(pixel_halftime0[12]),
        .O(pixel_halftime_carry__0_i_4_n_0));
  CARRY4 pixel_halftime_carry__0_i_5
       (.CI(pixel_halftime_carry__0_i_6_n_0),
        .CO({pixel_halftime_carry__0_i_5_n_0,pixel_halftime_carry__0_i_5_n_1,pixel_halftime_carry__0_i_5_n_2,pixel_halftime_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[25:22]),
        .O(pixel_halftime0[24:21]),
        .S({pixel_halftime_carry__0_i_8_n_0,pixel_halftime_carry__0_i_9_n_0,pixel_halftime_carry__0_i_10_n_0,pixel_halftime_carry__0_i_11_n_0}));
  CARRY4 pixel_halftime_carry__0_i_6
       (.CI(pixel_halftime_carry__0_i_7_n_0),
        .CO({pixel_halftime_carry__0_i_6_n_0,pixel_halftime_carry__0_i_6_n_1,pixel_halftime_carry__0_i_6_n_2,pixel_halftime_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[21:18]),
        .O(pixel_halftime0[20:17]),
        .S({pixel_halftime_carry__0_i_12_n_0,pixel_halftime_carry__0_i_13_n_0,pixel_halftime_carry__0_i_14_n_0,pixel_halftime_carry__0_i_15_n_0}));
  CARRY4 pixel_halftime_carry__0_i_7
       (.CI(pixel_halftime_carry_i_5_n_0),
        .CO({pixel_halftime_carry__0_i_7_n_0,pixel_halftime_carry__0_i_7_n_1,pixel_halftime_carry__0_i_7_n_2,pixel_halftime_carry__0_i_7_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[17:14]),
        .O(pixel_halftime0[16:13]),
        .S({pixel_halftime_carry__0_i_16_n_0,pixel_halftime_carry__0_i_17_n_0,pixel_halftime_carry__0_i_18_n_0,pixel_halftime_carry__0_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_8
       (.I0(pulses_per_pixel[25]),
        .O(pixel_halftime_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__0_i_9
       (.I0(pulses_per_pixel[24]),
        .O(pixel_halftime_carry__0_i_9_n_0));
  CARRY4 pixel_halftime_carry__1
       (.CI(pixel_halftime_carry__0_n_0),
        .CO({NLW_pixel_halftime_carry__1_CO_UNCONNECTED[3],pixel_halftime,pixel_halftime_carry__1_n_2,pixel_halftime_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pixel_halftime_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,pixel_halftime_carry__1_i_1_n_0,pixel_halftime_carry__1_i_2_n_0,pixel_halftime_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h6006)) 
    pixel_halftime_carry__1_i_1
       (.I0(clk_counter_r[31]),
        .I1(pixel_halftime_carry__1_i_4_n_1),
        .I2(clk_counter_r[30]),
        .I3(pixel_halftime0[30]),
        .O(pixel_halftime_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__1_i_10
       (.I0(pulses_per_pixel[27]),
        .O(pixel_halftime_carry__1_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__1_i_11
       (.I0(pulses_per_pixel[26]),
        .O(pixel_halftime_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry__1_i_2
       (.I0(pixel_halftime0[29]),
        .I1(clk_counter_r[29]),
        .I2(pixel_halftime0[28]),
        .I3(clk_counter_r[28]),
        .I4(clk_counter_r[27]),
        .I5(pixel_halftime0[27]),
        .O(pixel_halftime_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry__1_i_3
       (.I0(pixel_halftime0[26]),
        .I1(clk_counter_r[26]),
        .I2(pixel_halftime0[25]),
        .I3(clk_counter_r[25]),
        .I4(clk_counter_r[24]),
        .I5(pixel_halftime0[24]),
        .O(pixel_halftime_carry__1_i_3_n_0));
  CARRY4 pixel_halftime_carry__1_i_4
       (.CI(pixel_halftime_carry__1_i_5_n_0),
        .CO({NLW_pixel_halftime_carry__1_i_4_CO_UNCONNECTED[3],pixel_halftime_carry__1_i_4_n_1,NLW_pixel_halftime_carry__1_i_4_CO_UNCONNECTED[1],pixel_halftime_carry__1_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulses_per_pixel[31:30]}),
        .O({NLW_pixel_halftime_carry__1_i_4_O_UNCONNECTED[3:2],pixel_halftime0[30:29]}),
        .S({1'b0,1'b1,pixel_halftime_carry__1_i_6_n_0,pixel_halftime_carry__1_i_7_n_0}));
  CARRY4 pixel_halftime_carry__1_i_5
       (.CI(pixel_halftime_carry__0_i_5_n_0),
        .CO({pixel_halftime_carry__1_i_5_n_0,pixel_halftime_carry__1_i_5_n_1,pixel_halftime_carry__1_i_5_n_2,pixel_halftime_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[29:26]),
        .O(pixel_halftime0[28:25]),
        .S({pixel_halftime_carry__1_i_8_n_0,pixel_halftime_carry__1_i_9_n_0,pixel_halftime_carry__1_i_10_n_0,pixel_halftime_carry__1_i_11_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__1_i_6
       (.I0(pulses_per_pixel[31]),
        .O(pixel_halftime_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__1_i_7
       (.I0(pulses_per_pixel[30]),
        .O(pixel_halftime_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__1_i_8
       (.I0(pulses_per_pixel[29]),
        .O(pixel_halftime_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry__1_i_9
       (.I0(pulses_per_pixel[28]),
        .O(pixel_halftime_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry_i_1
       (.I0(pixel_halftime0[11]),
        .I1(clk_counter_r[11]),
        .I2(pixel_halftime0[10]),
        .I3(clk_counter_r[10]),
        .I4(clk_counter_r[9]),
        .I5(pixel_halftime0[9]),
        .O(pixel_halftime_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_10
       (.I0(pulses_per_pixel[11]),
        .O(pixel_halftime_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_11
       (.I0(pulses_per_pixel[10]),
        .O(pixel_halftime_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_12
       (.I0(pulses_per_pixel[9]),
        .O(pixel_halftime_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_13
       (.I0(pulses_per_pixel[8]),
        .O(pixel_halftime_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_14
       (.I0(pulses_per_pixel[7]),
        .O(pixel_halftime_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_15
       (.I0(pulses_per_pixel[6]),
        .O(pixel_halftime_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_16
       (.I0(pulses_per_pixel[5]),
        .O(pixel_halftime_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_17
       (.I0(pulses_per_pixel[4]),
        .O(pixel_halftime_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_18
       (.I0(pulses_per_pixel[3]),
        .O(pixel_halftime_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_19
       (.I0(pulses_per_pixel[2]),
        .O(pixel_halftime_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry_i_2
       (.I0(pixel_halftime0[8]),
        .I1(clk_counter_r[8]),
        .I2(pixel_halftime0[7]),
        .I3(clk_counter_r[7]),
        .I4(clk_counter_r[6]),
        .I5(pixel_halftime0[6]),
        .O(pixel_halftime_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pixel_halftime_carry_i_3
       (.I0(pixel_halftime0[5]),
        .I1(clk_counter_r[5]),
        .I2(pixel_halftime0[4]),
        .I3(clk_counter_r[4]),
        .I4(clk_counter_r[3]),
        .I5(pixel_halftime0[3]),
        .O(pixel_halftime_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    pixel_halftime_carry_i_4
       (.I0(pixel_halftime0[2]),
        .I1(clk_counter_r[2]),
        .I2(pixel_halftime0[1]),
        .I3(clk_counter_r[1]),
        .I4(clk_counter_r[0]),
        .I5(pulses_per_pixel[1]),
        .O(pixel_halftime_carry_i_4_n_0));
  CARRY4 pixel_halftime_carry_i_5
       (.CI(pixel_halftime_carry_i_6_n_0),
        .CO({pixel_halftime_carry_i_5_n_0,pixel_halftime_carry_i_5_n_1,pixel_halftime_carry_i_5_n_2,pixel_halftime_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[13:10]),
        .O(pixel_halftime0[12:9]),
        .S({pixel_halftime_carry_i_8_n_0,pixel_halftime_carry_i_9_n_0,pixel_halftime_carry_i_10_n_0,pixel_halftime_carry_i_11_n_0}));
  CARRY4 pixel_halftime_carry_i_6
       (.CI(pixel_halftime_carry_i_7_n_0),
        .CO({pixel_halftime_carry_i_6_n_0,pixel_halftime_carry_i_6_n_1,pixel_halftime_carry_i_6_n_2,pixel_halftime_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(pulses_per_pixel[9:6]),
        .O(pixel_halftime0[8:5]),
        .S({pixel_halftime_carry_i_12_n_0,pixel_halftime_carry_i_13_n_0,pixel_halftime_carry_i_14_n_0,pixel_halftime_carry_i_15_n_0}));
  CARRY4 pixel_halftime_carry_i_7
       (.CI(1'b0),
        .CO({pixel_halftime_carry_i_7_n_0,pixel_halftime_carry_i_7_n_1,pixel_halftime_carry_i_7_n_2,pixel_halftime_carry_i_7_n_3}),
        .CYINIT(pulses_per_pixel[1]),
        .DI(pulses_per_pixel[5:2]),
        .O(pixel_halftime0[4:1]),
        .S({pixel_halftime_carry_i_16_n_0,pixel_halftime_carry_i_17_n_0,pixel_halftime_carry_i_18_n_0,pixel_halftime_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_8
       (.I0(pulses_per_pixel[13]),
        .O(pixel_halftime_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_halftime_carry_i_9
       (.I0(pulses_per_pixel[12]),
        .O(pixel_halftime_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry
       (.CI(1'b0),
        .CO({return_counter_n0_carry_n_0,return_counter_n0_carry_n_1,return_counter_n0_carry_n_2,return_counter_n0_carry_n_3}),
        .CYINIT(return_counter_r[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[4:1]),
        .S(return_counter_r[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry__0
       (.CI(return_counter_n0_carry_n_0),
        .CO({return_counter_n0_carry__0_n_0,return_counter_n0_carry__0_n_1,return_counter_n0_carry__0_n_2,return_counter_n0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[8:5]),
        .S(return_counter_r[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry__1
       (.CI(return_counter_n0_carry__0_n_0),
        .CO({return_counter_n0_carry__1_n_0,return_counter_n0_carry__1_n_1,return_counter_n0_carry__1_n_2,return_counter_n0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[12:9]),
        .S(return_counter_r[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry__2
       (.CI(return_counter_n0_carry__1_n_0),
        .CO({return_counter_n0_carry__2_n_0,return_counter_n0_carry__2_n_1,return_counter_n0_carry__2_n_2,return_counter_n0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[16:13]),
        .S(return_counter_r[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry__3
       (.CI(return_counter_n0_carry__2_n_0),
        .CO({return_counter_n0_carry__3_n_0,return_counter_n0_carry__3_n_1,return_counter_n0_carry__3_n_2,return_counter_n0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[20:17]),
        .S(return_counter_r[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry__4
       (.CI(return_counter_n0_carry__3_n_0),
        .CO({return_counter_n0_carry__4_n_0,return_counter_n0_carry__4_n_1,return_counter_n0_carry__4_n_2,return_counter_n0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[24:21]),
        .S(return_counter_r[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry__5
       (.CI(return_counter_n0_carry__4_n_0),
        .CO({return_counter_n0_carry__5_n_0,return_counter_n0_carry__5_n_1,return_counter_n0_carry__5_n_2,return_counter_n0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[28:25]),
        .S(return_counter_r[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 return_counter_n0_carry__6
       (.CI(return_counter_n0_carry__5_n_0),
        .CO({NLW_return_counter_n0_carry__6_CO_UNCONNECTED[3:2],return_counter_n0_carry__6_n_2,return_counter_n0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_return_counter_n0_carry__6_O_UNCONNECTED[3],in22[31:29]}),
        .S({1'b0,return_counter_r[31:29]}));
  LUT2 #(
    .INIT(4'h1)) 
    \return_counter_r[0]_i_1 
       (.I0(state_r[1]),
        .I1(return_counter_r[0]),
        .O(return_counter_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[10]_i_1 
       (.I0(state_r[1]),
        .I1(in22[10]),
        .O(return_counter_n[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[11]_i_1 
       (.I0(state_r[1]),
        .I1(in22[11]),
        .O(return_counter_n[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[12]_i_1 
       (.I0(state_r[1]),
        .I1(in22[12]),
        .O(return_counter_n[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[13]_i_1 
       (.I0(state_r[1]),
        .I1(in22[13]),
        .O(return_counter_n[13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[14]_i_1 
       (.I0(state_r[1]),
        .I1(in22[14]),
        .O(return_counter_n[14]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[15]_i_1 
       (.I0(state_r[1]),
        .I1(in22[15]),
        .O(return_counter_n[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[16]_i_1 
       (.I0(state_r[1]),
        .I1(in22[16]),
        .O(return_counter_n[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[17]_i_1 
       (.I0(state_r[1]),
        .I1(in22[17]),
        .O(return_counter_n[17]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[18]_i_1 
       (.I0(state_r[1]),
        .I1(in22[18]),
        .O(return_counter_n[18]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[19]_i_1 
       (.I0(state_r[1]),
        .I1(in22[19]),
        .O(return_counter_n[19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[1]_i_1 
       (.I0(state_r[1]),
        .I1(in22[1]),
        .O(return_counter_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[20]_i_1 
       (.I0(state_r[1]),
        .I1(in22[20]),
        .O(return_counter_n[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[21]_i_1 
       (.I0(state_r[1]),
        .I1(in22[21]),
        .O(return_counter_n[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[22]_i_1 
       (.I0(state_r[1]),
        .I1(in22[22]),
        .O(return_counter_n[22]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[23]_i_1 
       (.I0(state_r[1]),
        .I1(in22[23]),
        .O(return_counter_n[23]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[24]_i_1 
       (.I0(state_r[1]),
        .I1(in22[24]),
        .O(return_counter_n[24]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[25]_i_1 
       (.I0(state_r[1]),
        .I1(in22[25]),
        .O(return_counter_n[25]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[26]_i_1 
       (.I0(state_r[1]),
        .I1(in22[26]),
        .O(return_counter_n[26]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[27]_i_1 
       (.I0(state_r[1]),
        .I1(in22[27]),
        .O(return_counter_n[27]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[28]_i_1 
       (.I0(state_r[1]),
        .I1(in22[28]),
        .O(return_counter_n[28]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[29]_i_1 
       (.I0(state_r[1]),
        .I1(in22[29]),
        .O(return_counter_n[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[2]_i_1 
       (.I0(state_r[1]),
        .I1(in22[2]),
        .O(return_counter_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[30]_i_1 
       (.I0(state_r[1]),
        .I1(in22[30]),
        .O(return_counter_n[30]));
  LUT5 #(
    .INIT(32'h000008F0)) 
    \return_counter_r[31]_i_1 
       (.I0(line_complete0),
        .I1(pixel_complete_dbg),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .I4(state_r[2]),
        .O(return_counter_n_3));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[31]_i_2 
       (.I0(state_r[1]),
        .I1(in22[31]),
        .O(return_counter_n[31]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[3]_i_1 
       (.I0(state_r[1]),
        .I1(in22[3]),
        .O(return_counter_n[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[4]_i_1 
       (.I0(state_r[1]),
        .I1(in22[4]),
        .O(return_counter_n[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[5]_i_1 
       (.I0(state_r[1]),
        .I1(in22[5]),
        .O(return_counter_n[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[6]_i_1 
       (.I0(state_r[1]),
        .I1(in22[6]),
        .O(return_counter_n[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[7]_i_1 
       (.I0(state_r[1]),
        .I1(in22[7]),
        .O(return_counter_n[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[8]_i_1 
       (.I0(state_r[1]),
        .I1(in22[8]),
        .O(return_counter_n[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \return_counter_r[9]_i_1 
       (.I0(state_r[1]),
        .I1(in22[9]),
        .O(return_counter_n[9]));
  FDCE \return_counter_r_reg[0] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[0]),
        .Q(return_counter_r[0]));
  FDCE \return_counter_r_reg[10] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[10]),
        .Q(return_counter_r[10]));
  FDCE \return_counter_r_reg[11] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[11]),
        .Q(return_counter_r[11]));
  FDCE \return_counter_r_reg[12] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[12]),
        .Q(return_counter_r[12]));
  FDCE \return_counter_r_reg[13] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[13]),
        .Q(return_counter_r[13]));
  FDCE \return_counter_r_reg[14] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[14]),
        .Q(return_counter_r[14]));
  FDCE \return_counter_r_reg[15] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[15]),
        .Q(return_counter_r[15]));
  FDCE \return_counter_r_reg[16] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[16]),
        .Q(return_counter_r[16]));
  FDCE \return_counter_r_reg[17] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[17]),
        .Q(return_counter_r[17]));
  FDCE \return_counter_r_reg[18] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[18]),
        .Q(return_counter_r[18]));
  FDCE \return_counter_r_reg[19] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[19]),
        .Q(return_counter_r[19]));
  FDCE \return_counter_r_reg[1] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[1]),
        .Q(return_counter_r[1]));
  FDCE \return_counter_r_reg[20] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[20]),
        .Q(return_counter_r[20]));
  FDCE \return_counter_r_reg[21] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[21]),
        .Q(return_counter_r[21]));
  FDCE \return_counter_r_reg[22] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[22]),
        .Q(return_counter_r[22]));
  FDCE \return_counter_r_reg[23] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[23]),
        .Q(return_counter_r[23]));
  FDCE \return_counter_r_reg[24] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[24]),
        .Q(return_counter_r[24]));
  FDCE \return_counter_r_reg[25] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[25]),
        .Q(return_counter_r[25]));
  FDCE \return_counter_r_reg[26] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[26]),
        .Q(return_counter_r[26]));
  FDCE \return_counter_r_reg[27] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[27]),
        .Q(return_counter_r[27]));
  FDCE \return_counter_r_reg[28] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[28]),
        .Q(return_counter_r[28]));
  FDCE \return_counter_r_reg[29] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[29]),
        .Q(return_counter_r[29]));
  FDCE \return_counter_r_reg[2] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[2]),
        .Q(return_counter_r[2]));
  FDCE \return_counter_r_reg[30] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[30]),
        .Q(return_counter_r[30]));
  FDCE \return_counter_r_reg[31] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[31]),
        .Q(return_counter_r[31]));
  FDCE \return_counter_r_reg[3] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[3]),
        .Q(return_counter_r[3]));
  FDCE \return_counter_r_reg[4] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[4]),
        .Q(return_counter_r[4]));
  FDCE \return_counter_r_reg[5] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[5]),
        .Q(return_counter_r[5]));
  FDCE \return_counter_r_reg[6] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[6]),
        .Q(return_counter_r[6]));
  FDCE \return_counter_r_reg[7] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[7]),
        .Q(return_counter_r[7]));
  FDCE \return_counter_r_reg[8] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[8]),
        .Q(return_counter_r[8]));
  FDCE \return_counter_r_reg[9] 
       (.C(clk),
        .CE(return_counter_n_3),
        .CLR(frame_clk_r_i_2_n_0),
        .D(return_counter_n[9]),
        .Q(return_counter_r[9]));
  LUT6 #(
    .INIT(64'h00515555FFAEAAAA)) 
    \shift_counter_r[0]_i_1 
       (.I0(\m_araddr_r[17]_i_3_n_0 ),
        .I1(m_arvalid_n_dbg_INST_0_i_6_n_0),
        .I2(DelayChain_inst_n_33),
        .I3(m_arvalid_n_dbg_INST_0_i_10_n_0),
        .I4(state_r[0]),
        .I5(shift_counter_r[0]),
        .O(\shift_counter_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h75778A88)) 
    \shift_counter_r[1]_i_1 
       (.I0(shift_counter_r[0]),
        .I1(m_arvalid_n_dbg_INST_0_i_1_n_0),
        .I2(line_complete0),
        .I3(m_arvalid_n_dbg_INST_0_i_2_n_0),
        .I4(shift_counter_r[1]),
        .O(\shift_counter_r[1]_i_1_n_0 ));
  FDPE \shift_counter_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift_counter_r[0]_i_1_n_0 ),
        .PRE(frame_clk_r_i_2_n_0),
        .Q(shift_counter_r[0]));
  FDCE \shift_counter_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\shift_counter_r[1]_i_1_n_0 ),
        .Q(shift_counter_r[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    start_frame_r_i_1
       (.I0(en),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .I3(state_r[2]),
        .I4(start_frame_r_reg_0),
        .O(start_frame_r_i_1_n_0));
  FDCE start_frame_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(frame_clk_r_i_2_n_0),
        .D(start_frame_r_i_1_n_0),
        .Q(start_frame_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_dbg[0]_INST_0 
       (.I0(state_r[1]),
        .I1(state_r[2]),
        .O(state_dbg[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_dbg[1]_INST_0 
       (.I0(state_r[0]),
        .I1(state_r[2]),
        .O(state_dbg[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state_dbg[2]_INST_0 
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .O(state_dbg[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \warmup_pulse_counter_r[0]_i_1 
       (.I0(warmup_pulse_counter_dbg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \warmup_pulse_counter_r[1]_i_1 
       (.I0(warmup_pulse_counter_dbg[0]),
        .I1(warmup_pulse_counter_dbg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \warmup_pulse_counter_r[2]_i_1 
       (.I0(warmup_pulse_counter_dbg[1]),
        .I1(warmup_pulse_counter_dbg[0]),
        .I2(warmup_pulse_counter_dbg[2]),
        .O(\warmup_pulse_counter_r[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \warmup_pulse_counter_r[3]_i_1 
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .O(warmup_pulse_counter_n));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \warmup_pulse_counter_r[3]_i_2 
       (.I0(warmup_pulse_counter_dbg[2]),
        .I1(warmup_pulse_counter_dbg[0]),
        .I2(warmup_pulse_counter_dbg[1]),
        .I3(warmup_pulse_counter_dbg[3]),
        .O(\warmup_pulse_counter_r[3]_i_2_n_0 ));
  FDCE \warmup_pulse_counter_r_reg[0] 
       (.C(clk),
        .CE(warmup_pulse_counter_n),
        .CLR(frame_clk_r_i_2_n_0),
        .D(p_0_in[0]),
        .Q(warmup_pulse_counter_dbg[0]));
  FDCE \warmup_pulse_counter_r_reg[1] 
       (.C(clk),
        .CE(warmup_pulse_counter_n),
        .CLR(frame_clk_r_i_2_n_0),
        .D(p_0_in[1]),
        .Q(warmup_pulse_counter_dbg[1]));
  FDCE \warmup_pulse_counter_r_reg[2] 
       (.C(clk),
        .CE(warmup_pulse_counter_n),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\warmup_pulse_counter_r[2]_i_1_n_0 ),
        .Q(warmup_pulse_counter_dbg[2]));
  FDCE \warmup_pulse_counter_r_reg[3] 
       (.C(clk),
        .CE(warmup_pulse_counter_n),
        .CLR(frame_clk_r_i_2_n_0),
        .D(\warmup_pulse_counter_r[3]_i_2_n_0 ),
        .Q(warmup_pulse_counter_dbg[3]));
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
