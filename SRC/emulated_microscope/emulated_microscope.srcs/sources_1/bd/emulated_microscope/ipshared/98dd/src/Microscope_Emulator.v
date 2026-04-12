//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Apr  8 13:32:28 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target Microscope_Emulator.bd
//Design      : Microscope_Emulator
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Microscope_Emulator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Microscope_Emulator,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Microscope_Emulator.hwdef" *) 
module Microscope_Emulator
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aresetn_laser,
    axi_clk,
    axi_resetn,
    en,
    frame_clk,
    image_size,
    laser_clk,
    line_clk,
    pixel_clk,
    pulses_per_pixel,
    refclk_out,
    stop_out);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN Microscope_Emulator_axi_clk, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [17:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [17:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_LASER RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_LASER, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_laser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET axi_resetn, CLK_DOMAIN Microscope_Emulator_axi_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input axi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_resetn;
  input en;
  output frame_clk;
  input [31:0]image_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LASER_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LASER_CLK, CLK_DOMAIN Microscope_Emulator_laser_clk, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input laser_clk;
  output line_clk;
  output pixel_clk;
  input [31:0]pulses_per_pixel;
  output refclk_out;
  output stop_out;

  wire [17:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [17:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aresetn_laser;
  wire axi_clk;
  wire axi_resetn;
  wire [17:0]axi_smc_M00_AXI_ARADDR;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [17:0]bram_ctrl_laser_BRAM_PORTA_ADDR;
  wire bram_ctrl_laser_BRAM_PORTA_CLK;
  wire [31:0]bram_ctrl_laser_BRAM_PORTA_DIN;
  wire [31:0]bram_ctrl_laser_BRAM_PORTA_DOUT;
  wire bram_ctrl_laser_BRAM_PORTA_EN;
  wire bram_ctrl_laser_BRAM_PORTA_RST;
  wire [3:0]bram_ctrl_laser_BRAM_PORTA_WE;
  wire [17:0]bram_ctrl_sw_BRAM_PORTA_ADDR;
  wire bram_ctrl_sw_BRAM_PORTA_CLK;
  wire [31:0]bram_ctrl_sw_BRAM_PORTA_DIN;
  wire [31:0]bram_ctrl_sw_BRAM_PORTA_DOUT;
  wire bram_ctrl_sw_BRAM_PORTA_EN;
  wire bram_ctrl_sw_BRAM_PORTA_RST;
  wire [3:0]bram_ctrl_sw_BRAM_PORTA_WE;
  wire en;
  wire frame_clk;
  wire [31:0]image_size;
  wire laser_clk;
  wire [17:0]laser_signal_generat_0_AXI4lite_m_ARADDR;
  wire laser_signal_generat_0_AXI4lite_m_ARREADY;
  wire laser_signal_generat_0_AXI4lite_m_ARVALID;
  wire [31:0]laser_signal_generat_0_AXI4lite_m_RDATA;
  wire laser_signal_generat_0_AXI4lite_m_RREADY;
  wire laser_signal_generat_0_AXI4lite_m_RVALID;
  wire [4:0]laser_signal_generat_0_CNTVALUEOUT_dbg;
  wire laser_signal_generat_0_line_complete_dbg;
  wire laser_signal_generat_0_m_arvalid_n_dbg;
  wire laser_signal_generat_0_m_arvalid_r_dbg;
  wire laser_signal_generat_0_pixel_complete_dbg;
  wire laser_signal_generat_0_start_frame_dbg;
  wire [2:0]laser_signal_generat_0_state_dbg;
  wire [3:0]laser_signal_generat_0_warmup_pulse_counter_dbg;
  wire line_clk;
  wire pixel_clk;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [31:0]pulses_per_pixel;
  wire refclk_out;
  wire stop_out;

  Microscope_Emulator_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .S00_AXI_araddr(laser_signal_generat_0_AXI4lite_m_ARADDR),
        .S00_AXI_arprot({1'b0,1'b0,1'b0}),
        .S00_AXI_arready(laser_signal_generat_0_AXI4lite_m_ARREADY),
        .S00_AXI_arvalid(laser_signal_generat_0_AXI4lite_m_ARVALID),
        .S00_AXI_rdata(laser_signal_generat_0_AXI4lite_m_RDATA),
        .S00_AXI_rready(laser_signal_generat_0_AXI4lite_m_RREADY),
        .S00_AXI_rvalid(laser_signal_generat_0_AXI4lite_m_RVALID),
        .aclk(laser_clk),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  Microscope_Emulator_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_ctrl_sw_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_ctrl_laser_BRAM_PORTA_ADDR}),
        .clka(bram_ctrl_sw_BRAM_PORTA_CLK),
        .clkb(bram_ctrl_laser_BRAM_PORTA_CLK),
        .dina(bram_ctrl_sw_BRAM_PORTA_DIN),
        .dinb(bram_ctrl_laser_BRAM_PORTA_DIN),
        .douta(bram_ctrl_sw_BRAM_PORTA_DOUT),
        .doutb(bram_ctrl_laser_BRAM_PORTA_DOUT),
        .ena(bram_ctrl_sw_BRAM_PORTA_EN),
        .enb(bram_ctrl_laser_BRAM_PORTA_EN),
        .rsta(bram_ctrl_sw_BRAM_PORTA_RST),
        .rstb(bram_ctrl_laser_BRAM_PORTA_RST),
        .wea(bram_ctrl_sw_BRAM_PORTA_WE),
        .web(bram_ctrl_laser_BRAM_PORTA_WE));
  Microscope_Emulator_bram_ctrl_laser_0 bram_ctrl_laser
       (.bram_addr_a(bram_ctrl_laser_BRAM_PORTA_ADDR),
        .bram_clk_a(bram_ctrl_laser_BRAM_PORTA_CLK),
        .bram_en_a(bram_ctrl_laser_BRAM_PORTA_EN),
        .bram_rddata_a(bram_ctrl_laser_BRAM_PORTA_DOUT),
        .bram_rst_a(bram_ctrl_laser_BRAM_PORTA_RST),
        .bram_we_a(bram_ctrl_laser_BRAM_PORTA_WE),
        .bram_wrdata_a(bram_ctrl_laser_BRAM_PORTA_DIN),
        .s_axi_aclk(laser_clk),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(1'b0));
  Microscope_Emulator_bram_ctrl_sw_0 bram_ctrl_sw
       (.bram_addr_a(bram_ctrl_sw_BRAM_PORTA_ADDR),
        .bram_clk_a(bram_ctrl_sw_BRAM_PORTA_CLK),
        .bram_en_a(bram_ctrl_sw_BRAM_PORTA_EN),
        .bram_rddata_a(bram_ctrl_sw_BRAM_PORTA_DOUT),
        .bram_rst_a(bram_ctrl_sw_BRAM_PORTA_RST),
        .bram_we_a(bram_ctrl_sw_BRAM_PORTA_WE),
        .bram_wrdata_a(bram_ctrl_sw_BRAM_PORTA_DIN),
        .s_axi_aclk(axi_clk),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(axi_resetn),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  Microscope_Emulator_ila_laser_0 ila_laser
       (.clk(laser_clk),
        .probe0(laser_signal_generat_0_warmup_pulse_counter_dbg),
        .probe1(laser_signal_generat_0_start_frame_dbg),
        .probe2(laser_signal_generat_0_state_dbg),
        .probe3(laser_signal_generat_0_pixel_complete_dbg),
        .probe4(laser_signal_generat_0_line_complete_dbg),
        .probe5(laser_signal_generat_0_m_arvalid_n_dbg),
        .probe6(laser_signal_generat_0_m_arvalid_r_dbg),
        .probe7(laser_signal_generat_0_CNTVALUEOUT_dbg));
  Microscope_Emulator_laser_signal_generat_0_0 laser_signal_generat_0
       (.CNTVALUEOUT_dbg(laser_signal_generat_0_CNTVALUEOUT_dbg),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .clk(laser_clk),
        .en(en),
        .frame_clk_r(frame_clk),
        .image_size(image_size),
        .line_clk_r(line_clk),
        .line_complete_dbg(laser_signal_generat_0_line_complete_dbg),
        .m_araddr(laser_signal_generat_0_AXI4lite_m_ARADDR),
        .m_arready(laser_signal_generat_0_AXI4lite_m_ARREADY),
        .m_arvalid(laser_signal_generat_0_AXI4lite_m_ARVALID),
        .m_arvalid_n_dbg(laser_signal_generat_0_m_arvalid_n_dbg),
        .m_arvalid_r_dbg(laser_signal_generat_0_m_arvalid_r_dbg),
        .m_rdata(laser_signal_generat_0_AXI4lite_m_RDATA),
        .m_rready(laser_signal_generat_0_AXI4lite_m_RREADY),
        .m_rvalid(laser_signal_generat_0_AXI4lite_m_RVALID),
        .pixel_clk_r(pixel_clk),
        .pixel_complete_dbg(laser_signal_generat_0_pixel_complete_dbg),
        .pulses_per_pixel(pulses_per_pixel),
        .refclk_out(refclk_out),
        .start_frame_dbg(laser_signal_generat_0_start_frame_dbg),
        .state_dbg(laser_signal_generat_0_state_dbg),
        .stop_out(stop_out),
        .warmup_pulse_counter_dbg(laser_signal_generat_0_warmup_pulse_counter_dbg));
  Microscope_Emulator_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_laser),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(laser_clk));
endmodule
