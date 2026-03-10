-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Mar 10 16:56:18 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_sorter_0_0/histo_sorter_0_0_sim_netlist.vhdl
-- Design      : histo_sorter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_sorter_0_0_sorter is
  port (
    tdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid_out : out STD_LOGIC;
    tdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    STOPRESULT_BITS : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    log_2_BIN_WIDTH : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    tvalid_in : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_sorter_0_0_sorter : entity is "sorter";
end histo_sorter_0_0_sorter;

architecture STRUCTURE of histo_sorter_0_0_sorter is
  signal STOPRESULT_BITS_r : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal STOPRESULT_BITS_r_0 : STD_LOGIC;
  signal log_2_BIN_WIDTH_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \tdata_out2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__0_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__10_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__11_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__11_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__11_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__11_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__11_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__12_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__12_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__12_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__12_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__12_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__13_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__13_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__13_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__13_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__13_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__14_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__14_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__14_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__14_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__14_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__14_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__14_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__14_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__1_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__2_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__3_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__4_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__5_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__6_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__7_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__8_n_7\ : STD_LOGIC;
  signal \tdata_out2_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_0\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_1\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_2\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_3\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_4\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_5\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_6\ : STD_LOGIC;
  signal \tdata_out2_carry__9_n_7\ : STD_LOGIC;
  signal tdata_out2_carry_i_2_n_0 : STD_LOGIC;
  signal tdata_out2_carry_i_3_n_0 : STD_LOGIC;
  signal tdata_out2_carry_i_4_n_0 : STD_LOGIC;
  signal tdata_out2_carry_i_5_n_0 : STD_LOGIC;
  signal tdata_out2_carry_n_0 : STD_LOGIC;
  signal tdata_out2_carry_n_1 : STD_LOGIC;
  signal tdata_out2_carry_n_2 : STD_LOGIC;
  signal tdata_out2_carry_n_3 : STD_LOGIC;
  signal tdata_out2_carry_n_4 : STD_LOGIC;
  signal tdata_out2_carry_n_5 : STD_LOGIC;
  signal tdata_out2_carry_n_6 : STD_LOGIC;
  signal tdata_out2_carry_n_7 : STD_LOGIC;
  signal tdata_out3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \tdata_out[0]_i_10_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_11_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_8_n_0\ : STD_LOGIC;
  signal \tdata_out[0]_i_9_n_0\ : STD_LOGIC;
  signal \tdata_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[14]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[16]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[16]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[16]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[16]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[17]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[17]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[17]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[17]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[18]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[18]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[18]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[18]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[19]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[19]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[19]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[19]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[20]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[20]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[20]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[20]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[21]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[21]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[21]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[21]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[22]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[22]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[22]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[22]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[23]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[23]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[23]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[23]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[24]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[24]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[24]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[24]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[25]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[25]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[25]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[25]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[26]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[26]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[26]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[26]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[27]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[27]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[27]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[27]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[28]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[28]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[28]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[28]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[28]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_out[29]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[29]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[29]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[29]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[29]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[30]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[30]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[30]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[30]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[30]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_out[31]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_out[32]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[32]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[33]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[33]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[33]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[34]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[34]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[35]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[35]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[35]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[36]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[36]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[37]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[37]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[37]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[38]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[38]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[39]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[39]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[39]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[40]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[40]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[41]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[41]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[41]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[42]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[42]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[43]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[43]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[43]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[44]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[44]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[45]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[45]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[45]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[46]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[46]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[47]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[47]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[47]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[48]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[48]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[48]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[49]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[49]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[49]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[49]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[50]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[50]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[50]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[51]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[51]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[51]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[51]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[52]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[52]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[52]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[53]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[53]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[53]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[53]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[54]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[54]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[54]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[54]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[55]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[55]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[55]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[55]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[56]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[56]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[56]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[57]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[57]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[57]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[58]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[58]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[58]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[59]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[59]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[59]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[60]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[60]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[61]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[62]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[63]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[63]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[63]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[63]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_out[63]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_tdata_out2_carry__14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tdata_out2_carry__14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of tdata_out2_carry : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__10\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__11\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__12\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__13\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__14\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__8\ : label is 35;
  attribute ADDER_THRESHOLD of \tdata_out2_carry__9\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tdata_out[0]_i_9\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \tdata_out[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tdata_out[10]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tdata_out[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tdata_out[11]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tdata_out[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tdata_out[12]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tdata_out[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tdata_out[13]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tdata_out[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tdata_out[14]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tdata_out[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tdata_out[15]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tdata_out[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tdata_out[16]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \tdata_out[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tdata_out[17]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tdata_out[18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tdata_out[18]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdata_out[19]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \tdata_out[19]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdata_out[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tdata_out[1]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tdata_out[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \tdata_out[20]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdata_out[21]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \tdata_out[21]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdata_out[22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \tdata_out[22]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdata_out[23]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \tdata_out[23]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdata_out[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \tdata_out[24]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdata_out[25]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \tdata_out[25]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tdata_out[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \tdata_out[26]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tdata_out[27]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \tdata_out[27]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tdata_out[28]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \tdata_out[28]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \tdata_out[28]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tdata_out[29]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tdata_out[29]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \tdata_out[29]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tdata_out[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tdata_out[2]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdata_out[30]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tdata_out[30]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \tdata_out[30]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tdata_out[31]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \tdata_out[31]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tdata_out[33]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \tdata_out[35]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \tdata_out[37]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \tdata_out[39]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \tdata_out[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tdata_out[3]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdata_out[41]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \tdata_out[43]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \tdata_out[45]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \tdata_out[47]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \tdata_out[48]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tdata_out[49]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \tdata_out[49]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdata_out[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tdata_out[4]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdata_out[50]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdata_out[51]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \tdata_out[51]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdata_out[52]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdata_out[53]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \tdata_out[53]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tdata_out[54]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdata_out[55]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tdata_out[55]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdata_out[56]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tdata_out[56]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdata_out[56]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tdata_out[57]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \tdata_out[57]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tdata_out[57]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdata_out[58]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \tdata_out[58]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdata_out[58]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdata_out[59]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdata_out[59]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdata_out[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tdata_out[5]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdata_out[60]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \tdata_out[62]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tdata_out[63]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tdata_out[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tdata_out[6]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdata_out[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tdata_out[7]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdata_out[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tdata_out[8]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdata_out[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tdata_out[9]_i_4\ : label is "soft_lutpair16";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \tdata_out_reg[0]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[10]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[11]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[12]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[13]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[14]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[15]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[16]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[17]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[18]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[19]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[1]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[20]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[21]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[22]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[23]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[24]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[25]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[26]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[27]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[28]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[29]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[2]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[30]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[31]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[32]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[33]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[34]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[35]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[36]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[37]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[38]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[39]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[3]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[40]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[41]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[42]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[43]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[44]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[45]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[46]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[47]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[48]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[49]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[4]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[50]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[51]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[52]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[53]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[54]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[55]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[56]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[57]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[58]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[59]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[5]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[60]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[61]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[62]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[63]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[6]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[7]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[8]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_reg[9]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of tvalid_out_reg : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID";
begin
\STOPRESULT_BITS_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => en,
      O => STOPRESULT_BITS_r_0
    );
\STOPRESULT_BITS_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => STOPRESULT_BITS(0),
      Q => STOPRESULT_BITS_r(0),
      R => '0'
    );
\STOPRESULT_BITS_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => STOPRESULT_BITS(1),
      Q => STOPRESULT_BITS_r(1),
      R => '0'
    );
\STOPRESULT_BITS_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => STOPRESULT_BITS(2),
      Q => STOPRESULT_BITS_r(2),
      R => '0'
    );
\STOPRESULT_BITS_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => STOPRESULT_BITS(3),
      Q => STOPRESULT_BITS_r(3),
      R => '0'
    );
\STOPRESULT_BITS_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => STOPRESULT_BITS(4),
      Q => STOPRESULT_BITS_r(4),
      R => '0'
    );
\STOPRESULT_BITS_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => STOPRESULT_BITS(5),
      Q => STOPRESULT_BITS_r(5),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(0),
      Q => log_2_BIN_WIDTH_r(0),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(10),
      Q => log_2_BIN_WIDTH_r(10),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(11),
      Q => log_2_BIN_WIDTH_r(11),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(12),
      Q => log_2_BIN_WIDTH_r(12),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(13),
      Q => log_2_BIN_WIDTH_r(13),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(14),
      Q => log_2_BIN_WIDTH_r(14),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(15),
      Q => log_2_BIN_WIDTH_r(15),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(1),
      Q => log_2_BIN_WIDTH_r(1),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(2),
      Q => log_2_BIN_WIDTH_r(2),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(3),
      Q => log_2_BIN_WIDTH_r(3),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(4),
      Q => log_2_BIN_WIDTH_r(4),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(5),
      Q => log_2_BIN_WIDTH_r(5),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(6),
      Q => log_2_BIN_WIDTH_r(6),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(7),
      Q => log_2_BIN_WIDTH_r(7),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(8),
      Q => log_2_BIN_WIDTH_r(8),
      R => '0'
    );
\log_2_BIN_WIDTH_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => STOPRESULT_BITS_r_0,
      D => log_2_BIN_WIDTH(9),
      Q => log_2_BIN_WIDTH_r(9),
      R => '0'
    );
tdata_out2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tdata_out2_carry_n_0,
      CO(2) => tdata_out2_carry_n_1,
      CO(1) => tdata_out2_carry_n_2,
      CO(0) => tdata_out2_carry_n_3,
      CYINIT => tdata_out3(0),
      DI(3 downto 0) => B"1111",
      O(3) => tdata_out2_carry_n_4,
      O(2) => tdata_out2_carry_n_5,
      O(1) => tdata_out2_carry_n_6,
      O(0) => tdata_out2_carry_n_7,
      S(3) => tdata_out2_carry_i_2_n_0,
      S(2) => tdata_out2_carry_i_3_n_0,
      S(1) => tdata_out2_carry_i_4_n_0,
      S(0) => tdata_out2_carry_i_5_n_0
    );
\tdata_out2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tdata_out2_carry_n_0,
      CO(3) => \tdata_out2_carry__0_n_0\,
      CO(2) => \tdata_out2_carry__0_n_1\,
      CO(1) => \tdata_out2_carry__0_n_2\,
      CO(0) => \tdata_out2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__0_n_4\,
      O(2) => \tdata_out2_carry__0_n_5\,
      O(1) => \tdata_out2_carry__0_n_6\,
      O(0) => \tdata_out2_carry__0_n_7\,
      S(3) => \tdata_out2_carry__0_i_1_n_0\,
      S(2) => \tdata_out2_carry__0_i_2_n_0\,
      S(1) => \tdata_out2_carry__0_i_3_n_0\,
      S(0) => \tdata_out2_carry__0_i_4_n_0\
    );
\tdata_out2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__0_i_1_n_0\
    );
\tdata_out2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__0_i_2_n_0\
    );
\tdata_out2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__0_i_3_n_0\
    );
\tdata_out2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__0_i_4_n_0\
    );
\tdata_out2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__0_n_0\,
      CO(3) => \tdata_out2_carry__1_n_0\,
      CO(2) => \tdata_out2_carry__1_n_1\,
      CO(1) => \tdata_out2_carry__1_n_2\,
      CO(0) => \tdata_out2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__1_n_4\,
      O(2) => \tdata_out2_carry__1_n_5\,
      O(1) => \tdata_out2_carry__1_n_6\,
      O(0) => \tdata_out2_carry__1_n_7\,
      S(3) => \tdata_out2_carry__1_i_1_n_0\,
      S(2) => \tdata_out2_carry__1_i_2_n_0\,
      S(1) => \tdata_out2_carry__1_i_3_n_0\,
      S(0) => \tdata_out2_carry__1_i_4_n_0\
    );
\tdata_out2_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__9_n_0\,
      CO(3) => \tdata_out2_carry__10_n_0\,
      CO(2) => \tdata_out2_carry__10_n_1\,
      CO(1) => \tdata_out2_carry__10_n_2\,
      CO(0) => \tdata_out2_carry__10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__10_n_4\,
      O(2) => \tdata_out2_carry__10_n_5\,
      O(1) => \tdata_out2_carry__10_n_6\,
      O(0) => \tdata_out2_carry__10_n_7\,
      S(3) => \tdata_out2_carry__10_i_1_n_0\,
      S(2) => \tdata_out2_carry__10_i_2_n_0\,
      S(1) => \tdata_out2_carry__10_i_3_n_0\,
      S(0) => \tdata_out2_carry__10_i_4_n_0\
    );
\tdata_out2_carry__10_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__10_i_1_n_0\
    );
\tdata_out2_carry__10_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__10_i_2_n_0\
    );
\tdata_out2_carry__10_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__10_i_3_n_0\
    );
\tdata_out2_carry__10_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__10_i_4_n_0\
    );
\tdata_out2_carry__11\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__10_n_0\,
      CO(3) => \tdata_out2_carry__11_n_0\,
      CO(2) => \tdata_out2_carry__11_n_1\,
      CO(1) => \tdata_out2_carry__11_n_2\,
      CO(0) => \tdata_out2_carry__11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__11_n_4\,
      O(2) => \tdata_out2_carry__11_n_5\,
      O(1) => \tdata_out2_carry__11_n_6\,
      O(0) => \tdata_out2_carry__11_n_7\,
      S(3) => \tdata_out2_carry__11_i_1_n_0\,
      S(2) => \tdata_out2_carry__11_i_2_n_0\,
      S(1) => \tdata_out2_carry__11_i_3_n_0\,
      S(0) => \tdata_out2_carry__11_i_4_n_0\
    );
\tdata_out2_carry__11_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__11_i_1_n_0\
    );
\tdata_out2_carry__11_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__11_i_2_n_0\
    );
