-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Apr  9 13:39:22 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/openTCSPC3/SRC/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_Microscope_Emulator_1_0/emulated_microscope_Microscope_Emulator_1_0_stub.vhdl
-- Design      : emulated_microscope_Microscope_Emulator_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity emulated_microscope_Microscope_Emulator_1_0 is
  Port ( 
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    TRIG_IN_ack : out STD_LOGIC;
    TRIG_IN_trig : in STD_LOGIC;
    TRIG_OUT_ack : in STD_LOGIC;
    TRIG_OUT_trig : out STD_LOGIC;
    aresetn_laser : in STD_LOGIC;
    axi_clk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    en : in STD_LOGIC;
    frame_clk : out STD_LOGIC;
    image_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    laser_clk : in STD_LOGIC;
    line_clk : out STD_LOGIC;
    pixel_clk : out STD_LOGIC;
    pulses_per_pixel : in STD_LOGIC_VECTOR ( 31 downto 0 );
    refclk_out : out STD_LOGIC;
    stop_out : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of emulated_microscope_Microscope_Emulator_1_0 : entity is "emulated_microscope_Microscope_Emulator_1_0,Microscope_Emulator,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of emulated_microscope_Microscope_Emulator_1_0 : entity is "emulated_microscope_Microscope_Emulator_1_0,Microscope_Emulator,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=Microscope_Emulator,x_ipVersion=1.13,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of emulated_microscope_Microscope_Emulator_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of emulated_microscope_Microscope_Emulator_1_0 : entity is "IPI";
end emulated_microscope_Microscope_Emulator_1_0;

architecture stub of emulated_microscope_Microscope_Emulator_1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "S_AXI_araddr[17:0],S_AXI_arprot[2:0],S_AXI_arready,S_AXI_arvalid,S_AXI_awaddr[17:0],S_AXI_awprot[2:0],S_AXI_awready,S_AXI_awvalid,S_AXI_bready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_rdata[31:0],S_AXI_rready,S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_wdata[31:0],S_AXI_wready,S_AXI_wstrb[3:0],S_AXI_wvalid,TRIG_IN_ack,TRIG_IN_trig,TRIG_OUT_ack,TRIG_OUT_trig,aresetn_laser,axi_clk,axi_resetn,en,frame_clk,image_size[31:0],laser_clk,line_clk,pixel_clk,pulses_per_pixel[31:0],refclk_out,stop_out";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXI_araddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_araddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of TRIG_IN_ack : signal is "xilinx.com:interface:trigger:1.0 TRIG_IN ACK";
  attribute X_INTERFACE_MODE of TRIG_IN_ack : signal is "slave";
  attribute X_INTERFACE_INFO of TRIG_IN_trig : signal is "xilinx.com:interface:trigger:1.0 TRIG_IN TRIG";
  attribute X_INTERFACE_INFO of TRIG_OUT_ack : signal is "xilinx.com:interface:trigger:1.0 TRIG_OUT ACK";
  attribute X_INTERFACE_MODE of TRIG_OUT_ack : signal is "master";
  attribute X_INTERFACE_INFO of TRIG_OUT_trig : signal is "xilinx.com:interface:trigger:1.0 TRIG_OUT TRIG";
  attribute X_INTERFACE_INFO of aresetn_laser : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_LASER RST";
  attribute X_INTERFACE_MODE of aresetn_laser : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn_laser : signal is "XIL_INTERFACENAME RST.ARESETN_LASER, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AXI_CLK CLK";
  attribute X_INTERFACE_MODE of axi_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_clk : signal is "XIL_INTERFACENAME CLK.AXI_CLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET axi_resetn, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_resetn : signal is "xilinx.com:signal:reset:1.0 RST.AXI_RESETN RST";
  attribute X_INTERFACE_MODE of axi_resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_resetn : signal is "XIL_INTERFACENAME RST.AXI_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of laser_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LASER_CLK CLK";
  attribute X_INTERFACE_MODE of laser_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of laser_clk : signal is "XIL_INTERFACENAME CLK.LASER_CLK, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK2, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "Microscope_Emulator,Vivado 2024.2";
begin
end;
