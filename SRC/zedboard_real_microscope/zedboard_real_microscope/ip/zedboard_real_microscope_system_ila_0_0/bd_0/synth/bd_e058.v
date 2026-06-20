//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_e058.bd
//Design : bd_e058
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_e058,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_e058,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "zedboard_real_microscope_system_ila_0_0.hwdef" *) 
module bd_e058
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arcache,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awcache,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXI_araddr,
    SLOT_3_AXI_arcache,
    SLOT_3_AXI_arlen,
    SLOT_3_AXI_arprot,
    SLOT_3_AXI_arready,
    SLOT_3_AXI_arsize,
    SLOT_3_AXI_arvalid,
    SLOT_3_AXI_awaddr,
    SLOT_3_AXI_awcache,
    SLOT_3_AXI_awlen,
    SLOT_3_AXI_awprot,
    SLOT_3_AXI_awready,
    SLOT_3_AXI_awsize,
    SLOT_3_AXI_awvalid,
    SLOT_3_AXI_bready,
    SLOT_3_AXI_bresp,
    SLOT_3_AXI_bvalid,
    SLOT_3_AXI_rdata,
    SLOT_3_AXI_rlast,
    SLOT_3_AXI_rready,
    SLOT_3_AXI_rresp,
    SLOT_3_AXI_rvalid,
    SLOT_3_AXI_wdata,
    SLOT_3_AXI_wlast,
    SLOT_3_AXI_wready,
    SLOT_3_AXI_wstrb,
    SLOT_3_AXI_wvalid,
    TRIG_IN_ack,
    TRIG_IN_trig,
    TRIG_OUT_ack,
    TRIG_OUT_trig,
    clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15,
    probe16,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input SLOT_0_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *) input SLOT_1_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_2_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE" *) input [3:0]SLOT_2_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN" *) input [7:0]SLOT_2_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *) input [2:0]SLOT_2_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *) input SLOT_2_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE" *) input [2:0]SLOT_2_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *) input SLOT_2_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *) input [31:0]SLOT_2_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE" *) input [3:0]SLOT_2_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN" *) input [7:0]SLOT_2_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *) input [2:0]SLOT_2_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *) input SLOT_2_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE" *) input [2:0]SLOT_2_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *) input SLOT_2_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *) input SLOT_2_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP" *) input [1:0]SLOT_2_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *) input SLOT_2_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *) input [63:0]SLOT_2_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST" *) input SLOT_2_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *) input SLOT_2_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *) input SLOT_2_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *) input [63:0]SLOT_2_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST" *) input SLOT_2_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *) input SLOT_2_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB" *) input [7:0]SLOT_2_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *) input SLOT_2_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_3_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *) input [3:0]SLOT_3_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *) input [7:0]SLOT_3_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *) input [2:0]SLOT_3_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *) input SLOT_3_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *) input [2:0]SLOT_3_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *) input SLOT_3_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *) input [31:0]SLOT_3_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *) input [3:0]SLOT_3_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *) input [7:0]SLOT_3_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *) input [2:0]SLOT_3_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *) input SLOT_3_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *) input [2:0]SLOT_3_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *) input SLOT_3_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *) input SLOT_3_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *) input [1:0]SLOT_3_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *) input SLOT_3_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *) input [31:0]SLOT_3_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *) input SLOT_3_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *) input SLOT_3_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP" *) input [1:0]SLOT_3_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *) input SLOT_3_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *) input [31:0]SLOT_3_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *) input SLOT_3_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *) input SLOT_3_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *) input [3:0]SLOT_3_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *) input SLOT_3_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_IN ACK" *) (* X_INTERFACE_MODE = "Slave" *) output [0:0]TRIG_IN_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_IN TRIG" *) input [0:0]TRIG_IN_trig;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT ACK" *) (* X_INTERFACE_MODE = "Master" *) input [0:0]TRIG_OUT_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:trigger:1.0 TRIG_OUT TRIG" *) output [0:0]TRIG_OUT_trig;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN zedboard_real_microscope_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [31:0]probe7;
  input [31:0]probe8;
  input [0:0]probe9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [63:0]SLOT_0_AXIS_tdata;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire SLOT_0_AXIS_tvalid;
  wire [63:0]SLOT_1_AXIS_tdata;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire SLOT_1_AXIS_tvalid;
  wire [31:0]SLOT_2_AXI_araddr;
  wire [3:0]SLOT_2_AXI_arcache;
  wire [7:0]SLOT_2_AXI_arlen;
  wire [2:0]SLOT_2_AXI_arprot;
  wire SLOT_2_AXI_arready;
  wire [2:0]SLOT_2_AXI_arsize;
  wire SLOT_2_AXI_arvalid;
  wire [31:0]SLOT_2_AXI_awaddr;
  wire [3:0]SLOT_2_AXI_awcache;
  wire [7:0]SLOT_2_AXI_awlen;
  wire [2:0]SLOT_2_AXI_awprot;
  wire SLOT_2_AXI_awready;
  wire [2:0]SLOT_2_AXI_awsize;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [63:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rlast;
  wire SLOT_2_AXI_rready;
  wire SLOT_2_AXI_rvalid;
  wire [63:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wlast;
  wire SLOT_2_AXI_wready;
  wire [7:0]SLOT_2_AXI_wstrb;
  wire SLOT_2_AXI_wvalid;
  wire [31:0]SLOT_3_AXI_araddr;
  wire [3:0]SLOT_3_AXI_arcache;
  wire [7:0]SLOT_3_AXI_arlen;
  wire [2:0]SLOT_3_AXI_arprot;
  wire SLOT_3_AXI_arready;
  wire [2:0]SLOT_3_AXI_arsize;
  wire SLOT_3_AXI_arvalid;
  wire [31:0]SLOT_3_AXI_awaddr;
  wire [3:0]SLOT_3_AXI_awcache;
  wire [7:0]SLOT_3_AXI_awlen;
  wire [2:0]SLOT_3_AXI_awprot;
  wire SLOT_3_AXI_awready;
  wire [2:0]SLOT_3_AXI_awsize;
  wire SLOT_3_AXI_awvalid;
  wire SLOT_3_AXI_bready;
  wire [1:0]SLOT_3_AXI_bresp;
  wire SLOT_3_AXI_bvalid;
  wire [31:0]SLOT_3_AXI_rdata;
  wire SLOT_3_AXI_rlast;
  wire SLOT_3_AXI_rready;
  wire [1:0]SLOT_3_AXI_rresp;
  wire SLOT_3_AXI_rvalid;
  wire [31:0]SLOT_3_AXI_wdata;
  wire SLOT_3_AXI_wlast;
  wire SLOT_3_AXI_wready;
  wire [3:0]SLOT_3_AXI_wstrb;
  wire SLOT_3_AXI_wvalid;
  wire \^TRIG_IN_ack ;
  wire [0:0]TRIG_IN_trig;
  wire [0:0]TRIG_OUT_ack;
  wire \^TRIG_OUT_trig ;
  wire clk;
  wire [63:0]net_slot_0_axis_tdata;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tready;
  wire net_slot_0_axis_tvalid;
  wire [63:0]net_slot_1_axis_tdata;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tready;
  wire net_slot_1_axis_tvalid;
  wire [1:0]net_slot_2_axi_ar_cnt;
  wire [1:0]net_slot_2_axi_ar_ctrl;
  wire [31:0]net_slot_2_axi_araddr;
  wire [3:0]net_slot_2_axi_arcache;
  wire [7:0]net_slot_2_axi_arlen;
  wire [2:0]net_slot_2_axi_arprot;
  wire net_slot_2_axi_arready;
  wire [2:0]net_slot_2_axi_arsize;
  wire net_slot_2_axi_arvalid;
  wire [1:0]net_slot_2_axi_aw_cnt;
  wire [1:0]net_slot_2_axi_aw_ctrl;
  wire [31:0]net_slot_2_axi_awaddr;
  wire [3:0]net_slot_2_axi_awcache;
  wire [7:0]net_slot_2_axi_awlen;
  wire [2:0]net_slot_2_axi_awprot;
  wire net_slot_2_axi_awready;
  wire [2:0]net_slot_2_axi_awsize;
  wire net_slot_2_axi_awvalid;
  wire [1:0]net_slot_2_axi_b_cnt;
  wire [1:0]net_slot_2_axi_b_ctrl;
  wire net_slot_2_axi_bready;
  wire [1:0]net_slot_2_axi_bresp;
  wire net_slot_2_axi_bvalid;
  wire [1:0]net_slot_2_axi_r_cnt;
  wire [2:0]net_slot_2_axi_r_ctrl;
  wire [63:0]net_slot_2_axi_rdata;
  wire net_slot_2_axi_rlast;
  wire net_slot_2_axi_rready;
  wire net_slot_2_axi_rvalid;
  wire [2:0]net_slot_2_axi_w_ctrl;
  wire [63:0]net_slot_2_axi_wdata;
  wire net_slot_2_axi_wlast;
  wire net_slot_2_axi_wready;
  wire [7:0]net_slot_2_axi_wstrb;
  wire net_slot_2_axi_wvalid;
  wire [1:0]net_slot_3_axi_ar_cnt;
  wire [1:0]net_slot_3_axi_ar_ctrl;
  wire [31:0]net_slot_3_axi_araddr;
  wire [3:0]net_slot_3_axi_arcache;
  wire [7:0]net_slot_3_axi_arlen;
  wire [2:0]net_slot_3_axi_arprot;
  wire net_slot_3_axi_arready;
  wire [2:0]net_slot_3_axi_arsize;
  wire net_slot_3_axi_arvalid;
  wire [1:0]net_slot_3_axi_aw_cnt;
  wire [1:0]net_slot_3_axi_aw_ctrl;
  wire [31:0]net_slot_3_axi_awaddr;
  wire [3:0]net_slot_3_axi_awcache;
  wire [7:0]net_slot_3_axi_awlen;
  wire [2:0]net_slot_3_axi_awprot;
  wire net_slot_3_axi_awready;
  wire [2:0]net_slot_3_axi_awsize;
  wire net_slot_3_axi_awvalid;
  wire [1:0]net_slot_3_axi_b_cnt;
  wire [1:0]net_slot_3_axi_b_ctrl;
  wire net_slot_3_axi_bready;
  wire [1:0]net_slot_3_axi_bresp;
  wire net_slot_3_axi_bvalid;
  wire [1:0]net_slot_3_axi_r_cnt;
  wire [2:0]net_slot_3_axi_r_ctrl;
  wire [31:0]net_slot_3_axi_rdata;
  wire net_slot_3_axi_rlast;
  wire net_slot_3_axi_rready;
  wire [1:0]net_slot_3_axi_rresp;
  wire net_slot_3_axi_rvalid;
  wire [2:0]net_slot_3_axi_w_ctrl;
  wire [31:0]net_slot_3_axi_wdata;
  wire net_slot_3_axi_wlast;
  wire net_slot_3_axi_wready;
  wire [3:0]net_slot_3_axi_wstrb;
  wire net_slot_3_axi_wvalid;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire [0:0]probe10;
  wire [0:0]probe11;
  wire [0:0]probe12;
  wire [0:0]probe13;
  wire [0:0]probe14;
  wire [0:0]probe15;
  wire [0:0]probe16;
  wire [0:0]probe2;
  wire [0:0]probe3;
  wire [0:0]probe4;
  wire [0:0]probe5;
  wire [0:0]probe6;
  wire [31:0]probe7;
  wire [31:0]probe8;
  wire [0:0]probe9;
  wire resetn;

  assign TRIG_IN_ack[0] = \^TRIG_IN_ack ;
  assign TRIG_OUT_trig[0] = \^TRIG_OUT_trig ;
  bd_e058_g_inst_0 g_inst
       (.aclk(clk),
        .aresetn(resetn),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tready(net_slot_0_axis_tready),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tready(net_slot_1_axis_tready),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axi_ar_cnt(net_slot_2_axi_ar_cnt),
        .m_slot_2_axi_araddr(net_slot_2_axi_araddr),
        .m_slot_2_axi_arcache(net_slot_2_axi_arcache),
        .m_slot_2_axi_arlen(net_slot_2_axi_arlen),
        .m_slot_2_axi_arprot(net_slot_2_axi_arprot),
        .m_slot_2_axi_arready(net_slot_2_axi_arready),
        .m_slot_2_axi_arsize(net_slot_2_axi_arsize),
        .m_slot_2_axi_arvalid(net_slot_2_axi_arvalid),
        .m_slot_2_axi_aw_cnt(net_slot_2_axi_aw_cnt),
        .m_slot_2_axi_awaddr(net_slot_2_axi_awaddr),
        .m_slot_2_axi_awcache(net_slot_2_axi_awcache),
        .m_slot_2_axi_awlen(net_slot_2_axi_awlen),
        .m_slot_2_axi_awprot(net_slot_2_axi_awprot),
        .m_slot_2_axi_awready(net_slot_2_axi_awready),
        .m_slot_2_axi_awsize(net_slot_2_axi_awsize),
        .m_slot_2_axi_awvalid(net_slot_2_axi_awvalid),
        .m_slot_2_axi_b_cnt(net_slot_2_axi_b_cnt),
        .m_slot_2_axi_bready(net_slot_2_axi_bready),
        .m_slot_2_axi_bresp(net_slot_2_axi_bresp),
        .m_slot_2_axi_bvalid(net_slot_2_axi_bvalid),
        .m_slot_2_axi_r_cnt(net_slot_2_axi_r_cnt),
        .m_slot_2_axi_rdata(net_slot_2_axi_rdata),
        .m_slot_2_axi_rlast(net_slot_2_axi_rlast),
        .m_slot_2_axi_rready(net_slot_2_axi_rready),
        .m_slot_2_axi_rvalid(net_slot_2_axi_rvalid),
        .m_slot_2_axi_wdata(net_slot_2_axi_wdata),
        .m_slot_2_axi_wlast(net_slot_2_axi_wlast),
        .m_slot_2_axi_wready(net_slot_2_axi_wready),
        .m_slot_2_axi_wstrb(net_slot_2_axi_wstrb),
        .m_slot_2_axi_wvalid(net_slot_2_axi_wvalid),
        .m_slot_3_axi_ar_cnt(net_slot_3_axi_ar_cnt),
        .m_slot_3_axi_araddr(net_slot_3_axi_araddr),
        .m_slot_3_axi_arcache(net_slot_3_axi_arcache),
        .m_slot_3_axi_arlen(net_slot_3_axi_arlen),
        .m_slot_3_axi_arprot(net_slot_3_axi_arprot),
        .m_slot_3_axi_arready(net_slot_3_axi_arready),
        .m_slot_3_axi_arsize(net_slot_3_axi_arsize),
        .m_slot_3_axi_arvalid(net_slot_3_axi_arvalid),
        .m_slot_3_axi_aw_cnt(net_slot_3_axi_aw_cnt),
        .m_slot_3_axi_awaddr(net_slot_3_axi_awaddr),
        .m_slot_3_axi_awcache(net_slot_3_axi_awcache),
        .m_slot_3_axi_awlen(net_slot_3_axi_awlen),
        .m_slot_3_axi_awprot(net_slot_3_axi_awprot),
        .m_slot_3_axi_awready(net_slot_3_axi_awready),
        .m_slot_3_axi_awsize(net_slot_3_axi_awsize),
        .m_slot_3_axi_awvalid(net_slot_3_axi_awvalid),
        .m_slot_3_axi_b_cnt(net_slot_3_axi_b_cnt),
        .m_slot_3_axi_bready(net_slot_3_axi_bready),
        .m_slot_3_axi_bresp(net_slot_3_axi_bresp),
        .m_slot_3_axi_bvalid(net_slot_3_axi_bvalid),
        .m_slot_3_axi_r_cnt(net_slot_3_axi_r_cnt),
        .m_slot_3_axi_rdata(net_slot_3_axi_rdata),
        .m_slot_3_axi_rlast(net_slot_3_axi_rlast),
        .m_slot_3_axi_rready(net_slot_3_axi_rready),
        .m_slot_3_axi_rresp(net_slot_3_axi_rresp),
        .m_slot_3_axi_rvalid(net_slot_3_axi_rvalid),
        .m_slot_3_axi_wdata(net_slot_3_axi_wdata),
        .m_slot_3_axi_wlast(net_slot_3_axi_wlast),
        .m_slot_3_axi_wready(net_slot_3_axi_wready),
        .m_slot_3_axi_wstrb(net_slot_3_axi_wstrb),
        .m_slot_3_axi_wvalid(net_slot_3_axi_wvalid),
        .slot_0_axis_tdata(SLOT_0_AXIS_tdata),
        .slot_0_axis_tlast(SLOT_0_AXIS_tlast),
        .slot_0_axis_tready(SLOT_0_AXIS_tready),
        .slot_0_axis_tvalid(SLOT_0_AXIS_tvalid),
        .slot_1_axis_tdata(SLOT_1_AXIS_tdata),
        .slot_1_axis_tlast(SLOT_1_AXIS_tlast),
        .slot_1_axis_tready(SLOT_1_AXIS_tready),
        .slot_1_axis_tvalid(SLOT_1_AXIS_tvalid),
        .slot_2_axi_araddr(SLOT_2_AXI_araddr),
        .slot_2_axi_arcache(SLOT_2_AXI_arcache),
        .slot_2_axi_arlen(SLOT_2_AXI_arlen),
        .slot_2_axi_arprot(SLOT_2_AXI_arprot),
        .slot_2_axi_arready(SLOT_2_AXI_arready),
        .slot_2_axi_arsize(SLOT_2_AXI_arsize),
        .slot_2_axi_arvalid(SLOT_2_AXI_arvalid),
        .slot_2_axi_awaddr(SLOT_2_AXI_awaddr),
        .slot_2_axi_awcache(SLOT_2_AXI_awcache),
        .slot_2_axi_awlen(SLOT_2_AXI_awlen),
        .slot_2_axi_awprot(SLOT_2_AXI_awprot),
        .slot_2_axi_awready(SLOT_2_AXI_awready),
        .slot_2_axi_awsize(SLOT_2_AXI_awsize),
        .slot_2_axi_awvalid(SLOT_2_AXI_awvalid),
        .slot_2_axi_bready(SLOT_2_AXI_bready),
        .slot_2_axi_bresp(SLOT_2_AXI_bresp),
        .slot_2_axi_bvalid(SLOT_2_AXI_bvalid),
        .slot_2_axi_rdata(SLOT_2_AXI_rdata),
        .slot_2_axi_rlast(SLOT_2_AXI_rlast),
        .slot_2_axi_rready(SLOT_2_AXI_rready),
        .slot_2_axi_rvalid(SLOT_2_AXI_rvalid),
        .slot_2_axi_wdata(SLOT_2_AXI_wdata),
        .slot_2_axi_wlast(SLOT_2_AXI_wlast),
        .slot_2_axi_wready(SLOT_2_AXI_wready),
        .slot_2_axi_wstrb(SLOT_2_AXI_wstrb),
        .slot_2_axi_wvalid(SLOT_2_AXI_wvalid),
        .slot_3_axi_araddr(SLOT_3_AXI_araddr),
        .slot_3_axi_arcache(SLOT_3_AXI_arcache),
        .slot_3_axi_arlen(SLOT_3_AXI_arlen),
        .slot_3_axi_arprot(SLOT_3_AXI_arprot),
        .slot_3_axi_arready(SLOT_3_AXI_arready),
        .slot_3_axi_arsize(SLOT_3_AXI_arsize),
        .slot_3_axi_arvalid(SLOT_3_AXI_arvalid),
        .slot_3_axi_awaddr(SLOT_3_AXI_awaddr),
        .slot_3_axi_awcache(SLOT_3_AXI_awcache),
        .slot_3_axi_awlen(SLOT_3_AXI_awlen),
        .slot_3_axi_awprot(SLOT_3_AXI_awprot),
        .slot_3_axi_awready(SLOT_3_AXI_awready),
        .slot_3_axi_awsize(SLOT_3_AXI_awsize),
        .slot_3_axi_awvalid(SLOT_3_AXI_awvalid),
        .slot_3_axi_bready(SLOT_3_AXI_bready),
        .slot_3_axi_bresp(SLOT_3_AXI_bresp),
        .slot_3_axi_bvalid(SLOT_3_AXI_bvalid),
        .slot_3_axi_rdata(SLOT_3_AXI_rdata),
        .slot_3_axi_rlast(SLOT_3_AXI_rlast),
        .slot_3_axi_rready(SLOT_3_AXI_rready),
        .slot_3_axi_rresp(SLOT_3_AXI_rresp),
        .slot_3_axi_rvalid(SLOT_3_AXI_rvalid),
        .slot_3_axi_wdata(SLOT_3_AXI_wdata),
        .slot_3_axi_wlast(SLOT_3_AXI_wlast),
        .slot_3_axi_wready(SLOT_3_AXI_wready),
        .slot_3_axi_wstrb(SLOT_3_AXI_wstrb),
        .slot_3_axi_wvalid(SLOT_3_AXI_wvalid));
  bd_e058_ila_lib_0 ila_lib
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe10(probe10),
        .probe11(probe11),
        .probe12(probe12),
        .probe13(probe13),
        .probe14(probe14),
        .probe15(probe15),
        .probe16(probe16),
        .probe17(net_slot_0_axis_tdata),
        .probe18(net_slot_0_axis_tvalid),
        .probe19(net_slot_0_axis_tready),
        .probe2(probe2),
        .probe20(net_slot_0_axis_tlast),
        .probe21(net_slot_1_axis_tdata),
        .probe22(net_slot_1_axis_tvalid),
        .probe23(net_slot_1_axis_tready),
        .probe24(net_slot_1_axis_tlast),
        .probe25(net_slot_2_axi_ar_cnt),
        .probe26(net_slot_2_axi_araddr),
        .probe27(net_slot_2_axi_arcache),
        .probe28(net_slot_2_axi_arlen),
        .probe29(net_slot_2_axi_arprot),
        .probe3(probe3),
        .probe30(net_slot_2_axi_arsize),
        .probe31(net_slot_2_axi_aw_cnt),
        .probe32(net_slot_2_axi_awaddr),
        .probe33(net_slot_2_axi_awcache),
        .probe34(net_slot_2_axi_awlen),
        .probe35(net_slot_2_axi_awprot),
        .probe36(net_slot_2_axi_awsize),
        .probe37(net_slot_2_axi_b_cnt),
        .probe38(net_slot_2_axi_bresp),
        .probe39(net_slot_2_axi_r_cnt),
        .probe4(probe4),
        .probe40(net_slot_2_axi_rdata),
        .probe41(net_slot_2_axi_wdata),
        .probe42(net_slot_2_axi_wstrb),
        .probe43(net_slot_2_axi_aw_ctrl),
        .probe44(net_slot_2_axi_w_ctrl),
        .probe45(net_slot_2_axi_b_ctrl),
        .probe46(net_slot_2_axi_ar_ctrl),
        .probe47(net_slot_2_axi_r_ctrl),
        .probe48(net_slot_3_axi_ar_cnt),
        .probe49(net_slot_3_axi_araddr),
        .probe5(probe5),
        .probe50(net_slot_3_axi_arcache),
        .probe51(net_slot_3_axi_arlen),
        .probe52(net_slot_3_axi_arprot),
        .probe53(net_slot_3_axi_arsize),
        .probe54(net_slot_3_axi_aw_cnt),
        .probe55(net_slot_3_axi_awaddr),
        .probe56(net_slot_3_axi_awcache),
        .probe57(net_slot_3_axi_awlen),
        .probe58(net_slot_3_axi_awprot),
        .probe59(net_slot_3_axi_awsize),
        .probe6(probe6),
        .probe60(net_slot_3_axi_b_cnt),
        .probe61(net_slot_3_axi_bresp),
        .probe62(net_slot_3_axi_r_cnt),
        .probe63(net_slot_3_axi_rdata),
        .probe64(net_slot_3_axi_rresp),
        .probe65(net_slot_3_axi_wdata),
        .probe66(net_slot_3_axi_wstrb),
        .probe67(net_slot_3_axi_aw_ctrl),
        .probe68(net_slot_3_axi_w_ctrl),
        .probe69(net_slot_3_axi_b_ctrl),
        .probe7(probe7),
        .probe70(net_slot_3_axi_ar_ctrl),
        .probe71(net_slot_3_axi_r_ctrl),
        .probe8(probe8),
        .probe9(probe9),
        .trig_in(TRIG_IN_trig),
        .trig_in_ack(\^TRIG_IN_ack ),
        .trig_out(\^TRIG_OUT_trig ),
        .trig_out_ack(TRIG_OUT_ack));
  bd_e058_slot_2_ar_0 slot_2_ar
       (.In0(net_slot_2_axi_arvalid),
        .In1(net_slot_2_axi_arready),
        .dout(net_slot_2_axi_ar_ctrl));
  bd_e058_slot_2_aw_0 slot_2_aw
       (.In0(net_slot_2_axi_awvalid),
        .In1(net_slot_2_axi_awready),
        .dout(net_slot_2_axi_aw_ctrl));
  bd_e058_slot_2_b_0 slot_2_b
       (.In0(net_slot_2_axi_bvalid),
        .In1(net_slot_2_axi_bready),
        .dout(net_slot_2_axi_b_ctrl));
  bd_e058_slot_2_r_0 slot_2_r
       (.In0(net_slot_2_axi_rvalid),
        .In1(net_slot_2_axi_rready),
        .In2(net_slot_2_axi_rlast),
        .dout(net_slot_2_axi_r_ctrl));
  bd_e058_slot_2_w_0 slot_2_w
       (.In0(net_slot_2_axi_wvalid),
        .In1(net_slot_2_axi_wready),
        .In2(net_slot_2_axi_wlast),
        .dout(net_slot_2_axi_w_ctrl));
  bd_e058_slot_3_ar_0 slot_3_ar
       (.In0(net_slot_3_axi_arvalid),
        .In1(net_slot_3_axi_arready),
        .dout(net_slot_3_axi_ar_ctrl));
  bd_e058_slot_3_aw_0 slot_3_aw
       (.In0(net_slot_3_axi_awvalid),
        .In1(net_slot_3_axi_awready),
        .dout(net_slot_3_axi_aw_ctrl));
  bd_e058_slot_3_b_0 slot_3_b
       (.In0(net_slot_3_axi_bvalid),
        .In1(net_slot_3_axi_bready),
        .dout(net_slot_3_axi_b_ctrl));
  bd_e058_slot_3_r_0 slot_3_r
       (.In0(net_slot_3_axi_rvalid),
        .In1(net_slot_3_axi_rready),
        .In2(net_slot_3_axi_rlast),
        .dout(net_slot_3_axi_r_ctrl));
  bd_e058_slot_3_w_0 slot_3_w
       (.In0(net_slot_3_axi_wvalid),
        .In1(net_slot_3_axi_wready),
        .In2(net_slot_3_axi_wlast),
        .dout(net_slot_3_axi_w_ctrl));
endmodule