\tdata_out2_carry__11_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__11_i_3_n_0\
    );
\tdata_out2_carry__11_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__11_i_4_n_0\
    );
\tdata_out2_carry__12\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__11_n_0\,
      CO(3) => \tdata_out2_carry__12_n_0\,
      CO(2) => \tdata_out2_carry__12_n_1\,
      CO(1) => \tdata_out2_carry__12_n_2\,
      CO(0) => \tdata_out2_carry__12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__12_n_4\,
      O(2) => \tdata_out2_carry__12_n_5\,
      O(1) => \tdata_out2_carry__12_n_6\,
      O(0) => \tdata_out2_carry__12_n_7\,
      S(3) => \tdata_out2_carry__12_i_1_n_0\,
      S(2) => \tdata_out2_carry__12_i_2_n_0\,
      S(1) => \tdata_out2_carry__12_i_3_n_0\,
      S(0) => \tdata_out2_carry__12_i_4_n_0\
    );
\tdata_out2_carry__12_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__12_i_1_n_0\
    );
\tdata_out2_carry__12_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__12_i_2_n_0\
    );
\tdata_out2_carry__12_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__12_i_3_n_0\
    );
\tdata_out2_carry__12_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__12_i_4_n_0\
    );
\tdata_out2_carry__13\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__12_n_0\,
      CO(3) => \tdata_out2_carry__13_n_0\,
      CO(2) => \tdata_out2_carry__13_n_1\,
      CO(1) => \tdata_out2_carry__13_n_2\,
      CO(0) => \tdata_out2_carry__13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__13_n_4\,
      O(2) => \tdata_out2_carry__13_n_5\,
      O(1) => \tdata_out2_carry__13_n_6\,
      O(0) => \tdata_out2_carry__13_n_7\,
      S(3) => \tdata_out2_carry__13_i_1_n_0\,
      S(2) => \tdata_out2_carry__13_i_2_n_0\,
      S(1) => \tdata_out2_carry__13_i_3_n_0\,
      S(0) => \tdata_out2_carry__13_i_4_n_0\
    );
\tdata_out2_carry__13_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__13_i_1_n_0\
    );
\tdata_out2_carry__13_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__13_i_2_n_0\
    );
\tdata_out2_carry__13_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__13_i_3_n_0\
    );
\tdata_out2_carry__13_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__13_i_4_n_0\
    );
\tdata_out2_carry__14\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__13_n_0\,
      CO(3 downto 2) => \NLW_tdata_out2_carry__14_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tdata_out2_carry__14_n_2\,
      CO(0) => \tdata_out2_carry__14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3) => \NLW_tdata_out2_carry__14_O_UNCONNECTED\(3),
      O(2) => \tdata_out2_carry__14_n_5\,
      O(1) => \tdata_out2_carry__14_n_6\,
      O(0) => \tdata_out2_carry__14_n_7\,
      S(3) => '0',
      S(2) => \tdata_out2_carry__14_i_1_n_0\,
      S(1) => \tdata_out2_carry__14_i_2_n_0\,
      S(0) => \tdata_out2_carry__14_i_3_n_0\
    );
\tdata_out2_carry__14_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__14_i_1_n_0\
    );
\tdata_out2_carry__14_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__14_i_2_n_0\
    );
\tdata_out2_carry__14_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__14_i_3_n_0\
    );
\tdata_out2_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__1_i_1_n_0\
    );
\tdata_out2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__1_i_2_n_0\
    );
\tdata_out2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__1_i_3_n_0\
    );
\tdata_out2_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__1_i_4_n_0\
    );
\tdata_out2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__1_n_0\,
      CO(3) => \tdata_out2_carry__2_n_0\,
      CO(2) => \tdata_out2_carry__2_n_1\,
      CO(1) => \tdata_out2_carry__2_n_2\,
      CO(0) => \tdata_out2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__2_n_4\,
      O(2) => \tdata_out2_carry__2_n_5\,
      O(1) => \tdata_out2_carry__2_n_6\,
      O(0) => \tdata_out2_carry__2_n_7\,
      S(3) => \tdata_out2_carry__2_i_1_n_0\,
      S(2) => \tdata_out2_carry__2_i_2_n_0\,
      S(1) => \tdata_out2_carry__2_i_3_n_0\,
      S(0) => \tdata_out2_carry__2_i_4_n_0\
    );
\tdata_out2_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__2_i_1_n_0\
    );
\tdata_out2_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__2_i_2_n_0\
    );
\tdata_out2_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__2_i_3_n_0\
    );
\tdata_out2_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__2_i_4_n_0\
    );
\tdata_out2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__2_n_0\,
      CO(3) => \tdata_out2_carry__3_n_0\,
      CO(2) => \tdata_out2_carry__3_n_1\,
      CO(1) => \tdata_out2_carry__3_n_2\,
      CO(0) => \tdata_out2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__3_n_4\,
      O(2) => \tdata_out2_carry__3_n_5\,
      O(1) => \tdata_out2_carry__3_n_6\,
      O(0) => \tdata_out2_carry__3_n_7\,
      S(3) => \tdata_out2_carry__3_i_1_n_0\,
      S(2) => \tdata_out2_carry__3_i_2_n_0\,
      S(1) => \tdata_out2_carry__3_i_3_n_0\,
      S(0) => \tdata_out2_carry__3_i_4_n_0\
    );
\tdata_out2_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__3_i_1_n_0\
    );
\tdata_out2_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__3_i_2_n_0\
    );
\tdata_out2_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__3_i_3_n_0\
    );
\tdata_out2_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__3_i_4_n_0\
    );
\tdata_out2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__3_n_0\,
      CO(3) => \tdata_out2_carry__4_n_0\,
      CO(2) => \tdata_out2_carry__4_n_1\,
      CO(1) => \tdata_out2_carry__4_n_2\,
      CO(0) => \tdata_out2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__4_n_4\,
      O(2) => \tdata_out2_carry__4_n_5\,
      O(1) => \tdata_out2_carry__4_n_6\,
      O(0) => \tdata_out2_carry__4_n_7\,
      S(3) => \tdata_out2_carry__4_i_1_n_0\,
      S(2) => \tdata_out2_carry__4_i_2_n_0\,
      S(1) => \tdata_out2_carry__4_i_3_n_0\,
      S(0) => \tdata_out2_carry__4_i_4_n_0\
    );
