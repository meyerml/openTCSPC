-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Mar  9 14:28:57 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/DDR_LVDS_FABRIC.gen/sources_1/bd/LVDS_to_AXIS/ip/LVDS_to_AXIS_IDELAY_DATA_0_0/LVDS_to_AXIS_IDELAY_DATA_0_0_stub.vhdl
-- Design      : LVDS_to_AXIS_IDELAY_DATA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LVDS_to_AXIS_IDELAY_DATA_0_0 is
  Port ( 
    IDATAIN : in STD_LOGIC;
    C : in STD_LOGIC;
    CNTVALUEIN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    LD : in STD_LOGIC;
    DATAOUT : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LVDS_to_AXIS_IDELAY_DATA_0_0 : entity is "LVDS_to_AXIS_IDELAY_DATA_0_0,IDELAY_DATA,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of LVDS_to_AXIS_IDELAY_DATA_0_0 : entity is "LVDS_to_AXIS_IDELAY_DATA_0_0,IDELAY_DATA,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=IDELAY_DATA,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LVDS_to_AXIS_IDELAY_DATA_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LVDS_to_AXIS_IDELAY_DATA_0_0 : entity is "module_ref";
end LVDS_to_AXIS_IDELAY_DATA_0_0;

architecture stub of LVDS_to_AXIS_IDELAY_DATA_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "IDATAIN,C,CNTVALUEIN[4:0],LD,DATAOUT";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "IDELAY_DATA,Vivado 2024.2";
begin
end;
