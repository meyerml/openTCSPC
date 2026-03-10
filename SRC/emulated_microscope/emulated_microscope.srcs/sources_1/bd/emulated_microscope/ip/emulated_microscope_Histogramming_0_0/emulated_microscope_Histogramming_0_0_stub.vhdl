-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Mar  9 17:18:10 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_Histogramming_0_0/emulated_microscope_Histogramming_0_0_stub.vhdl
-- Design      : emulated_microscope_Histogramming_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity emulated_microscope_Histogramming_0_0 is
  Port ( 
    AXIS_IN_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    AXIS_IN_tlast : in STD_LOGIC;
    AXIS_IN_tready : out STD_LOGIC;
    AXIS_IN_tvalid : in STD_LOGIC;
    BINS_TO_READ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    MAX_PIXELS : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    REFINDEX_BITS : in STD_LOGIC_VECTOR ( 5 downto 0 );
    STOPRESULT_BITS : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aresetn : in STD_LOGIC;
    bin_full_warning : out STD_LOGIC;
    bin_written_but_never_read_warning : out STD_LOGIC;
    clk : in STD_LOGIC;
    disable_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    frame_clk : in STD_LOGIC;
    line_clk : in STD_LOGIC;
    log_2_BIN_WIDTH : in STD_LOGIC_VECTOR ( 15 downto 0 );
    negedge_frame : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    premature_pixel_done_error : out STD_LOGIC;
    refres_p : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of emulated_microscope_Histogramming_0_0 : entity is "emulated_microscope_Histogramming_0_0,histo,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of emulated_microscope_Histogramming_0_0 : entity is "emulated_microscope_Histogramming_0_0,histo,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=Histogramming,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of emulated_microscope_Histogramming_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of emulated_microscope_Histogramming_0_0 : entity is "IPI";
end emulated_microscope_Histogramming_0_0;

architecture stub of emulated_microscope_Histogramming_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "AXIS_IN_tdata[63:0],AXIS_IN_tlast,AXIS_IN_tready,AXIS_IN_tvalid,BINS_TO_READ[14:0],MAX_PIXELS[31:0],M_AXIS_tdata[63:0],M_AXIS_tlast,M_AXIS_tready,M_AXIS_tvalid,REFINDEX_BITS[5:0],STOPRESULT_BITS[5:0],aresetn,bin_full_warning,bin_written_but_never_read_warning,clk,disable_p[0:0],en,frame_clk,line_clk,log_2_BIN_WIDTH[15:0],negedge_frame,pixel_clk,premature_pixel_done_error,refres_p[0:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AXIS_IN_tdata : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TDATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of AXIS_IN_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of AXIS_IN_tdata : signal is "XIL_INTERFACENAME AXIS_IN, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of AXIS_IN_tlast : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TLAST";
  attribute X_INTERFACE_INFO of AXIS_IN_tready : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TREADY";
  attribute X_INTERFACE_INFO of AXIS_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TVALID";
  attribute X_INTERFACE_INFO of M_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_MODE of M_AXIS_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXIS_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of M_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF AXIS_IN:M_AXIS, ASSOCIATED_RESET aresetn, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of negedge_frame : signal is "xilinx.com:signal:interrupt:1.0 INTR.NEGEDGE_FRAME INTERRUPT";
  attribute X_INTERFACE_MODE of negedge_frame : signal is "master";
  attribute X_INTERFACE_PARAMETER of negedge_frame : signal is "XIL_INTERFACENAME INTR.NEGEDGE_FRAME, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "histo,Vivado 2024.2";
begin
end;