\tdata_out2_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__4_i_1_n_0\
    );
\tdata_out2_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__4_i_2_n_0\
    );
\tdata_out2_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__4_i_3_n_0\
    );
\tdata_out2_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__4_i_4_n_0\
    );
\tdata_out2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__4_n_0\,
      CO(3) => \tdata_out2_carry__5_n_0\,
      CO(2) => \tdata_out2_carry__5_n_1\,
      CO(1) => \tdata_out2_carry__5_n_2\,
      CO(0) => \tdata_out2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__5_n_4\,
      O(2) => \tdata_out2_carry__5_n_5\,
      O(1) => \tdata_out2_carry__5_n_6\,
      O(0) => \tdata_out2_carry__5_n_7\,
      S(3) => \tdata_out2_carry__5_i_1_n_0\,
      S(2) => \tdata_out2_carry__5_i_2_n_0\,
      S(1) => \tdata_out2_carry__5_i_3_n_0\,
      S(0) => \tdata_out2_carry__5_i_4_n_0\
    );
\tdata_out2_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__5_i_1_n_0\
    );
\tdata_out2_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__5_i_2_n_0\
    );
\tdata_out2_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__5_i_3_n_0\
    );
\tdata_out2_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__5_i_4_n_0\
    );
\tdata_out2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__5_n_0\,
      CO(3) => \tdata_out2_carry__6_n_0\,
      CO(2) => \tdata_out2_carry__6_n_1\,
      CO(1) => \tdata_out2_carry__6_n_2\,
      CO(0) => \tdata_out2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__6_n_4\,
      O(2) => \tdata_out2_carry__6_n_5\,
      O(1) => \tdata_out2_carry__6_n_6\,
      O(0) => \tdata_out2_carry__6_n_7\,
      S(3) => \tdata_out2_carry__6_i_1_n_0\,
      S(2) => \tdata_out2_carry__6_i_2_n_0\,
      S(1) => \tdata_out2_carry__6_i_3_n_0\,
      S(0) => \tdata_out2_carry__6_i_4_n_0\
    );
\tdata_out2_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__6_i_1_n_0\
    );
\tdata_out2_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__6_i_2_n_0\
    );
\tdata_out2_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__6_i_3_n_0\
    );
\tdata_out2_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__6_i_4_n_0\
    );
\tdata_out2_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__6_n_0\,
      CO(3) => \tdata_out2_carry__7_n_0\,
      CO(2) => \tdata_out2_carry__7_n_1\,
      CO(1) => \tdata_out2_carry__7_n_2\,
      CO(0) => \tdata_out2_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__7_n_4\,
      O(2) => \tdata_out2_carry__7_n_5\,
      O(1) => \tdata_out2_carry__7_n_6\,
      O(0) => \tdata_out2_carry__7_n_7\,
      S(3) => \tdata_out2_carry__7_i_1_n_0\,
      S(2) => \tdata_out2_carry__7_i_2_n_0\,
      S(1) => \tdata_out2_carry__7_i_3_n_0\,
      S(0) => \tdata_out2_carry__7_i_4_n_0\
    );
\tdata_out2_carry__7_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__7_i_1_n_0\
    );
\tdata_out2_carry__7_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__7_i_2_n_0\
    );
\tdata_out2_carry__7_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__7_i_3_n_0\
    );
\tdata_out2_carry__7_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__7_i_4_n_0\
    );
\tdata_out2_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__7_n_0\,
      CO(3) => \tdata_out2_carry__8_n_0\,
      CO(2) => \tdata_out2_carry__8_n_1\,
      CO(1) => \tdata_out2_carry__8_n_2\,
      CO(0) => \tdata_out2_carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__8_n_4\,
      O(2) => \tdata_out2_carry__8_n_5\,
      O(1) => \tdata_out2_carry__8_n_6\,
      O(0) => \tdata_out2_carry__8_n_7\,
      S(3) => \tdata_out2_carry__8_i_1_n_0\,
      S(2) => \tdata_out2_carry__8_i_2_n_0\,
      S(1) => \tdata_out2_carry__8_i_3_n_0\,
      S(0) => \tdata_out2_carry__8_i_4_n_0\
    );
\tdata_out2_carry__8_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__8_i_1_n_0\
    );
\tdata_out2_carry__8_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__8_i_2_n_0\
    );
\tdata_out2_carry__8_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__8_i_3_n_0\
    );
\tdata_out2_carry__8_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__8_i_4_n_0\
    );
\tdata_out2_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdata_out2_carry__8_n_0\,
      CO(3) => \tdata_out2_carry__9_n_0\,
      CO(2) => \tdata_out2_carry__9_n_1\,
      CO(1) => \tdata_out2_carry__9_n_2\,
      CO(0) => \tdata_out2_carry__9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \tdata_out2_carry__9_n_4\,
      O(2) => \tdata_out2_carry__9_n_5\,
      O(1) => \tdata_out2_carry__9_n_6\,
      O(0) => \tdata_out2_carry__9_n_7\,
      S(3) => \tdata_out2_carry__9_i_1_n_0\,
      S(2) => \tdata_out2_carry__9_i_2_n_0\,
      S(1) => \tdata_out2_carry__9_i_3_n_0\,
      S(0) => \tdata_out2_carry__9_i_4_n_0\
    );
\tdata_out2_carry__9_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__9_i_1_n_0\
    );
\tdata_out2_carry__9_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__9_i_2_n_0\
    );
\tdata_out2_carry__9_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__9_i_3_n_0\
    );
\tdata_out2_carry__9_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(3),
      I1 => STOPRESULT_BITS_r(4),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => \tdata_out2_carry__9_i_4_n_0\
    );
tdata_out2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => tdata_out3(0)
    );
tdata_out2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => tdata_out2_carry_i_2_n_0
    );
tdata_out2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => tdata_out2_carry_i_3_n_0
    );
tdata_out2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(1),
      I4 => STOPRESULT_BITS_r(0),
      I5 => STOPRESULT_BITS_r(2),
      O => tdata_out2_carry_i_4_n_0
    );
tdata_out2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => STOPRESULT_BITS_r(4),
      I1 => STOPRESULT_BITS_r(3),
      I2 => STOPRESULT_BITS_r(5),
      I3 => STOPRESULT_BITS_r(0),
      I4 => STOPRESULT_BITS_r(1),
      I5 => STOPRESULT_BITS_r(2),
      O => tdata_out2_carry_i_5_n_0
    );
\tdata_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[0]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[0]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[1]_i_2_n_0\,
      O => p_0_in(0)
    );
\tdata_out[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdata_in(42),
      I1 => \tdata_out2_carry__9_n_6\,
      O => \tdata_out[0]_i_10_n_0\
    );
\tdata_out[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdata_in(34),
      I1 => \tdata_out2_carry__7_n_6\,
      O => \tdata_out[0]_i_11_n_0\
    );
\tdata_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[4]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[0]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(3),
      I4 => \tdata_out[0]_i_5_n_0\,
      O => \tdata_out[0]_i_2_n_0\
    );
\tdata_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[6]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[0]_i_6_n_0\,
      I3 => log_2_BIN_WIDTH_r(3),
      I4 => \tdata_out[0]_i_7_n_0\,
      O => \tdata_out[0]_i_3_n_0\
    );
\tdata_out[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \tdata_out[24]_i_5_n_0\,
      I1 => log_2_BIN_WIDTH_r(4),
      I2 => \tdata_out[0]_i_8_n_0\,
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => tdata_in(8),
      I5 => \tdata_out2_carry__0_n_4\,
      O => \tdata_out[0]_i_4_n_0\
    );
\tdata_out[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \tdata_out[16]_i_5_n_0\,
      I1 => log_2_BIN_WIDTH_r(4),
      I2 => \tdata_out[0]_i_9_n_0\,
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => tdata_in(0),
      I5 => tdata_out3(0),
      O => \tdata_out[0]_i_5_n_0\
    );
\tdata_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \tdata_out[26]_i_5_n_0\,
      I1 => log_2_BIN_WIDTH_r(4),
      I2 => \tdata_out[0]_i_10_n_0\,
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => tdata_in(10),
      I5 => \tdata_out2_carry__1_n_6\,
      O => \tdata_out[0]_i_6_n_0\
    );
\tdata_out[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \tdata_out[18]_i_5_n_0\,
      I1 => log_2_BIN_WIDTH_r(4),
      I2 => \tdata_out[0]_i_11_n_0\,
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => tdata_in(2),
      I5 => tdata_out2_carry_n_6,
      O => \tdata_out[0]_i_7_n_0\
    );
\tdata_out[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdata_in(40),
      I1 => \tdata_out2_carry__8_n_4\,
      O => \tdata_out[0]_i_8_n_0\
    );
\tdata_out[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdata_in(32),
      I1 => \tdata_out2_carry__6_n_4\,
      O => \tdata_out[0]_i_9_n_0\
    );
\tdata_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[10]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[11]_i_2_n_0\,
      O => p_0_in(10)
    );
\tdata_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[16]_i_3_n_0\,
      I1 => \tdata_out[12]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[14]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[10]_i_3_n_0\,
      O => \tdata_out[10]_i_2_n_0\
    );
\tdata_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[18]_i_4_n_0\,
      I1 => \tdata_out[18]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[26]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[10]_i_4_n_0\,
      O => \tdata_out[10]_i_3_n_0\
    );
\tdata_out[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(42),
      I1 => \tdata_out2_carry__9_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(10),
      I4 => \tdata_out2_carry__1_n_6\,
      O => \tdata_out[10]_i_4_n_0\
    );
\tdata_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[11]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[12]_i_2_n_0\,
      O => p_0_in(11)
    );
\tdata_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[17]_i_3_n_0\,
      I1 => \tdata_out[13]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[15]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[11]_i_3_n_0\,
      O => \tdata_out[11]_i_2_n_0\
    );
\tdata_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[19]_i_4_n_0\,
      I1 => \tdata_out[19]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[27]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[11]_i_4_n_0\,
      O => \tdata_out[11]_i_3_n_0\
    );
