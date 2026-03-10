-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Mar 10 16:56:14 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_negedge_detect_0_0/histo_negedge_detect_0_0_sim_netlist.vhdl
-- Design      : histo_negedge_detect_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_negedge_detect_0_0_negedge_detect is
  port (
    detect_out : out STD_LOGIC;
    edge_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    edge_valid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_negedge_detect_0_0_negedge_detect : entity is "negedge_detect";
end histo_negedge_detect_0_0_negedge_detect;

architecture STRUCTURE of histo_negedge_detect_0_0_negedge_detect is
  signal detect_out0_n_0 : STD_LOGIC;
  signal detect_out_i_1_n_0 : STD_LOGIC;
  signal edge_valid_old : STD_LOGIC;
  signal edge_valid_very_old : STD_LOGIC;
  signal old : STD_LOGIC;
  signal very_old : STD_LOGIC;
  signal very_very_old : STD_LOGIC;
  signal very_very_old_i_1_n_0 : STD_LOGIC;
begin
detect_out0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => very_very_old,
      I1 => edge_valid_very_old,
      I2 => very_old,
      O => detect_out0_n_0
    );
detect_out_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => detect_out_i_1_n_0
    );
detect_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => detect_out_i_1_n_0,
      D => detect_out0_n_0,
      Q => detect_out
    );
edge_valid_old_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => detect_out_i_1_n_0,
      D => edge_valid,
      Q => edge_valid_old
    );
edge_valid_very_old_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => detect_out_i_1_n_0,
      D => edge_valid_old,
      Q => edge_valid_very_old
    );
old_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => detect_out_i_1_n_0,
      D => edge_in,
      Q => old
    );
very_old_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => detect_out_i_1_n_0,
      D => old,
      Q => very_old
    );
very_very_old_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => very_old,
      I1 => aresetn,
      I2 => very_very_old,
      O => very_very_old_i_1_n_0
    );
very_very_old_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => very_very_old_i_1_n_0,
      Q => very_very_old,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_negedge_detect_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    edge_in : in STD_LOGIC;
    edge_valid : in STD_LOGIC;
    detect_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of histo_negedge_detect_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of histo_negedge_detect_0_0 : entity is "histo_negedge_detect_0_0,negedge_detect,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of histo_negedge_detect_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of histo_negedge_detect_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of histo_negedge_detect_0_0 : entity is "negedge_detect,Vivado 2024.2";
end histo_negedge_detect_0_0;

architecture STRUCTURE of histo_negedge_detect_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, INSERT_VIP 0";
begin
inst: entity work.histo_negedge_detect_0_0_negedge_detect
     port map (
      aresetn => aresetn,
      clk => clk,
      detect_out => detect_out,
      edge_in => edge_in,
      edge_valid => edge_valid
    );
end STRUCTURE;
