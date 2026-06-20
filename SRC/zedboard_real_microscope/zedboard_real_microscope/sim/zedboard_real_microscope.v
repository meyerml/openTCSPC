//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Fri Jun 19 12:07:36 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target zedboard_real_microscope.bd
//Design      : zedboard_real_microscope
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module s00_couplers_imp_W7XFIS
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [63:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [7:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [7:0]S_AXI_awlen;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [63:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [7:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  zedboard_real_microscope_axi_mem_intercon_imp_auto_pc_0 auto_pc
       (.aclk(S_ACLK),
        .aresetn(S_ARESETN),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule

(* CORE_GENERATION_INFO = "zedboard_real_microscope,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zedboard_real_microscope,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=40,numReposBlks=38,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=3,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "zedboard_real_microscope.hwdef" *) 
module zedboard_real_microscope
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    buffer_overflow,
    disable_p,
    frame_clk,
    frame_clk_sim,
    frame_n,
    frame_p,
    l_clk_in_n,
    l_clk_in_p,
    l_clk_out_n,
    l_clk_out_p,
    level_shifter_en,
    line_clk,
    line_clk_sim,
    pixel_clk,
    pixel_clk_sim,
    refclk_out_sim,
    refres_p,
    sdo_n,
    sdo_p,
    spi_cs_n,
    spi_miso,
    spi_mosi,
    spi_sclk,
    stop_out_sim);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output [0:0]buffer_overflow;
  output [0:0]disable_p;
  input frame_clk;
  output frame_clk_sim;
  input frame_n;
  input frame_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_N, CLK_DOMAIN zedboard_real_microscope_l_clk_in_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input l_clk_in_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.L_CLK_IN_P, CLK_DOMAIN zedboard_real_microscope_l_clk_in_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input l_clk_in_p;
  output l_clk_out_n;
  output l_clk_out_p;
  output [0:0]level_shifter_en;
  input line_clk;
  output line_clk_sim;
  input pixel_clk;
  output pixel_clk_sim;
  output refclk_out_sim;
  output [0:0]refres_p;
  input sdo_n;
  input sdo_p;
  output [0:0]spi_cs_n;
  input spi_miso;
  output spi_mosi;
  output spi_sclk;
  output stop_out_sim;

  wire [0:0]ARESETN_1;
  wire [14:0]BINS_TO_READ_Dout;
  wire [4:0]CNTVALUEIN_CLK_Dout;
  wire [4:0]CNTVALUEIN_FRAME_Dout;
  wire [4:0]CNTVALUEIN_SDO_Dout;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire [0:0]EMULATOR_en_Dout;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  (* CONN_BUS_INFO = "Histogramming_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]Histogramming_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "Histogramming_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire Histogramming_0_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "Histogramming_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire Histogramming_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "Histogramming_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire Histogramming_0_M_AXIS_TVALID;
  wire Histogramming_0_buffer_almost_full;
  (* CONN_BUS_INFO = "Histogramming_TRIG_OUT xilinx.com:interface:trigger:1.0 None ACK" *) (* DONT_TOUCH *) wire [0:0]Histogramming_TRIG_OUT_ACK;
  (* CONN_BUS_INFO = "Histogramming_TRIG_OUT xilinx.com:interface:trigger:1.0 None TRIG" *) (* DONT_TOUCH *) wire Histogramming_TRIG_OUT_TRIG;
  wire [0:0]IDELAYE2_LD_Dout;
  wire [31:0]IMAGE_SIZE_Dout;
  wire [15:0]LOG_2_BINWIDTH_Dout;
  wire LVDS_to_AXIS_0_Buffer_overflow;
  (* CONN_BUS_INFO = "LVDS_to_AXIS_0_M_AXIS_0 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]LVDS_to_AXIS_0_M_AXIS_0_TDATA;
  (* CONN_BUS_INFO = "LVDS_to_AXIS_0_M_AXIS_0 xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire LVDS_to_AXIS_0_M_AXIS_0_TREADY;
  (* CONN_BUS_INFO = "LVDS_to_AXIS_0_M_AXIS_0 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire LVDS_to_AXIS_0_M_AXIS_0_TVALID;
  wire [31:0]LVDS_to_AXIS_IDDR_0_axis_rd_data_count;
  wire [31:0]LVDS_to_AXIS_IDDR_0_axis_wr_data_count;
  wire LVDS_to_AXIS_IDDR_TRIG_OUT_ACK;
  wire LVDS_to_AXIS_IDDR_TRIG_OUT_TRIG;
  wire [31:0]MAX_PIXELS_Dout;
  wire Microscope_Emulator_0_TRIG_OUT_ACK;
  wire Microscope_Emulator_0_TRIG_OUT_TRIG;
  wire Microscope_Emulator_0_frame_clk;
  wire Microscope_Emulator_0_line_clk;
  wire Microscope_Emulator_0_pixel_clk;
  wire [31:0]PULSES_PER_PIXEL_Dout;
  wire [5:0]REFINDEX_BITS_Dout;
  wire [0:0]SECOND_ARESETN_Dout;
  wire [5:0]STOPRESULT_BITS_Dout;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [11:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_S2MM_AWREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_S2MM_AWVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_S2MM_BREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_S2MM_BVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [63:0]axi_dma_0_M_AXI_S2MM_WDATA;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_S2MM_WLAST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_S2MM_WREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [7:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_S2MM_WVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]axi_dma_0_M_AXI_SG_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_ARBURST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_dma_0_M_AXI_SG_ARCACHE;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]axi_dma_0_M_AXI_SG_ARLEN;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]axi_dma_0_M_AXI_SG_ARPROT;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_ARREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_dma_0_M_AXI_SG_ARSIZE;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_ARVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]axi_dma_0_M_AXI_SG_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_AWBURST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_dma_0_M_AXI_SG_AWCACHE;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axi_dma_0_M_AXI_SG_AWLEN;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]axi_dma_0_M_AXI_SG_AWPROT;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_AWREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_dma_0_M_AXI_SG_AWSIZE;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_AWVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_BREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_dma_0_M_AXI_SG_BRESP;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_BVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [31:0]axi_dma_0_M_AXI_SG_RDATA;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_RLAST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_RREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]axi_dma_0_M_AXI_SG_RRESP;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_RVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [31:0]axi_dma_0_M_AXI_SG_WDATA;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_WLAST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_WREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [3:0]axi_dma_0_M_AXI_SG_WSTRB;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXI_SG_WVALID;
  wire axi_dma_0_s2mm_introut;
  wire [31:0]axi_gpio_0_gpio2_io_o;
  wire [255:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_gpio_0_gpio_io_o1;
  wire [31:0]axi_gpio_1_gpio2_io_o;
  wire [31:0]axi_gpio_1_gpio_io_o;
  wire [31:0]axi_gpio_2_gpio2_io_o;
  wire [31:0]axi_gpio_2_gpio_io_o;
  wire [31:0]axi_gpio_3_gpio2_io_o;
  wire [31:0]axi_gpio_3_gpio_io_o;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [11:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [11:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [9:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [9:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire axi_smc_M01_AXI_WVALID;
  wire [8:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [8:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [8:0]axi_smc_M03_AXI_ARADDR;
  wire axi_smc_M03_AXI_ARREADY;
  wire axi_smc_M03_AXI_ARVALID;
  wire [8:0]axi_smc_M03_AXI_AWADDR;
  wire axi_smc_M03_AXI_AWREADY;
  wire axi_smc_M03_AXI_AWVALID;
  wire axi_smc_M03_AXI_BREADY;
  wire [1:0]axi_smc_M03_AXI_BRESP;
  wire axi_smc_M03_AXI_BVALID;
  wire [31:0]axi_smc_M03_AXI_RDATA;
  wire axi_smc_M03_AXI_RREADY;
  wire [1:0]axi_smc_M03_AXI_RRESP;
  wire axi_smc_M03_AXI_RVALID;
  wire [31:0]axi_smc_M03_AXI_WDATA;
  wire axi_smc_M03_AXI_WREADY;
  wire [3:0]axi_smc_M03_AXI_WSTRB;
  wire axi_smc_M03_AXI_WVALID;
  wire [6:0]axi_smc_M04_AXI_ARADDR;
  wire axi_smc_M04_AXI_ARREADY;
  wire axi_smc_M04_AXI_ARVALID;
  wire [6:0]axi_smc_M04_AXI_AWADDR;
  wire axi_smc_M04_AXI_AWREADY;
  wire axi_smc_M04_AXI_AWVALID;
  wire axi_smc_M04_AXI_BREADY;
  wire [1:0]axi_smc_M04_AXI_BRESP;
  wire axi_smc_M04_AXI_BVALID;
  wire [31:0]axi_smc_M04_AXI_RDATA;
  wire axi_smc_M04_AXI_RREADY;
  wire [1:0]axi_smc_M04_AXI_RRESP;
  wire axi_smc_M04_AXI_RVALID;
  wire [31:0]axi_smc_M04_AXI_WDATA;
  wire axi_smc_M04_AXI_WREADY;
  wire [3:0]axi_smc_M04_AXI_WSTRB;
  wire axi_smc_M04_AXI_WVALID;
  wire [8:0]axi_smc_main_M05_AXI_ARADDR;
  wire axi_smc_main_M05_AXI_ARREADY;
  wire axi_smc_main_M05_AXI_ARVALID;
  wire [8:0]axi_smc_main_M05_AXI_AWADDR;
  wire axi_smc_main_M05_AXI_AWREADY;
  wire axi_smc_main_M05_AXI_AWVALID;
  wire axi_smc_main_M05_AXI_BREADY;
  wire [1:0]axi_smc_main_M05_AXI_BRESP;
  wire axi_smc_main_M05_AXI_BVALID;
  wire [31:0]axi_smc_main_M05_AXI_RDATA;
  wire axi_smc_main_M05_AXI_RREADY;
  wire [1:0]axi_smc_main_M05_AXI_RRESP;
  wire axi_smc_main_M05_AXI_RVALID;
  wire [31:0]axi_smc_main_M05_AXI_WDATA;
  wire axi_smc_main_M05_AXI_WREADY;
  wire [3:0]axi_smc_main_M05_AXI_WSTRB;
  wire axi_smc_main_M05_AXI_WVALID;
  wire [8:0]axi_smc_main_M06_AXI_ARADDR;
  wire axi_smc_main_M06_AXI_ARREADY;
  wire axi_smc_main_M06_AXI_ARVALID;
  wire [8:0]axi_smc_main_M06_AXI_AWADDR;
  wire axi_smc_main_M06_AXI_AWREADY;
  wire axi_smc_main_M06_AXI_AWVALID;
  wire axi_smc_main_M06_AXI_BREADY;
  wire [1:0]axi_smc_main_M06_AXI_BRESP;
  wire axi_smc_main_M06_AXI_BVALID;
  wire [31:0]axi_smc_main_M06_AXI_RDATA;
  wire axi_smc_main_M06_AXI_RREADY;
  wire [1:0]axi_smc_main_M06_AXI_RRESP;
  wire axi_smc_main_M06_AXI_RVALID;
  wire [31:0]axi_smc_main_M06_AXI_WDATA;
  wire axi_smc_main_M06_AXI_WREADY;
  wire [3:0]axi_smc_main_M06_AXI_WSTRB;
  wire axi_smc_main_M06_AXI_WVALID;
  wire [17:0]axi_smc_main_M07_AXI_ARADDR;
  wire [2:0]axi_smc_main_M07_AXI_ARPROT;
  wire axi_smc_main_M07_AXI_ARREADY;
  wire axi_smc_main_M07_AXI_ARVALID;
  wire [17:0]axi_smc_main_M07_AXI_AWADDR;
  wire [2:0]axi_smc_main_M07_AXI_AWPROT;
  wire axi_smc_main_M07_AXI_AWREADY;
  wire axi_smc_main_M07_AXI_AWVALID;
  wire axi_smc_main_M07_AXI_BREADY;
  wire [1:0]axi_smc_main_M07_AXI_BRESP;
  wire axi_smc_main_M07_AXI_BVALID;
  wire [31:0]axi_smc_main_M07_AXI_RDATA;
  wire axi_smc_main_M07_AXI_RREADY;
  wire [1:0]axi_smc_main_M07_AXI_RRESP;
  wire axi_smc_main_M07_AXI_RVALID;
  wire [31:0]axi_smc_main_M07_AXI_WDATA;
  wire axi_smc_main_M07_AXI_WREADY;
  wire [3:0]axi_smc_main_M07_AXI_WSTRB;
  wire axi_smc_main_M07_AXI_WVALID;
  wire frame_n;
  wire frame_p;
  wire histo_0_bin_full_warning;
  wire histo_0_bin_written_but_never_read_warning;
  wire [0:0]histo_0_disable_p;
  wire histo_0_negedge_frame;
  wire histo_0_premature_pixel_done_error;
  wire [0:0]histo_0_refres_p;
  wire l_clk_in_n;
  wire l_clk_in_p;
  wire l_clk_out_n;
  wire l_clk_out_p;
  wire laser_signal_generat_0_frame_clk_r;
  wire laser_signal_generat_0_line_clk_r;
  wire laser_signal_generat_0_pixel_clk_r;
  wire [0:0]level_shifter_en;
  wire [5:0]msglen_Dout;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_CLK3;
  wire processing_system7_0_FCLK_RESET2_N;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire refclk_out_sim;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;
  wire sdo_n;
  wire sdo_p;
  wire [0:0]spi_cs_n;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sclk;
  wire stop_out_sim;
  (* CONN_BUS_INFO = "system_ila_TRIG_OUT xilinx.com:interface:trigger:1.0 None ACK" *) (* DONT_TOUCH *) wire system_ila_TRIG_OUT_ACK;
  (* CONN_BUS_INFO = "system_ila_TRIG_OUT xilinx.com:interface:trigger:1.0 None TRIG" *) (* DONT_TOUCH *) wire [0:0]system_ila_TRIG_OUT_TRIG;
  wire [0:0]util_vector_logic_0_Res;
  wire [5:0]xlconcat_1_dout;

  assign buffer_overflow[0] = LVDS_to_AXIS_0_Buffer_overflow;
  assign disable_p[0] = histo_0_disable_p;
  assign frame_clk_sim = Microscope_Emulator_0_frame_clk;
  assign laser_signal_generat_0_frame_clk_r = frame_clk;
  assign laser_signal_generat_0_line_clk_r = line_clk;
  assign laser_signal_generat_0_pixel_clk_r = pixel_clk;
  assign line_clk_sim = Microscope_Emulator_0_line_clk;
  assign pixel_clk_sim = Microscope_Emulator_0_pixel_clk;
  assign refres_p[0] = histo_0_refres_p;
  zedboard_real_microscope_BINS_TO_READ_0 BINS_TO_READ
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(BINS_TO_READ_Dout));
  zedboard_real_microscope_CNTVALUEIN_CLK_0 CNTVALUEIN_CLK
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(CNTVALUEIN_CLK_Dout));
  zedboard_real_microscope_CNTVALUEIN_FRAME_0 CNTVALUEIN_FRAME
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(CNTVALUEIN_FRAME_Dout));
  zedboard_real_microscope_CNTVALUEIN_LVDS_0 CNTVALUEIN_LVDS
       (.Din(axi_gpio_0_gpio_io_o));
  zedboard_real_microscope_CNTVALUEIN_SDO_0 CNTVALUEIN_SDO
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(CNTVALUEIN_SDO_Dout));
  zedboard_real_microscope_EMULATOR_en_0 EMULATOR_en
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(EMULATOR_en_Dout));
  zedboard_real_microscope_Histogramming_0 Histogramming
       (.AXIS_IN_tdata(LVDS_to_AXIS_0_M_AXIS_0_TDATA),
        .AXIS_IN_tlast(1'b0),
        .AXIS_IN_tready(LVDS_to_AXIS_0_M_AXIS_0_TREADY),
        .AXIS_IN_tvalid(LVDS_to_AXIS_0_M_AXIS_0_TVALID),
        .BINS_TO_READ(BINS_TO_READ_Dout),
        .MAX_PIXELS(MAX_PIXELS_Dout),
        .M_AXIS_tdata(Histogramming_0_M_AXIS_TDATA),
        .M_AXIS_tlast(Histogramming_0_M_AXIS_TLAST),
        .M_AXIS_tready(Histogramming_0_M_AXIS_TREADY),
        .M_AXIS_tvalid(Histogramming_0_M_AXIS_TVALID),
        .REFINDEX_BITS(REFINDEX_BITS_Dout),
        .STOPRESULT_BITS(STOPRESULT_BITS_Dout),
        .TRIG_IN_ack(LVDS_to_AXIS_IDDR_TRIG_OUT_ACK),
        .TRIG_IN_trig(LVDS_to_AXIS_IDDR_TRIG_OUT_TRIG),
        .TRIG_OUT_ack(Histogramming_TRIG_OUT_ACK),
        .TRIG_OUT_trig(Histogramming_TRIG_OUT_TRIG),
        .aresetn(SECOND_ARESETN_Dout),
        .bin_full_warning(histo_0_bin_full_warning),
        .bin_written_but_never_read_warning(histo_0_bin_written_but_never_read_warning),
        .buffer_almost_full(Histogramming_0_buffer_almost_full),
        .clk(processing_system7_0_FCLK_CLK0),
        .disable_p(histo_0_disable_p),
        .en(level_shifter_en),
        .frame_clk(laser_signal_generat_0_frame_clk_r),
        .ila_clk(processing_system7_0_FCLK_CLK3),
        .line_clk(laser_signal_generat_0_line_clk_r),
        .log_2_BIN_WIDTH(LOG_2_BINWIDTH_Dout),
        .negedge_frame(histo_0_negedge_frame),
        .pixel_clk(laser_signal_generat_0_pixel_clk_r),
        .premature_pixel_done_error(histo_0_premature_pixel_done_error),
        .refres_p(histo_0_refres_p));
  zedboard_real_microscope_IDELAYE2_LD_0 IDELAYE2_LD
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(IDELAYE2_LD_Dout));
  zedboard_real_microscope_IMAGE_SIZE_0 IMAGE_SIZE
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(IMAGE_SIZE_Dout));
  zedboard_real_microscope_LOG_2_BINWIDTH_0 LOG_2_BINWIDTH
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(LOG_2_BINWIDTH_Dout));
  zedboard_real_microscope_LVDS_to_AXIS_IDDR_0 LVDS_to_AXIS_IDDR
       (.Buffer_overflow(LVDS_to_AXIS_0_Buffer_overflow),
        .M_AXIS_tdata(LVDS_to_AXIS_0_M_AXIS_0_TDATA),
        .M_AXIS_tready(LVDS_to_AXIS_0_M_AXIS_0_TREADY),
        .M_AXIS_tvalid(LVDS_to_AXIS_0_M_AXIS_0_TVALID),
        .TRIG_IN_ack(Microscope_Emulator_0_TRIG_OUT_ACK),
        .TRIG_IN_trig(Microscope_Emulator_0_TRIG_OUT_TRIG),
        .TRIG_OUT_ack(LVDS_to_AXIS_IDDR_TRIG_OUT_ACK),
        .TRIG_OUT_trig(LVDS_to_AXIS_IDDR_TRIG_OUT_TRIG),
        .aresetn(SECOND_ARESETN_Dout),
        .axis_rd_data_count(LVDS_to_AXIS_IDDR_0_axis_rd_data_count),
        .axis_wr_data_count(LVDS_to_AXIS_IDDR_0_axis_wr_data_count),
        .clk(processing_system7_0_FCLK_CLK0),
        .en(level_shifter_en),
        .frame_n(frame_n),
        .frame_p(frame_p),
        .ila_clk(processing_system7_0_FCLK_CLK3),
        .l_clk_in_n(l_clk_in_n),
        .l_clk_in_p(l_clk_in_p),
        .l_clk_out_n(l_clk_out_n),
        .l_clk_out_p(l_clk_out_p),
        .lvds_clk(processing_system7_0_FCLK_CLK1),
        .msglen(msglen_Dout),
        .sdo_n(sdo_n),
        .sdo_p(sdo_p));
  zedboard_real_microscope_MAX_PIXELS_0 MAX_PIXELS
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(MAX_PIXELS_Dout));
  zedboard_real_microscope_Microscope_Emulator_0_0 Microscope_Emulator_0
       (.S_AXI_araddr(axi_smc_main_M07_AXI_ARADDR),
        .S_AXI_arprot(axi_smc_main_M07_AXI_ARPROT),
        .S_AXI_arready(axi_smc_main_M07_AXI_ARREADY),
        .S_AXI_arvalid(axi_smc_main_M07_AXI_ARVALID),
        .S_AXI_awaddr(axi_smc_main_M07_AXI_AWADDR),
        .S_AXI_awprot(axi_smc_main_M07_AXI_AWPROT),
        .S_AXI_awready(axi_smc_main_M07_AXI_AWREADY),
        .S_AXI_awvalid(axi_smc_main_M07_AXI_AWVALID),
        .S_AXI_bready(axi_smc_main_M07_AXI_BREADY),
        .S_AXI_bresp(axi_smc_main_M07_AXI_BRESP),
        .S_AXI_bvalid(axi_smc_main_M07_AXI_BVALID),
        .S_AXI_rdata(axi_smc_main_M07_AXI_RDATA),
        .S_AXI_rready(axi_smc_main_M07_AXI_RREADY),
        .S_AXI_rresp(axi_smc_main_M07_AXI_RRESP),
        .S_AXI_rvalid(axi_smc_main_M07_AXI_RVALID),
        .S_AXI_wdata(axi_smc_main_M07_AXI_WDATA),
        .S_AXI_wready(axi_smc_main_M07_AXI_WREADY),
        .S_AXI_wstrb(axi_smc_main_M07_AXI_WSTRB),
        .S_AXI_wvalid(axi_smc_main_M07_AXI_WVALID),
        .TRIG_IN_ack(system_ila_TRIG_OUT_ACK),
        .TRIG_IN_trig(system_ila_TRIG_OUT_TRIG),
        .TRIG_OUT_ack(Microscope_Emulator_0_TRIG_OUT_ACK),
        .TRIG_OUT_trig(Microscope_Emulator_0_TRIG_OUT_TRIG),
        .aresetn_laser(processing_system7_0_FCLK_RESET2_N),
        .axi_clk(processing_system7_0_FCLK_CLK0),
        .axi_resetn(rst_ps7_0_100M_peripheral_aresetn),
        .en(EMULATOR_en_Dout),
        .frame_clk(Microscope_Emulator_0_frame_clk),
        .image_size(IMAGE_SIZE_Dout),
        .laser_clk(processing_system7_0_FCLK_CLK2),
        .line_clk(Microscope_Emulator_0_line_clk),
        .pixel_clk(Microscope_Emulator_0_pixel_clk),
        .pulses_per_pixel(PULSES_PER_PIXEL_Dout),
        .refclk_out(refclk_out_sim),
        .stop_out(stop_out_sim));
  zedboard_real_microscope_PULSES_PER_PIXEL_0 PULSES_PER_PIXEL
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(PULSES_PER_PIXEL_Dout));
  zedboard_real_microscope_REFINDEX_BITS_0 REFINDEX_BITS
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(REFINDEX_BITS_Dout));
  zedboard_real_microscope_SECOND_ARESETN_0 SECOND_ARESETN
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(SECOND_ARESETN_Dout));
  zedboard_real_microscope_STOPRESULT_BITS_0 STOPRESULT_BITS
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(STOPRESULT_BITS_Dout));
  zedboard_real_microscope_TLAST_COUNT_0 TLAST_COUNT
       (.Din(axi_gpio_0_gpio_io_o));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > zedboard_real_microscope blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  zedboard_real_microscope_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  zedboard_real_microscope_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_dma_0_M_AXI_SG_ARADDR[11:0]),
        .s_axi_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .s_axi_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .s_axi_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .s_axi_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .s_axi_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .s_axi_awaddr(axi_dma_0_M_AXI_SG_AWADDR[11:0]),
        .s_axi_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .s_axi_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .s_axi_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .s_axi_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .s_axi_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .s_axi_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .s_axi_bready(axi_dma_0_M_AXI_SG_BREADY),
        .s_axi_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .s_axi_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .s_axi_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .s_axi_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .s_axi_rready(axi_dma_0_M_AXI_SG_RREADY),
        .s_axi_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .s_axi_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .s_axi_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .s_axi_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .s_axi_wready(axi_dma_0_M_AXI_SG_WREADY),
        .s_axi_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .s_axi_wvalid(axi_dma_0_M_AXI_SG_WVALID));
  zedboard_real_microscope_axi_dma_0_0 axi_dma_0
       (.axi_resetn(rst_ps7_0_100M_peripheral_aresetn),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_sg_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_lite_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_lite_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_smc_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(Histogramming_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(Histogramming_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(Histogramming_0_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(Histogramming_0_M_AXIS_TVALID));
  zedboard_real_microscope_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_o(axi_gpio_0_gpio2_io_o),
        .gpio_io_o(axi_gpio_0_gpio_io_o1),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  zedboard_real_microscope_axi_gpio_1_0 axi_gpio_1
       (.gpio2_io_o(axi_gpio_1_gpio2_io_o),
        .gpio_io_o(axi_gpio_1_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M03_AXI_AWADDR),
        .s_axi_awready(axi_smc_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M03_AXI_AWVALID),
        .s_axi_bready(axi_smc_M03_AXI_BREADY),
        .s_axi_bresp(axi_smc_M03_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M03_AXI_BVALID),
        .s_axi_rdata(axi_smc_M03_AXI_RDATA),
        .s_axi_rready(axi_smc_M03_AXI_RREADY),
        .s_axi_rresp(axi_smc_M03_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M03_AXI_RVALID),
        .s_axi_wdata(axi_smc_M03_AXI_WDATA),
        .s_axi_wready(axi_smc_M03_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M03_AXI_WVALID));
  zedboard_real_microscope_axi_gpio_2_0 axi_gpio_2
       (.gpio2_io_o(axi_gpio_2_gpio2_io_o),
        .gpio_io_o(axi_gpio_2_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_main_M05_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_main_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_main_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_main_M05_AXI_AWADDR),
        .s_axi_awready(axi_smc_main_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_main_M05_AXI_AWVALID),
        .s_axi_bready(axi_smc_main_M05_AXI_BREADY),
        .s_axi_bresp(axi_smc_main_M05_AXI_BRESP),
        .s_axi_bvalid(axi_smc_main_M05_AXI_BVALID),
        .s_axi_rdata(axi_smc_main_M05_AXI_RDATA),
        .s_axi_rready(axi_smc_main_M05_AXI_RREADY),
        .s_axi_rresp(axi_smc_main_M05_AXI_RRESP),
        .s_axi_rvalid(axi_smc_main_M05_AXI_RVALID),
        .s_axi_wdata(axi_smc_main_M05_AXI_WDATA),
        .s_axi_wready(axi_smc_main_M05_AXI_WREADY),
        .s_axi_wstrb(axi_smc_main_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_main_M05_AXI_WVALID));
  zedboard_real_microscope_axi_gpio_3_0 axi_gpio_3
       (.gpio2_io_o(axi_gpio_3_gpio2_io_o),
        .gpio_io_o(axi_gpio_3_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_main_M06_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_main_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_main_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_main_M06_AXI_AWADDR),
        .s_axi_awready(axi_smc_main_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_main_M06_AXI_AWVALID),
        .s_axi_bready(axi_smc_main_M06_AXI_BREADY),
        .s_axi_bresp(axi_smc_main_M06_AXI_BRESP),
        .s_axi_bvalid(axi_smc_main_M06_AXI_BVALID),
        .s_axi_rdata(axi_smc_main_M06_AXI_RDATA),
        .s_axi_rready(axi_smc_main_M06_AXI_RREADY),
        .s_axi_rresp(axi_smc_main_M06_AXI_RRESP),
        .s_axi_rvalid(axi_smc_main_M06_AXI_RVALID),
        .s_axi_wdata(axi_smc_main_M06_AXI_WDATA),
        .s_axi_wready(axi_smc_main_M06_AXI_WREADY),
        .s_axi_wstrb(axi_smc_main_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_main_M06_AXI_WVALID));
  zedboard_real_microscope_axi_mem_intercon_0 axi_mem_intercon
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(ARESETN_1),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .S00_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S00_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S00_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S00_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S00_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S00_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S00_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S00_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S00_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S00_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S00_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S00_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S00_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S00_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S00_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S00_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID));
  zedboard_real_microscope_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(processing_system7_0_FCLK_CLK0),
        .io0_i(1'b0),
        .io0_o(spi_mosi),
        .io1_i(spi_miso),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M04_AXI_AWADDR),
        .s_axi_awready(axi_smc_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M04_AXI_AWVALID),
        .s_axi_bready(axi_smc_M04_AXI_BREADY),
        .s_axi_bresp(axi_smc_M04_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M04_AXI_BVALID),
        .s_axi_rdata(axi_smc_M04_AXI_RDATA),
        .s_axi_rready(axi_smc_M04_AXI_RREADY),
        .s_axi_rresp(axi_smc_M04_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M04_AXI_RVALID),
        .s_axi_wdata(axi_smc_M04_AXI_WDATA),
        .s_axi_wready(axi_smc_M04_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M04_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(spi_sclk),
        .ss_i(1'b0),
        .ss_o(spi_cs_n));
  zedboard_real_microscope_axi_smc_main_0 axi_smc_main
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .M04_AXI_araddr(axi_smc_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_smc_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_smc_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_smc_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_smc_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_smc_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_smc_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_smc_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_smc_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_smc_M04_AXI_RDATA),
        .M04_AXI_rready(axi_smc_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_smc_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_smc_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_smc_M04_AXI_WDATA),
        .M04_AXI_wready(axi_smc_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_smc_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_smc_M04_AXI_WVALID),
        .M05_AXI_araddr(axi_smc_main_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_smc_main_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_smc_main_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_smc_main_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_smc_main_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_smc_main_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_smc_main_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_smc_main_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_smc_main_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_smc_main_M05_AXI_RDATA),
        .M05_AXI_rready(axi_smc_main_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_smc_main_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_smc_main_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_smc_main_M05_AXI_WDATA),
        .M05_AXI_wready(axi_smc_main_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_smc_main_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_smc_main_M05_AXI_WVALID),
        .M06_AXI_araddr(axi_smc_main_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_smc_main_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_smc_main_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_smc_main_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_smc_main_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_smc_main_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_smc_main_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_smc_main_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_smc_main_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_smc_main_M06_AXI_RDATA),
        .M06_AXI_rready(axi_smc_main_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_smc_main_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_smc_main_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_smc_main_M06_AXI_WDATA),
        .M06_AXI_wready(axi_smc_main_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_smc_main_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_smc_main_M06_AXI_WVALID),
        .M07_AXI_araddr(axi_smc_main_M07_AXI_ARADDR),
        .M07_AXI_arprot(axi_smc_main_M07_AXI_ARPROT),
        .M07_AXI_arready(axi_smc_main_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_smc_main_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_smc_main_M07_AXI_AWADDR),
        .M07_AXI_awprot(axi_smc_main_M07_AXI_AWPROT),
        .M07_AXI_awready(axi_smc_main_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_smc_main_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_smc_main_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_smc_main_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_smc_main_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_smc_main_M07_AXI_RDATA),
        .M07_AXI_rready(axi_smc_main_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_smc_main_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_smc_main_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_smc_main_M07_AXI_WDATA),
        .M07_AXI_wready(axi_smc_main_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_smc_main_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_smc_main_M07_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  zedboard_real_microscope_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_1_BRAM_PORTA_WE));
  zedboard_real_microscope_logic_high_0 logic_high
       (.dout(level_shifter_en));
  zedboard_real_microscope_msglen_0 msglen
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(msglen_Dout));
  (* BMM_INFO_PROCESSOR = "arm > zedboard_real_microscope axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  zedboard_real_microscope_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_MDIO_I(1'b0),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FCLK_CLK3(processing_system7_0_FCLK_CLK3),
        .FCLK_RESET2_N(processing_system7_0_FCLK_RESET2_N),
        .IRQ_F2P(xlconcat_1_dout),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SDIO0_WP(1'b0),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARBURST({1'b0,1'b1}),
        .S_AXI_HP0_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARVALID(1'b0),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RREADY(1'b0),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  zedboard_real_microscope_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET2_N),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  zedboard_real_microscope_system_ila_0_0 system_ila
       (.SLOT_0_AXIS_tdata(LVDS_to_AXIS_0_M_AXIS_0_TDATA),
        .SLOT_0_AXIS_tlast(1'b0),
        .SLOT_0_AXIS_tready(LVDS_to_AXIS_0_M_AXIS_0_TREADY),
        .SLOT_0_AXIS_tvalid(LVDS_to_AXIS_0_M_AXIS_0_TVALID),
        .SLOT_1_AXIS_tdata(Histogramming_0_M_AXIS_TDATA),
        .SLOT_1_AXIS_tlast(Histogramming_0_M_AXIS_TLAST),
        .SLOT_1_AXIS_tready(Histogramming_0_M_AXIS_TREADY),
        .SLOT_1_AXIS_tvalid(Histogramming_0_M_AXIS_TVALID),
        .SLOT_2_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_2_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_2_AXI_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_2_AXI_arprot({1'b0,1'b0,1'b0}),
        .SLOT_2_AXI_arready(1'b0),
        .SLOT_2_AXI_arsize({1'b0,1'b1,1'b1}),
        .SLOT_2_AXI_arvalid(1'b0),
        .SLOT_2_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .SLOT_2_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .SLOT_2_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .SLOT_2_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .SLOT_2_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .SLOT_2_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .SLOT_2_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .SLOT_2_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .SLOT_2_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .SLOT_2_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .SLOT_2_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_2_AXI_rlast(1'b0),
        .SLOT_2_AXI_rready(1'b0),
        .SLOT_2_AXI_rvalid(1'b0),
        .SLOT_2_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .SLOT_2_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .SLOT_2_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .SLOT_2_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .SLOT_2_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .SLOT_3_AXI_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .SLOT_3_AXI_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .SLOT_3_AXI_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .SLOT_3_AXI_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .SLOT_3_AXI_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .SLOT_3_AXI_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .SLOT_3_AXI_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .SLOT_3_AXI_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .SLOT_3_AXI_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .SLOT_3_AXI_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .SLOT_3_AXI_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .SLOT_3_AXI_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .SLOT_3_AXI_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .SLOT_3_AXI_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .SLOT_3_AXI_bready(axi_dma_0_M_AXI_SG_BREADY),
        .SLOT_3_AXI_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .SLOT_3_AXI_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .SLOT_3_AXI_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .SLOT_3_AXI_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .SLOT_3_AXI_rready(axi_dma_0_M_AXI_SG_RREADY),
        .SLOT_3_AXI_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .SLOT_3_AXI_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .SLOT_3_AXI_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .SLOT_3_AXI_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .SLOT_3_AXI_wready(axi_dma_0_M_AXI_SG_WREADY),
        .SLOT_3_AXI_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .SLOT_3_AXI_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .TRIG_IN_ack(Histogramming_TRIG_OUT_ACK),
        .TRIG_IN_trig(Histogramming_TRIG_OUT_TRIG),
        .TRIG_OUT_ack(system_ila_TRIG_OUT_ACK),
        .TRIG_OUT_trig(system_ila_TRIG_OUT_TRIG),
        .clk(processing_system7_0_FCLK_CLK0),
        .probe0(Microscope_Emulator_0_frame_clk),
        .probe1(Microscope_Emulator_0_line_clk),
        .probe10(histo_0_refres_p),
        .probe11(axi_dma_0_s2mm_introut),
        .probe12(histo_0_negedge_frame),
        .probe13(histo_0_bin_full_warning),
        .probe14(histo_0_premature_pixel_done_error),
        .probe15(histo_0_bin_written_but_never_read_warning),
        .probe16(Histogramming_0_buffer_almost_full),
        .probe2(Microscope_Emulator_0_pixel_clk),
        .probe3(laser_signal_generat_0_frame_clk_r),
        .probe4(laser_signal_generat_0_line_clk_r),
        .probe5(laser_signal_generat_0_pixel_clk_r),
        .probe6(LVDS_to_AXIS_0_Buffer_overflow),
        .probe7(LVDS_to_AXIS_IDDR_0_axis_rd_data_count),
        .probe8(LVDS_to_AXIS_IDDR_0_axis_wr_data_count),
        .probe9(histo_0_disable_p),
        .resetn(rst_ps7_0_100M_peripheral_aresetn));
  zedboard_real_microscope_util_idelay_ctrl_0_0 util_idelay_ctrl_0
       (.ref_clk(processing_system7_0_FCLK_CLK3),
        .rst(util_vector_logic_0_Res));
  zedboard_real_microscope_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_ps7_0_100M_peripheral_aresetn),
        .Res(util_vector_logic_0_Res));
  zedboard_real_microscope_xlconcat_0_0 xlconcat_0
       (.In0(axi_gpio_0_gpio_io_o1),
        .In1(axi_gpio_0_gpio2_io_o),
        .In2(axi_gpio_1_gpio_io_o),
        .In3(axi_gpio_1_gpio2_io_o),
        .In4(axi_gpio_2_gpio_io_o),
        .In5(axi_gpio_2_gpio2_io_o),
        .In6(axi_gpio_3_gpio_io_o),
        .In7(axi_gpio_3_gpio2_io_o),
        .dout(axi_gpio_0_gpio_io_o));
  zedboard_real_microscope_xlconcat_1_0 xlconcat_1
       (.In0(axi_dma_0_s2mm_introut),
        .In1(histo_0_negedge_frame),
        .In2(histo_0_premature_pixel_done_error),
        .In3(histo_0_bin_full_warning),
        .In4(histo_0_bin_written_but_never_read_warning),
        .In5(LVDS_to_AXIS_0_Buffer_overflow),
        .dout(xlconcat_1_dout));
endmodule

module zedboard_real_microscope_axi_mem_intercon_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [31:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [3:0]M00_AXI_awlen;
  wire [1:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [63:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [7:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [31:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [63:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [7:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;

  s00_couplers_imp_W7XFIS s00_couplers
       (.M_ACLK(M00_ACLK),
        .M_ARESETN(M00_ARESETN),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awburst(M00_AXI_awburst),
        .M_AXI_awcache(M00_AXI_awcache),
        .M_AXI_awlen(M00_AXI_awlen),
        .M_AXI_awlock(M00_AXI_awlock),
        .M_AXI_awprot(M00_AXI_awprot),
        .M_AXI_awqos(M00_AXI_awqos),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awsize(M00_AXI_awsize),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wlast(M00_AXI_wlast),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(S00_ACLK),
        .S_ARESETN(S00_ARESETN),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awburst(S00_AXI_awburst),
        .S_AXI_awcache(S00_AXI_awcache),
        .S_AXI_awlen(S00_AXI_awlen),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awsize(S00_AXI_awsize),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wlast(S00_AXI_wlast),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
endmodule