\tdata_out[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(43),
      I1 => \tdata_out2_carry__9_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(11),
      I4 => \tdata_out2_carry__1_n_5\,
      O => \tdata_out[11]_i_4_n_0\
    );
\tdata_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[12]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[13]_i_2_n_0\,
      O => p_0_in(12)
    );
\tdata_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[18]_i_3_n_0\,
      I1 => \tdata_out[14]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[16]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[12]_i_3_n_0\,
      O => \tdata_out[12]_i_2_n_0\
    );
\tdata_out[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[20]_i_4_n_0\,
      I1 => \tdata_out[20]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[28]_i_6_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[12]_i_4_n_0\,
      O => \tdata_out[12]_i_3_n_0\
    );
\tdata_out[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(44),
      I1 => \tdata_out2_carry__9_n_4\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(12),
      I4 => \tdata_out2_carry__1_n_4\,
      O => \tdata_out[12]_i_4_n_0\
    );
\tdata_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[13]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[14]_i_2_n_0\,
      O => p_0_in(13)
    );
\tdata_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[19]_i_3_n_0\,
      I1 => \tdata_out[15]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[17]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[13]_i_3_n_0\,
      O => \tdata_out[13]_i_2_n_0\
    );
\tdata_out[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[21]_i_4_n_0\,
      I1 => \tdata_out[21]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[29]_i_6_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[13]_i_4_n_0\,
      O => \tdata_out[13]_i_3_n_0\
    );
\tdata_out[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(45),
      I1 => \tdata_out2_carry__10_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(13),
      I4 => \tdata_out2_carry__2_n_7\,
      O => \tdata_out[13]_i_4_n_0\
    );
\tdata_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[14]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[15]_i_2_n_0\,
      O => p_0_in(14)
    );
\tdata_out[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[20]_i_3_n_0\,
      I1 => \tdata_out[16]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[18]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[14]_i_3_n_0\,
      O => \tdata_out[14]_i_2_n_0\
    );
\tdata_out[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[22]_i_4_n_0\,
      I1 => \tdata_out[22]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[30]_i_6_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[14]_i_4_n_0\,
      O => \tdata_out[14]_i_3_n_0\
    );
\tdata_out[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(46),
      I1 => \tdata_out2_carry__10_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(14),
      I4 => \tdata_out2_carry__2_n_6\,
      O => \tdata_out[14]_i_4_n_0\
    );
\tdata_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[15]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[16]_i_2_n_0\,
      O => p_0_in(15)
    );
\tdata_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[21]_i_3_n_0\,
      I1 => \tdata_out[17]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[19]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[15]_i_3_n_0\,
      O => \tdata_out[15]_i_2_n_0\
    );
\tdata_out[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[23]_i_4_n_0\,
      I1 => \tdata_out[23]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[31]_i_6_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[15]_i_4_n_0\,
      O => \tdata_out[15]_i_3_n_0\
    );
\tdata_out[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(47),
      I1 => \tdata_out2_carry__10_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(15),
      I4 => \tdata_out2_carry__2_n_5\,
      O => \tdata_out[15]_i_4_n_0\
    );
\tdata_out[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[16]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[17]_i_2_n_0\,
      O => p_0_in(16)
    );
\tdata_out[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[22]_i_3_n_0\,
      I1 => \tdata_out[18]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[20]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[16]_i_3_n_0\,
      O => \tdata_out[16]_i_2_n_0\
    );
\tdata_out[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[24]_i_4_n_0\,
      I1 => \tdata_out[24]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[16]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[16]_i_5_n_0\,
      O => \tdata_out[16]_i_3_n_0\
    );
\tdata_out[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__6_n_4\,
      I1 => tdata_in(32),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[16]_i_4_n_0\
    );
\tdata_out[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(48),
      I1 => \tdata_out2_carry__10_n_4\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(16),
      I4 => \tdata_out2_carry__2_n_4\,
      O => \tdata_out[16]_i_5_n_0\
    );
\tdata_out[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[17]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[18]_i_2_n_0\,
      O => p_0_in(17)
    );
\tdata_out[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[23]_i_3_n_0\,
      I1 => \tdata_out[19]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[21]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[17]_i_3_n_0\,
      O => \tdata_out[17]_i_2_n_0\
    );
\tdata_out[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[25]_i_4_n_0\,
      I1 => \tdata_out[25]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[17]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[17]_i_5_n_0\,
      O => \tdata_out[17]_i_3_n_0\
    );
\tdata_out[17]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__7_n_7\,
      I1 => tdata_in(33),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[17]_i_4_n_0\
    );
\tdata_out[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(49),
      I1 => \tdata_out2_carry__11_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(17),
      I4 => \tdata_out2_carry__3_n_7\,
      O => \tdata_out[17]_i_5_n_0\
    );
\tdata_out[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[18]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[19]_i_2_n_0\,
      O => p_0_in(18)
    );
\tdata_out[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[24]_i_3_n_0\,
      I1 => \tdata_out[20]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[22]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[18]_i_3_n_0\,
      O => \tdata_out[18]_i_2_n_0\
    );
\tdata_out[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[26]_i_4_n_0\,
      I1 => \tdata_out[26]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[18]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[18]_i_5_n_0\,
      O => \tdata_out[18]_i_3_n_0\
    );
\tdata_out[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__7_n_6\,
      I1 => tdata_in(34),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[18]_i_4_n_0\
    );
\tdata_out[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(50),
      I1 => \tdata_out2_carry__11_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(18),
      I4 => \tdata_out2_carry__3_n_6\,
      O => \tdata_out[18]_i_5_n_0\
    );
\tdata_out[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[19]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[20]_i_2_n_0\,
      O => p_0_in(19)
    );
\tdata_out[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[25]_i_3_n_0\,
      I1 => \tdata_out[21]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[23]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[19]_i_3_n_0\,
      O => \tdata_out[19]_i_2_n_0\
    );
\tdata_out[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[27]_i_4_n_0\,
      I1 => \tdata_out[27]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[19]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[19]_i_5_n_0\,
      O => \tdata_out[19]_i_3_n_0\
    );
\tdata_out[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__7_n_5\,
      I1 => tdata_in(35),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[19]_i_4_n_0\
    );
\tdata_out[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(51),
      I1 => \tdata_out2_carry__11_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(19),
      I4 => \tdata_out2_carry__3_n_5\,
      O => \tdata_out[19]_i_5_n_0\
    );
\tdata_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[1]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[2]_i_2_n_0\,
      O => p_0_in(1)
    );
\tdata_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[7]_i_3_n_0\,
      I1 => \tdata_out[3]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[5]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[1]_i_3_n_0\,
      O => \tdata_out[1]_i_2_n_0\
    );
\tdata_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[25]_i_5_n_0\,
      I1 => \tdata_out[9]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[17]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[1]_i_4_n_0\,
      O => \tdata_out[1]_i_3_n_0\
    );
\tdata_out[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(33),
      I1 => \tdata_out2_carry__7_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(1),
      I4 => tdata_out2_carry_n_7,
      O => \tdata_out[1]_i_4_n_0\
    );
\tdata_out[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[20]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[21]_i_2_n_0\,
      O => p_0_in(20)
    );
\tdata_out[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[26]_i_3_n_0\,
      I1 => \tdata_out[22]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[24]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[20]_i_3_n_0\,
      O => \tdata_out[20]_i_2_n_0\
    );
\tdata_out[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[28]_i_5_n_0\,
      I1 => \tdata_out[28]_i_6_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[20]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[20]_i_5_n_0\,
      O => \tdata_out[20]_i_3_n_0\
    );
\tdata_out[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__7_n_4\,
      I1 => tdata_in(36),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[20]_i_4_n_0\
    );
\tdata_out[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(52),
      I1 => \tdata_out2_carry__11_n_4\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(20),
      I4 => \tdata_out2_carry__3_n_4\,
      O => \tdata_out[20]_i_5_n_0\
    );
\tdata_out[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[21]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[22]_i_2_n_0\,
      O => p_0_in(21)
    );
\tdata_out[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[27]_i_3_n_0\,
      I1 => \tdata_out[23]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[25]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[21]_i_3_n_0\,
      O => \tdata_out[21]_i_2_n_0\
    );
\tdata_out[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[29]_i_5_n_0\,
      I1 => \tdata_out[29]_i_6_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[21]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[21]_i_5_n_0\,
      O => \tdata_out[21]_i_3_n_0\
    );
\tdata_out[21]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__8_n_7\,
      I1 => tdata_in(37),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[21]_i_4_n_0\
    );
\tdata_out[21]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(53),
      I1 => \tdata_out2_carry__12_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(21),
      I4 => \tdata_out2_carry__4_n_7\,
      O => \tdata_out[21]_i_5_n_0\
    );
\tdata_out[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[22]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[23]_i_2_n_0\,
      O => p_0_in(22)
    );
\tdata_out[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[28]_i_4_n_0\,
      I1 => \tdata_out[24]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[26]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[22]_i_3_n_0\,
      O => \tdata_out[22]_i_2_n_0\
    );
\tdata_out[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[30]_i_5_n_0\,
      I1 => \tdata_out[30]_i_6_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[22]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[22]_i_5_n_0\,
      O => \tdata_out[22]_i_3_n_0\
    );
\tdata_out[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__8_n_6\,
      I1 => tdata_in(38),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[22]_i_4_n_0\
    );
\tdata_out[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(54),
      I1 => \tdata_out2_carry__12_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(22),
      I4 => \tdata_out2_carry__4_n_6\,
      O => \tdata_out[22]_i_5_n_0\
    );
\tdata_out[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[23]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[24]_i_2_n_0\,
      O => p_0_in(23)
    );
\tdata_out[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[29]_i_4_n_0\,
      I1 => \tdata_out[25]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[27]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[23]_i_3_n_0\,
      O => \tdata_out[23]_i_2_n_0\
    );
\tdata_out[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[31]_i_5_n_0\,
      I1 => \tdata_out[31]_i_6_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[23]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[23]_i_5_n_0\,
      O => \tdata_out[23]_i_3_n_0\
    );
