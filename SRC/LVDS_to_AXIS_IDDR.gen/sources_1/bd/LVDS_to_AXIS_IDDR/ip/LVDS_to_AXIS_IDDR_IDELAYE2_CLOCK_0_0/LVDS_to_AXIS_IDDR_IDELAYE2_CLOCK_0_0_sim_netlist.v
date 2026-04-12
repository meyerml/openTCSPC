// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 12 20:17:00 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/openTCSPC3/SRC/LVDS_to_AXIS_IDDR.gen/sources_1/bd/LVDS_to_AXIS_IDDR/ip/LVDS_to_AXIS_IDDR_IDELAYE2_CLOCK_0_0/LVDS_to_AXIS_IDDR_IDELAYE2_CLOCK_0_0_sim_netlist.v
// Design      : LVDS_to_AXIS_IDDR_IDELAYE2_CLOCK_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_IDDR_IDELAYE2_CLOCK_0_0,IDELAYE2_CLOCK,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "IDELAYE2_CLOCK,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module LVDS_to_AXIS_IDDR_IDELAYE2_CLOCK_0_0
   (clk,
    CNTVALUEIN,
    LD,
    IDATAIN,
    DATAOUT,
    CNTVALUEOUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_IDDR_clk, INSERT_VIP 0" *) input clk;
  input [4:0]CNTVALUEIN;
  input LD;
  input IDATAIN;
  output DATAOUT;
  output [4:0]CNTVALUEOUT;

  wire [4:0]CNTVALUEIN;
  wire [4:0]CNTVALUEOUT;
  wire DATAOUT;
  wire IDATAIN;
  wire LD;
  wire clk;

  LVDS_to_AXIS_IDDR_IDELAYE2_CLOCK_0_0_IDELAYE2_CLOCK inst
       (.CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(CNTVALUEOUT),
        .DATAOUT(DATAOUT),
        .IDATAIN(IDATAIN),
        .LD(LD),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "IDELAYE2_CLOCK" *) 
module LVDS_to_AXIS_IDDR_IDELAYE2_CLOCK_0_0_IDELAYE2_CLOCK
   (DATAOUT,
    CNTVALUEOUT,
    clk,
    IDATAIN,
    LD,
    CNTVALUEIN);
  output DATAOUT;
  output [4:0]CNTVALUEOUT;
  input clk;
  input IDATAIN;
  input LD;
  input [4:0]CNTVALUEIN;

  wire [4:0]CNTVALUEIN;
  wire [4:0]CNTVALUEOUT;
  wire DATAOUT;
  wire IDATAIN;
  wire LD;
  wire clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("CLOCK")) 
    IDELAYE2_inst
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(CNTVALUEOUT),
        .DATAIN(1'b0),
        .DATAOUT(DATAOUT),
        .IDATAIN(IDATAIN),
        .INC(1'b0),
        .LD(LD),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
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
