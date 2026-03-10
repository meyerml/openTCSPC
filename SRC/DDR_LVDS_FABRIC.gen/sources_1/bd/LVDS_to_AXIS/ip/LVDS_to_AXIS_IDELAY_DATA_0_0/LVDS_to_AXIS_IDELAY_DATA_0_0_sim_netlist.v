// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar  9 14:28:57 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/DDR_LVDS_FABRIC.gen/sources_1/bd/LVDS_to_AXIS/ip/LVDS_to_AXIS_IDELAY_DATA_0_0/LVDS_to_AXIS_IDELAY_DATA_0_0_sim_netlist.v
// Design      : LVDS_to_AXIS_IDELAY_DATA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_IDELAY_DATA_0_0,IDELAY_DATA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "IDELAY_DATA,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module LVDS_to_AXIS_IDELAY_DATA_0_0
   (IDATAIN,
    C,
    CNTVALUEIN,
    LD,
    DATAOUT);
  input IDATAIN;
  input C;
  input [4:0]CNTVALUEIN;
  input LD;
  output DATAOUT;

  wire C;
  wire [4:0]CNTVALUEIN;
  wire DATAOUT;
  wire IDATAIN;
  wire LD;

  LVDS_to_AXIS_IDELAY_DATA_0_0_IDELAY_DATA inst
       (.C(C),
        .CNTVALUEIN(CNTVALUEIN),
        .DATAOUT(DATAOUT),
        .IDATAIN(IDATAIN),
        .LD(LD));
endmodule

(* ORIG_REF_NAME = "IDELAY_DATA" *) 
module LVDS_to_AXIS_IDELAY_DATA_0_0_IDELAY_DATA
   (DATAOUT,
    C,
    IDATAIN,
    LD,
    CNTVALUEIN);
  output DATAOUT;
  input C;
  input IDATAIN;
  input LD;
  input [4:0]CNTVALUEIN;

  wire C;
  wire [4:0]CNTVALUEIN;
  wire DATAOUT;
  wire IDATAIN;
  wire LD;
  wire [4:0]NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(13),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("CLOCK")) 
    IDELAYE2_inst
       (.C(C),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(CNTVALUEIN),
        .CNTVALUEOUT(NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b1),
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