\tdata_out[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__8_n_5\,
      I1 => tdata_in(39),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[23]_i_4_n_0\
    );
\tdata_out[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(55),
      I1 => \tdata_out2_carry__12_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(23),
      I4 => \tdata_out2_carry__4_n_5\,
      O => \tdata_out[23]_i_5_n_0\
    );
\tdata_out[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[24]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[25]_i_2_n_0\,
      O => p_0_in(24)
    );
\tdata_out[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[30]_i_4_n_0\,
      I1 => \tdata_out[26]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[28]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[24]_i_3_n_0\,
      O => \tdata_out[24]_i_2_n_0\
    );
\tdata_out[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[32]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[24]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[24]_i_5_n_0\,
      O => \tdata_out[24]_i_3_n_0\
    );
\tdata_out[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__8_n_4\,
      I1 => tdata_in(40),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[24]_i_4_n_0\
    );
\tdata_out[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(56),
      I1 => \tdata_out2_carry__12_n_4\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(24),
      I4 => \tdata_out2_carry__4_n_4\,
      O => \tdata_out[24]_i_5_n_0\
    );
\tdata_out[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[25]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[26]_i_2_n_0\,
      O => p_0_in(25)
    );
\tdata_out[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[31]_i_4_n_0\,
      I1 => \tdata_out[27]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[29]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[25]_i_3_n_0\,
      O => \tdata_out[25]_i_2_n_0\
    );
\tdata_out[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[33]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[25]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[25]_i_5_n_0\,
      O => \tdata_out[25]_i_3_n_0\
    );
\tdata_out[25]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__9_n_7\,
      I1 => tdata_in(41),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[25]_i_4_n_0\
    );
\tdata_out[25]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(57),
      I1 => \tdata_out2_carry__13_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(25),
      I4 => \tdata_out2_carry__5_n_7\,
      O => \tdata_out[25]_i_5_n_0\
    );
\tdata_out[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[26]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[27]_i_2_n_0\,
      O => p_0_in(26)
    );
\tdata_out[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[28]_i_3_n_0\,
      I1 => \tdata_out[28]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[30]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[26]_i_3_n_0\,
      O => \tdata_out[26]_i_2_n_0\
    );
\tdata_out[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[34]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[26]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[26]_i_5_n_0\,
      O => \tdata_out[26]_i_3_n_0\
    );
\tdata_out[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__9_n_6\,
      I1 => tdata_in(42),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[26]_i_4_n_0\
    );
\tdata_out[26]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(58),
      I1 => \tdata_out2_carry__13_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(26),
      I4 => \tdata_out2_carry__5_n_6\,
      O => \tdata_out[26]_i_5_n_0\
    );
\tdata_out[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[27]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[28]_i_2_n_0\,
      O => p_0_in(27)
    );
\tdata_out[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[29]_i_3_n_0\,
      I1 => \tdata_out[29]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[31]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[27]_i_3_n_0\,
      O => \tdata_out[27]_i_2_n_0\
    );
\tdata_out[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[35]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[27]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[27]_i_5_n_0\,
      O => \tdata_out[27]_i_3_n_0\
    );
\tdata_out[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__9_n_5\,
      I1 => tdata_in(43),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[27]_i_4_n_0\
    );
\tdata_out[27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(59),
      I1 => \tdata_out2_carry__13_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(27),
      I4 => \tdata_out2_carry__5_n_5\,
      O => \tdata_out[27]_i_5_n_0\
    );
\tdata_out[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[28]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[29]_i_2_n_0\,
      O => p_0_in(28)
    );
\tdata_out[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[30]_i_3_n_0\,
      I1 => \tdata_out[30]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[28]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[28]_i_4_n_0\,
      O => \tdata_out[28]_i_2_n_0\
    );
\tdata_out[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[40]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[32]_i_3_n_0\,
      O => \tdata_out[28]_i_3_n_0\
    );
\tdata_out[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[36]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[28]_i_5_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[28]_i_6_n_0\,
      O => \tdata_out[28]_i_4_n_0\
    );
\tdata_out[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__9_n_4\,
      I1 => tdata_in(44),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[28]_i_5_n_0\
    );
\tdata_out[28]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(60),
      I1 => \tdata_out2_carry__13_n_4\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(28),
      I4 => \tdata_out2_carry__5_n_4\,
      O => \tdata_out[28]_i_6_n_0\
    );
\tdata_out[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[29]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[30]_i_2_n_0\,
      O => p_0_in(29)
    );
\tdata_out[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[31]_i_3_n_0\,
      I1 => \tdata_out[31]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[29]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[29]_i_4_n_0\,
      O => \tdata_out[29]_i_2_n_0\
    );
\tdata_out[29]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[41]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[33]_i_4_n_0\,
      O => \tdata_out[29]_i_3_n_0\
    );
\tdata_out[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[37]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[29]_i_5_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[29]_i_6_n_0\,
      O => \tdata_out[29]_i_4_n_0\
    );
\tdata_out[29]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__10_n_7\,
      I1 => tdata_in(45),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[29]_i_5_n_0\
    );
\tdata_out[29]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(61),
      I1 => \tdata_out2_carry__14_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(29),
      I4 => \tdata_out2_carry__6_n_7\,
      O => \tdata_out[29]_i_6_n_0\
    );
\tdata_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[2]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[3]_i_2_n_0\,
      O => p_0_in(2)
    );
\tdata_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[8]_i_3_n_0\,
      I1 => \tdata_out[4]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[6]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[2]_i_3_n_0\,
      O => \tdata_out[2]_i_2_n_0\
    );
\tdata_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[26]_i_5_n_0\,
      I1 => \tdata_out[10]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[18]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[2]_i_4_n_0\,
      O => \tdata_out[2]_i_3_n_0\
    );
\tdata_out[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(34),
      I1 => \tdata_out2_carry__7_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(2),
      I4 => tdata_out2_carry_n_6,
      O => \tdata_out[2]_i_4_n_0\
    );
\tdata_out[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[30]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[31]_i_2_n_0\,
      O => p_0_in(30)
    );
\tdata_out[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[32]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[30]_i_3_n_0\,
      I3 => log_2_BIN_WIDTH_r(2),
      I4 => \tdata_out[30]_i_4_n_0\,
      O => \tdata_out[30]_i_2_n_0\
    );
\tdata_out[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[42]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[34]_i_3_n_0\,
      O => \tdata_out[30]_i_3_n_0\
    );
\tdata_out[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[38]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[30]_i_5_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[30]_i_6_n_0\,
      O => \tdata_out[30]_i_4_n_0\
    );
\tdata_out[30]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__10_n_6\,
      I1 => tdata_in(46),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[30]_i_5_n_0\
    );
\tdata_out[30]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(62),
      I1 => \tdata_out2_carry__14_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(30),
      I4 => \tdata_out2_carry__6_n_6\,
      O => \tdata_out[30]_i_6_n_0\
    );
\tdata_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[34]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[32]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[31]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(31)
    );
\tdata_out[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[33]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[31]_i_3_n_0\,
      I3 => log_2_BIN_WIDTH_r(2),
      I4 => \tdata_out[31]_i_4_n_0\,
      O => \tdata_out[31]_i_2_n_0\
    );
\tdata_out[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[43]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[35]_i_4_n_0\,
      O => \tdata_out[31]_i_3_n_0\
    );
\tdata_out[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[39]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(3),
      I2 => \tdata_out[31]_i_5_n_0\,
      I3 => log_2_BIN_WIDTH_r(4),
      I4 => \tdata_out[31]_i_6_n_0\,
      O => \tdata_out[31]_i_4_n_0\
    );
\tdata_out[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \tdata_out2_carry__10_n_5\,
      I1 => tdata_in(47),
      I2 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[31]_i_5_n_0\
    );
\tdata_out[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(63),
      I1 => \tdata_out2_carry__14_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(31),
      I4 => \tdata_out2_carry__6_n_5\,
      O => \tdata_out[31]_i_6_n_0\
    );
\tdata_out[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[34]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[32]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[33]_i_2_n_0\,
      O => p_0_in(32)
    );
\tdata_out[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[44]_i_3_n_0\,
      I1 => \tdata_out[36]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[40]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[32]_i_3_n_0\,
      O => \tdata_out[32]_i_2_n_0\
    );
\tdata_out[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__10_n_4\,
      I1 => tdata_in(48),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__6_n_4\,
      I4 => tdata_in(32),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[32]_i_3_n_0\
    );
\tdata_out[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[36]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[34]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[33]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(33)
    );
\tdata_out[33]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[35]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[33]_i_3_n_0\,
      O => \tdata_out[33]_i_2_n_0\
    );
\tdata_out[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[45]_i_4_n_0\,
      I1 => \tdata_out[37]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[41]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[33]_i_4_n_0\,
      O => \tdata_out[33]_i_3_n_0\
    );
\tdata_out[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__11_n_7\,
      I1 => tdata_in(49),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__7_n_7\,
      I4 => tdata_in(33),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[33]_i_4_n_0\
    );
\tdata_out[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[36]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[34]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[35]_i_2_n_0\,
      O => p_0_in(34)
    );
\tdata_out[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[46]_i_3_n_0\,
      I1 => \tdata_out[38]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[42]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[34]_i_3_n_0\,
      O => \tdata_out[34]_i_2_n_0\
    );
\tdata_out[34]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__11_n_6\,
      I1 => tdata_in(50),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__7_n_6\,
      I4 => tdata_in(34),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[34]_i_3_n_0\
    );
\tdata_out[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[38]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[36]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[35]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(35)
    );
\tdata_out[35]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[37]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[35]_i_3_n_0\,
      O => \tdata_out[35]_i_2_n_0\
    );
\tdata_out[35]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[47]_i_4_n_0\,
      I1 => \tdata_out[39]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[43]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[35]_i_4_n_0\,
      O => \tdata_out[35]_i_3_n_0\
    );
\tdata_out[35]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__11_n_5\,
      I1 => tdata_in(51),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__7_n_5\,
      I4 => tdata_in(35),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[35]_i_4_n_0\
    );
