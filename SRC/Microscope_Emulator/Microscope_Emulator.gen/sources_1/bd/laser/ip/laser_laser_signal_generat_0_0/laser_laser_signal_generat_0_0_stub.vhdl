-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Feb 23 12:31:03 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/marce/OneDrive/Dokumente/zynq_project/photonsorting/emulator_4x8bit/emulator_4x8bit.gen/sources_1/bd/laser/ip/laser_laser_signal_generat_0_0/laser_laser_signal_generat_0_0_stub.vhdl
-- Design      : laser_laser_signal_generat_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity laser_laser_signal_generat_0_0 is
  Port ( 
    en : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    image_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pulses_per_pixel : in STD_LOGIC_VECTOR ( 31 downto 0 );
    refclk_out : out STD_LOGIC;
    stop_out : out STD_LOGIC;
    frame_clk_r : out STD_LOGIC;
    line_clk_r : out STD_LOGIC;
    pixel_clk_r : out STD_LOGIC;
    CNTVALUEOUT_dbg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    warmup_pulse_counter_dbg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    start_frame_dbg : out STD_LOGIC;
    state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    line_complete_dbg : out STD_LOGIC;
    pixel_complete_dbg : out STD_LOGIC;
    m_arvalid_n_dbg : out STD_LOGIC;
    m_arvalid_r_dbg : out STD_LOGIC;
    m_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_arvalid : out STD_LOGIC;
    m_arready : in STD_LOGIC;
    m_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_rvalid : in STD_LOGIC;
    m_rready : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of laser_laser_signal_generat_0_0 : entity is "laser_laser_signal_generat_0_0,laser_signal_generator,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of laser_laser_signal_generat_0_0 : entity is "laser_laser_signal_generat_0_0,laser_signal_generator,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=laser_signal_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,return_counter_clocks=16,pulses_per_photon=4,pulses_per_photon_return=8,warmup_pulses=16,addr_width=18}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of laser_laser_signal_generat_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of laser_laser_signal_generat_0_0 : entity is "module_ref";
end laser_laser_signal_generat_0_0;

architecture stub of laser_laser_signal_generat_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "en,aresetn,clk,image_size[31:0],pulses_per_pixel[31:0],refclk_out,stop_out,frame_clk_r,line_clk_r,pixel_clk_r,CNTVALUEOUT_dbg[4:0],warmup_pulse_counter_dbg[3:0],start_frame_dbg,state_dbg[2:0],line_complete_dbg,pixel_complete_dbg,m_arvalid_n_dbg,m_arvalid_r_dbg,m_araddr[17:0],m_arvalid,m_arready,m_rdata[31:0],m_rvalid,m_rready";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXI4lite_m, ASSOCIATED_RESET aresetn, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN laser_laser_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_MODE of m_araddr : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_araddr : signal is "XIL_INTERFACENAME AXI4lite_m, FREQ_HZ 10000000, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN laser_laser_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID";
  attribute X_INTERFACE_INFO of m_arready : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARREADY";
  attribute X_INTERFACE_INFO of m_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m RDATA";
  attribute X_INTERFACE_INFO of m_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m RVALID";
  attribute X_INTERFACE_INFO of m_rready : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "laser_signal_generator,Vivado 2024.2";
begin
end;
