// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Mar 10 16:56:14 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_negedge_detect_0_0/histo_negedge_detect_0_0_sim_netlist.v
// Design      : histo_negedge_detect_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "histo_negedge_detect_0_0,negedge_detect,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "negedge_detect,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module histo_negedge_detect_0_0
   (clk,
    aresetn,
    edge_in,
    edge_valid,
    detect_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input edge_in;
  input edge_valid;
  output detect_out;

  wire aresetn;
  wire clk;
  wire detect_out;
  wire edge_in;
  wire edge_valid;

  histo_negedge_detect_0_0_negedge_detect inst
       (.aresetn(aresetn),
        .clk(clk),
        .detect_out(detect_out),
        .edge_in(edge_in),
        .edge_valid(edge_valid));
endmodule

(* ORIG_REF_NAME = "negedge_detect" *) 
module histo_negedge_detect_0_0_negedge_detect
   (detect_out,
    edge_in,
    clk,
    edge_valid,
    aresetn);
  output detect_out;
  input edge_in;
  input clk;
  input edge_valid;
  input aresetn;

  wire aresetn;
  wire clk;
  wire detect_out;
  wire detect_out0_n_0;
  wire detect_out_i_1_n_0;
  wire edge_in;
  wire edge_valid;
  wire edge_valid_old;
  wire edge_valid_very_old;
  wire old;
  wire very_old;
  wire very_very_old;
  wire very_very_old_i_1_n_0;

  LUT3 #(
    .INIT(8'h08)) 
    detect_out0
       (.I0(very_very_old),
        .I1(edge_valid_very_old),
        .I2(very_old),
        .O(detect_out0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    detect_out_i_1
       (.I0(aresetn),
        .O(detect_out_i_1_n_0));
  FDCE detect_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(detect_out_i_1_n_0),
        .D(detect_out0_n_0),
        .Q(detect_out));
  FDCE edge_valid_old_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(detect_out_i_1_n_0),
        .D(edge_valid),
        .Q(edge_valid_old));
  FDCE edge_valid_very_old_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(detect_out_i_1_n_0),
        .D(edge_valid_old),
        .Q(edge_valid_very_old));
  FDCE old_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(detect_out_i_1_n_0),
        .D(edge_in),
        .Q(old));
  FDCE very_old_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(detect_out_i_1_n_0),
        .D(old),
        .Q(very_old));
  LUT3 #(
    .INIT(8'hB8)) 
    very_very_old_i_1
       (.I0(very_old),
        .I1(aresetn),
        .I2(very_very_old),
        .O(very_very_old_i_1_n_0));
  FDRE very_very_old_reg
       (.C(clk),
        .CE(1'b1),
        .D(very_very_old_i_1_n_0),
        .Q(very_very_old),
        .R(1'b0));
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