\tdata_out[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[38]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[36]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[37]_i_2_n_0\,
      O => p_0_in(36)
    );
\tdata_out[36]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[48]_i_4_n_0\,
      I1 => \tdata_out[40]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[44]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[36]_i_3_n_0\,
      O => \tdata_out[36]_i_2_n_0\
    );
\tdata_out[36]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__11_n_4\,
      I1 => tdata_in(52),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__7_n_4\,
      I4 => tdata_in(36),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[36]_i_3_n_0\
    );
\tdata_out[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[40]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[38]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[37]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(37)
    );
\tdata_out[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[39]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[37]_i_3_n_0\,
      O => \tdata_out[37]_i_2_n_0\
    );
\tdata_out[37]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[49]_i_5_n_0\,
      I1 => \tdata_out[41]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[45]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[37]_i_4_n_0\,
      O => \tdata_out[37]_i_3_n_0\
    );
\tdata_out[37]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__12_n_7\,
      I1 => tdata_in(53),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__8_n_7\,
      I4 => tdata_in(37),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[37]_i_4_n_0\
    );
\tdata_out[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[40]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[38]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[39]_i_2_n_0\,
      O => p_0_in(38)
    );
\tdata_out[38]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[50]_i_4_n_0\,
      I1 => \tdata_out[42]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[46]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[38]_i_3_n_0\,
      O => \tdata_out[38]_i_2_n_0\
    );
\tdata_out[38]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__12_n_6\,
      I1 => tdata_in(54),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__8_n_6\,
      I4 => tdata_in(38),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[38]_i_3_n_0\
    );
\tdata_out[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[42]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[40]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[39]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(39)
    );
\tdata_out[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[41]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[39]_i_3_n_0\,
      O => \tdata_out[39]_i_2_n_0\
    );
\tdata_out[39]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[51]_i_5_n_0\,
      I1 => \tdata_out[43]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[47]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[39]_i_4_n_0\,
      O => \tdata_out[39]_i_3_n_0\
    );
\tdata_out[39]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__12_n_5\,
      I1 => tdata_in(55),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__8_n_5\,
      I4 => tdata_in(39),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[39]_i_4_n_0\
    );
\tdata_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[3]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[4]_i_2_n_0\,
      O => p_0_in(3)
    );
\tdata_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[9]_i_3_n_0\,
      I1 => \tdata_out[5]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[7]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[3]_i_3_n_0\,
      O => \tdata_out[3]_i_2_n_0\
    );
\tdata_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[27]_i_5_n_0\,
      I1 => \tdata_out[11]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[19]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[3]_i_4_n_0\,
      O => \tdata_out[3]_i_3_n_0\
    );
\tdata_out[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(35),
      I1 => \tdata_out2_carry__7_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(3),
      I4 => tdata_out2_carry_n_5,
      O => \tdata_out[3]_i_4_n_0\
    );
\tdata_out[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[42]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[40]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[41]_i_2_n_0\,
      O => p_0_in(40)
    );
\tdata_out[40]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[52]_i_4_n_0\,
      I1 => \tdata_out[44]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[48]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[40]_i_3_n_0\,
      O => \tdata_out[40]_i_2_n_0\
    );
\tdata_out[40]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__12_n_4\,
      I1 => tdata_in(56),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__8_n_4\,
      I4 => tdata_in(40),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[40]_i_3_n_0\
    );
\tdata_out[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[44]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[42]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[41]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(41)
    );
\tdata_out[41]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[43]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[41]_i_3_n_0\,
      O => \tdata_out[41]_i_2_n_0\
    );
\tdata_out[41]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[53]_i_5_n_0\,
      I1 => \tdata_out[45]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[49]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[41]_i_4_n_0\,
      O => \tdata_out[41]_i_3_n_0\
    );
\tdata_out[41]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__13_n_7\,
      I1 => tdata_in(57),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__9_n_7\,
      I4 => tdata_in(41),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[41]_i_4_n_0\
    );
\tdata_out[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[44]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[42]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[43]_i_2_n_0\,
      O => p_0_in(42)
    );
\tdata_out[42]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[54]_i_5_n_0\,
      I1 => \tdata_out[46]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[50]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[42]_i_3_n_0\,
      O => \tdata_out[42]_i_2_n_0\
    );
\tdata_out[42]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__13_n_6\,
      I1 => tdata_in(58),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__9_n_6\,
      I4 => tdata_in(42),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[42]_i_3_n_0\
    );
\tdata_out[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[46]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[44]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[43]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(43)
    );
\tdata_out[43]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[45]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[43]_i_3_n_0\,
      O => \tdata_out[43]_i_2_n_0\
    );
\tdata_out[43]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[55]_i_5_n_0\,
      I1 => \tdata_out[47]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[51]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[43]_i_4_n_0\,
      O => \tdata_out[43]_i_3_n_0\
    );
\tdata_out[43]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__13_n_5\,
      I1 => tdata_in(59),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__9_n_5\,
      I4 => tdata_in(43),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[43]_i_4_n_0\
    );
\tdata_out[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[46]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[44]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[45]_i_2_n_0\,
      O => p_0_in(44)
    );
\tdata_out[44]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[48]_i_3_n_0\,
      I1 => \tdata_out[48]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[52]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[44]_i_3_n_0\,
      O => \tdata_out[44]_i_2_n_0\
    );
\tdata_out[44]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__13_n_4\,
      I1 => tdata_in(60),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__9_n_4\,
      I4 => tdata_in(44),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[44]_i_3_n_0\
    );
\tdata_out[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[48]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[46]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[45]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(45)
    );
\tdata_out[45]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[47]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[45]_i_3_n_0\,
      O => \tdata_out[45]_i_2_n_0\
    );
\tdata_out[45]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[49]_i_4_n_0\,
      I1 => \tdata_out[49]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[53]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[45]_i_4_n_0\,
      O => \tdata_out[45]_i_3_n_0\
    );
\tdata_out[45]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__14_n_7\,
      I1 => tdata_in(61),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__10_n_7\,
      I4 => tdata_in(45),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[45]_i_4_n_0\
    );
\tdata_out[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[48]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[46]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[47]_i_2_n_0\,
      O => p_0_in(46)
    );
\tdata_out[46]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[50]_i_3_n_0\,
      I1 => \tdata_out[50]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[54]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[46]_i_3_n_0\,
      O => \tdata_out[46]_i_2_n_0\
    );
\tdata_out[46]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__14_n_6\,
      I1 => tdata_in(62),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__10_n_6\,
      I4 => tdata_in(46),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[46]_i_3_n_0\
    );
\tdata_out[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[50]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[48]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[47]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(47)
    );
\tdata_out[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[49]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[47]_i_3_n_0\,
      O => \tdata_out[47]_i_2_n_0\
    );
\tdata_out[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[51]_i_4_n_0\,
      I1 => \tdata_out[51]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[55]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[47]_i_4_n_0\,
      O => \tdata_out[47]_i_3_n_0\
    );
\tdata_out[47]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \tdata_out2_carry__14_n_5\,
      I1 => tdata_in(63),
      I2 => log_2_BIN_WIDTH_r(4),
      I3 => \tdata_out2_carry__10_n_5\,
      I4 => tdata_in(47),
      I5 => log_2_BIN_WIDTH_r(5),
      O => \tdata_out[47]_i_4_n_0\
    );
\tdata_out[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[50]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[48]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[49]_i_2_n_0\,
      O => p_0_in(48)
    );
\tdata_out[48]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[52]_i_3_n_0\,
      I1 => \tdata_out[52]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[48]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[48]_i_4_n_0\,
      O => \tdata_out[48]_i_2_n_0\
    );
\tdata_out[48]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(56),
      I2 => \tdata_out2_carry__12_n_4\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[48]_i_3_n_0\
    );
\tdata_out[48]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(48),
      I2 => \tdata_out2_carry__10_n_4\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[48]_i_4_n_0\
    );
\tdata_out[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[52]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[50]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[49]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(49)
    );
\tdata_out[49]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[51]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[49]_i_3_n_0\,
      O => \tdata_out[49]_i_2_n_0\
    );
\tdata_out[49]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[53]_i_4_n_0\,
      I1 => \tdata_out[53]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[49]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[49]_i_5_n_0\,
      O => \tdata_out[49]_i_3_n_0\
    );
\tdata_out[49]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(57),
      I2 => \tdata_out2_carry__13_n_7\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[49]_i_4_n_0\
    );
\tdata_out[49]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(49),
      I2 => \tdata_out2_carry__11_n_7\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[49]_i_5_n_0\
    );
\tdata_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[4]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[5]_i_2_n_0\,
      O => p_0_in(4)
    );
\tdata_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[10]_i_3_n_0\,
      I1 => \tdata_out[6]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[8]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[4]_i_3_n_0\,
      O => \tdata_out[4]_i_2_n_0\
    );
\tdata_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[28]_i_6_n_0\,
      I1 => \tdata_out[12]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[20]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[4]_i_4_n_0\,
      O => \tdata_out[4]_i_3_n_0\
    );
\tdata_out[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(36),
      I1 => \tdata_out2_carry__7_n_4\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(4),
      I4 => tdata_out2_carry_n_4,
      O => \tdata_out[4]_i_4_n_0\
    );
\tdata_out[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[52]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[50]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[51]_i_2_n_0\,
      O => p_0_in(50)
    );
\tdata_out[50]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[54]_i_4_n_0\,
      I1 => \tdata_out[54]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[50]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[50]_i_4_n_0\,
      O => \tdata_out[50]_i_2_n_0\
    );
\tdata_out[50]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(58),
      I2 => \tdata_out2_carry__13_n_6\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[50]_i_3_n_0\
    );
\tdata_out[50]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(50),
      I2 => \tdata_out2_carry__11_n_6\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[50]_i_4_n_0\
    );
\tdata_out[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[54]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[52]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[51]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(51)
    );
\tdata_out[51]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[53]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[51]_i_3_n_0\,
      O => \tdata_out[51]_i_2_n_0\
    );
