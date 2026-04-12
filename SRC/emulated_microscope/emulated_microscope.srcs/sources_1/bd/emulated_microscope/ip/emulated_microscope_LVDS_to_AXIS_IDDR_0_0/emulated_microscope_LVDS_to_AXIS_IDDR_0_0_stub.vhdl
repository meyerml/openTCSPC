-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Apr 12 17:24:16 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/openTCSPC3/SRC/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_LVDS_to_AXIS_IDDR_0_0/emulated_microscope_LVDS_to_AXIS_IDDR_0_0_stub.vhdl
-- Design      : emulated_microscope_LVDS_to_AXIS_IDDR_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity emulated_microscope_LVDS_to_AXIS_IDDR_0_0 is
  Port ( 
    Buffer_overflow : out STD_LOGIC;
    CNTVALUEIN_CLK : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CNTVALUEIN_FRAME : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CNTVALUEIN_SDO : in STD_LOGIC_VECTOR ( 4 downto 0 );
    LD : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    TRIG_IN_ack : out STD_LOGIC;
    TRIG_IN_trig : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    frame_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    frame_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    ila_clk : in STD_LOGIC;
    l_clk_in_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    l_clk_in_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    l_clk_out_n : out STD_LOGIC;
    l_clk_out_p : out STD_LOGIC;
    lvds_clk : in STD_LOGIC;
    msglen : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sdo_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdo_p : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of emulated_microscope_LVDS_to_AXIS_IDDR_0_0 : entity is "emulated_microscope_LVDS_to_AXIS_IDDR_0_0,LVDS_to_AXIS_IDDR,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of emulated_microscope_LVDS_to_AXIS_IDDR_0_0 : entity is "emulated_microscope_LVDS_to_AXIS_IDDR_0_0,LVDS_to_AXIS_IDDR,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=LVDS_to_AXIS_IDDR,x_ipVersion=1.23,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of emulated_microscope_LVDS_to_AXIS_IDDR_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of emulated_microscope_LVDS_to_AXIS_IDDR_0_0 : entity is "IPI";
end emulated_microscope_LVDS_to_AXIS_IDDR_0_0;

architecture stub of emulated_microscope_LVDS_to_AXIS_IDDR_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Buffer_overflow,CNTVALUEIN_CLK[4:0],CNTVALUEIN_FRAME[4:0],CNTVALUEIN_SDO[4:0],LD,M_AXIS_tdata[63:0],M_AXIS_tready,M_AXIS_tvalid,TRIG_IN_ack,TRIG_IN_trig,aresetn,axis_rd_data_count[31:0],axis_wr_data_count[31:0],clk,en,frame_n[0:0],frame_p[0:0],ila_clk,l_clk_in_n[0:0],l_clk_in_p[0:0],l_clk_out_n,l_clk_out_p,lvds_clk,msglen[5:0],sdo_n[0:0],sdo_p[0:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of M_AXIS_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXIS_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of TRIG_IN_ack : signal is "xilinx.com:interface:trigger:1.0 TRIG_IN ACK";
  attribute X_INTERFACE_MODE of TRIG_IN_ack : signal is "slave";
  attribute X_INTERFACE_INFO of TRIG_IN_trig : signal is "xilinx.com:interface:trigger:1.0 TRIG_IN TRIG";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF M_AXIS, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of frame_n : signal is "xilinx.com:signal:clock:1.0 CLK.FRAME_N CLK";
  attribute X_INTERFACE_MODE of frame_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of frame_n : signal is "XIL_INTERFACENAME CLK.FRAME_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of frame_p : signal is "xilinx.com:signal:clock:1.0 CLK.FRAME_P CLK";
  attribute X_INTERFACE_MODE of frame_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of frame_p : signal is "XIL_INTERFACENAME CLK.FRAME_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ila_clk : signal is "xilinx.com:signal:clock:1.0 CLK.ILA_CLK CLK";
  attribute X_INTERFACE_MODE of ila_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ila_clk : signal is "XIL_INTERFACENAME CLK.ILA_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK3, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of l_clk_in_n : signal is "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_N CLK";
  attribute X_INTERFACE_MODE of l_clk_in_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of l_clk_in_n : signal is "XIL_INTERFACENAME CLK.L_CLK_IN_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of l_clk_in_p : signal is "xilinx.com:signal:clock:1.0 CLK.L_CLK_IN_P CLK";
  attribute X_INTERFACE_MODE of l_clk_in_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of l_clk_in_p : signal is "XIL_INTERFACENAME CLK.L_CLK_IN_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_l_clk_in_p, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lvds_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK";
  attribute X_INTERFACE_MODE of lvds_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of lvds_clk : signal is "XIL_INTERFACENAME CLK.LVDS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sdo_n : signal is "xilinx.com:signal:clock:1.0 CLK.SDO_N CLK";
  attribute X_INTERFACE_MODE of sdo_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sdo_n : signal is "XIL_INTERFACENAME CLK.SDO_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sdo_p : signal is "xilinx.com:signal:clock:1.0 CLK.SDO_P CLK";
  attribute X_INTERFACE_MODE of sdo_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sdo_p : signal is "XIL_INTERFACENAME CLK.SDO_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "LVDS_to_AXIS_IDDR,Vivado 2024.2";
begin
end;
