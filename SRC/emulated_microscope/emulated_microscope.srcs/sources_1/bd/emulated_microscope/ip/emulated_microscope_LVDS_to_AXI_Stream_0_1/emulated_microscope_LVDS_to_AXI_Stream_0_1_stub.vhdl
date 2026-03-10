-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Mar  9 17:18:00 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_LVDS_to_AXI_Stream_0_1/emulated_microscope_LVDS_to_AXI_Stream_0_1_stub.vhdl
-- Design      : emulated_microscope_LVDS_to_AXI_Stream_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity emulated_microscope_LVDS_to_AXI_Stream_0_1 is
  Port ( 
    Buffer_overflow : out STD_LOGIC_VECTOR ( 0 to 0 );
    CNTVALUEIN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    LD : in STD_LOGIC;
    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_0_tlast : out STD_LOGIC;
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    debug_axis_before_fifo_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    debug_axis_before_fifo_tlast : out STD_LOGIC;
    debug_axis_before_fifo_tready : out STD_LOGIC;
    debug_axis_before_fifo_tvalid : out STD_LOGIC;
    en : in STD_LOGIC;
    frame_n : in STD_LOGIC;
    frame_p : in STD_LOGIC;
    ila_clk : in STD_LOGIC;
    l_clk_in_n : in STD_LOGIC;
    l_clk_in_p : in STD_LOGIC;
    l_clk_out_n : out STD_LOGIC;
    l_clk_out_p : out STD_LOGIC;
    lvds_clk : in STD_LOGIC;
    msglen : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sdo_n : in STD_LOGIC;
    sdo_p : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of emulated_microscope_LVDS_to_AXI_Stream_0_1 : entity is "emulated_microscope_LVDS_to_AXI_Stream_0_1,LVDS_to_AXIS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of emulated_microscope_LVDS_to_AXI_Stream_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of emulated_microscope_LVDS_to_AXI_Stream_0_1 : entity is "IPI";
end emulated_microscope_LVDS_to_AXI_Stream_0_1;

architecture stub of emulated_microscope_LVDS_to_AXI_Stream_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Buffer_overflow[0:0],CNTVALUEIN[4:0],LD,M_AXIS_0_tdata[63:0],M_AXIS_0_tlast,M_AXIS_0_tready,M_AXIS_0_tvalid,aresetn,axis_rd_data_count[31:0],axis_wr_data_count[31:0],clk,debug_axis_before_fifo_tdata[63:0],debug_axis_before_fifo_tlast,debug_axis_before_fifo_tready,debug_axis_before_fifo_tvalid,en,frame_n,frame_p,ila_clk,l_clk_in_n,l_clk_in_p,l_clk_out_n,l_clk_out_p,lvds_clk,msglen[5:0],sdo_n,sdo_p";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_0_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of M_AXIS_0_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXIS_0_tdata : signal is "XIL_INTERFACENAME M_AXIS_0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_0_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST";
  attribute X_INTERFACE_INFO of M_AXIS_0_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 50, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF M_AXIS_0, ASSOCIATED_RESET aresetn, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of debug_axis_before_fifo_tdata : signal is "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TDATA";
  attribute X_INTERFACE_MODE of debug_axis_before_fifo_tdata : signal is "monitor master";
  attribute X_INTERFACE_PARAMETER of debug_axis_before_fifo_tdata : signal is "XIL_INTERFACENAME debug_axis_before_fifo, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of debug_axis_before_fifo_tlast : signal is "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TLAST";
  attribute X_INTERFACE_INFO of debug_axis_before_fifo_tready : signal is "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TREADY";
  attribute X_INTERFACE_INFO of debug_axis_before_fifo_tvalid : signal is "xilinx.com:interface:axis:1.0 debug_axis_before_fifo TVALID";
  attribute X_INTERFACE_INFO of ila_clk : signal is "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK";
  attribute X_INTERFACE_MODE of ila_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ila_clk : signal is "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK3, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of l_clk_in_n : signal is "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK";
  attribute X_INTERFACE_MODE of l_clk_in_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of l_clk_in_n : signal is "XIL_INTERFACENAME CLK.L_CLK_IN_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of l_clk_in_p : signal is "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK";
  attribute X_INTERFACE_MODE of l_clk_in_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of l_clk_in_p : signal is "XIL_INTERFACENAME CLK.L_CLK_IN_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_p, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lvds_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK";
  attribute X_INTERFACE_MODE of lvds_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of lvds_clk : signal is "XIL_INTERFACENAME CLK.LVDS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "LVDS_to_AXIS,Vivado 2024.2";
begin
end;
