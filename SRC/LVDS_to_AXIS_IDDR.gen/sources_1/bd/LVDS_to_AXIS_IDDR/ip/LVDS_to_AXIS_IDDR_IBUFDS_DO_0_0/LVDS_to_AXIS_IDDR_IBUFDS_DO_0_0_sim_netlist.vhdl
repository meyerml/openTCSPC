-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Apr 12 20:17:00 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/openTCSPC3/SRC/LVDS_to_AXIS_IDDR.gen/sources_1/bd/LVDS_to_AXIS_IDDR/ip/LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0/LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0_sim_netlist.vhdl
-- Design      : LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0_IBUFDS_DO is
  port (
    O : out STD_LOGIC;
    OB : out STD_LOGIC;
    I : in STD_LOGIC;
    IB : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0_IBUFDS_DO : entity is "IBUFDS_DO";
end LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0_IBUFDS_DO;

architecture STRUCTURE of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0_IBUFDS_DO is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_DIFF_OUT_inst : label is "PRIMITIVE";
begin
IBUFDS_DIFF_OUT_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => I,
      IB => IB,
      O => O,
      OB => OB
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0 is
  port (
    I : in STD_LOGIC;
    IB : in STD_LOGIC;
    O : out STD_LOGIC;
    OB : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0 : entity is "LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0,IBUFDS_DO,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0 : entity is "IBUFDS_DO,Vivado 2024.2";
end LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0;

architecture STRUCTURE of LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0 is
begin
inst: entity work.LVDS_to_AXIS_IDDR_IBUFDS_DO_0_0_IBUFDS_DO
     port map (
      I => I,
      IB => IB,
      O => O,
      OB => OB
    );
end STRUCTURE;
