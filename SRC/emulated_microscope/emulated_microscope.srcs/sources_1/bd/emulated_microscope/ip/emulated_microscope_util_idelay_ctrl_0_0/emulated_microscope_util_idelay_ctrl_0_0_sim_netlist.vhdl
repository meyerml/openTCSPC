-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Mar  8 01:06:11 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/marce/OneDrive/Desktop/openTCSPC2/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_util_idelay_ctrl_0_0/emulated_microscope_util_idelay_ctrl_0_0_sim_netlist.vhdl
-- Design      : emulated_microscope_util_idelay_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity emulated_microscope_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_4_util_idelay_ctrl is
  port (
    rdy : out STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of emulated_microscope_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_4_util_idelay_ctrl : entity is "util_idelay_ctrl_v1_0_4_util_idelay_ctrl";
  attribute SIM_DEVICE : string;
  attribute SIM_DEVICE of emulated_microscope_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_4_util_idelay_ctrl : entity is "7SERIES";
end emulated_microscope_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_4_util_idelay_ctrl;

architecture STRUCTURE of emulated_microscope_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_4_util_idelay_ctrl is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of dlyctrl : label is "PRIMITIVE";
begin
dlyctrl: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => rdy,
      REFCLK => ref_clk,
      RST => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity emulated_microscope_util_idelay_ctrl_0_0 is
  port (
    rdy : out STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of emulated_microscope_util_idelay_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of emulated_microscope_util_idelay_ctrl_0_0 : entity is "emulated_microscope_util_idelay_ctrl_0_0,util_idelay_ctrl_v1_0_4_util_idelay_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of emulated_microscope_util_idelay_ctrl_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of emulated_microscope_util_idelay_ctrl_0_0 : entity is "util_idelay_ctrl_v1_0_4_util_idelay_ctrl,Vivado 2024.2";
end emulated_microscope_util_idelay_ctrl_0_0;

architecture STRUCTURE of emulated_microscope_util_idelay_ctrl_0_0 is
  attribute SIM_DEVICE : string;
  attribute SIM_DEVICE of inst : label is "7SERIES";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ref_clk : signal is "xilinx.com:signal:clock:1.0 ref_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ref_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ref_clk : signal is "XIL_INTERFACENAME ref_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK3, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.emulated_microscope_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_4_util_idelay_ctrl
     port map (
      rdy => rdy,
      ref_clk => ref_clk,
      rst => rst
    );
end STRUCTURE;