\tdata_out[51]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[55]_i_4_n_0\,
      I1 => \tdata_out[55]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(2),
      I3 => \tdata_out[51]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(3),
      I5 => \tdata_out[51]_i_5_n_0\,
      O => \tdata_out[51]_i_3_n_0\
    );
\tdata_out[51]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(59),
      I2 => \tdata_out2_carry__13_n_5\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[51]_i_4_n_0\
    );
\tdata_out[51]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(51),
      I2 => \tdata_out2_carry__11_n_5\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[51]_i_5_n_0\
    );
\tdata_out[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[54]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[52]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[53]_i_2_n_0\,
      O => p_0_in(52)
    );
\tdata_out[52]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[56]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[52]_i_3_n_0\,
      I3 => log_2_BIN_WIDTH_r(3),
      I4 => \tdata_out[52]_i_4_n_0\,
      O => \tdata_out[52]_i_2_n_0\
    );
\tdata_out[52]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(60),
      I2 => \tdata_out2_carry__13_n_4\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[52]_i_3_n_0\
    );
\tdata_out[52]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(52),
      I2 => \tdata_out2_carry__11_n_4\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[52]_i_4_n_0\
    );
\tdata_out[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[54]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[54]_i_3_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[53]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(53)
    );
\tdata_out[53]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[55]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[53]_i_3_n_0\,
      O => \tdata_out[53]_i_2_n_0\
    );
\tdata_out[53]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[57]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[53]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(3),
      I4 => \tdata_out[53]_i_5_n_0\,
      O => \tdata_out[53]_i_3_n_0\
    );
\tdata_out[53]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(61),
      I2 => \tdata_out2_carry__14_n_7\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[53]_i_4_n_0\
    );
\tdata_out[53]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(53),
      I2 => \tdata_out2_carry__12_n_7\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[53]_i_5_n_0\
    );
\tdata_out[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[54]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[54]_i_3_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[55]_i_2_n_0\,
      O => p_0_in(54)
    );
\tdata_out[54]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[56]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[56]_i_4_n_0\,
      O => \tdata_out[54]_i_2_n_0\
    );
\tdata_out[54]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[58]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[54]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(3),
      I4 => \tdata_out[54]_i_5_n_0\,
      O => \tdata_out[54]_i_3_n_0\
    );
\tdata_out[54]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(62),
      I2 => \tdata_out2_carry__14_n_6\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[54]_i_4_n_0\
    );
\tdata_out[54]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(54),
      I2 => \tdata_out2_carry__12_n_6\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[54]_i_5_n_0\
    );
\tdata_out[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[55]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[56]_i_2_n_0\,
      O => p_0_in(55)
    );
\tdata_out[55]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tdata_out[57]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[57]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(1),
      I4 => \tdata_out[55]_i_3_n_0\,
      O => \tdata_out[55]_i_2_n_0\
    );
\tdata_out[55]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[59]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(2),
      I2 => \tdata_out[55]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(3),
      I4 => \tdata_out[55]_i_5_n_0\,
      O => \tdata_out[55]_i_3_n_0\
    );
\tdata_out[55]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(63),
      I2 => \tdata_out2_carry__14_n_5\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[55]_i_4_n_0\
    );
\tdata_out[55]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(5),
      I1 => tdata_in(55),
      I2 => \tdata_out2_carry__12_n_5\,
      I3 => log_2_BIN_WIDTH_r(4),
      O => \tdata_out[55]_i_5_n_0\
    );
\tdata_out[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[56]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[57]_i_2_n_0\,
      O => p_0_in(56)
    );
\tdata_out[56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[58]_i_3_n_0\,
      I1 => \tdata_out[58]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[56]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[56]_i_4_n_0\,
      O => \tdata_out[56]_i_2_n_0\
    );
\tdata_out[56]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__13_n_4\,
      I2 => tdata_in(60),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[56]_i_3_n_0\
    );
\tdata_out[56]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__12_n_4\,
      I2 => tdata_in(56),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[56]_i_4_n_0\
    );
\tdata_out[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[57]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[58]_i_2_n_0\,
      O => p_0_in(57)
    );
\tdata_out[57]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[59]_i_3_n_0\,
      I1 => \tdata_out[59]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[57]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[57]_i_4_n_0\,
      O => \tdata_out[57]_i_2_n_0\
    );
\tdata_out[57]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__14_n_7\,
      I2 => tdata_in(61),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[57]_i_3_n_0\
    );
\tdata_out[57]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__13_n_7\,
      I2 => tdata_in(57),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[57]_i_4_n_0\
    );
\tdata_out[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[58]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[59]_i_2_n_0\,
      O => p_0_in(58)
    );
\tdata_out[58]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[60]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[58]_i_3_n_0\,
      I3 => log_2_BIN_WIDTH_r(2),
      I4 => \tdata_out[58]_i_4_n_0\,
      O => \tdata_out[58]_i_2_n_0\
    );
\tdata_out[58]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__14_n_6\,
      I2 => tdata_in(62),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[58]_i_3_n_0\
    );
\tdata_out[58]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__13_n_6\,
      I2 => tdata_in(58),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[58]_i_4_n_0\
    );
\tdata_out[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \tdata_out[62]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[60]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => \tdata_out[59]_i_2_n_0\,
      I5 => log_2_BIN_WIDTH_r(0),
      O => p_0_in(59)
    );
\tdata_out[59]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tdata_out[61]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[59]_i_3_n_0\,
      I3 => log_2_BIN_WIDTH_r(2),
      I4 => \tdata_out[59]_i_4_n_0\,
      O => \tdata_out[59]_i_2_n_0\
    );
\tdata_out[59]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__14_n_5\,
      I2 => tdata_in(63),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[59]_i_3_n_0\
    );
\tdata_out[59]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(4),
      I1 => \tdata_out2_carry__13_n_5\,
      I2 => tdata_in(59),
      I3 => log_2_BIN_WIDTH_r(5),
      I4 => log_2_BIN_WIDTH_r(3),
      O => \tdata_out[59]_i_4_n_0\
    );
\tdata_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[5]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[6]_i_2_n_0\,
      O => p_0_in(5)
    );
\tdata_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[11]_i_3_n_0\,
      I1 => \tdata_out[7]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[9]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[5]_i_3_n_0\,
      O => \tdata_out[5]_i_2_n_0\
    );
\tdata_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[29]_i_6_n_0\,
      I1 => \tdata_out[13]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[21]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[5]_i_4_n_0\,
      O => \tdata_out[5]_i_3_n_0\
    );
\tdata_out[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(37),
      I1 => \tdata_out2_carry__8_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(5),
      I4 => \tdata_out2_carry__0_n_7\,
      O => \tdata_out[5]_i_4_n_0\
    );
\tdata_out[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \tdata_out[62]_i_2_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[60]_i_2_n_0\,
      I3 => \tdata_out[63]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[60]_i_3_n_0\,
      O => p_0_in(60)
    );
\tdata_out[60]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(3),
      I1 => log_2_BIN_WIDTH_r(5),
      I2 => tdata_in(60),
      I3 => \tdata_out2_carry__13_n_4\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => log_2_BIN_WIDTH_r(2),
      O => \tdata_out[60]_i_2_n_0\
    );
\tdata_out[60]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdata_out[63]_i_4_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[61]_i_2_n_0\,
      O => \tdata_out[60]_i_3_n_0\
    );
\tdata_out[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0AA8080000A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[61]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[63]_i_4_n_0\,
      I4 => log_2_BIN_WIDTH_r(0),
      I5 => \tdata_out[62]_i_2_n_0\,
      O => p_0_in(61)
    );
\tdata_out[61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(3),
      I1 => log_2_BIN_WIDTH_r(5),
      I2 => tdata_in(61),
      I3 => \tdata_out2_carry__14_n_7\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => log_2_BIN_WIDTH_r(2),
      O => \tdata_out[61]_i_2_n_0\
    );
\tdata_out[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22200020"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(1),
      I2 => \tdata_out[62]_i_2_n_0\,
      I3 => log_2_BIN_WIDTH_r(0),
      I4 => \tdata_out[63]_i_4_n_0\,
      O => p_0_in(62)
    );
\tdata_out[62]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(3),
      I1 => log_2_BIN_WIDTH_r(5),
      I2 => tdata_in(62),
      I3 => \tdata_out2_carry__14_n_6\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => log_2_BIN_WIDTH_r(2),
      O => \tdata_out[62]_i_2_n_0\
    );
\tdata_out[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => log_2_BIN_WIDTH_r(0),
      I2 => \tdata_out[63]_i_4_n_0\,
      I3 => log_2_BIN_WIDTH_r(1),
      O => p_0_in(63)
    );
\tdata_out[63]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \tdata_out[63]_i_2_n_0\
    );
\tdata_out[63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(14),
      I1 => log_2_BIN_WIDTH_r(15),
      I2 => \tdata_out[63]_i_5_n_0\,
      I3 => \tdata_out[63]_i_6_n_0\,
      O => \tdata_out[63]_i_3_n_0\
    );
\tdata_out[63]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(3),
      I1 => log_2_BIN_WIDTH_r(5),
      I2 => tdata_in(63),
      I3 => \tdata_out2_carry__14_n_5\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => log_2_BIN_WIDTH_r(2),
      O => \tdata_out[63]_i_4_n_0\
    );
\tdata_out[63]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(8),
      I1 => log_2_BIN_WIDTH_r(9),
      I2 => log_2_BIN_WIDTH_r(6),
      I3 => log_2_BIN_WIDTH_r(7),
      O => \tdata_out[63]_i_5_n_0\
    );
\tdata_out[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => log_2_BIN_WIDTH_r(12),
      I1 => log_2_BIN_WIDTH_r(13),
      I2 => log_2_BIN_WIDTH_r(10),
      I3 => log_2_BIN_WIDTH_r(11),
      O => \tdata_out[63]_i_6_n_0\
    );
\tdata_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[6]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[7]_i_2_n_0\,
      O => p_0_in(6)
    );
