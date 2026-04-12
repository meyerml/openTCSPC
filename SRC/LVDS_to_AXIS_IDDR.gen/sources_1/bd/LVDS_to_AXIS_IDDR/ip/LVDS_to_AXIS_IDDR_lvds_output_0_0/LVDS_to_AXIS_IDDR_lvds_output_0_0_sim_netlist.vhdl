-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Apr 12 20:18:58 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/openTCSPC3/SRC/LVDS_to_AXIS_IDDR.gen/sources_1/bd/LVDS_to_AXIS_IDDR/ip/LVDS_to_AXIS_IDDR_lvds_output_0_0/LVDS_to_AXIS_IDDR_lvds_output_0_0_sim_netlist.vhdl
-- Design      : LVDS_to_AXIS_IDDR_lvds_output_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LVDS_to_AXIS_IDDR_lvds_output_0_0_lvds_output is
  port (
    diff_p : out STD_LOGIC;
    diff_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of LVDS_to_AXIS_IDDR_lvds_output_0_0_lvds_output : entity is "lvds_output";
end LVDS_to_AXIS_IDDR_lvds_output_0_0_lvds_output;

architecture STRUCTURE of LVDS_to_AXIS_IDDR_lvds_output_0_0_lvds_output is
  signal gated_clk : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
begin
OBUFDS_inst: unisim.vcomponents.OBUFDS
     port map (
      I => gated_clk,
      O => diff_p,
      OB => diff_n
    );
OBUFDS_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk,
      I1 => en,
      O => gated_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LVDS_to_AXIS_IDDR_lvds_output_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    diff_p : out STD_LOGIC;
    diff_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of LVDS_to_AXIS_IDDR_lvds_output_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LVDS_to_AXIS_IDDR_lvds_output_0_0 : entity is "LVDS_to_AXIS_IDDR_lvds_output_0_0,lvds_output,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LVDS_to_AXIS_IDDR_lvds_output_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LVDS_to_AXIS_IDDR_lvds_output_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of LVDS_to_AXIS_IDDR_lvds_output_0_0 : entity is "lvds_output,Vivado 2024.2";
end LVDS_to_AXIS_IDDR_lvds_output_0_0;

architecture STRUCTURE of LVDS_to_AXIS_IDDR_lvds_output_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_IDDR_lvds_clk, INSERT_VIP 0";
begin
inst: entity work.LVDS_to_AXIS_IDDR_lvds_output_0_0_lvds_output
     port map (
      clk => clk,
      diff_n => diff_n,
      diff_p => diff_p,
      en => en
    );
end STRUCTURE;
