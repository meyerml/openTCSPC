-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Apr 12 20:17:00 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/openTCSPC3/SRC/LVDS_to_AXIS_IDDR.gen/sources_1/bd/LVDS_to_AXIS_IDDR/ip/LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0/LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0_sim_netlist.vhdl
-- Design      : LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0_IDELAYE2_DATA is
  port (
    DATAOUT : out STD_LOGIC;
    CNTVALUEOUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    IDATAIN : in STD_LOGIC;
    LD : in STD_LOGIC;
    CNTVALUEIN : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0_IDELAYE2_DATA : entity is "IDELAYE2_DATA";
end LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0_IDELAYE2_DATA;

architecture STRUCTURE of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0_IDELAYE2_DATA is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IDELAYE2_inst : label is "PRIMITIVE";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_inst : label is 0;
begin
IDELAYE2_inst: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => CNTVALUEIN(4 downto 0),
      CNTVALUEOUT(4 downto 0) => CNTVALUEOUT(4 downto 0),
      DATAIN => '0',
      DATAOUT => DATAOUT,
      IDATAIN => IDATAIN,
      INC => '0',
      LD => LD,
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0 is
  port (
    clk : in STD_LOGIC;
    CNTVALUEIN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    LD : in STD_LOGIC;
    IDATAIN : in STD_LOGIC;
    DATAOUT : out STD_LOGIC;
    CNTVALUEOUT : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0 : entity is "LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0,IDELAYE2_DATA,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0 : entity is "IDELAYE2_DATA,Vivado 2024.2";
end LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0;

architecture STRUCTURE of LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_IDDR_clk, INSERT_VIP 0";
begin
inst: entity work.LVDS_to_AXIS_IDDR_IDELAYE2_FRAME_0_IDELAYE2_DATA
     port map (
      CNTVALUEIN(4 downto 0) => CNTVALUEIN(4 downto 0),
      CNTVALUEOUT(4 downto 0) => CNTVALUEOUT(4 downto 0),
      DATAOUT => DATAOUT,
      IDATAIN => IDATAIN,
      LD => LD,
      clk => clk
    );
end STRUCTURE;