\tdata_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[12]_i_3_n_0\,
      I1 => \tdata_out[8]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[10]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[6]_i_3_n_0\,
      O => \tdata_out[6]_i_2_n_0\
    );
\tdata_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[30]_i_6_n_0\,
      I1 => \tdata_out[14]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[22]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[6]_i_4_n_0\,
      O => \tdata_out[6]_i_3_n_0\
    );
\tdata_out[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(38),
      I1 => \tdata_out2_carry__8_n_6\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(6),
      I4 => \tdata_out2_carry__0_n_6\,
      O => \tdata_out[6]_i_4_n_0\
    );
\tdata_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[7]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[8]_i_2_n_0\,
      O => p_0_in(7)
    );
\tdata_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[13]_i_3_n_0\,
      I1 => \tdata_out[9]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[11]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[7]_i_3_n_0\,
      O => \tdata_out[7]_i_2_n_0\
    );
\tdata_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[31]_i_6_n_0\,
      I1 => \tdata_out[15]_i_4_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[23]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[7]_i_4_n_0\,
      O => \tdata_out[7]_i_3_n_0\
    );
\tdata_out[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(39),
      I1 => \tdata_out2_carry__8_n_5\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(7),
      I4 => \tdata_out2_carry__0_n_5\,
      O => \tdata_out[7]_i_4_n_0\
    );
\tdata_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[8]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[9]_i_2_n_0\,
      O => p_0_in(8)
    );
\tdata_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[14]_i_3_n_0\,
      I1 => \tdata_out[10]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[12]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[8]_i_3_n_0\,
      O => \tdata_out[8]_i_2_n_0\
    );
\tdata_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[16]_i_4_n_0\,
      I1 => \tdata_out[16]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[24]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[8]_i_4_n_0\,
      O => \tdata_out[8]_i_3_n_0\
    );
\tdata_out[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(40),
      I1 => \tdata_out2_carry__8_n_4\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(8),
      I4 => \tdata_out2_carry__0_n_4\,
      O => \tdata_out[8]_i_4_n_0\
    );
\tdata_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \tdata_out[63]_i_3_n_0\,
      I1 => \tdata_out[9]_i_2_n_0\,
      I2 => log_2_BIN_WIDTH_r(0),
      I3 => \tdata_out[10]_i_2_n_0\,
      O => p_0_in(9)
    );
\tdata_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[15]_i_3_n_0\,
      I1 => \tdata_out[11]_i_3_n_0\,
      I2 => log_2_BIN_WIDTH_r(1),
      I3 => \tdata_out[13]_i_3_n_0\,
      I4 => log_2_BIN_WIDTH_r(2),
      I5 => \tdata_out[9]_i_3_n_0\,
      O => \tdata_out[9]_i_2_n_0\
    );
\tdata_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tdata_out[17]_i_4_n_0\,
      I1 => \tdata_out[17]_i_5_n_0\,
      I2 => log_2_BIN_WIDTH_r(3),
      I3 => \tdata_out[25]_i_5_n_0\,
      I4 => log_2_BIN_WIDTH_r(4),
      I5 => \tdata_out[9]_i_4_n_0\,
      O => \tdata_out[9]_i_3_n_0\
    );
\tdata_out[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tdata_in(41),
      I1 => \tdata_out2_carry__9_n_7\,
      I2 => log_2_BIN_WIDTH_r(5),
      I3 => tdata_in(9),
      I4 => \tdata_out2_carry__1_n_7\,
      O => \tdata_out[9]_i_4_n_0\
    );
\tdata_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(0),
      Q => tdata_out(0)
    );
\tdata_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(10),
      Q => tdata_out(10)
    );
\tdata_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(11),
      Q => tdata_out(11)
    );
\tdata_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(12),
      Q => tdata_out(12)
    );
\tdata_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(13),
      Q => tdata_out(13)
    );
\tdata_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(14),
      Q => tdata_out(14)
    );
\tdata_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(15),
      Q => tdata_out(15)
    );
\tdata_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(16),
      Q => tdata_out(16)
    );
\tdata_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(17),
      Q => tdata_out(17)
    );
\tdata_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(18),
      Q => tdata_out(18)
    );
\tdata_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(19),
      Q => tdata_out(19)
    );
\tdata_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(1),
      Q => tdata_out(1)
    );
\tdata_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(20),
      Q => tdata_out(20)
    );
\tdata_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(21),
      Q => tdata_out(21)
    );
\tdata_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(22),
      Q => tdata_out(22)
    );
\tdata_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(23),
      Q => tdata_out(23)
    );
\tdata_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(24),
      Q => tdata_out(24)
    );
\tdata_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(25),
      Q => tdata_out(25)
    );
\tdata_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(26),
      Q => tdata_out(26)
    );
\tdata_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(27),
      Q => tdata_out(27)
    );
\tdata_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(28),
      Q => tdata_out(28)
    );
\tdata_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(29),
      Q => tdata_out(29)
    );
\tdata_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(2),
      Q => tdata_out(2)
    );
\tdata_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(30),
      Q => tdata_out(30)
    );
\tdata_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(31),
      Q => tdata_out(31)
    );
\tdata_out_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(32),
      Q => tdata_out(32)
    );
\tdata_out_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(33),
      Q => tdata_out(33)
    );
\tdata_out_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(34),
      Q => tdata_out(34)
    );
\tdata_out_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(35),
      Q => tdata_out(35)
    );
\tdata_out_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(36),
      Q => tdata_out(36)
    );
\tdata_out_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(37),
      Q => tdata_out(37)
    );
\tdata_out_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(38),
      Q => tdata_out(38)
    );
\tdata_out_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(39),
      Q => tdata_out(39)
    );
\tdata_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(3),
      Q => tdata_out(3)
    );
\tdata_out_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(40),
      Q => tdata_out(40)
    );
\tdata_out_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(41),
      Q => tdata_out(41)
    );
\tdata_out_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(42),
      Q => tdata_out(42)
    );
\tdata_out_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(43),
      Q => tdata_out(43)
    );
\tdata_out_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(44),
      Q => tdata_out(44)
    );
\tdata_out_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(45),
      Q => tdata_out(45)
    );
\tdata_out_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(46),
      Q => tdata_out(46)
    );
\tdata_out_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(47),
      Q => tdata_out(47)
    );
\tdata_out_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(48),
      Q => tdata_out(48)
    );
\tdata_out_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(49),
      Q => tdata_out(49)
    );
\tdata_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(4),
      Q => tdata_out(4)
    );
\tdata_out_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(50),
      Q => tdata_out(50)
    );
\tdata_out_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(51),
      Q => tdata_out(51)
    );
\tdata_out_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(52),
      Q => tdata_out(52)
    );
\tdata_out_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(53),
      Q => tdata_out(53)
    );
\tdata_out_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(54),
      Q => tdata_out(54)
    );
\tdata_out_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(55),
      Q => tdata_out(55)
    );
\tdata_out_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(56),
      Q => tdata_out(56)
    );
\tdata_out_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(57),
      Q => tdata_out(57)
    );
\tdata_out_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(58),
      Q => tdata_out(58)
    );
\tdata_out_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(59),
      Q => tdata_out(59)
    );
\tdata_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(5),
      Q => tdata_out(5)
    );
\tdata_out_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(60),
      Q => tdata_out(60)
    );
\tdata_out_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(61),
      Q => tdata_out(61)
    );
\tdata_out_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(62),
      Q => tdata_out(62)
    );
\tdata_out_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(63),
      Q => tdata_out(63)
    );
\tdata_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(6),
      Q => tdata_out(6)
    );
\tdata_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(7),
      Q => tdata_out(7)
    );
\tdata_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(8),
      Q => tdata_out(8)
    );
\tdata_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => p_0_in(9),
      Q => tdata_out(9)
    );
tvalid_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => \tdata_out[63]_i_2_n_0\,
      D => tvalid_in,
      Q => tvalid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_sorter_0_0 is
  port (
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    log_2_BIN_WIDTH : in STD_LOGIC_VECTOR ( 15 downto 0 );
    REFINDEX_BITS : in STD_LOGIC_VECTOR ( 5 downto 0 );
    STOPRESULT_BITS : in STD_LOGIC_VECTOR ( 5 downto 0 );
    tdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid_in : in STD_LOGIC;
    tready_in : out STD_LOGIC;
    tlast_in : in STD_LOGIC;
    tdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid_out : out STD_LOGIC;
    tready_out : in STD_LOGIC;
    tlast_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of histo_sorter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of histo_sorter_0_0 : entity is "histo_sorter_0_0,sorter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of histo_sorter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of histo_sorter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of histo_sorter_0_0 : entity is "sorter,Vivado 2024.2";
end histo_sorter_0_0;

architecture STRUCTURE of histo_sorter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXIS_IN:AXIS_OUT, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tlast_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TLAST";
  attribute X_INTERFACE_INFO of tlast_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST";
  attribute X_INTERFACE_INFO of tready_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TREADY";
  attribute X_INTERFACE_INFO of tready_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TREADY";
  attribute X_INTERFACE_PARAMETER of tready_out : signal is "FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of tvalid_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TVALID";
  attribute X_INTERFACE_INFO of tvalid_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID";
  attribute X_INTERFACE_INFO of tdata_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TDATA";
  attribute X_INTERFACE_MODE of tdata_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of tdata_in : signal is "XIL_INTERFACENAME AXIS_IN, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tdata_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_MODE of tdata_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of tdata_out : signal is "XIL_INTERFACENAME AXIS_OUT, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  tlast_out <= \<const0>\;
  tready_in <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.histo_sorter_0_0_sorter
     port map (
      STOPRESULT_BITS(5 downto 0) => STOPRESULT_BITS(5 downto 0),
      aresetn => aresetn,
      clk => clk,
      en => en,
      log_2_BIN_WIDTH(15 downto 0) => log_2_BIN_WIDTH(15 downto 0),
      tdata_in(63 downto 0) => tdata_in(63 downto 0),
      tdata_out(63 downto 0) => tdata_out(63 downto 0),
      tvalid_in => tvalid_in,
      tvalid_out => tvalid_out
    );
end STRUCTURE;
