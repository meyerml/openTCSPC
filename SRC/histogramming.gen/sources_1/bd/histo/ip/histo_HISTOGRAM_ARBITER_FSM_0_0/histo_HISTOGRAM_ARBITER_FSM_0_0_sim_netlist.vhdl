-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Apr 24 14:56:28 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_HISTOGRAM_ARBITER_FSM_0_0/histo_HISTOGRAM_ARBITER_FSM_0_0_sim_netlist.vhdl
-- Design      : histo_HISTOGRAM_ARBITER_FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist is
  port (
    bram_reg_bram_7_0 : out STD_LOGIC;
    bram_dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_reg_bram_7_1 : out STD_LOGIC;
    bram_reg_bram_7_2 : out STD_LOGIC;
    bram_reg_bram_7_3 : out STD_LOGIC;
    bram_reg_bram_7_4 : out STD_LOGIC;
    bram_reg_bram_7_5 : out STD_LOGIC;
    bram_reg_bram_7_6 : out STD_LOGIC;
    bram_reg_bram_7_7 : out STD_LOGIC;
    bram_reg_bram_7_8 : out STD_LOGIC;
    bram_reg_bram_7_9 : out STD_LOGIC;
    bram_reg_bram_7_10 : out STD_LOGIC;
    bram_reg_bram_7_11 : out STD_LOGIC;
    bram_reg_bram_7_12 : out STD_LOGIC;
    bram_reg_bram_7_13 : out STD_LOGIC;
    bram_reg_bram_7_14 : out STD_LOGIC;
    bram_reg_bram_7_15 : out STD_LOGIC;
    bram_reg_bram_7_16 : out STD_LOGIC;
    bram_reg_bram_7_17 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \READ_FSM_DOUT_reg[0]_i_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \READ_FSM_DOUT_reg[17]_i_1\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    clk : in STD_LOGIC;
    bram_reg_bram_7_18 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_0_we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist : entity is "BRAM_hist";
end histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist is
  signal \^bram_dout\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal bram_reg_bram_0_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_0_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_0_n_134 : STD_LOGIC;
  signal bram_reg_bram_0_n_135 : STD_LOGIC;
  signal bram_reg_bram_0_n_20 : STD_LOGIC;
  signal bram_reg_bram_0_n_21 : STD_LOGIC;
  signal bram_reg_bram_0_n_22 : STD_LOGIC;
  signal bram_reg_bram_0_n_23 : STD_LOGIC;
  signal bram_reg_bram_0_n_24 : STD_LOGIC;
  signal bram_reg_bram_0_n_25 : STD_LOGIC;
  signal bram_reg_bram_0_n_26 : STD_LOGIC;
  signal bram_reg_bram_0_n_27 : STD_LOGIC;
  signal bram_reg_bram_0_n_28 : STD_LOGIC;
  signal bram_reg_bram_0_n_29 : STD_LOGIC;
  signal bram_reg_bram_0_n_30 : STD_LOGIC;
  signal bram_reg_bram_0_n_31 : STD_LOGIC;
  signal bram_reg_bram_0_n_32 : STD_LOGIC;
  signal bram_reg_bram_0_n_33 : STD_LOGIC;
  signal bram_reg_bram_0_n_34 : STD_LOGIC;
  signal bram_reg_bram_0_n_35 : STD_LOGIC;
  signal bram_reg_bram_1_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_1_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_1_i_3_n_0 : STD_LOGIC;
  signal bram_reg_bram_1_n_134 : STD_LOGIC;
  signal bram_reg_bram_1_n_135 : STD_LOGIC;
  signal bram_reg_bram_1_n_20 : STD_LOGIC;
  signal bram_reg_bram_1_n_21 : STD_LOGIC;
  signal bram_reg_bram_1_n_22 : STD_LOGIC;
  signal bram_reg_bram_1_n_23 : STD_LOGIC;
  signal bram_reg_bram_1_n_24 : STD_LOGIC;
  signal bram_reg_bram_1_n_25 : STD_LOGIC;
  signal bram_reg_bram_1_n_26 : STD_LOGIC;
  signal bram_reg_bram_1_n_27 : STD_LOGIC;
  signal bram_reg_bram_1_n_28 : STD_LOGIC;
  signal bram_reg_bram_1_n_29 : STD_LOGIC;
  signal bram_reg_bram_1_n_30 : STD_LOGIC;
  signal bram_reg_bram_1_n_31 : STD_LOGIC;
  signal bram_reg_bram_1_n_32 : STD_LOGIC;
  signal bram_reg_bram_1_n_33 : STD_LOGIC;
  signal bram_reg_bram_1_n_34 : STD_LOGIC;
  signal bram_reg_bram_1_n_35 : STD_LOGIC;
  signal bram_reg_bram_2_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_2_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_2_i_3_n_0 : STD_LOGIC;
  signal bram_reg_bram_2_n_134 : STD_LOGIC;
  signal bram_reg_bram_2_n_135 : STD_LOGIC;
  signal bram_reg_bram_2_n_20 : STD_LOGIC;
  signal bram_reg_bram_2_n_21 : STD_LOGIC;
  signal bram_reg_bram_2_n_22 : STD_LOGIC;
  signal bram_reg_bram_2_n_23 : STD_LOGIC;
  signal bram_reg_bram_2_n_24 : STD_LOGIC;
  signal bram_reg_bram_2_n_25 : STD_LOGIC;
  signal bram_reg_bram_2_n_26 : STD_LOGIC;
  signal bram_reg_bram_2_n_27 : STD_LOGIC;
  signal bram_reg_bram_2_n_28 : STD_LOGIC;
  signal bram_reg_bram_2_n_29 : STD_LOGIC;
  signal bram_reg_bram_2_n_30 : STD_LOGIC;
  signal bram_reg_bram_2_n_31 : STD_LOGIC;
  signal bram_reg_bram_2_n_32 : STD_LOGIC;
  signal bram_reg_bram_2_n_33 : STD_LOGIC;
  signal bram_reg_bram_2_n_34 : STD_LOGIC;
  signal bram_reg_bram_2_n_35 : STD_LOGIC;
  signal bram_reg_bram_3_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_3_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_3_i_3_n_0 : STD_LOGIC;
  signal bram_reg_bram_3_n_134 : STD_LOGIC;
  signal bram_reg_bram_3_n_135 : STD_LOGIC;
  signal bram_reg_bram_3_n_20 : STD_LOGIC;
  signal bram_reg_bram_3_n_21 : STD_LOGIC;
  signal bram_reg_bram_3_n_22 : STD_LOGIC;
  signal bram_reg_bram_3_n_23 : STD_LOGIC;
  signal bram_reg_bram_3_n_24 : STD_LOGIC;
  signal bram_reg_bram_3_n_25 : STD_LOGIC;
  signal bram_reg_bram_3_n_26 : STD_LOGIC;
  signal bram_reg_bram_3_n_27 : STD_LOGIC;
  signal bram_reg_bram_3_n_28 : STD_LOGIC;
  signal bram_reg_bram_3_n_29 : STD_LOGIC;
  signal bram_reg_bram_3_n_30 : STD_LOGIC;
  signal bram_reg_bram_3_n_31 : STD_LOGIC;
  signal bram_reg_bram_3_n_32 : STD_LOGIC;
  signal bram_reg_bram_3_n_33 : STD_LOGIC;
  signal bram_reg_bram_3_n_34 : STD_LOGIC;
  signal bram_reg_bram_3_n_35 : STD_LOGIC;
  signal bram_reg_bram_4_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_4_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_4_i_3_n_0 : STD_LOGIC;
  signal bram_reg_bram_4_n_134 : STD_LOGIC;
  signal bram_reg_bram_4_n_135 : STD_LOGIC;
  signal bram_reg_bram_4_n_20 : STD_LOGIC;
  signal bram_reg_bram_4_n_21 : STD_LOGIC;
  signal bram_reg_bram_4_n_22 : STD_LOGIC;
  signal bram_reg_bram_4_n_23 : STD_LOGIC;
  signal bram_reg_bram_4_n_24 : STD_LOGIC;
  signal bram_reg_bram_4_n_25 : STD_LOGIC;
  signal bram_reg_bram_4_n_26 : STD_LOGIC;
  signal bram_reg_bram_4_n_27 : STD_LOGIC;
  signal bram_reg_bram_4_n_28 : STD_LOGIC;
  signal bram_reg_bram_4_n_29 : STD_LOGIC;
  signal bram_reg_bram_4_n_30 : STD_LOGIC;
  signal bram_reg_bram_4_n_31 : STD_LOGIC;
  signal bram_reg_bram_4_n_32 : STD_LOGIC;
  signal bram_reg_bram_4_n_33 : STD_LOGIC;
  signal bram_reg_bram_4_n_34 : STD_LOGIC;
  signal bram_reg_bram_4_n_35 : STD_LOGIC;
  signal bram_reg_bram_5_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_5_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_5_i_3_n_0 : STD_LOGIC;
  signal bram_reg_bram_5_n_134 : STD_LOGIC;
  signal bram_reg_bram_5_n_135 : STD_LOGIC;
  signal bram_reg_bram_5_n_20 : STD_LOGIC;
  signal bram_reg_bram_5_n_21 : STD_LOGIC;
  signal bram_reg_bram_5_n_22 : STD_LOGIC;
  signal bram_reg_bram_5_n_23 : STD_LOGIC;
  signal bram_reg_bram_5_n_24 : STD_LOGIC;
  signal bram_reg_bram_5_n_25 : STD_LOGIC;
  signal bram_reg_bram_5_n_26 : STD_LOGIC;
  signal bram_reg_bram_5_n_27 : STD_LOGIC;
  signal bram_reg_bram_5_n_28 : STD_LOGIC;
  signal bram_reg_bram_5_n_29 : STD_LOGIC;
  signal bram_reg_bram_5_n_30 : STD_LOGIC;
  signal bram_reg_bram_5_n_31 : STD_LOGIC;
  signal bram_reg_bram_5_n_32 : STD_LOGIC;
  signal bram_reg_bram_5_n_33 : STD_LOGIC;
  signal bram_reg_bram_5_n_34 : STD_LOGIC;
  signal bram_reg_bram_5_n_35 : STD_LOGIC;
  signal bram_reg_bram_6_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_6_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_6_i_3_n_0 : STD_LOGIC;
  signal bram_reg_bram_6_n_134 : STD_LOGIC;
  signal bram_reg_bram_6_n_135 : STD_LOGIC;
  signal bram_reg_bram_6_n_20 : STD_LOGIC;
  signal bram_reg_bram_6_n_21 : STD_LOGIC;
  signal bram_reg_bram_6_n_22 : STD_LOGIC;
  signal bram_reg_bram_6_n_23 : STD_LOGIC;
  signal bram_reg_bram_6_n_24 : STD_LOGIC;
  signal bram_reg_bram_6_n_25 : STD_LOGIC;
  signal bram_reg_bram_6_n_26 : STD_LOGIC;
  signal bram_reg_bram_6_n_27 : STD_LOGIC;
  signal bram_reg_bram_6_n_28 : STD_LOGIC;
  signal bram_reg_bram_6_n_29 : STD_LOGIC;
  signal bram_reg_bram_6_n_30 : STD_LOGIC;
  signal bram_reg_bram_6_n_31 : STD_LOGIC;
  signal bram_reg_bram_6_n_32 : STD_LOGIC;
  signal bram_reg_bram_6_n_33 : STD_LOGIC;
  signal bram_reg_bram_6_n_34 : STD_LOGIC;
  signal bram_reg_bram_6_n_35 : STD_LOGIC;
  signal bram_reg_bram_7_i_1_n_0 : STD_LOGIC;
  signal bram_reg_bram_7_i_2_n_0 : STD_LOGIC;
  signal bram_reg_bram_7_i_3_n_0 : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_0 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_0 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bram_reg_bram_0 : label is 294912;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_reg_bram_0 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of bram_reg_bram_0 : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of bram_reg_bram_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bram_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bram_reg_bram_0 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of bram_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bram_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bram_reg_bram_0 : label is 17;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of bram_reg_bram_0_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of bram_reg_bram_0_i_2 : label is "soft_lutpair0";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_1 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_1 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_1 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_1 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_1 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_1 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_1 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_1 : label is 2048;
  attribute ram_addr_end of bram_reg_bram_1 : label is 4095;
  attribute ram_offset of bram_reg_bram_1 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_1 : label is 0;
  attribute ram_slice_end of bram_reg_bram_1 : label is 17;
  attribute SOFT_HLUTNM of bram_reg_bram_1_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of bram_reg_bram_1_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of bram_reg_bram_1_i_3 : label is "soft_lutpair0";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_2 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_2 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_2 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_2 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_2 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_2 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_2 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_2 : label is 4096;
  attribute ram_addr_end of bram_reg_bram_2 : label is 6143;
  attribute ram_offset of bram_reg_bram_2 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_2 : label is 0;
  attribute ram_slice_end of bram_reg_bram_2 : label is 17;
  attribute SOFT_HLUTNM of bram_reg_bram_2_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of bram_reg_bram_2_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of bram_reg_bram_2_i_3 : label is "soft_lutpair1";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_3 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_3 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_3 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_3 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_3 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_3 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_3 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_3 : label is 6144;
  attribute ram_addr_end of bram_reg_bram_3 : label is 8191;
  attribute ram_offset of bram_reg_bram_3 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_3 : label is 0;
  attribute ram_slice_end of bram_reg_bram_3 : label is 17;
  attribute SOFT_HLUTNM of bram_reg_bram_3_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of bram_reg_bram_3_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of bram_reg_bram_3_i_3 : label is "soft_lutpair1";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_4 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_4 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_4 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_4 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_4 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_4 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_4 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_4 : label is 8192;
  attribute ram_addr_end of bram_reg_bram_4 : label is 10239;
  attribute ram_offset of bram_reg_bram_4 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_4 : label is 0;
  attribute ram_slice_end of bram_reg_bram_4 : label is 17;
  attribute SOFT_HLUTNM of bram_reg_bram_4_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of bram_reg_bram_4_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of bram_reg_bram_4_i_3 : label is "soft_lutpair2";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_5 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_5 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_5 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_5 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_5 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_5 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_5 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_5 : label is 10240;
  attribute ram_addr_end of bram_reg_bram_5 : label is 12287;
  attribute ram_offset of bram_reg_bram_5 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_5 : label is 0;
  attribute ram_slice_end of bram_reg_bram_5 : label is 17;
  attribute SOFT_HLUTNM of bram_reg_bram_5_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of bram_reg_bram_5_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of bram_reg_bram_5_i_3 : label is "soft_lutpair2";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_6 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_6 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_6 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_6 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_6 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_6 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_6 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_6 : label is 12288;
  attribute ram_addr_end of bram_reg_bram_6 : label is 14335;
  attribute ram_offset of bram_reg_bram_6 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_6 : label is 0;
  attribute ram_slice_end of bram_reg_bram_6 : label is 17;
  attribute SOFT_HLUTNM of bram_reg_bram_6_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of bram_reg_bram_6_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of bram_reg_bram_6_i_3 : label is "soft_lutpair3";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_7 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_7 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_7 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_7 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_0/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_7 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_7 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_7 : label is 14336;
  attribute ram_addr_end of bram_reg_bram_7 : label is 16383;
  attribute ram_offset of bram_reg_bram_7 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_7 : label is 0;
  attribute ram_slice_end of bram_reg_bram_7 : label is 17;
  attribute SOFT_HLUTNM of bram_reg_bram_7_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of bram_reg_bram_7_i_3 : label is "soft_lutpair3";
begin
  bram_dout(17 downto 0) <= \^bram_dout\(17 downto 0);
\READ_FSM_DOUT_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(0),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(0),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_17
    );
\READ_FSM_DOUT_reg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(10),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(10),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_7
    );
\READ_FSM_DOUT_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(11),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(11),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_6
    );
\READ_FSM_DOUT_reg[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(12),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(12),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_5
    );
\READ_FSM_DOUT_reg[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(13),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(13),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_4
    );
\READ_FSM_DOUT_reg[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(14),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(14),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_3
    );
\READ_FSM_DOUT_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(15),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(15),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_2
    );
\READ_FSM_DOUT_reg[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(16),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(16),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_1
    );
\READ_FSM_DOUT_reg[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(17),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(17),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_0
    );
\READ_FSM_DOUT_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(1),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(1),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_16
    );
\READ_FSM_DOUT_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(2),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(2),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_15
    );
\READ_FSM_DOUT_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(3),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(3),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_14
    );
\READ_FSM_DOUT_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(4),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(4),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_13
    );
\READ_FSM_DOUT_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(5),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(5),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_12
    );
\READ_FSM_DOUT_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(6),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(6),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_11
    );
\READ_FSM_DOUT_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(7),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(7),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_10
    );
\READ_FSM_DOUT_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(8),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(8),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_9
    );
\READ_FSM_DOUT_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^bram_dout\(9),
      I1 => \READ_FSM_DOUT_reg[0]_i_1\(1),
      I2 => \READ_FSM_DOUT_reg[17]_i_1\(9),
      I3 => \READ_FSM_DOUT_reg[0]_i_1\(0),
      O => bram_reg_bram_7_8
    );
bram_reg_bram_0: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_0_n_20,
      CASDOUTA(14) => bram_reg_bram_0_n_21,
      CASDOUTA(13) => bram_reg_bram_0_n_22,
      CASDOUTA(12) => bram_reg_bram_0_n_23,
      CASDOUTA(11) => bram_reg_bram_0_n_24,
      CASDOUTA(10) => bram_reg_bram_0_n_25,
      CASDOUTA(9) => bram_reg_bram_0_n_26,
      CASDOUTA(8) => bram_reg_bram_0_n_27,
      CASDOUTA(7) => bram_reg_bram_0_n_28,
      CASDOUTA(6) => bram_reg_bram_0_n_29,
      CASDOUTA(5) => bram_reg_bram_0_n_30,
      CASDOUTA(4) => bram_reg_bram_0_n_31,
      CASDOUTA(3) => bram_reg_bram_0_n_32,
      CASDOUTA(2) => bram_reg_bram_0_n_33,
      CASDOUTA(1) => bram_reg_bram_0_n_34,
      CASDOUTA(0) => bram_reg_bram_0_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_0_n_134,
      CASDOUTPA(0) => bram_reg_bram_0_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_0_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_0_i_1_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_0_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_0_i_2_n_0,
      WEA(2) => bram_reg_bram_0_i_2_n_0,
      WEA(1) => bram_reg_bram_0_i_2_n_0,
      WEA(0) => bram_reg_bram_0_i_2_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => bram_reg_bram_0_i_1_n_0
    );
bram_reg_bram_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => bram_reg_bram_0_i_2_n_0
    );
bram_reg_bram_1: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_0_n_20,
      CASDINA(14) => bram_reg_bram_0_n_21,
      CASDINA(13) => bram_reg_bram_0_n_22,
      CASDINA(12) => bram_reg_bram_0_n_23,
      CASDINA(11) => bram_reg_bram_0_n_24,
      CASDINA(10) => bram_reg_bram_0_n_25,
      CASDINA(9) => bram_reg_bram_0_n_26,
      CASDINA(8) => bram_reg_bram_0_n_27,
      CASDINA(7) => bram_reg_bram_0_n_28,
      CASDINA(6) => bram_reg_bram_0_n_29,
      CASDINA(5) => bram_reg_bram_0_n_30,
      CASDINA(4) => bram_reg_bram_0_n_31,
      CASDINA(3) => bram_reg_bram_0_n_32,
      CASDINA(2) => bram_reg_bram_0_n_33,
      CASDINA(1) => bram_reg_bram_0_n_34,
      CASDINA(0) => bram_reg_bram_0_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_0_n_134,
      CASDINPA(0) => bram_reg_bram_0_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => bram_reg_bram_1_i_1_n_0,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_1_n_20,
      CASDOUTA(14) => bram_reg_bram_1_n_21,
      CASDOUTA(13) => bram_reg_bram_1_n_22,
      CASDOUTA(12) => bram_reg_bram_1_n_23,
      CASDOUTA(11) => bram_reg_bram_1_n_24,
      CASDOUTA(10) => bram_reg_bram_1_n_25,
      CASDOUTA(9) => bram_reg_bram_1_n_26,
      CASDOUTA(8) => bram_reg_bram_1_n_27,
      CASDOUTA(7) => bram_reg_bram_1_n_28,
      CASDOUTA(6) => bram_reg_bram_1_n_29,
      CASDOUTA(5) => bram_reg_bram_1_n_30,
      CASDOUTA(4) => bram_reg_bram_1_n_31,
      CASDOUTA(3) => bram_reg_bram_1_n_32,
      CASDOUTA(2) => bram_reg_bram_1_n_33,
      CASDOUTA(1) => bram_reg_bram_1_n_34,
      CASDOUTA(0) => bram_reg_bram_1_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_1_n_134,
      CASDOUTPA(0) => bram_reg_bram_1_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_1_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_1_i_2_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_1_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_1_i_3_n_0,
      WEA(2) => bram_reg_bram_1_i_3_n_0,
      WEA(1) => bram_reg_bram_1_i_3_n_0,
      WEA(0) => bram_reg_bram_1_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => bram_reg_bram_1_i_1_n_0
    );
bram_reg_bram_1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => bram_reg_bram_1_i_2_n_0
    );
bram_reg_bram_1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(12),
      I2 => Q(13),
      I3 => Q(11),
      O => bram_reg_bram_1_i_3_n_0
    );
bram_reg_bram_2: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_1_n_20,
      CASDINA(14) => bram_reg_bram_1_n_21,
      CASDINA(13) => bram_reg_bram_1_n_22,
      CASDINA(12) => bram_reg_bram_1_n_23,
      CASDINA(11) => bram_reg_bram_1_n_24,
      CASDINA(10) => bram_reg_bram_1_n_25,
      CASDINA(9) => bram_reg_bram_1_n_26,
      CASDINA(8) => bram_reg_bram_1_n_27,
      CASDINA(7) => bram_reg_bram_1_n_28,
      CASDINA(6) => bram_reg_bram_1_n_29,
      CASDINA(5) => bram_reg_bram_1_n_30,
      CASDINA(4) => bram_reg_bram_1_n_31,
      CASDINA(3) => bram_reg_bram_1_n_32,
      CASDINA(2) => bram_reg_bram_1_n_33,
      CASDINA(1) => bram_reg_bram_1_n_34,
      CASDINA(0) => bram_reg_bram_1_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_1_n_134,
      CASDINPA(0) => bram_reg_bram_1_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => bram_reg_bram_2_i_1_n_0,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_2_n_20,
      CASDOUTA(14) => bram_reg_bram_2_n_21,
      CASDOUTA(13) => bram_reg_bram_2_n_22,
      CASDOUTA(12) => bram_reg_bram_2_n_23,
      CASDOUTA(11) => bram_reg_bram_2_n_24,
      CASDOUTA(10) => bram_reg_bram_2_n_25,
      CASDOUTA(9) => bram_reg_bram_2_n_26,
      CASDOUTA(8) => bram_reg_bram_2_n_27,
      CASDOUTA(7) => bram_reg_bram_2_n_28,
      CASDOUTA(6) => bram_reg_bram_2_n_29,
      CASDOUTA(5) => bram_reg_bram_2_n_30,
      CASDOUTA(4) => bram_reg_bram_2_n_31,
      CASDOUTA(3) => bram_reg_bram_2_n_32,
      CASDOUTA(2) => bram_reg_bram_2_n_33,
      CASDOUTA(1) => bram_reg_bram_2_n_34,
      CASDOUTA(0) => bram_reg_bram_2_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_2_n_134,
      CASDOUTPA(0) => bram_reg_bram_2_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_2_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_2_i_2_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_2_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_2_i_3_n_0,
      WEA(2) => bram_reg_bram_2_i_3_n_0,
      WEA(1) => bram_reg_bram_2_i_3_n_0,
      WEA(0) => bram_reg_bram_2_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => bram_reg_bram_2_i_1_n_0
    );
bram_reg_bram_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => bram_reg_bram_2_i_2_n_0
    );
bram_reg_bram_2_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(11),
      I2 => Q(13),
      I3 => Q(12),
      O => bram_reg_bram_2_i_3_n_0
    );
bram_reg_bram_3: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_2_n_20,
      CASDINA(14) => bram_reg_bram_2_n_21,
      CASDINA(13) => bram_reg_bram_2_n_22,
      CASDINA(12) => bram_reg_bram_2_n_23,
      CASDINA(11) => bram_reg_bram_2_n_24,
      CASDINA(10) => bram_reg_bram_2_n_25,
      CASDINA(9) => bram_reg_bram_2_n_26,
      CASDINA(8) => bram_reg_bram_2_n_27,
      CASDINA(7) => bram_reg_bram_2_n_28,
      CASDINA(6) => bram_reg_bram_2_n_29,
      CASDINA(5) => bram_reg_bram_2_n_30,
      CASDINA(4) => bram_reg_bram_2_n_31,
      CASDINA(3) => bram_reg_bram_2_n_32,
      CASDINA(2) => bram_reg_bram_2_n_33,
      CASDINA(1) => bram_reg_bram_2_n_34,
      CASDINA(0) => bram_reg_bram_2_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_2_n_134,
      CASDINPA(0) => bram_reg_bram_2_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => bram_reg_bram_3_i_1_n_0,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_3_n_20,
      CASDOUTA(14) => bram_reg_bram_3_n_21,
      CASDOUTA(13) => bram_reg_bram_3_n_22,
      CASDOUTA(12) => bram_reg_bram_3_n_23,
      CASDOUTA(11) => bram_reg_bram_3_n_24,
      CASDOUTA(10) => bram_reg_bram_3_n_25,
      CASDOUTA(9) => bram_reg_bram_3_n_26,
      CASDOUTA(8) => bram_reg_bram_3_n_27,
      CASDOUTA(7) => bram_reg_bram_3_n_28,
      CASDOUTA(6) => bram_reg_bram_3_n_29,
      CASDOUTA(5) => bram_reg_bram_3_n_30,
      CASDOUTA(4) => bram_reg_bram_3_n_31,
      CASDOUTA(3) => bram_reg_bram_3_n_32,
      CASDOUTA(2) => bram_reg_bram_3_n_33,
      CASDOUTA(1) => bram_reg_bram_3_n_34,
      CASDOUTA(0) => bram_reg_bram_3_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_3_n_134,
      CASDOUTPA(0) => bram_reg_bram_3_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_3_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_3_i_2_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_3_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_3_i_3_n_0,
      WEA(2) => bram_reg_bram_3_i_3_n_0,
      WEA(1) => bram_reg_bram_3_i_3_n_0,
      WEA(0) => bram_reg_bram_3_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => bram_reg_bram_3_i_1_n_0
    );
bram_reg_bram_3_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => bram_reg_bram_3_i_2_n_0
    );
bram_reg_bram_3_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => bram_reg_bram_3_i_3_n_0
    );
bram_reg_bram_4: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_3_n_20,
      CASDINA(14) => bram_reg_bram_3_n_21,
      CASDINA(13) => bram_reg_bram_3_n_22,
      CASDINA(12) => bram_reg_bram_3_n_23,
      CASDINA(11) => bram_reg_bram_3_n_24,
      CASDINA(10) => bram_reg_bram_3_n_25,
      CASDINA(9) => bram_reg_bram_3_n_26,
      CASDINA(8) => bram_reg_bram_3_n_27,
      CASDINA(7) => bram_reg_bram_3_n_28,
      CASDINA(6) => bram_reg_bram_3_n_29,
      CASDINA(5) => bram_reg_bram_3_n_30,
      CASDINA(4) => bram_reg_bram_3_n_31,
      CASDINA(3) => bram_reg_bram_3_n_32,
      CASDINA(2) => bram_reg_bram_3_n_33,
      CASDINA(1) => bram_reg_bram_3_n_34,
      CASDINA(0) => bram_reg_bram_3_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_3_n_134,
      CASDINPA(0) => bram_reg_bram_3_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => bram_reg_bram_4_i_1_n_0,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_4_n_20,
      CASDOUTA(14) => bram_reg_bram_4_n_21,
      CASDOUTA(13) => bram_reg_bram_4_n_22,
      CASDOUTA(12) => bram_reg_bram_4_n_23,
      CASDOUTA(11) => bram_reg_bram_4_n_24,
      CASDOUTA(10) => bram_reg_bram_4_n_25,
      CASDOUTA(9) => bram_reg_bram_4_n_26,
      CASDOUTA(8) => bram_reg_bram_4_n_27,
      CASDOUTA(7) => bram_reg_bram_4_n_28,
      CASDOUTA(6) => bram_reg_bram_4_n_29,
      CASDOUTA(5) => bram_reg_bram_4_n_30,
      CASDOUTA(4) => bram_reg_bram_4_n_31,
      CASDOUTA(3) => bram_reg_bram_4_n_32,
      CASDOUTA(2) => bram_reg_bram_4_n_33,
      CASDOUTA(1) => bram_reg_bram_4_n_34,
      CASDOUTA(0) => bram_reg_bram_4_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_4_n_134,
      CASDOUTPA(0) => bram_reg_bram_4_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_4_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_4_i_2_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_4_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_4_i_3_n_0,
      WEA(2) => bram_reg_bram_4_i_3_n_0,
      WEA(1) => bram_reg_bram_4_i_3_n_0,
      WEA(0) => bram_reg_bram_4_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => bram_reg_bram_4_i_1_n_0
    );
bram_reg_bram_4_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => bram_reg_bram_4_i_2_n_0
    );
bram_reg_bram_4_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => bram_reg_bram_4_i_3_n_0
    );
bram_reg_bram_5: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_4_n_20,
      CASDINA(14) => bram_reg_bram_4_n_21,
      CASDINA(13) => bram_reg_bram_4_n_22,
      CASDINA(12) => bram_reg_bram_4_n_23,
      CASDINA(11) => bram_reg_bram_4_n_24,
      CASDINA(10) => bram_reg_bram_4_n_25,
      CASDINA(9) => bram_reg_bram_4_n_26,
      CASDINA(8) => bram_reg_bram_4_n_27,
      CASDINA(7) => bram_reg_bram_4_n_28,
      CASDINA(6) => bram_reg_bram_4_n_29,
      CASDINA(5) => bram_reg_bram_4_n_30,
      CASDINA(4) => bram_reg_bram_4_n_31,
      CASDINA(3) => bram_reg_bram_4_n_32,
      CASDINA(2) => bram_reg_bram_4_n_33,
      CASDINA(1) => bram_reg_bram_4_n_34,
      CASDINA(0) => bram_reg_bram_4_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_4_n_134,
      CASDINPA(0) => bram_reg_bram_4_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => bram_reg_bram_5_i_1_n_0,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_5_n_20,
      CASDOUTA(14) => bram_reg_bram_5_n_21,
      CASDOUTA(13) => bram_reg_bram_5_n_22,
      CASDOUTA(12) => bram_reg_bram_5_n_23,
      CASDOUTA(11) => bram_reg_bram_5_n_24,
      CASDOUTA(10) => bram_reg_bram_5_n_25,
      CASDOUTA(9) => bram_reg_bram_5_n_26,
      CASDOUTA(8) => bram_reg_bram_5_n_27,
      CASDOUTA(7) => bram_reg_bram_5_n_28,
      CASDOUTA(6) => bram_reg_bram_5_n_29,
      CASDOUTA(5) => bram_reg_bram_5_n_30,
      CASDOUTA(4) => bram_reg_bram_5_n_31,
      CASDOUTA(3) => bram_reg_bram_5_n_32,
      CASDOUTA(2) => bram_reg_bram_5_n_33,
      CASDOUTA(1) => bram_reg_bram_5_n_34,
      CASDOUTA(0) => bram_reg_bram_5_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_5_n_134,
      CASDOUTPA(0) => bram_reg_bram_5_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_5_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_5_i_2_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_5_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_5_i_3_n_0,
      WEA(2) => bram_reg_bram_5_i_3_n_0,
      WEA(1) => bram_reg_bram_5_i_3_n_0,
      WEA(0) => bram_reg_bram_5_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => bram_reg_bram_5_i_1_n_0
    );
bram_reg_bram_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => bram_reg_bram_5_i_2_n_0
    );
bram_reg_bram_5_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(11),
      I2 => Q(13),
      I3 => Q(12),
      O => bram_reg_bram_5_i_3_n_0
    );
bram_reg_bram_6: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_5_n_20,
      CASDINA(14) => bram_reg_bram_5_n_21,
      CASDINA(13) => bram_reg_bram_5_n_22,
      CASDINA(12) => bram_reg_bram_5_n_23,
      CASDINA(11) => bram_reg_bram_5_n_24,
      CASDINA(10) => bram_reg_bram_5_n_25,
      CASDINA(9) => bram_reg_bram_5_n_26,
      CASDINA(8) => bram_reg_bram_5_n_27,
      CASDINA(7) => bram_reg_bram_5_n_28,
      CASDINA(6) => bram_reg_bram_5_n_29,
      CASDINA(5) => bram_reg_bram_5_n_30,
      CASDINA(4) => bram_reg_bram_5_n_31,
      CASDINA(3) => bram_reg_bram_5_n_32,
      CASDINA(2) => bram_reg_bram_5_n_33,
      CASDINA(1) => bram_reg_bram_5_n_34,
      CASDINA(0) => bram_reg_bram_5_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_5_n_134,
      CASDINPA(0) => bram_reg_bram_5_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => bram_reg_bram_6_i_1_n_0,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_6_n_20,
      CASDOUTA(14) => bram_reg_bram_6_n_21,
      CASDOUTA(13) => bram_reg_bram_6_n_22,
      CASDOUTA(12) => bram_reg_bram_6_n_23,
      CASDOUTA(11) => bram_reg_bram_6_n_24,
      CASDOUTA(10) => bram_reg_bram_6_n_25,
      CASDOUTA(9) => bram_reg_bram_6_n_26,
      CASDOUTA(8) => bram_reg_bram_6_n_27,
      CASDOUTA(7) => bram_reg_bram_6_n_28,
      CASDOUTA(6) => bram_reg_bram_6_n_29,
      CASDOUTA(5) => bram_reg_bram_6_n_30,
      CASDOUTA(4) => bram_reg_bram_6_n_31,
      CASDOUTA(3) => bram_reg_bram_6_n_32,
      CASDOUTA(2) => bram_reg_bram_6_n_33,
      CASDOUTA(1) => bram_reg_bram_6_n_34,
      CASDOUTA(0) => bram_reg_bram_6_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_6_n_134,
      CASDOUTPA(0) => bram_reg_bram_6_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_6_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_6_i_2_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_6_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_6_i_3_n_0,
      WEA(2) => bram_reg_bram_6_i_3_n_0,
      WEA(1) => bram_reg_bram_6_i_3_n_0,
      WEA(0) => bram_reg_bram_6_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => bram_reg_bram_6_i_1_n_0
    );
bram_reg_bram_6_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => bram_reg_bram_6_i_2_n_0
    );
bram_reg_bram_6_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => bram_reg_bram_6_i_3_n_0
    );
bram_reg_bram_7: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_6_n_20,
      CASDINA(14) => bram_reg_bram_6_n_21,
      CASDINA(13) => bram_reg_bram_6_n_22,
      CASDINA(12) => bram_reg_bram_6_n_23,
      CASDINA(11) => bram_reg_bram_6_n_24,
      CASDINA(10) => bram_reg_bram_6_n_25,
      CASDINA(9) => bram_reg_bram_6_n_26,
      CASDINA(8) => bram_reg_bram_6_n_27,
      CASDINA(7) => bram_reg_bram_6_n_28,
      CASDINA(6) => bram_reg_bram_6_n_29,
      CASDINA(5) => bram_reg_bram_6_n_30,
      CASDINA(4) => bram_reg_bram_6_n_31,
      CASDINA(3) => bram_reg_bram_6_n_32,
      CASDINA(2) => bram_reg_bram_6_n_33,
      CASDINA(1) => bram_reg_bram_6_n_34,
      CASDINA(0) => bram_reg_bram_6_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_6_n_134,
      CASDINPA(0) => bram_reg_bram_6_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => bram_reg_bram_7_i_1_n_0,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_7_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 16) => NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED(31 downto 16),
      DOUTADOUT(15 downto 0) => \^bram_dout\(15 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 2) => NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED(3 downto 2),
      DOUTPADOUTP(1 downto 0) => \^bram_dout\(17 downto 16),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => bram_reg_bram_7_i_2_n_0,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_7_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => bram_reg_bram_7_i_3_n_0,
      WEA(2) => bram_reg_bram_7_i_3_n_0,
      WEA(1) => bram_reg_bram_7_i_3_n_0,
      WEA(0) => bram_reg_bram_7_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
bram_reg_bram_7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => bram_reg_bram_7_i_1_n_0
    );
bram_reg_bram_7_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => bram_reg_bram_7_i_2_n_0
    );
bram_reg_bram_7_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bram_0_we,
      I1 => Q(12),
      I2 => Q(13),
      I3 => Q(11),
      O => bram_reg_bram_7_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \FILL_FSM_DOUT_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FILL_FSM_DOUT_reg[17]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[16]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[15]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[14]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[13]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[12]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[11]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[10]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[9]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[8]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[7]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[6]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[5]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[4]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[3]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[2]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[1]\ : in STD_LOGIC;
    \FILL_FSM_DOUT_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    bram_reg_bram_7_0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_1_we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_0 : entity is "BRAM_hist";
end histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_0;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_0 is
  signal \^bram_dout\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \bram_reg_bram_0_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_0_i_2__0_n_0\ : STD_LOGIC;
  signal bram_reg_bram_0_n_134 : STD_LOGIC;
  signal bram_reg_bram_0_n_135 : STD_LOGIC;
  signal bram_reg_bram_0_n_20 : STD_LOGIC;
  signal bram_reg_bram_0_n_21 : STD_LOGIC;
  signal bram_reg_bram_0_n_22 : STD_LOGIC;
  signal bram_reg_bram_0_n_23 : STD_LOGIC;
  signal bram_reg_bram_0_n_24 : STD_LOGIC;
  signal bram_reg_bram_0_n_25 : STD_LOGIC;
  signal bram_reg_bram_0_n_26 : STD_LOGIC;
  signal bram_reg_bram_0_n_27 : STD_LOGIC;
  signal bram_reg_bram_0_n_28 : STD_LOGIC;
  signal bram_reg_bram_0_n_29 : STD_LOGIC;
  signal bram_reg_bram_0_n_30 : STD_LOGIC;
  signal bram_reg_bram_0_n_31 : STD_LOGIC;
  signal bram_reg_bram_0_n_32 : STD_LOGIC;
  signal bram_reg_bram_0_n_33 : STD_LOGIC;
  signal bram_reg_bram_0_n_34 : STD_LOGIC;
  signal bram_reg_bram_0_n_35 : STD_LOGIC;
  signal \bram_reg_bram_1_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_1_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_1_i_3__0_n_0\ : STD_LOGIC;
  signal bram_reg_bram_1_n_134 : STD_LOGIC;
  signal bram_reg_bram_1_n_135 : STD_LOGIC;
  signal bram_reg_bram_1_n_20 : STD_LOGIC;
  signal bram_reg_bram_1_n_21 : STD_LOGIC;
  signal bram_reg_bram_1_n_22 : STD_LOGIC;
  signal bram_reg_bram_1_n_23 : STD_LOGIC;
  signal bram_reg_bram_1_n_24 : STD_LOGIC;
  signal bram_reg_bram_1_n_25 : STD_LOGIC;
  signal bram_reg_bram_1_n_26 : STD_LOGIC;
  signal bram_reg_bram_1_n_27 : STD_LOGIC;
  signal bram_reg_bram_1_n_28 : STD_LOGIC;
  signal bram_reg_bram_1_n_29 : STD_LOGIC;
  signal bram_reg_bram_1_n_30 : STD_LOGIC;
  signal bram_reg_bram_1_n_31 : STD_LOGIC;
  signal bram_reg_bram_1_n_32 : STD_LOGIC;
  signal bram_reg_bram_1_n_33 : STD_LOGIC;
  signal bram_reg_bram_1_n_34 : STD_LOGIC;
  signal bram_reg_bram_1_n_35 : STD_LOGIC;
  signal \bram_reg_bram_2_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_2_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_2_i_3__0_n_0\ : STD_LOGIC;
  signal bram_reg_bram_2_n_134 : STD_LOGIC;
  signal bram_reg_bram_2_n_135 : STD_LOGIC;
  signal bram_reg_bram_2_n_20 : STD_LOGIC;
  signal bram_reg_bram_2_n_21 : STD_LOGIC;
  signal bram_reg_bram_2_n_22 : STD_LOGIC;
  signal bram_reg_bram_2_n_23 : STD_LOGIC;
  signal bram_reg_bram_2_n_24 : STD_LOGIC;
  signal bram_reg_bram_2_n_25 : STD_LOGIC;
  signal bram_reg_bram_2_n_26 : STD_LOGIC;
  signal bram_reg_bram_2_n_27 : STD_LOGIC;
  signal bram_reg_bram_2_n_28 : STD_LOGIC;
  signal bram_reg_bram_2_n_29 : STD_LOGIC;
  signal bram_reg_bram_2_n_30 : STD_LOGIC;
  signal bram_reg_bram_2_n_31 : STD_LOGIC;
  signal bram_reg_bram_2_n_32 : STD_LOGIC;
  signal bram_reg_bram_2_n_33 : STD_LOGIC;
  signal bram_reg_bram_2_n_34 : STD_LOGIC;
  signal bram_reg_bram_2_n_35 : STD_LOGIC;
  signal \bram_reg_bram_3_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_3_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_3_i_3__0_n_0\ : STD_LOGIC;
  signal bram_reg_bram_3_n_134 : STD_LOGIC;
  signal bram_reg_bram_3_n_135 : STD_LOGIC;
  signal bram_reg_bram_3_n_20 : STD_LOGIC;
  signal bram_reg_bram_3_n_21 : STD_LOGIC;
  signal bram_reg_bram_3_n_22 : STD_LOGIC;
  signal bram_reg_bram_3_n_23 : STD_LOGIC;
  signal bram_reg_bram_3_n_24 : STD_LOGIC;
  signal bram_reg_bram_3_n_25 : STD_LOGIC;
  signal bram_reg_bram_3_n_26 : STD_LOGIC;
  signal bram_reg_bram_3_n_27 : STD_LOGIC;
  signal bram_reg_bram_3_n_28 : STD_LOGIC;
  signal bram_reg_bram_3_n_29 : STD_LOGIC;
  signal bram_reg_bram_3_n_30 : STD_LOGIC;
  signal bram_reg_bram_3_n_31 : STD_LOGIC;
  signal bram_reg_bram_3_n_32 : STD_LOGIC;
  signal bram_reg_bram_3_n_33 : STD_LOGIC;
  signal bram_reg_bram_3_n_34 : STD_LOGIC;
  signal bram_reg_bram_3_n_35 : STD_LOGIC;
  signal \bram_reg_bram_4_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_4_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_4_i_3__0_n_0\ : STD_LOGIC;
  signal bram_reg_bram_4_n_134 : STD_LOGIC;
  signal bram_reg_bram_4_n_135 : STD_LOGIC;
  signal bram_reg_bram_4_n_20 : STD_LOGIC;
  signal bram_reg_bram_4_n_21 : STD_LOGIC;
  signal bram_reg_bram_4_n_22 : STD_LOGIC;
  signal bram_reg_bram_4_n_23 : STD_LOGIC;
  signal bram_reg_bram_4_n_24 : STD_LOGIC;
  signal bram_reg_bram_4_n_25 : STD_LOGIC;
  signal bram_reg_bram_4_n_26 : STD_LOGIC;
  signal bram_reg_bram_4_n_27 : STD_LOGIC;
  signal bram_reg_bram_4_n_28 : STD_LOGIC;
  signal bram_reg_bram_4_n_29 : STD_LOGIC;
  signal bram_reg_bram_4_n_30 : STD_LOGIC;
  signal bram_reg_bram_4_n_31 : STD_LOGIC;
  signal bram_reg_bram_4_n_32 : STD_LOGIC;
  signal bram_reg_bram_4_n_33 : STD_LOGIC;
  signal bram_reg_bram_4_n_34 : STD_LOGIC;
  signal bram_reg_bram_4_n_35 : STD_LOGIC;
  signal \bram_reg_bram_5_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_5_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_5_i_3__0_n_0\ : STD_LOGIC;
  signal bram_reg_bram_5_n_134 : STD_LOGIC;
  signal bram_reg_bram_5_n_135 : STD_LOGIC;
  signal bram_reg_bram_5_n_20 : STD_LOGIC;
  signal bram_reg_bram_5_n_21 : STD_LOGIC;
  signal bram_reg_bram_5_n_22 : STD_LOGIC;
  signal bram_reg_bram_5_n_23 : STD_LOGIC;
  signal bram_reg_bram_5_n_24 : STD_LOGIC;
  signal bram_reg_bram_5_n_25 : STD_LOGIC;
  signal bram_reg_bram_5_n_26 : STD_LOGIC;
  signal bram_reg_bram_5_n_27 : STD_LOGIC;
  signal bram_reg_bram_5_n_28 : STD_LOGIC;
  signal bram_reg_bram_5_n_29 : STD_LOGIC;
  signal bram_reg_bram_5_n_30 : STD_LOGIC;
  signal bram_reg_bram_5_n_31 : STD_LOGIC;
  signal bram_reg_bram_5_n_32 : STD_LOGIC;
  signal bram_reg_bram_5_n_33 : STD_LOGIC;
  signal bram_reg_bram_5_n_34 : STD_LOGIC;
  signal bram_reg_bram_5_n_35 : STD_LOGIC;
  signal \bram_reg_bram_6_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_6_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_6_i_3__0_n_0\ : STD_LOGIC;
  signal bram_reg_bram_6_n_134 : STD_LOGIC;
  signal bram_reg_bram_6_n_135 : STD_LOGIC;
  signal bram_reg_bram_6_n_20 : STD_LOGIC;
  signal bram_reg_bram_6_n_21 : STD_LOGIC;
  signal bram_reg_bram_6_n_22 : STD_LOGIC;
  signal bram_reg_bram_6_n_23 : STD_LOGIC;
  signal bram_reg_bram_6_n_24 : STD_LOGIC;
  signal bram_reg_bram_6_n_25 : STD_LOGIC;
  signal bram_reg_bram_6_n_26 : STD_LOGIC;
  signal bram_reg_bram_6_n_27 : STD_LOGIC;
  signal bram_reg_bram_6_n_28 : STD_LOGIC;
  signal bram_reg_bram_6_n_29 : STD_LOGIC;
  signal bram_reg_bram_6_n_30 : STD_LOGIC;
  signal bram_reg_bram_6_n_31 : STD_LOGIC;
  signal bram_reg_bram_6_n_32 : STD_LOGIC;
  signal bram_reg_bram_6_n_33 : STD_LOGIC;
  signal bram_reg_bram_6_n_34 : STD_LOGIC;
  signal bram_reg_bram_6_n_35 : STD_LOGIC;
  signal \bram_reg_bram_7_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_7_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_7_i_3__0_n_0\ : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_0 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_0 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bram_reg_bram_0 : label is 294912;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_reg_bram_0 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of bram_reg_bram_0 : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of bram_reg_bram_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bram_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bram_reg_bram_0 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of bram_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bram_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bram_reg_bram_0 : label is 17;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_reg_bram_0_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bram_reg_bram_0_i_2__0\ : label is "soft_lutpair11";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_1 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_1 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_1 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_1 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_1 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_1 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_1 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_1 : label is 2048;
  attribute ram_addr_end of bram_reg_bram_1 : label is 4095;
  attribute ram_offset of bram_reg_bram_1 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_1 : label is 0;
  attribute ram_slice_end of bram_reg_bram_1 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_1_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bram_reg_bram_1_i_2__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bram_reg_bram_1_i_3__0\ : label is "soft_lutpair11";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_2 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_2 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_2 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_2 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_2 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_2 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_2 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_2 : label is 4096;
  attribute ram_addr_end of bram_reg_bram_2 : label is 6143;
  attribute ram_offset of bram_reg_bram_2 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_2 : label is 0;
  attribute ram_slice_end of bram_reg_bram_2 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_2_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bram_reg_bram_2_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bram_reg_bram_2_i_3__0\ : label is "soft_lutpair12";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_3 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_3 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_3 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_3 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_3 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_3 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_3 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_3 : label is 6144;
  attribute ram_addr_end of bram_reg_bram_3 : label is 8191;
  attribute ram_offset of bram_reg_bram_3 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_3 : label is 0;
  attribute ram_slice_end of bram_reg_bram_3 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_3_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bram_reg_bram_3_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bram_reg_bram_3_i_3__0\ : label is "soft_lutpair12";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_4 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_4 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_4 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_4 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_4 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_4 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_4 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_4 : label is 8192;
  attribute ram_addr_end of bram_reg_bram_4 : label is 10239;
  attribute ram_offset of bram_reg_bram_4 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_4 : label is 0;
  attribute ram_slice_end of bram_reg_bram_4 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_4_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bram_reg_bram_4_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bram_reg_bram_4_i_3__0\ : label is "soft_lutpair13";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_5 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_5 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_5 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_5 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_5 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_5 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_5 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_5 : label is 10240;
  attribute ram_addr_end of bram_reg_bram_5 : label is 12287;
  attribute ram_offset of bram_reg_bram_5 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_5 : label is 0;
  attribute ram_slice_end of bram_reg_bram_5 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_5_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bram_reg_bram_5_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bram_reg_bram_5_i_3__0\ : label is "soft_lutpair13";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_6 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_6 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_6 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_6 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_6 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_6 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_6 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_6 : label is 12288;
  attribute ram_addr_end of bram_reg_bram_6 : label is 14335;
  attribute ram_offset of bram_reg_bram_6 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_6 : label is 0;
  attribute ram_slice_end of bram_reg_bram_6 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_6_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bram_reg_bram_6_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bram_reg_bram_6_i_3__0\ : label is "soft_lutpair14";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_7 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_7 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_7 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_7 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_1/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_7 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_7 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_7 : label is 14336;
  attribute ram_addr_end of bram_reg_bram_7 : label is 16383;
  attribute ram_offset of bram_reg_bram_7 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_7 : label is 0;
  attribute ram_slice_end of bram_reg_bram_7 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_7_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bram_reg_bram_7_i_3__0\ : label is "soft_lutpair14";
begin
  bram_dout(17 downto 0) <= \^bram_dout\(17 downto 0);
\FILL_FSM_DOUT_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(0),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[0]_0\,
      O => D(0)
    );
\FILL_FSM_DOUT_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(10),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[10]\,
      O => D(10)
    );
\FILL_FSM_DOUT_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(11),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[11]\,
      O => D(11)
    );
\FILL_FSM_DOUT_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(12),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[12]\,
      O => D(12)
    );
\FILL_FSM_DOUT_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(13),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[13]\,
      O => D(13)
    );
\FILL_FSM_DOUT_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(14),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[14]\,
      O => D(14)
    );
\FILL_FSM_DOUT_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(15),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[15]\,
      O => D(15)
    );
\FILL_FSM_DOUT_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(16),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[16]\,
      O => D(16)
    );
\FILL_FSM_DOUT_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(17),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[17]\,
      O => D(17)
    );
\FILL_FSM_DOUT_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(1),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[1]\,
      O => D(1)
    );
\FILL_FSM_DOUT_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(2),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[2]\,
      O => D(2)
    );
\FILL_FSM_DOUT_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(3),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[3]\,
      O => D(3)
    );
\FILL_FSM_DOUT_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(4),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[4]\,
      O => D(4)
    );
\FILL_FSM_DOUT_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(5),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[5]\,
      O => D(5)
    );
\FILL_FSM_DOUT_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(6),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[6]\,
      O => D(6)
    );
\FILL_FSM_DOUT_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(7),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[7]\,
      O => D(7)
    );
\FILL_FSM_DOUT_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(8),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[8]\,
      O => D(8)
    );
\FILL_FSM_DOUT_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FILL_FSM_DOUT_reg[0]\(1),
      I1 => \^bram_dout\(9),
      I2 => \FILL_FSM_DOUT_reg[0]\(0),
      I3 => \FILL_FSM_DOUT_reg[9]\,
      O => D(9)
    );
bram_reg_bram_0: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_0_n_20,
      CASDOUTA(14) => bram_reg_bram_0_n_21,
      CASDOUTA(13) => bram_reg_bram_0_n_22,
      CASDOUTA(12) => bram_reg_bram_0_n_23,
      CASDOUTA(11) => bram_reg_bram_0_n_24,
      CASDOUTA(10) => bram_reg_bram_0_n_25,
      CASDOUTA(9) => bram_reg_bram_0_n_26,
      CASDOUTA(8) => bram_reg_bram_0_n_27,
      CASDOUTA(7) => bram_reg_bram_0_n_28,
      CASDOUTA(6) => bram_reg_bram_0_n_29,
      CASDOUTA(5) => bram_reg_bram_0_n_30,
      CASDOUTA(4) => bram_reg_bram_0_n_31,
      CASDOUTA(3) => bram_reg_bram_0_n_32,
      CASDOUTA(2) => bram_reg_bram_0_n_33,
      CASDOUTA(1) => bram_reg_bram_0_n_34,
      CASDOUTA(0) => bram_reg_bram_0_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_0_n_134,
      CASDOUTPA(0) => bram_reg_bram_0_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_0_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_0_i_1__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_0_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_0_i_2__0_n_0\,
      WEA(2) => \bram_reg_bram_0_i_2__0_n_0\,
      WEA(1) => \bram_reg_bram_0_i_2__0_n_0\,
      WEA(0) => \bram_reg_bram_0_i_2__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_0_i_1__0_n_0\
    );
\bram_reg_bram_0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_0_i_2__0_n_0\
    );
bram_reg_bram_1: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_0_n_20,
      CASDINA(14) => bram_reg_bram_0_n_21,
      CASDINA(13) => bram_reg_bram_0_n_22,
      CASDINA(12) => bram_reg_bram_0_n_23,
      CASDINA(11) => bram_reg_bram_0_n_24,
      CASDINA(10) => bram_reg_bram_0_n_25,
      CASDINA(9) => bram_reg_bram_0_n_26,
      CASDINA(8) => bram_reg_bram_0_n_27,
      CASDINA(7) => bram_reg_bram_0_n_28,
      CASDINA(6) => bram_reg_bram_0_n_29,
      CASDINA(5) => bram_reg_bram_0_n_30,
      CASDINA(4) => bram_reg_bram_0_n_31,
      CASDINA(3) => bram_reg_bram_0_n_32,
      CASDINA(2) => bram_reg_bram_0_n_33,
      CASDINA(1) => bram_reg_bram_0_n_34,
      CASDINA(0) => bram_reg_bram_0_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_0_n_134,
      CASDINPA(0) => bram_reg_bram_0_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_1_i_1__0_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_1_n_20,
      CASDOUTA(14) => bram_reg_bram_1_n_21,
      CASDOUTA(13) => bram_reg_bram_1_n_22,
      CASDOUTA(12) => bram_reg_bram_1_n_23,
      CASDOUTA(11) => bram_reg_bram_1_n_24,
      CASDOUTA(10) => bram_reg_bram_1_n_25,
      CASDOUTA(9) => bram_reg_bram_1_n_26,
      CASDOUTA(8) => bram_reg_bram_1_n_27,
      CASDOUTA(7) => bram_reg_bram_1_n_28,
      CASDOUTA(6) => bram_reg_bram_1_n_29,
      CASDOUTA(5) => bram_reg_bram_1_n_30,
      CASDOUTA(4) => bram_reg_bram_1_n_31,
      CASDOUTA(3) => bram_reg_bram_1_n_32,
      CASDOUTA(2) => bram_reg_bram_1_n_33,
      CASDOUTA(1) => bram_reg_bram_1_n_34,
      CASDOUTA(0) => bram_reg_bram_1_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_1_n_134,
      CASDOUTPA(0) => bram_reg_bram_1_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_1_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_1_i_2__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_1_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_1_i_3__0_n_0\,
      WEA(2) => \bram_reg_bram_1_i_3__0_n_0\,
      WEA(1) => \bram_reg_bram_1_i_3__0_n_0\,
      WEA(0) => \bram_reg_bram_1_i_3__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_1_i_1__0_n_0\
    );
\bram_reg_bram_1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_1_i_2__0_n_0\
    );
\bram_reg_bram_1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(12),
      I2 => Q(13),
      I3 => Q(11),
      O => \bram_reg_bram_1_i_3__0_n_0\
    );
bram_reg_bram_2: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_1_n_20,
      CASDINA(14) => bram_reg_bram_1_n_21,
      CASDINA(13) => bram_reg_bram_1_n_22,
      CASDINA(12) => bram_reg_bram_1_n_23,
      CASDINA(11) => bram_reg_bram_1_n_24,
      CASDINA(10) => bram_reg_bram_1_n_25,
      CASDINA(9) => bram_reg_bram_1_n_26,
      CASDINA(8) => bram_reg_bram_1_n_27,
      CASDINA(7) => bram_reg_bram_1_n_28,
      CASDINA(6) => bram_reg_bram_1_n_29,
      CASDINA(5) => bram_reg_bram_1_n_30,
      CASDINA(4) => bram_reg_bram_1_n_31,
      CASDINA(3) => bram_reg_bram_1_n_32,
      CASDINA(2) => bram_reg_bram_1_n_33,
      CASDINA(1) => bram_reg_bram_1_n_34,
      CASDINA(0) => bram_reg_bram_1_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_1_n_134,
      CASDINPA(0) => bram_reg_bram_1_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_2_i_1__0_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_2_n_20,
      CASDOUTA(14) => bram_reg_bram_2_n_21,
      CASDOUTA(13) => bram_reg_bram_2_n_22,
      CASDOUTA(12) => bram_reg_bram_2_n_23,
      CASDOUTA(11) => bram_reg_bram_2_n_24,
      CASDOUTA(10) => bram_reg_bram_2_n_25,
      CASDOUTA(9) => bram_reg_bram_2_n_26,
      CASDOUTA(8) => bram_reg_bram_2_n_27,
      CASDOUTA(7) => bram_reg_bram_2_n_28,
      CASDOUTA(6) => bram_reg_bram_2_n_29,
      CASDOUTA(5) => bram_reg_bram_2_n_30,
      CASDOUTA(4) => bram_reg_bram_2_n_31,
      CASDOUTA(3) => bram_reg_bram_2_n_32,
      CASDOUTA(2) => bram_reg_bram_2_n_33,
      CASDOUTA(1) => bram_reg_bram_2_n_34,
      CASDOUTA(0) => bram_reg_bram_2_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_2_n_134,
      CASDOUTPA(0) => bram_reg_bram_2_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_2_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_2_i_2__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_2_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_2_i_3__0_n_0\,
      WEA(2) => \bram_reg_bram_2_i_3__0_n_0\,
      WEA(1) => \bram_reg_bram_2_i_3__0_n_0\,
      WEA(0) => \bram_reg_bram_2_i_3__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_2_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_2_i_1__0_n_0\
    );
\bram_reg_bram_2_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_2_i_2__0_n_0\
    );
\bram_reg_bram_2_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(11),
      I2 => Q(13),
      I3 => Q(12),
      O => \bram_reg_bram_2_i_3__0_n_0\
    );
bram_reg_bram_3: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_2_n_20,
      CASDINA(14) => bram_reg_bram_2_n_21,
      CASDINA(13) => bram_reg_bram_2_n_22,
      CASDINA(12) => bram_reg_bram_2_n_23,
      CASDINA(11) => bram_reg_bram_2_n_24,
      CASDINA(10) => bram_reg_bram_2_n_25,
      CASDINA(9) => bram_reg_bram_2_n_26,
      CASDINA(8) => bram_reg_bram_2_n_27,
      CASDINA(7) => bram_reg_bram_2_n_28,
      CASDINA(6) => bram_reg_bram_2_n_29,
      CASDINA(5) => bram_reg_bram_2_n_30,
      CASDINA(4) => bram_reg_bram_2_n_31,
      CASDINA(3) => bram_reg_bram_2_n_32,
      CASDINA(2) => bram_reg_bram_2_n_33,
      CASDINA(1) => bram_reg_bram_2_n_34,
      CASDINA(0) => bram_reg_bram_2_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_2_n_134,
      CASDINPA(0) => bram_reg_bram_2_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_3_i_1__0_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_3_n_20,
      CASDOUTA(14) => bram_reg_bram_3_n_21,
      CASDOUTA(13) => bram_reg_bram_3_n_22,
      CASDOUTA(12) => bram_reg_bram_3_n_23,
      CASDOUTA(11) => bram_reg_bram_3_n_24,
      CASDOUTA(10) => bram_reg_bram_3_n_25,
      CASDOUTA(9) => bram_reg_bram_3_n_26,
      CASDOUTA(8) => bram_reg_bram_3_n_27,
      CASDOUTA(7) => bram_reg_bram_3_n_28,
      CASDOUTA(6) => bram_reg_bram_3_n_29,
      CASDOUTA(5) => bram_reg_bram_3_n_30,
      CASDOUTA(4) => bram_reg_bram_3_n_31,
      CASDOUTA(3) => bram_reg_bram_3_n_32,
      CASDOUTA(2) => bram_reg_bram_3_n_33,
      CASDOUTA(1) => bram_reg_bram_3_n_34,
      CASDOUTA(0) => bram_reg_bram_3_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_3_n_134,
      CASDOUTPA(0) => bram_reg_bram_3_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_3_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_3_i_2__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_3_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_3_i_3__0_n_0\,
      WEA(2) => \bram_reg_bram_3_i_3__0_n_0\,
      WEA(1) => \bram_reg_bram_3_i_3__0_n_0\,
      WEA(0) => \bram_reg_bram_3_i_3__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_3_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => \bram_reg_bram_3_i_1__0_n_0\
    );
\bram_reg_bram_3_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_3_i_2__0_n_0\
    );
\bram_reg_bram_3_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_3_i_3__0_n_0\
    );
bram_reg_bram_4: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_3_n_20,
      CASDINA(14) => bram_reg_bram_3_n_21,
      CASDINA(13) => bram_reg_bram_3_n_22,
      CASDINA(12) => bram_reg_bram_3_n_23,
      CASDINA(11) => bram_reg_bram_3_n_24,
      CASDINA(10) => bram_reg_bram_3_n_25,
      CASDINA(9) => bram_reg_bram_3_n_26,
      CASDINA(8) => bram_reg_bram_3_n_27,
      CASDINA(7) => bram_reg_bram_3_n_28,
      CASDINA(6) => bram_reg_bram_3_n_29,
      CASDINA(5) => bram_reg_bram_3_n_30,
      CASDINA(4) => bram_reg_bram_3_n_31,
      CASDINA(3) => bram_reg_bram_3_n_32,
      CASDINA(2) => bram_reg_bram_3_n_33,
      CASDINA(1) => bram_reg_bram_3_n_34,
      CASDINA(0) => bram_reg_bram_3_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_3_n_134,
      CASDINPA(0) => bram_reg_bram_3_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_4_i_1__0_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_4_n_20,
      CASDOUTA(14) => bram_reg_bram_4_n_21,
      CASDOUTA(13) => bram_reg_bram_4_n_22,
      CASDOUTA(12) => bram_reg_bram_4_n_23,
      CASDOUTA(11) => bram_reg_bram_4_n_24,
      CASDOUTA(10) => bram_reg_bram_4_n_25,
      CASDOUTA(9) => bram_reg_bram_4_n_26,
      CASDOUTA(8) => bram_reg_bram_4_n_27,
      CASDOUTA(7) => bram_reg_bram_4_n_28,
      CASDOUTA(6) => bram_reg_bram_4_n_29,
      CASDOUTA(5) => bram_reg_bram_4_n_30,
      CASDOUTA(4) => bram_reg_bram_4_n_31,
      CASDOUTA(3) => bram_reg_bram_4_n_32,
      CASDOUTA(2) => bram_reg_bram_4_n_33,
      CASDOUTA(1) => bram_reg_bram_4_n_34,
      CASDOUTA(0) => bram_reg_bram_4_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_4_n_134,
      CASDOUTPA(0) => bram_reg_bram_4_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_4_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_4_i_2__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_4_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_4_i_3__0_n_0\,
      WEA(2) => \bram_reg_bram_4_i_3__0_n_0\,
      WEA(1) => \bram_reg_bram_4_i_3__0_n_0\,
      WEA(0) => \bram_reg_bram_4_i_3__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => \bram_reg_bram_4_i_1__0_n_0\
    );
\bram_reg_bram_4_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_4_i_2__0_n_0\
    );
\bram_reg_bram_4_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_4_i_3__0_n_0\
    );
bram_reg_bram_5: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_4_n_20,
      CASDINA(14) => bram_reg_bram_4_n_21,
      CASDINA(13) => bram_reg_bram_4_n_22,
      CASDINA(12) => bram_reg_bram_4_n_23,
      CASDINA(11) => bram_reg_bram_4_n_24,
      CASDINA(10) => bram_reg_bram_4_n_25,
      CASDINA(9) => bram_reg_bram_4_n_26,
      CASDINA(8) => bram_reg_bram_4_n_27,
      CASDINA(7) => bram_reg_bram_4_n_28,
      CASDINA(6) => bram_reg_bram_4_n_29,
      CASDINA(5) => bram_reg_bram_4_n_30,
      CASDINA(4) => bram_reg_bram_4_n_31,
      CASDINA(3) => bram_reg_bram_4_n_32,
      CASDINA(2) => bram_reg_bram_4_n_33,
      CASDINA(1) => bram_reg_bram_4_n_34,
      CASDINA(0) => bram_reg_bram_4_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_4_n_134,
      CASDINPA(0) => bram_reg_bram_4_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_5_i_1__0_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_5_n_20,
      CASDOUTA(14) => bram_reg_bram_5_n_21,
      CASDOUTA(13) => bram_reg_bram_5_n_22,
      CASDOUTA(12) => bram_reg_bram_5_n_23,
      CASDOUTA(11) => bram_reg_bram_5_n_24,
      CASDOUTA(10) => bram_reg_bram_5_n_25,
      CASDOUTA(9) => bram_reg_bram_5_n_26,
      CASDOUTA(8) => bram_reg_bram_5_n_27,
      CASDOUTA(7) => bram_reg_bram_5_n_28,
      CASDOUTA(6) => bram_reg_bram_5_n_29,
      CASDOUTA(5) => bram_reg_bram_5_n_30,
      CASDOUTA(4) => bram_reg_bram_5_n_31,
      CASDOUTA(3) => bram_reg_bram_5_n_32,
      CASDOUTA(2) => bram_reg_bram_5_n_33,
      CASDOUTA(1) => bram_reg_bram_5_n_34,
      CASDOUTA(0) => bram_reg_bram_5_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_5_n_134,
      CASDOUTPA(0) => bram_reg_bram_5_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_5_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_5_i_2__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_5_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_5_i_3__0_n_0\,
      WEA(2) => \bram_reg_bram_5_i_3__0_n_0\,
      WEA(1) => \bram_reg_bram_5_i_3__0_n_0\,
      WEA(0) => \bram_reg_bram_5_i_3__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_5_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_5_i_1__0_n_0\
    );
\bram_reg_bram_5_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_5_i_2__0_n_0\
    );
\bram_reg_bram_5_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(11),
      I2 => Q(13),
      I3 => Q(12),
      O => \bram_reg_bram_5_i_3__0_n_0\
    );
bram_reg_bram_6: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_5_n_20,
      CASDINA(14) => bram_reg_bram_5_n_21,
      CASDINA(13) => bram_reg_bram_5_n_22,
      CASDINA(12) => bram_reg_bram_5_n_23,
      CASDINA(11) => bram_reg_bram_5_n_24,
      CASDINA(10) => bram_reg_bram_5_n_25,
      CASDINA(9) => bram_reg_bram_5_n_26,
      CASDINA(8) => bram_reg_bram_5_n_27,
      CASDINA(7) => bram_reg_bram_5_n_28,
      CASDINA(6) => bram_reg_bram_5_n_29,
      CASDINA(5) => bram_reg_bram_5_n_30,
      CASDINA(4) => bram_reg_bram_5_n_31,
      CASDINA(3) => bram_reg_bram_5_n_32,
      CASDINA(2) => bram_reg_bram_5_n_33,
      CASDINA(1) => bram_reg_bram_5_n_34,
      CASDINA(0) => bram_reg_bram_5_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_5_n_134,
      CASDINPA(0) => bram_reg_bram_5_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_6_i_1__0_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_6_n_20,
      CASDOUTA(14) => bram_reg_bram_6_n_21,
      CASDOUTA(13) => bram_reg_bram_6_n_22,
      CASDOUTA(12) => bram_reg_bram_6_n_23,
      CASDOUTA(11) => bram_reg_bram_6_n_24,
      CASDOUTA(10) => bram_reg_bram_6_n_25,
      CASDOUTA(9) => bram_reg_bram_6_n_26,
      CASDOUTA(8) => bram_reg_bram_6_n_27,
      CASDOUTA(7) => bram_reg_bram_6_n_28,
      CASDOUTA(6) => bram_reg_bram_6_n_29,
      CASDOUTA(5) => bram_reg_bram_6_n_30,
      CASDOUTA(4) => bram_reg_bram_6_n_31,
      CASDOUTA(3) => bram_reg_bram_6_n_32,
      CASDOUTA(2) => bram_reg_bram_6_n_33,
      CASDOUTA(1) => bram_reg_bram_6_n_34,
      CASDOUTA(0) => bram_reg_bram_6_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_6_n_134,
      CASDOUTPA(0) => bram_reg_bram_6_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_6_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_6_i_2__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_6_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_6_i_3__0_n_0\,
      WEA(2) => \bram_reg_bram_6_i_3__0_n_0\,
      WEA(1) => \bram_reg_bram_6_i_3__0_n_0\,
      WEA(0) => \bram_reg_bram_6_i_3__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_6_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => \bram_reg_bram_6_i_1__0_n_0\
    );
\bram_reg_bram_6_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_6_i_2__0_n_0\
    );
\bram_reg_bram_6_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_6_i_3__0_n_0\
    );
bram_reg_bram_7: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_6_n_20,
      CASDINA(14) => bram_reg_bram_6_n_21,
      CASDINA(13) => bram_reg_bram_6_n_22,
      CASDINA(12) => bram_reg_bram_6_n_23,
      CASDINA(11) => bram_reg_bram_6_n_24,
      CASDINA(10) => bram_reg_bram_6_n_25,
      CASDINA(9) => bram_reg_bram_6_n_26,
      CASDINA(8) => bram_reg_bram_6_n_27,
      CASDINA(7) => bram_reg_bram_6_n_28,
      CASDINA(6) => bram_reg_bram_6_n_29,
      CASDINA(5) => bram_reg_bram_6_n_30,
      CASDINA(4) => bram_reg_bram_6_n_31,
      CASDINA(3) => bram_reg_bram_6_n_32,
      CASDINA(2) => bram_reg_bram_6_n_33,
      CASDINA(1) => bram_reg_bram_6_n_34,
      CASDINA(0) => bram_reg_bram_6_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_6_n_134,
      CASDINPA(0) => bram_reg_bram_6_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_7_i_1__0_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_7_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_0(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_0(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 16) => NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED(31 downto 16),
      DOUTADOUT(15 downto 0) => \^bram_dout\(15 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 2) => NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED(3 downto 2),
      DOUTPADOUTP(1 downto 0) => \^bram_dout\(17 downto 16),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_7_i_2__0_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_7_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_7_i_3__0_n_0\,
      WEA(2) => \bram_reg_bram_7_i_3__0_n_0\,
      WEA(1) => \bram_reg_bram_7_i_3__0_n_0\,
      WEA(0) => \bram_reg_bram_7_i_3__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_7_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_7_i_1__0_n_0\
    );
\bram_reg_bram_7_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_7_i_2__0_n_0\
    );
\bram_reg_bram_7_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bram_1_we,
      I1 => Q(12),
      I2 => Q(13),
      I3 => Q(11),
      O => \bram_reg_bram_7_i_3__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_1 is
  port (
    bram_reg_bram_7_0 : out STD_LOGIC;
    bram_reg_bram_7_1 : out STD_LOGIC;
    bram_reg_bram_7_2 : out STD_LOGIC;
    bram_reg_bram_7_3 : out STD_LOGIC;
    bram_reg_bram_7_4 : out STD_LOGIC;
    bram_reg_bram_7_5 : out STD_LOGIC;
    bram_reg_bram_7_6 : out STD_LOGIC;
    bram_reg_bram_7_7 : out STD_LOGIC;
    bram_reg_bram_7_8 : out STD_LOGIC;
    bram_reg_bram_7_9 : out STD_LOGIC;
    bram_reg_bram_7_10 : out STD_LOGIC;
    bram_reg_bram_7_11 : out STD_LOGIC;
    bram_reg_bram_7_12 : out STD_LOGIC;
    bram_reg_bram_7_13 : out STD_LOGIC;
    bram_reg_bram_7_14 : out STD_LOGIC;
    bram_reg_bram_7_15 : out STD_LOGIC;
    bram_reg_bram_7_16 : out STD_LOGIC;
    bram_reg_bram_7_17 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \READ_FSM_DOUT_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_dout : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \READ_FSM_DOUT_reg[17]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[16]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[15]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[14]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[13]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[12]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[11]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[10]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[9]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[8]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[7]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[6]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[5]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[4]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[3]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[2]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[1]\ : in STD_LOGIC;
    \READ_FSM_DOUT_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    bram_reg_bram_7_18 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_2_we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_1 : entity is "BRAM_hist";
end histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_1;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_1 is
  signal bram_2_dout : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \bram_reg_bram_0_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_0_i_2__1_n_0\ : STD_LOGIC;
  signal bram_reg_bram_0_n_134 : STD_LOGIC;
  signal bram_reg_bram_0_n_135 : STD_LOGIC;
  signal bram_reg_bram_0_n_20 : STD_LOGIC;
  signal bram_reg_bram_0_n_21 : STD_LOGIC;
  signal bram_reg_bram_0_n_22 : STD_LOGIC;
  signal bram_reg_bram_0_n_23 : STD_LOGIC;
  signal bram_reg_bram_0_n_24 : STD_LOGIC;
  signal bram_reg_bram_0_n_25 : STD_LOGIC;
  signal bram_reg_bram_0_n_26 : STD_LOGIC;
  signal bram_reg_bram_0_n_27 : STD_LOGIC;
  signal bram_reg_bram_0_n_28 : STD_LOGIC;
  signal bram_reg_bram_0_n_29 : STD_LOGIC;
  signal bram_reg_bram_0_n_30 : STD_LOGIC;
  signal bram_reg_bram_0_n_31 : STD_LOGIC;
  signal bram_reg_bram_0_n_32 : STD_LOGIC;
  signal bram_reg_bram_0_n_33 : STD_LOGIC;
  signal bram_reg_bram_0_n_34 : STD_LOGIC;
  signal bram_reg_bram_0_n_35 : STD_LOGIC;
  signal \bram_reg_bram_1_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_1_i_2__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_1_i_3__1_n_0\ : STD_LOGIC;
  signal bram_reg_bram_1_n_134 : STD_LOGIC;
  signal bram_reg_bram_1_n_135 : STD_LOGIC;
  signal bram_reg_bram_1_n_20 : STD_LOGIC;
  signal bram_reg_bram_1_n_21 : STD_LOGIC;
  signal bram_reg_bram_1_n_22 : STD_LOGIC;
  signal bram_reg_bram_1_n_23 : STD_LOGIC;
  signal bram_reg_bram_1_n_24 : STD_LOGIC;
  signal bram_reg_bram_1_n_25 : STD_LOGIC;
  signal bram_reg_bram_1_n_26 : STD_LOGIC;
  signal bram_reg_bram_1_n_27 : STD_LOGIC;
  signal bram_reg_bram_1_n_28 : STD_LOGIC;
  signal bram_reg_bram_1_n_29 : STD_LOGIC;
  signal bram_reg_bram_1_n_30 : STD_LOGIC;
  signal bram_reg_bram_1_n_31 : STD_LOGIC;
  signal bram_reg_bram_1_n_32 : STD_LOGIC;
  signal bram_reg_bram_1_n_33 : STD_LOGIC;
  signal bram_reg_bram_1_n_34 : STD_LOGIC;
  signal bram_reg_bram_1_n_35 : STD_LOGIC;
  signal \bram_reg_bram_2_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_2_i_2__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_2_i_3__1_n_0\ : STD_LOGIC;
  signal bram_reg_bram_2_n_134 : STD_LOGIC;
  signal bram_reg_bram_2_n_135 : STD_LOGIC;
  signal bram_reg_bram_2_n_20 : STD_LOGIC;
  signal bram_reg_bram_2_n_21 : STD_LOGIC;
  signal bram_reg_bram_2_n_22 : STD_LOGIC;
  signal bram_reg_bram_2_n_23 : STD_LOGIC;
  signal bram_reg_bram_2_n_24 : STD_LOGIC;
  signal bram_reg_bram_2_n_25 : STD_LOGIC;
  signal bram_reg_bram_2_n_26 : STD_LOGIC;
  signal bram_reg_bram_2_n_27 : STD_LOGIC;
  signal bram_reg_bram_2_n_28 : STD_LOGIC;
  signal bram_reg_bram_2_n_29 : STD_LOGIC;
  signal bram_reg_bram_2_n_30 : STD_LOGIC;
  signal bram_reg_bram_2_n_31 : STD_LOGIC;
  signal bram_reg_bram_2_n_32 : STD_LOGIC;
  signal bram_reg_bram_2_n_33 : STD_LOGIC;
  signal bram_reg_bram_2_n_34 : STD_LOGIC;
  signal bram_reg_bram_2_n_35 : STD_LOGIC;
  signal \bram_reg_bram_3_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_3_i_2__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_3_i_3__1_n_0\ : STD_LOGIC;
  signal bram_reg_bram_3_n_134 : STD_LOGIC;
  signal bram_reg_bram_3_n_135 : STD_LOGIC;
  signal bram_reg_bram_3_n_20 : STD_LOGIC;
  signal bram_reg_bram_3_n_21 : STD_LOGIC;
  signal bram_reg_bram_3_n_22 : STD_LOGIC;
  signal bram_reg_bram_3_n_23 : STD_LOGIC;
  signal bram_reg_bram_3_n_24 : STD_LOGIC;
  signal bram_reg_bram_3_n_25 : STD_LOGIC;
  signal bram_reg_bram_3_n_26 : STD_LOGIC;
  signal bram_reg_bram_3_n_27 : STD_LOGIC;
  signal bram_reg_bram_3_n_28 : STD_LOGIC;
  signal bram_reg_bram_3_n_29 : STD_LOGIC;
  signal bram_reg_bram_3_n_30 : STD_LOGIC;
  signal bram_reg_bram_3_n_31 : STD_LOGIC;
  signal bram_reg_bram_3_n_32 : STD_LOGIC;
  signal bram_reg_bram_3_n_33 : STD_LOGIC;
  signal bram_reg_bram_3_n_34 : STD_LOGIC;
  signal bram_reg_bram_3_n_35 : STD_LOGIC;
  signal \bram_reg_bram_4_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_4_i_2__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_4_i_3__1_n_0\ : STD_LOGIC;
  signal bram_reg_bram_4_n_134 : STD_LOGIC;
  signal bram_reg_bram_4_n_135 : STD_LOGIC;
  signal bram_reg_bram_4_n_20 : STD_LOGIC;
  signal bram_reg_bram_4_n_21 : STD_LOGIC;
  signal bram_reg_bram_4_n_22 : STD_LOGIC;
  signal bram_reg_bram_4_n_23 : STD_LOGIC;
  signal bram_reg_bram_4_n_24 : STD_LOGIC;
  signal bram_reg_bram_4_n_25 : STD_LOGIC;
  signal bram_reg_bram_4_n_26 : STD_LOGIC;
  signal bram_reg_bram_4_n_27 : STD_LOGIC;
  signal bram_reg_bram_4_n_28 : STD_LOGIC;
  signal bram_reg_bram_4_n_29 : STD_LOGIC;
  signal bram_reg_bram_4_n_30 : STD_LOGIC;
  signal bram_reg_bram_4_n_31 : STD_LOGIC;
  signal bram_reg_bram_4_n_32 : STD_LOGIC;
  signal bram_reg_bram_4_n_33 : STD_LOGIC;
  signal bram_reg_bram_4_n_34 : STD_LOGIC;
  signal bram_reg_bram_4_n_35 : STD_LOGIC;
  signal \bram_reg_bram_5_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_5_i_2__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_5_i_3__1_n_0\ : STD_LOGIC;
  signal bram_reg_bram_5_n_134 : STD_LOGIC;
  signal bram_reg_bram_5_n_135 : STD_LOGIC;
  signal bram_reg_bram_5_n_20 : STD_LOGIC;
  signal bram_reg_bram_5_n_21 : STD_LOGIC;
  signal bram_reg_bram_5_n_22 : STD_LOGIC;
  signal bram_reg_bram_5_n_23 : STD_LOGIC;
  signal bram_reg_bram_5_n_24 : STD_LOGIC;
  signal bram_reg_bram_5_n_25 : STD_LOGIC;
  signal bram_reg_bram_5_n_26 : STD_LOGIC;
  signal bram_reg_bram_5_n_27 : STD_LOGIC;
  signal bram_reg_bram_5_n_28 : STD_LOGIC;
  signal bram_reg_bram_5_n_29 : STD_LOGIC;
  signal bram_reg_bram_5_n_30 : STD_LOGIC;
  signal bram_reg_bram_5_n_31 : STD_LOGIC;
  signal bram_reg_bram_5_n_32 : STD_LOGIC;
  signal bram_reg_bram_5_n_33 : STD_LOGIC;
  signal bram_reg_bram_5_n_34 : STD_LOGIC;
  signal bram_reg_bram_5_n_35 : STD_LOGIC;
  signal \bram_reg_bram_6_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_6_i_2__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_6_i_3__1_n_0\ : STD_LOGIC;
  signal bram_reg_bram_6_n_134 : STD_LOGIC;
  signal bram_reg_bram_6_n_135 : STD_LOGIC;
  signal bram_reg_bram_6_n_20 : STD_LOGIC;
  signal bram_reg_bram_6_n_21 : STD_LOGIC;
  signal bram_reg_bram_6_n_22 : STD_LOGIC;
  signal bram_reg_bram_6_n_23 : STD_LOGIC;
  signal bram_reg_bram_6_n_24 : STD_LOGIC;
  signal bram_reg_bram_6_n_25 : STD_LOGIC;
  signal bram_reg_bram_6_n_26 : STD_LOGIC;
  signal bram_reg_bram_6_n_27 : STD_LOGIC;
  signal bram_reg_bram_6_n_28 : STD_LOGIC;
  signal bram_reg_bram_6_n_29 : STD_LOGIC;
  signal bram_reg_bram_6_n_30 : STD_LOGIC;
  signal bram_reg_bram_6_n_31 : STD_LOGIC;
  signal bram_reg_bram_6_n_32 : STD_LOGIC;
  signal bram_reg_bram_6_n_33 : STD_LOGIC;
  signal bram_reg_bram_6_n_34 : STD_LOGIC;
  signal bram_reg_bram_6_n_35 : STD_LOGIC;
  signal \bram_reg_bram_7_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_7_i_2__1_n_0\ : STD_LOGIC;
  signal \bram_reg_bram_7_i_3__1_n_0\ : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_0 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_0 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bram_reg_bram_0 : label is 294912;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_reg_bram_0 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of bram_reg_bram_0 : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of bram_reg_bram_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bram_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bram_reg_bram_0 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of bram_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bram_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bram_reg_bram_0 : label is 17;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_reg_bram_0_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bram_reg_bram_0_i_2__1\ : label is "soft_lutpair22";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_1 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_1 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_1 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_1 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_1 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_1 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_1 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_1 : label is 2048;
  attribute ram_addr_end of bram_reg_bram_1 : label is 4095;
  attribute ram_offset of bram_reg_bram_1 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_1 : label is 0;
  attribute ram_slice_end of bram_reg_bram_1 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_1_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_reg_bram_1_i_2__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_reg_bram_1_i_3__1\ : label is "soft_lutpair22";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_2 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_2 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_2 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_2 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_2 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_2 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_2 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_2 : label is 4096;
  attribute ram_addr_end of bram_reg_bram_2 : label is 6143;
  attribute ram_offset of bram_reg_bram_2 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_2 : label is 0;
  attribute ram_slice_end of bram_reg_bram_2 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_2_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bram_reg_bram_2_i_2__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bram_reg_bram_2_i_3__1\ : label is "soft_lutpair23";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_3 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_3 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_3 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_3 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_3 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_3 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_3 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_3 : label is 6144;
  attribute ram_addr_end of bram_reg_bram_3 : label is 8191;
  attribute ram_offset of bram_reg_bram_3 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_3 : label is 0;
  attribute ram_slice_end of bram_reg_bram_3 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_3_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bram_reg_bram_3_i_2__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bram_reg_bram_3_i_3__1\ : label is "soft_lutpair23";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_4 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_4 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_4 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_4 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_4 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_4 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_4 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_4 : label is 8192;
  attribute ram_addr_end of bram_reg_bram_4 : label is 10239;
  attribute ram_offset of bram_reg_bram_4 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_4 : label is 0;
  attribute ram_slice_end of bram_reg_bram_4 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_4_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bram_reg_bram_4_i_2__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bram_reg_bram_4_i_3__1\ : label is "soft_lutpair24";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_5 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_5 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_5 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_5 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_5 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_5 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_5 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_5 : label is 10240;
  attribute ram_addr_end of bram_reg_bram_5 : label is 12287;
  attribute ram_offset of bram_reg_bram_5 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_5 : label is 0;
  attribute ram_slice_end of bram_reg_bram_5 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_5_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bram_reg_bram_5_i_2__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bram_reg_bram_5_i_3__1\ : label is "soft_lutpair24";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_6 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_6 : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_6 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_6 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_6 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_6 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_6 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_6 : label is 12288;
  attribute ram_addr_end of bram_reg_bram_6 : label is 14335;
  attribute ram_offset of bram_reg_bram_6 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_6 : label is 0;
  attribute ram_slice_end of bram_reg_bram_6 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_6_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bram_reg_bram_6_i_2__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bram_reg_bram_6_i_3__1\ : label is "soft_lutpair25";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg_bram_7 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of bram_reg_bram_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of bram_reg_bram_7 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of bram_reg_bram_7 : label is 294912;
  attribute RTL_RAM_NAME of bram_reg_bram_7 : label is "histo_HISTOGRAM_ARBITER_FSM_0_0/inst/bram_2/bram_reg";
  attribute RTL_RAM_STYLE of bram_reg_bram_7 : label is "block";
  attribute RTL_RAM_TYPE of bram_reg_bram_7 : label is "RAM_SP";
  attribute ram_addr_begin of bram_reg_bram_7 : label is 14336;
  attribute ram_addr_end of bram_reg_bram_7 : label is 16383;
  attribute ram_offset of bram_reg_bram_7 : label is 0;
  attribute ram_slice_begin of bram_reg_bram_7 : label is 0;
  attribute ram_slice_end of bram_reg_bram_7 : label is 17;
  attribute SOFT_HLUTNM of \bram_reg_bram_7_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bram_reg_bram_7_i_3__1\ : label is "soft_lutpair25";
begin
\FILL_FSM_DOUT_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(0),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(0),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_17
    );
\FILL_FSM_DOUT_reg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(10),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(10),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_7
    );
\FILL_FSM_DOUT_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(11),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(11),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_6
    );
\FILL_FSM_DOUT_reg[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(12),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(12),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_5
    );
\FILL_FSM_DOUT_reg[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(13),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(13),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_4
    );
\FILL_FSM_DOUT_reg[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(14),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(14),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_3
    );
\FILL_FSM_DOUT_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(15),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(15),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_2
    );
\FILL_FSM_DOUT_reg[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(16),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(16),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_1
    );
\FILL_FSM_DOUT_reg[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(17),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(17),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_0
    );
\FILL_FSM_DOUT_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(1),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(1),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_16
    );
\FILL_FSM_DOUT_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(2),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(2),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_15
    );
\FILL_FSM_DOUT_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(3),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(3),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_14
    );
\FILL_FSM_DOUT_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(4),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(4),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_13
    );
\FILL_FSM_DOUT_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(5),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(5),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_12
    );
\FILL_FSM_DOUT_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(6),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(6),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_11
    );
\FILL_FSM_DOUT_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(7),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(7),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_10
    );
\FILL_FSM_DOUT_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(8),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(8),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_9
    );
\FILL_FSM_DOUT_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => bram_2_dout(9),
      I1 => \READ_FSM_DOUT_reg[0]\(2),
      I2 => bram_dout(9),
      I3 => \READ_FSM_DOUT_reg[0]\(1),
      O => bram_reg_bram_7_8
    );
\READ_FSM_DOUT_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(0),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[0]_0\,
      O => D(0)
    );
\READ_FSM_DOUT_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(10),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[10]\,
      O => D(10)
    );
\READ_FSM_DOUT_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(11),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[11]\,
      O => D(11)
    );
\READ_FSM_DOUT_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(12),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[12]\,
      O => D(12)
    );
\READ_FSM_DOUT_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(13),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[13]\,
      O => D(13)
    );
\READ_FSM_DOUT_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(14),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[14]\,
      O => D(14)
    );
\READ_FSM_DOUT_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(15),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[15]\,
      O => D(15)
    );
\READ_FSM_DOUT_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(16),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[16]\,
      O => D(16)
    );
\READ_FSM_DOUT_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(17),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[17]\,
      O => D(17)
    );
\READ_FSM_DOUT_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(1),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[1]\,
      O => D(1)
    );
\READ_FSM_DOUT_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(2),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[2]\,
      O => D(2)
    );
\READ_FSM_DOUT_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(3),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[3]\,
      O => D(3)
    );
\READ_FSM_DOUT_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(4),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[4]\,
      O => D(4)
    );
\READ_FSM_DOUT_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(5),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[5]\,
      O => D(5)
    );
\READ_FSM_DOUT_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(6),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[6]\,
      O => D(6)
    );
\READ_FSM_DOUT_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(7),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[7]\,
      O => D(7)
    );
\READ_FSM_DOUT_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(8),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[8]\,
      O => D(8)
    );
\READ_FSM_DOUT_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \READ_FSM_DOUT_reg[0]\(3),
      I1 => bram_2_dout(9),
      I2 => \READ_FSM_DOUT_reg[0]\(0),
      I3 => \READ_FSM_DOUT_reg[9]\,
      O => D(9)
    );
bram_reg_bram_0: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_0_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_0_n_20,
      CASDOUTA(14) => bram_reg_bram_0_n_21,
      CASDOUTA(13) => bram_reg_bram_0_n_22,
      CASDOUTA(12) => bram_reg_bram_0_n_23,
      CASDOUTA(11) => bram_reg_bram_0_n_24,
      CASDOUTA(10) => bram_reg_bram_0_n_25,
      CASDOUTA(9) => bram_reg_bram_0_n_26,
      CASDOUTA(8) => bram_reg_bram_0_n_27,
      CASDOUTA(7) => bram_reg_bram_0_n_28,
      CASDOUTA(6) => bram_reg_bram_0_n_29,
      CASDOUTA(5) => bram_reg_bram_0_n_30,
      CASDOUTA(4) => bram_reg_bram_0_n_31,
      CASDOUTA(3) => bram_reg_bram_0_n_32,
      CASDOUTA(2) => bram_reg_bram_0_n_33,
      CASDOUTA(1) => bram_reg_bram_0_n_34,
      CASDOUTA(0) => bram_reg_bram_0_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_0_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_0_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_0_n_134,
      CASDOUTPA(0) => bram_reg_bram_0_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_0_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_0_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_0_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_0_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_0_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_0_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_0_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_0_i_1__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_0_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_0_i_2__1_n_0\,
      WEA(2) => \bram_reg_bram_0_i_2__1_n_0\,
      WEA(1) => \bram_reg_bram_0_i_2__1_n_0\,
      WEA(0) => \bram_reg_bram_0_i_2__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_0_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_0_i_1__1_n_0\
    );
\bram_reg_bram_0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_0_i_2__1_n_0\
    );
bram_reg_bram_1: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_0_n_20,
      CASDINA(14) => bram_reg_bram_0_n_21,
      CASDINA(13) => bram_reg_bram_0_n_22,
      CASDINA(12) => bram_reg_bram_0_n_23,
      CASDINA(11) => bram_reg_bram_0_n_24,
      CASDINA(10) => bram_reg_bram_0_n_25,
      CASDINA(9) => bram_reg_bram_0_n_26,
      CASDINA(8) => bram_reg_bram_0_n_27,
      CASDINA(7) => bram_reg_bram_0_n_28,
      CASDINA(6) => bram_reg_bram_0_n_29,
      CASDINA(5) => bram_reg_bram_0_n_30,
      CASDINA(4) => bram_reg_bram_0_n_31,
      CASDINA(3) => bram_reg_bram_0_n_32,
      CASDINA(2) => bram_reg_bram_0_n_33,
      CASDINA(1) => bram_reg_bram_0_n_34,
      CASDINA(0) => bram_reg_bram_0_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_0_n_134,
      CASDINPA(0) => bram_reg_bram_0_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_1_i_1__1_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_1_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_1_n_20,
      CASDOUTA(14) => bram_reg_bram_1_n_21,
      CASDOUTA(13) => bram_reg_bram_1_n_22,
      CASDOUTA(12) => bram_reg_bram_1_n_23,
      CASDOUTA(11) => bram_reg_bram_1_n_24,
      CASDOUTA(10) => bram_reg_bram_1_n_25,
      CASDOUTA(9) => bram_reg_bram_1_n_26,
      CASDOUTA(8) => bram_reg_bram_1_n_27,
      CASDOUTA(7) => bram_reg_bram_1_n_28,
      CASDOUTA(6) => bram_reg_bram_1_n_29,
      CASDOUTA(5) => bram_reg_bram_1_n_30,
      CASDOUTA(4) => bram_reg_bram_1_n_31,
      CASDOUTA(3) => bram_reg_bram_1_n_32,
      CASDOUTA(2) => bram_reg_bram_1_n_33,
      CASDOUTA(1) => bram_reg_bram_1_n_34,
      CASDOUTA(0) => bram_reg_bram_1_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_1_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_1_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_1_n_134,
      CASDOUTPA(0) => bram_reg_bram_1_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_1_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_1_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_1_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_1_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_1_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_1_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_1_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_1_i_2__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_1_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_1_i_3__1_n_0\,
      WEA(2) => \bram_reg_bram_1_i_3__1_n_0\,
      WEA(1) => \bram_reg_bram_1_i_3__1_n_0\,
      WEA(0) => \bram_reg_bram_1_i_3__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_1_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_1_i_1__1_n_0\
    );
\bram_reg_bram_1_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_1_i_2__1_n_0\
    );
\bram_reg_bram_1_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(12),
      I2 => Q(13),
      I3 => Q(11),
      O => \bram_reg_bram_1_i_3__1_n_0\
    );
bram_reg_bram_2: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_1_n_20,
      CASDINA(14) => bram_reg_bram_1_n_21,
      CASDINA(13) => bram_reg_bram_1_n_22,
      CASDINA(12) => bram_reg_bram_1_n_23,
      CASDINA(11) => bram_reg_bram_1_n_24,
      CASDINA(10) => bram_reg_bram_1_n_25,
      CASDINA(9) => bram_reg_bram_1_n_26,
      CASDINA(8) => bram_reg_bram_1_n_27,
      CASDINA(7) => bram_reg_bram_1_n_28,
      CASDINA(6) => bram_reg_bram_1_n_29,
      CASDINA(5) => bram_reg_bram_1_n_30,
      CASDINA(4) => bram_reg_bram_1_n_31,
      CASDINA(3) => bram_reg_bram_1_n_32,
      CASDINA(2) => bram_reg_bram_1_n_33,
      CASDINA(1) => bram_reg_bram_1_n_34,
      CASDINA(0) => bram_reg_bram_1_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_1_n_134,
      CASDINPA(0) => bram_reg_bram_1_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_2_i_1__1_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_2_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_2_n_20,
      CASDOUTA(14) => bram_reg_bram_2_n_21,
      CASDOUTA(13) => bram_reg_bram_2_n_22,
      CASDOUTA(12) => bram_reg_bram_2_n_23,
      CASDOUTA(11) => bram_reg_bram_2_n_24,
      CASDOUTA(10) => bram_reg_bram_2_n_25,
      CASDOUTA(9) => bram_reg_bram_2_n_26,
      CASDOUTA(8) => bram_reg_bram_2_n_27,
      CASDOUTA(7) => bram_reg_bram_2_n_28,
      CASDOUTA(6) => bram_reg_bram_2_n_29,
      CASDOUTA(5) => bram_reg_bram_2_n_30,
      CASDOUTA(4) => bram_reg_bram_2_n_31,
      CASDOUTA(3) => bram_reg_bram_2_n_32,
      CASDOUTA(2) => bram_reg_bram_2_n_33,
      CASDOUTA(1) => bram_reg_bram_2_n_34,
      CASDOUTA(0) => bram_reg_bram_2_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_2_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_2_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_2_n_134,
      CASDOUTPA(0) => bram_reg_bram_2_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_2_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_2_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_2_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_2_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_2_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_2_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_2_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_2_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_2_i_2__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_2_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_2_i_3__1_n_0\,
      WEA(2) => \bram_reg_bram_2_i_3__1_n_0\,
      WEA(1) => \bram_reg_bram_2_i_3__1_n_0\,
      WEA(0) => \bram_reg_bram_2_i_3__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_2_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_2_i_1__1_n_0\
    );
\bram_reg_bram_2_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_2_i_2__1_n_0\
    );
\bram_reg_bram_2_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(11),
      I2 => Q(13),
      I3 => Q(12),
      O => \bram_reg_bram_2_i_3__1_n_0\
    );
bram_reg_bram_3: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_2_n_20,
      CASDINA(14) => bram_reg_bram_2_n_21,
      CASDINA(13) => bram_reg_bram_2_n_22,
      CASDINA(12) => bram_reg_bram_2_n_23,
      CASDINA(11) => bram_reg_bram_2_n_24,
      CASDINA(10) => bram_reg_bram_2_n_25,
      CASDINA(9) => bram_reg_bram_2_n_26,
      CASDINA(8) => bram_reg_bram_2_n_27,
      CASDINA(7) => bram_reg_bram_2_n_28,
      CASDINA(6) => bram_reg_bram_2_n_29,
      CASDINA(5) => bram_reg_bram_2_n_30,
      CASDINA(4) => bram_reg_bram_2_n_31,
      CASDINA(3) => bram_reg_bram_2_n_32,
      CASDINA(2) => bram_reg_bram_2_n_33,
      CASDINA(1) => bram_reg_bram_2_n_34,
      CASDINA(0) => bram_reg_bram_2_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_2_n_134,
      CASDINPA(0) => bram_reg_bram_2_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_3_i_1__1_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_3_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_3_n_20,
      CASDOUTA(14) => bram_reg_bram_3_n_21,
      CASDOUTA(13) => bram_reg_bram_3_n_22,
      CASDOUTA(12) => bram_reg_bram_3_n_23,
      CASDOUTA(11) => bram_reg_bram_3_n_24,
      CASDOUTA(10) => bram_reg_bram_3_n_25,
      CASDOUTA(9) => bram_reg_bram_3_n_26,
      CASDOUTA(8) => bram_reg_bram_3_n_27,
      CASDOUTA(7) => bram_reg_bram_3_n_28,
      CASDOUTA(6) => bram_reg_bram_3_n_29,
      CASDOUTA(5) => bram_reg_bram_3_n_30,
      CASDOUTA(4) => bram_reg_bram_3_n_31,
      CASDOUTA(3) => bram_reg_bram_3_n_32,
      CASDOUTA(2) => bram_reg_bram_3_n_33,
      CASDOUTA(1) => bram_reg_bram_3_n_34,
      CASDOUTA(0) => bram_reg_bram_3_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_3_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_3_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_3_n_134,
      CASDOUTPA(0) => bram_reg_bram_3_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_3_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_3_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_3_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_3_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_3_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_3_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_3_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_3_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_3_i_2__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_3_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_3_i_3__1_n_0\,
      WEA(2) => \bram_reg_bram_3_i_3__1_n_0\,
      WEA(1) => \bram_reg_bram_3_i_3__1_n_0\,
      WEA(0) => \bram_reg_bram_3_i_3__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_3_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => \bram_reg_bram_3_i_1__1_n_0\
    );
\bram_reg_bram_3_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_3_i_2__1_n_0\
    );
\bram_reg_bram_3_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_3_i_3__1_n_0\
    );
bram_reg_bram_4: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_3_n_20,
      CASDINA(14) => bram_reg_bram_3_n_21,
      CASDINA(13) => bram_reg_bram_3_n_22,
      CASDINA(12) => bram_reg_bram_3_n_23,
      CASDINA(11) => bram_reg_bram_3_n_24,
      CASDINA(10) => bram_reg_bram_3_n_25,
      CASDINA(9) => bram_reg_bram_3_n_26,
      CASDINA(8) => bram_reg_bram_3_n_27,
      CASDINA(7) => bram_reg_bram_3_n_28,
      CASDINA(6) => bram_reg_bram_3_n_29,
      CASDINA(5) => bram_reg_bram_3_n_30,
      CASDINA(4) => bram_reg_bram_3_n_31,
      CASDINA(3) => bram_reg_bram_3_n_32,
      CASDINA(2) => bram_reg_bram_3_n_33,
      CASDINA(1) => bram_reg_bram_3_n_34,
      CASDINA(0) => bram_reg_bram_3_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_3_n_134,
      CASDINPA(0) => bram_reg_bram_3_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_4_i_1__1_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_4_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_4_n_20,
      CASDOUTA(14) => bram_reg_bram_4_n_21,
      CASDOUTA(13) => bram_reg_bram_4_n_22,
      CASDOUTA(12) => bram_reg_bram_4_n_23,
      CASDOUTA(11) => bram_reg_bram_4_n_24,
      CASDOUTA(10) => bram_reg_bram_4_n_25,
      CASDOUTA(9) => bram_reg_bram_4_n_26,
      CASDOUTA(8) => bram_reg_bram_4_n_27,
      CASDOUTA(7) => bram_reg_bram_4_n_28,
      CASDOUTA(6) => bram_reg_bram_4_n_29,
      CASDOUTA(5) => bram_reg_bram_4_n_30,
      CASDOUTA(4) => bram_reg_bram_4_n_31,
      CASDOUTA(3) => bram_reg_bram_4_n_32,
      CASDOUTA(2) => bram_reg_bram_4_n_33,
      CASDOUTA(1) => bram_reg_bram_4_n_34,
      CASDOUTA(0) => bram_reg_bram_4_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_4_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_4_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_4_n_134,
      CASDOUTPA(0) => bram_reg_bram_4_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_4_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_4_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_4_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_4_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_4_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_4_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_4_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_4_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_4_i_2__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_4_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_4_i_3__1_n_0\,
      WEA(2) => \bram_reg_bram_4_i_3__1_n_0\,
      WEA(1) => \bram_reg_bram_4_i_3__1_n_0\,
      WEA(0) => \bram_reg_bram_4_i_3__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_4_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => \bram_reg_bram_4_i_1__1_n_0\
    );
\bram_reg_bram_4_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_4_i_2__1_n_0\
    );
\bram_reg_bram_4_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_4_i_3__1_n_0\
    );
bram_reg_bram_5: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_4_n_20,
      CASDINA(14) => bram_reg_bram_4_n_21,
      CASDINA(13) => bram_reg_bram_4_n_22,
      CASDINA(12) => bram_reg_bram_4_n_23,
      CASDINA(11) => bram_reg_bram_4_n_24,
      CASDINA(10) => bram_reg_bram_4_n_25,
      CASDINA(9) => bram_reg_bram_4_n_26,
      CASDINA(8) => bram_reg_bram_4_n_27,
      CASDINA(7) => bram_reg_bram_4_n_28,
      CASDINA(6) => bram_reg_bram_4_n_29,
      CASDINA(5) => bram_reg_bram_4_n_30,
      CASDINA(4) => bram_reg_bram_4_n_31,
      CASDINA(3) => bram_reg_bram_4_n_32,
      CASDINA(2) => bram_reg_bram_4_n_33,
      CASDINA(1) => bram_reg_bram_4_n_34,
      CASDINA(0) => bram_reg_bram_4_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_4_n_134,
      CASDINPA(0) => bram_reg_bram_4_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_5_i_1__1_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_5_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_5_n_20,
      CASDOUTA(14) => bram_reg_bram_5_n_21,
      CASDOUTA(13) => bram_reg_bram_5_n_22,
      CASDOUTA(12) => bram_reg_bram_5_n_23,
      CASDOUTA(11) => bram_reg_bram_5_n_24,
      CASDOUTA(10) => bram_reg_bram_5_n_25,
      CASDOUTA(9) => bram_reg_bram_5_n_26,
      CASDOUTA(8) => bram_reg_bram_5_n_27,
      CASDOUTA(7) => bram_reg_bram_5_n_28,
      CASDOUTA(6) => bram_reg_bram_5_n_29,
      CASDOUTA(5) => bram_reg_bram_5_n_30,
      CASDOUTA(4) => bram_reg_bram_5_n_31,
      CASDOUTA(3) => bram_reg_bram_5_n_32,
      CASDOUTA(2) => bram_reg_bram_5_n_33,
      CASDOUTA(1) => bram_reg_bram_5_n_34,
      CASDOUTA(0) => bram_reg_bram_5_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_5_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_5_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_5_n_134,
      CASDOUTPA(0) => bram_reg_bram_5_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_5_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_5_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_5_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_5_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_5_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_5_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_5_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_5_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_5_i_2__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_5_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_5_i_3__1_n_0\,
      WEA(2) => \bram_reg_bram_5_i_3__1_n_0\,
      WEA(1) => \bram_reg_bram_5_i_3__1_n_0\,
      WEA(0) => \bram_reg_bram_5_i_3__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_5_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_5_i_1__1_n_0\
    );
\bram_reg_bram_5_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_5_i_2__1_n_0\
    );
\bram_reg_bram_5_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(11),
      I2 => Q(13),
      I3 => Q(12),
      O => \bram_reg_bram_5_i_3__1_n_0\
    );
bram_reg_bram_6: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_5_n_20,
      CASDINA(14) => bram_reg_bram_5_n_21,
      CASDINA(13) => bram_reg_bram_5_n_22,
      CASDINA(12) => bram_reg_bram_5_n_23,
      CASDINA(11) => bram_reg_bram_5_n_24,
      CASDINA(10) => bram_reg_bram_5_n_25,
      CASDINA(9) => bram_reg_bram_5_n_26,
      CASDINA(8) => bram_reg_bram_5_n_27,
      CASDINA(7) => bram_reg_bram_5_n_28,
      CASDINA(6) => bram_reg_bram_5_n_29,
      CASDINA(5) => bram_reg_bram_5_n_30,
      CASDINA(4) => bram_reg_bram_5_n_31,
      CASDINA(3) => bram_reg_bram_5_n_32,
      CASDINA(2) => bram_reg_bram_5_n_33,
      CASDINA(1) => bram_reg_bram_5_n_34,
      CASDINA(0) => bram_reg_bram_5_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_5_n_134,
      CASDINPA(0) => bram_reg_bram_5_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_6_i_1__1_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 16) => NLW_bram_reg_bram_6_CASDOUTA_UNCONNECTED(31 downto 16),
      CASDOUTA(15) => bram_reg_bram_6_n_20,
      CASDOUTA(14) => bram_reg_bram_6_n_21,
      CASDOUTA(13) => bram_reg_bram_6_n_22,
      CASDOUTA(12) => bram_reg_bram_6_n_23,
      CASDOUTA(11) => bram_reg_bram_6_n_24,
      CASDOUTA(10) => bram_reg_bram_6_n_25,
      CASDOUTA(9) => bram_reg_bram_6_n_26,
      CASDOUTA(8) => bram_reg_bram_6_n_27,
      CASDOUTA(7) => bram_reg_bram_6_n_28,
      CASDOUTA(6) => bram_reg_bram_6_n_29,
      CASDOUTA(5) => bram_reg_bram_6_n_30,
      CASDOUTA(4) => bram_reg_bram_6_n_31,
      CASDOUTA(3) => bram_reg_bram_6_n_32,
      CASDOUTA(2) => bram_reg_bram_6_n_33,
      CASDOUTA(1) => bram_reg_bram_6_n_34,
      CASDOUTA(0) => bram_reg_bram_6_n_35,
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_6_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 2) => NLW_bram_reg_bram_6_CASDOUTPA_UNCONNECTED(3 downto 2),
      CASDOUTPA(1) => bram_reg_bram_6_n_134,
      CASDOUTPA(0) => bram_reg_bram_6_n_135,
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_6_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_6_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_6_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_6_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => NLW_bram_reg_bram_6_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_6_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_bram_reg_bram_6_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_6_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_6_i_2__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_6_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_6_i_3__1_n_0\,
      WEA(2) => \bram_reg_bram_6_i_3__1_n_0\,
      WEA(1) => \bram_reg_bram_6_i_3__1_n_0\,
      WEA(0) => \bram_reg_bram_6_i_3__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_6_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(13),
      O => \bram_reg_bram_6_i_1__1_n_0\
    );
\bram_reg_bram_6_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      O => \bram_reg_bram_6_i_2__1_n_0\
    );
\bram_reg_bram_6_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(11),
      I2 => Q(12),
      I3 => Q(13),
      O => \bram_reg_bram_6_i_3__1_n_0\
    );
bram_reg_bram_7: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 16) => B"0000000000000000",
      CASDINA(15) => bram_reg_bram_6_n_20,
      CASDINA(14) => bram_reg_bram_6_n_21,
      CASDINA(13) => bram_reg_bram_6_n_22,
      CASDINA(12) => bram_reg_bram_6_n_23,
      CASDINA(11) => bram_reg_bram_6_n_24,
      CASDINA(10) => bram_reg_bram_6_n_25,
      CASDINA(9) => bram_reg_bram_6_n_26,
      CASDINA(8) => bram_reg_bram_6_n_27,
      CASDINA(7) => bram_reg_bram_6_n_28,
      CASDINA(6) => bram_reg_bram_6_n_29,
      CASDINA(5) => bram_reg_bram_6_n_30,
      CASDINA(4) => bram_reg_bram_6_n_31,
      CASDINA(3) => bram_reg_bram_6_n_32,
      CASDINA(2) => bram_reg_bram_6_n_33,
      CASDINA(1) => bram_reg_bram_6_n_34,
      CASDINA(0) => bram_reg_bram_6_n_35,
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 2) => B"00",
      CASDINPA(1) => bram_reg_bram_6_n_134,
      CASDINPA(0) => bram_reg_bram_6_n_135,
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => \bram_reg_bram_7_i_1__1_n_0\,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_bram_reg_bram_7_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_bram_reg_bram_7_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_bram_reg_bram_7_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_bram_reg_bram_7_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_bram_reg_bram_7_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_bram_reg_bram_7_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_bram_reg_bram_7_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => bram_reg_bram_7_18(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => bram_reg_bram_7_18(17 downto 16),
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 16) => NLW_bram_reg_bram_7_DOUTADOUT_UNCONNECTED(31 downto 16),
      DOUTADOUT(15 downto 0) => bram_2_dout(15 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_bram_reg_bram_7_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 2) => NLW_bram_reg_bram_7_DOUTPADOUTP_UNCONNECTED(3 downto 2),
      DOUTPADOUTP(1 downto 0) => bram_2_dout(17 downto 16),
      DOUTPBDOUTP(3 downto 0) => NLW_bram_reg_bram_7_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_bram_reg_bram_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \bram_reg_bram_7_i_2__1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_bram_reg_bram_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_bram_reg_bram_7_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \bram_reg_bram_7_i_3__1_n_0\,
      WEA(2) => \bram_reg_bram_7_i_3__1_n_0\,
      WEA(1) => \bram_reg_bram_7_i_3__1_n_0\,
      WEA(0) => \bram_reg_bram_7_i_3__1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\bram_reg_bram_7_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      O => \bram_reg_bram_7_i_1__1_n_0\
    );
\bram_reg_bram_7_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      O => \bram_reg_bram_7_i_2__1_n_0\
    );
\bram_reg_bram_7_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bram_2_we,
      I1 => Q(12),
      I2 => Q(13),
      I3 => Q(11),
      O => \bram_reg_bram_7_i_3__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0_CLEARING_FSM is
  port (
    CLEAR_FSM_WE : out STD_LOGIC;
    CLEAR_IDLE_FLAG : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \bram_1_we__0\ : out STD_LOGIC;
    \bram_2_we__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \FSM_onehot_state_r_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_1\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_2\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_3\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_4\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_5\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_6\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_7\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_8\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_9\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_10\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_11\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_12\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_13\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    \state_n0_carry__0_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    pixel_done : in STD_LOGIC;
    \bram_0_addr_reg[0]_i_1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FILL_FSM_WE : in STD_LOGIC;
    \bram_0_addr_reg[13]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \bram_0_addr_reg[13]_i_1_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_HISTOGRAM_ARBITER_FSM_0_0_CLEARING_FSM : entity is "CLEARING_FSM";
end histo_HISTOGRAM_ARBITER_FSM_0_0_CLEARING_FSM;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0_CLEARING_FSM is
  signal \^clear_fsm_we\ : STD_LOGIC;
  signal \^clear_idle_flag\ : STD_LOGIC;
  signal \FSM_onehot_state_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \IDLE_FLAG_r_i_1__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \bram_0_addr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \bram_0_addr_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal bram_addr_r : STD_LOGIC;
  signal \bram_addr_r[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_3__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_r[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_r[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[9]_i_2__0_n_0\ : STD_LOGIC;
  signal bram_we_n : STD_LOGIC;
  signal \bram_we_n__0\ : STD_LOGIC;
  signal bram_we_n_reg_i_1_n_0 : STD_LOGIC;
  signal \state_n0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state_n0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state_n0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state_n0_carry__0_n_5\ : STD_LOGIC;
  signal \state_n0_carry__0_n_6\ : STD_LOGIC;
  signal \state_n0_carry__0_n_7\ : STD_LOGIC;
  signal state_n0_carry_i_10_n_0 : STD_LOGIC;
  signal state_n0_carry_i_11_n_0 : STD_LOGIC;
  signal state_n0_carry_i_12_n_0 : STD_LOGIC;
  signal state_n0_carry_i_13_n_0 : STD_LOGIC;
  signal state_n0_carry_i_14_n_0 : STD_LOGIC;
  signal state_n0_carry_i_15_n_0 : STD_LOGIC;
  signal state_n0_carry_i_16_n_0 : STD_LOGIC;
  signal state_n0_carry_i_1_n_0 : STD_LOGIC;
  signal state_n0_carry_i_2_n_0 : STD_LOGIC;
  signal state_n0_carry_i_3_n_0 : STD_LOGIC;
  signal state_n0_carry_i_4_n_0 : STD_LOGIC;
  signal state_n0_carry_i_5_n_0 : STD_LOGIC;
  signal state_n0_carry_i_6_n_0 : STD_LOGIC;
  signal state_n0_carry_i_7_n_0 : STD_LOGIC;
  signal state_n0_carry_i_8_n_0 : STD_LOGIC;
  signal state_n0_carry_i_9_n_0 : STD_LOGIC;
  signal state_n0_carry_n_0 : STD_LOGIC;
  signal state_n0_carry_n_1 : STD_LOGIC;
  signal state_n0_carry_n_2 : STD_LOGIC;
  signal state_n0_carry_n_3 : STD_LOGIC;
  signal state_n0_carry_n_4 : STD_LOGIC;
  signal state_n0_carry_n_5 : STD_LOGIC;
  signal state_n0_carry_n_6 : STD_LOGIC;
  signal state_n0_carry_n_7 : STD_LOGIC;
  signal \state_n__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal state_r : STD_LOGIC;
  signal \state_r__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_state_n0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_state_n0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_state_n0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_r[2]_i_1__0\ : label is "soft_lutpair40";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[0]\ : label is "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[1]\ : label is "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[2]\ : label is "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[3]\ : label is "IDLE:0001,IDLE2:0010,IDLE3:0100,CLEAR:1000,";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[0]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[10]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[11]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[12]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[13]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[1]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[2]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[3]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[4]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[5]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[6]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[7]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[8]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bram_0_addr_reg[9]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[0]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[10]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[11]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[12]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[13]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[1]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[2]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[3]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[4]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[5]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[6]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[7]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[8]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[9]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bram_addr_r[0]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bram_addr_r[10]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bram_addr_r[10]_i_2__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bram_addr_r[11]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bram_addr_r[12]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bram_addr_r[1]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bram_addr_r[2]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bram_addr_r[4]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bram_addr_r[4]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bram_addr_r[5]_i_2__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bram_addr_r[6]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bram_addr_r[7]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bram_addr_r[9]_i_2__0\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of bram_we_n_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of bram_we_n_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of state_n0_carry_i_15 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of state_n0_carry_i_16 : label is "soft_lutpair33";
begin
  CLEAR_FSM_WE <= \^clear_fsm_we\;
  CLEAR_IDLE_FLAG <= \^clear_idle_flag\;
  Q(13 downto 0) <= \^q\(13 downto 0);
\FSM_onehot_state_r[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \state_r__0\(1),
      O => \state_n__0\(2)
    );
\FSM_onehot_state_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA888888AA080808"
    )
        port map (
      I0 => en,
      I1 => pixel_done,
      I2 => \FSM_onehot_state_r[3]_i_2_n_0\,
      I3 => \state_n0_carry__0_n_5\,
      I4 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I5 => \state_r__0\(2),
      O => state_r
    );
\FSM_onehot_state_r[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_r__0\(1),
      I1 => \state_r__0\(0),
      O => \FSM_onehot_state_r[3]_i_2_n_0\
    );
\FSM_onehot_state_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => state_r,
      D => '0',
      Q => \state_r__0\(0),
      S => SR(0)
    );
\FSM_onehot_state_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_r,
      D => \state_r__0\(0),
      Q => \state_r__0\(1),
      R => SR(0)
    );
\FSM_onehot_state_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_r,
      D => \state_n__0\(2),
      Q => \state_r__0\(2),
      R => SR(0)
    );
\FSM_onehot_state_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_r,
      D => \state_r__0\(2),
      Q => \FSM_onehot_state_r_reg_n_0_[3]\,
      R => SR(0)
    );
\IDLE_FLAG_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FAA008000"
    )
        port map (
      I0 => en,
      I1 => pixel_done,
      I2 => \state_r__0\(2),
      I3 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I4 => \state_n0_carry__0_n_5\,
      I5 => \^clear_idle_flag\,
      O => \IDLE_FLAG_r_i_1__0_n_0\
    );
IDLE_FLAG_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \IDLE_FLAG_r_i_1__0_n_0\,
      Q => \^clear_idle_flag\,
      S => SR(0)
    );
\bram_0_addr_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(0),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(0)
    );
\bram_0_addr_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(0),
      I2 => \bram_0_addr_reg[13]_i_1_0\(0),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[0]_i_2_n_0\
    );
\bram_0_addr_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[10]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(10),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(10)
    );
\bram_0_addr_reg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(10),
      I2 => \bram_0_addr_reg[13]_i_1_0\(10),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[10]_i_2_n_0\
    );
\bram_0_addr_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[11]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(11),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(11)
    );
\bram_0_addr_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(11),
      I2 => \bram_0_addr_reg[13]_i_1_0\(11),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[11]_i_2_n_0\
    );
\bram_0_addr_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[12]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(12),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(12)
    );
\bram_0_addr_reg[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(12),
      I2 => \bram_0_addr_reg[13]_i_1_0\(12),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[12]_i_2_n_0\
    );
\bram_0_addr_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[13]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(13),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(13)
    );
\bram_0_addr_reg[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(13),
      I2 => \bram_0_addr_reg[13]_i_1_0\(13),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[13]_i_2_n_0\
    );
\bram_0_addr_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[1]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(1),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(1)
    );
\bram_0_addr_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(1),
      I2 => \bram_0_addr_reg[13]_i_1_0\(1),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[1]_i_2_n_0\
    );
\bram_0_addr_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[2]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(2),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(2)
    );
\bram_0_addr_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(2),
      I2 => \bram_0_addr_reg[13]_i_1_0\(2),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[2]_i_2_n_0\
    );
\bram_0_addr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[3]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(3),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(3)
    );
\bram_0_addr_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(3),
      I2 => \bram_0_addr_reg[13]_i_1_0\(3),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[3]_i_2_n_0\
    );
\bram_0_addr_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[4]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(4),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(4)
    );
\bram_0_addr_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(4),
      I2 => \bram_0_addr_reg[13]_i_1_0\(4),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[4]_i_2_n_0\
    );
\bram_0_addr_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[5]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(5),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(5)
    );
\bram_0_addr_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(5),
      I2 => \bram_0_addr_reg[13]_i_1_0\(5),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[5]_i_2_n_0\
    );
\bram_0_addr_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[6]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(6),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(6)
    );
\bram_0_addr_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(6),
      I2 => \bram_0_addr_reg[13]_i_1_0\(6),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[6]_i_2_n_0\
    );
\bram_0_addr_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[7]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(7),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(7)
    );
\bram_0_addr_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(7),
      I2 => \bram_0_addr_reg[13]_i_1_0\(7),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[7]_i_2_n_0\
    );
\bram_0_addr_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[8]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(8),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(8)
    );
\bram_0_addr_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(8),
      I2 => \bram_0_addr_reg[13]_i_1_0\(8),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[8]_i_2_n_0\
    );
\bram_0_addr_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \bram_0_addr_reg[9]_i_2_n_0\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[13]\(9),
      I3 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => D(9)
    );
\bram_0_addr_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(3),
      I1 => \^q\(9),
      I2 => \bram_0_addr_reg[13]_i_1_0\(9),
      I3 => \bram_0_addr_reg[0]_i_1_0\(2),
      O => \bram_0_addr_reg[9]_i_2_n_0\
    );
\bram_1_addr_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(0),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(0),
      O => \FSM_onehot_state_r_reg[2]_13\
    );
\bram_1_addr_reg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(10),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(10),
      O => \FSM_onehot_state_r_reg[2]_3\
    );
\bram_1_addr_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(11),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(11),
      O => \FSM_onehot_state_r_reg[2]_2\
    );
\bram_1_addr_reg[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(12),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(12),
      O => \FSM_onehot_state_r_reg[2]_1\
    );
\bram_1_addr_reg[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(13),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(13),
      O => \FSM_onehot_state_r_reg[2]_0\
    );
\bram_1_addr_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(1),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(1),
      O => \FSM_onehot_state_r_reg[2]_12\
    );
\bram_1_addr_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(2),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(2),
      O => \FSM_onehot_state_r_reg[2]_11\
    );
\bram_1_addr_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(3),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(3),
      O => \FSM_onehot_state_r_reg[2]_10\
    );
\bram_1_addr_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(4),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(4),
      O => \FSM_onehot_state_r_reg[2]_9\
    );
\bram_1_addr_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(5),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(5),
      O => \FSM_onehot_state_r_reg[2]_8\
    );
\bram_1_addr_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(6),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(6),
      O => \FSM_onehot_state_r_reg[2]_7\
    );
\bram_1_addr_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(7),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(7),
      O => \FSM_onehot_state_r_reg[2]_6\
    );
\bram_1_addr_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(8),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(8),
      O => \FSM_onehot_state_r_reg[2]_5\
    );
\bram_1_addr_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \bram_0_addr_reg[0]_i_1_0\(2),
      I1 => \^q\(9),
      I2 => \bram_0_addr_reg[0]_i_1_0\(1),
      I3 => \bram_0_addr_reg[13]_i_1_0\(9),
      O => \FSM_onehot_state_r_reg[2]_4\
    );
bram_1_we_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^clear_fsm_we\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(2),
      I2 => \bram_0_addr_reg[0]_i_1_0\(3),
      I3 => FILL_FSM_WE,
      I4 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => \bram_1_we__0\
    );
bram_2_we_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^clear_fsm_we\,
      I1 => \bram_0_addr_reg[0]_i_1_0\(1),
      I2 => \bram_0_addr_reg[0]_i_1_0\(2),
      I3 => FILL_FSM_WE,
      I4 => \bram_0_addr_reg[0]_i_1_0\(0),
      O => \bram_2_we__0\
    );
\bram_addr_r[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_n0_carry__0_n_5\,
      I1 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I2 => \^q\(0),
      O => \bram_addr_r[0]_i_1__0_n_0\
    );
\bram_addr_r[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(10),
      I2 => \bram_addr_r[10]_i_2__0_n_0\,
      I3 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[10]_i_1__0_n_0\
    );
\bram_addr_r[10]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \bram_addr_r[8]_i_2_n_0\,
      I3 => \^q\(7),
      I4 => \^q\(9),
      O => \bram_addr_r[10]_i_2__0_n_0\
    );
\bram_addr_r[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(11),
      I2 => \bram_addr_r[13]_i_3__0_n_0\,
      I3 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[11]_i_1__0_n_0\
    );
\bram_addr_r[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008288"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(12),
      I2 => \bram_addr_r[13]_i_3__0_n_0\,
      I3 => \^q\(11),
      I4 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[12]_i_1__0_n_0\
    );
\bram_addr_r[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I2 => pixel_done,
      I3 => \state_r__0\(0),
      O => bram_addr_r
    );
\bram_addr_r[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088882888"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(13),
      I2 => \^q\(12),
      I3 => \^q\(11),
      I4 => \bram_addr_r[13]_i_3__0_n_0\,
      I5 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[13]_i_2_n_0\
    );
\bram_addr_r[13]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \bram_addr_r[8]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(10),
      O => \bram_addr_r[13]_i_3__0_n_0\
    );
\bram_addr_r[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0028"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[1]_i_1__0_n_0\
    );
\bram_addr_r[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002888"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[2]_i_1__0_n_0\
    );
\bram_addr_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028888888"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[3]_i_1__0_n_0\
    );
\bram_addr_r[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(4),
      I2 => \bram_addr_r[4]_i_2_n_0\,
      I3 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[4]_i_1__0_n_0\
    );
\bram_addr_r[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \bram_addr_r[4]_i_2_n_0\
    );
\bram_addr_r[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(5),
      I2 => \bram_addr_r[5]_i_2__0_n_0\,
      I3 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[5]_i_1__0_n_0\
    );
\bram_addr_r[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \bram_addr_r[5]_i_2__0_n_0\
    );
\bram_addr_r[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(6),
      I2 => \bram_addr_r[8]_i_2_n_0\,
      I3 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[6]_i_1__0_n_0\
    );
\bram_addr_r[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008828"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \bram_addr_r[8]_i_2_n_0\,
      I4 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[7]_i_1__0_n_0\
    );
\bram_addr_r[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088288888"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \bram_addr_r[8]_i_2_n_0\,
      I4 => \^q\(6),
      I5 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[8]_i_1__0_n_0\
    );
\bram_addr_r[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \bram_addr_r[8]_i_2_n_0\
    );
\bram_addr_r[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \^q\(9),
      I2 => \bram_addr_r[9]_i_2__0_n_0\,
      I3 => \state_n0_carry__0_n_5\,
      O => \bram_addr_r[9]_i_1__0_n_0\
    );
\bram_addr_r[9]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \bram_addr_r[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(8),
      O => \bram_addr_r[9]_i_2__0_n_0\
    );
\bram_addr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\bram_addr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[10]_i_1__0_n_0\,
      Q => \^q\(10),
      R => SR(0)
    );
\bram_addr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[11]_i_1__0_n_0\,
      Q => \^q\(11),
      R => SR(0)
    );
\bram_addr_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[12]_i_1__0_n_0\,
      Q => \^q\(12),
      R => SR(0)
    );
\bram_addr_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[13]_i_2_n_0\,
      Q => \^q\(13),
      R => SR(0)
    );
\bram_addr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\bram_addr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\bram_addr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\bram_addr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\bram_addr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\bram_addr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\bram_addr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
\bram_addr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => SR(0)
    );
\bram_addr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => SR(0)
    );
bram_we_n_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bram_we_n_reg_i_1_n_0,
      G => \bram_we_n__0\,
      GE => '1',
      Q => bram_we_n
    );
bram_we_n_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFF8FFFFFFF8"
    )
        port map (
      I0 => \state_r__0\(2),
      I1 => pixel_done,
      I2 => \state_r__0\(1),
      I3 => \state_r__0\(0),
      I4 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I5 => \state_n0_carry__0_n_5\,
      O => bram_we_n_reg_i_1_n_0
    );
bram_we_n_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \state_r__0\(2),
      I2 => pixel_done,
      O => \bram_we_n__0\
    );
bram_we_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => bram_we_n,
      Q => \^clear_fsm_we\,
      R => SR(0)
    );
state_n0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => state_n0_carry_n_0,
      CO(6) => state_n0_carry_n_1,
      CO(5) => state_n0_carry_n_2,
      CO(4) => state_n0_carry_n_3,
      CO(3) => state_n0_carry_n_4,
      CO(2) => state_n0_carry_n_5,
      CO(1) => state_n0_carry_n_6,
      CO(0) => state_n0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_state_n0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => state_n0_carry_i_1_n_0,
      S(6) => state_n0_carry_i_2_n_0,
      S(5) => state_n0_carry_i_3_n_0,
      S(4) => state_n0_carry_i_4_n_0,
      S(3) => state_n0_carry_i_5_n_0,
      S(2) => state_n0_carry_i_6_n_0,
      S(1) => state_n0_carry_i_7_n_0,
      S(0) => state_n0_carry_i_8_n_0
    );
\state_n0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => state_n0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_state_n0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \state_n0_carry__0_n_5\,
      CO(1) => \state_n0_carry__0_n_6\,
      CO(0) => \state_n0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_state_n0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \state_n0_carry__0_i_1_n_0\,
      S(1) => \state_n0_carry__0_i_2_n_0\,
      S(0) => \state_n0_carry__0_i_3_n_0\
    );
\state_n0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(14),
      I1 => \state_n0_carry__0_0\(12),
      I2 => state_n0_carry_i_9_n_0,
      I3 => \state_n0_carry__0_0\(11),
      I4 => \state_n0_carry__0_0\(13),
      O => \state_n0_carry__0_i_1_n_0\
    );
\state_n0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(14),
      I1 => \state_n0_carry__0_0\(12),
      I2 => state_n0_carry_i_9_n_0,
      I3 => \state_n0_carry__0_0\(11),
      I4 => \state_n0_carry__0_0\(13),
      O => \state_n0_carry__0_i_2_n_0\
    );
\state_n0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(14),
      I1 => \state_n0_carry__0_0\(12),
      I2 => state_n0_carry_i_9_n_0,
      I3 => \state_n0_carry__0_0\(11),
      I4 => \state_n0_carry__0_0\(13),
      O => \state_n0_carry__0_i_3_n_0\
    );
state_n0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(14),
      I1 => \state_n0_carry__0_0\(12),
      I2 => state_n0_carry_i_9_n_0,
      I3 => \state_n0_carry__0_0\(11),
      I4 => \state_n0_carry__0_0\(13),
      O => state_n0_carry_i_1_n_0
    );
state_n0_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_n0_carry__0_0\(11),
      I1 => state_n0_carry_i_9_n_0,
      O => state_n0_carry_i_10_n_0
    );
state_n0_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(9),
      I1 => \state_n0_carry__0_0\(7),
      I2 => state_n0_carry_i_13_n_0,
      I3 => \state_n0_carry__0_0\(6),
      I4 => \state_n0_carry__0_0\(8),
      O => state_n0_carry_i_11_n_0
    );
state_n0_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555556AAAAAAA9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \state_n0_carry__0_0\(8),
      I2 => \state_n0_carry__0_0\(6),
      I3 => state_n0_carry_i_13_n_0,
      I4 => \state_n0_carry__0_0\(7),
      I5 => \state_n0_carry__0_0\(9),
      O => state_n0_carry_i_12_n_0
    );
state_n0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(5),
      I1 => \state_n0_carry__0_0\(3),
      I2 => \state_n0_carry__0_0\(0),
      I3 => \state_n0_carry__0_0\(1),
      I4 => \state_n0_carry__0_0\(2),
      I5 => \state_n0_carry__0_0\(4),
      O => state_n0_carry_i_13_n_0
    );
state_n0_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7BBDDEE7"
    )
        port map (
      I0 => \^q\(6),
      I1 => \state_n0_carry__0_0\(7),
      I2 => state_n0_carry_i_13_n_0,
      I3 => \state_n0_carry__0_0\(6),
      I4 => \^q\(7),
      O => state_n0_carry_i_14_n_0
    );
state_n0_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(3),
      I1 => \state_n0_carry__0_0\(0),
      I2 => \state_n0_carry__0_0\(1),
      I3 => \state_n0_carry__0_0\(2),
      O => state_n0_carry_i_15_n_0
    );
state_n0_carry_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAA9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \state_n0_carry__0_0\(2),
      I2 => \state_n0_carry__0_0\(1),
      I3 => \state_n0_carry__0_0\(0),
      I4 => \state_n0_carry__0_0\(3),
      O => state_n0_carry_i_16_n_0
    );
state_n0_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(14),
      I1 => \state_n0_carry__0_0\(12),
      I2 => state_n0_carry_i_9_n_0,
      I3 => \state_n0_carry__0_0\(11),
      I4 => \state_n0_carry__0_0\(13),
      O => state_n0_carry_i_2_n_0
    );
state_n0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(14),
      I1 => \state_n0_carry__0_0\(12),
      I2 => state_n0_carry_i_9_n_0,
      I3 => \state_n0_carry__0_0\(11),
      I4 => \state_n0_carry__0_0\(13),
      O => state_n0_carry_i_3_n_0
    );
state_n0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2001100802200110"
    )
        port map (
      I0 => \^q\(13),
      I1 => \state_n0_carry__0_0\(14),
      I2 => \state_n0_carry__0_0\(12),
      I3 => state_n0_carry_i_10_n_0,
      I4 => \state_n0_carry__0_0\(13),
      I5 => \^q\(12),
      O => state_n0_carry_i_4_n_0
    );
state_n0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090960"
    )
        port map (
      I0 => \state_n0_carry__0_0\(11),
      I1 => \^q\(11),
      I2 => \^q\(10),
      I3 => state_n0_carry_i_11_n_0,
      I4 => \state_n0_carry__0_0\(10),
      I5 => state_n0_carry_i_12_n_0,
      O => state_n0_carry_i_5_n_0
    );
state_n0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA95556"
    )
        port map (
      I0 => \state_n0_carry__0_0\(8),
      I1 => \state_n0_carry__0_0\(6),
      I2 => state_n0_carry_i_13_n_0,
      I3 => \state_n0_carry__0_0\(7),
      I4 => \^q\(8),
      I5 => state_n0_carry_i_14_n_0,
      O => state_n0_carry_i_6_n_0
    );
state_n0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090960"
    )
        port map (
      I0 => \state_n0_carry__0_0\(5),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => state_n0_carry_i_15_n_0,
      I4 => \state_n0_carry__0_0\(4),
      I5 => state_n0_carry_i_16_n_0,
      O => state_n0_carry_i_7_n_0
    );
state_n0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4120000800084120"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \state_n0_carry__0_0\(1),
      I3 => \state_n0_carry__0_0\(0),
      I4 => \^q\(2),
      I5 => \state_n0_carry__0_0\(2),
      O => state_n0_carry_i_8_n_0
    );
state_n0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state_n0_carry__0_0\(10),
      I1 => \state_n0_carry__0_0\(8),
      I2 => \state_n0_carry__0_0\(6),
      I3 => state_n0_carry_i_13_n_0,
      I4 => \state_n0_carry__0_0\(7),
      I5 => \state_n0_carry__0_0\(9),
      O => state_n0_carry_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0_FILLING_FSM is
  port (
    FILL_FSM_WE : out STD_LOGIC;
    tready_in : out STD_LOGIC;
    bin_full_warning : out STD_LOGIC;
    bin_written_but_never_read_warning : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \bram_0_we__0\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[3]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \FSM_onehot_state_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \FSM_onehot_state_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \tdata_in[13]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \FSM_onehot_state_r_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_1\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_2\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_3\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_4\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_5\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_6\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_7\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_8\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_9\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_10\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_11\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_12\ : out STD_LOGIC;
    \FSM_onehot_state_r_reg[2]_13\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    tvalid_in : in STD_LOGIC;
    pixel_done : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    bin_written_but_never_read_warning_r0_carry_0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    tdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_reg_bram_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLEAR_FSM_WE : in STD_LOGIC;
    \bram_1_addr_reg[13]\ : in STD_LOGIC;
    \bram_1_addr_reg[12]\ : in STD_LOGIC;
    \bram_1_addr_reg[11]\ : in STD_LOGIC;
    bram_reg_bram_7_0 : in STD_LOGIC;
    bram_reg_bram_7_1 : in STD_LOGIC;
    bram_reg_bram_7_2 : in STD_LOGIC;
    bram_reg_bram_7_3 : in STD_LOGIC;
    bram_reg_bram_7_4 : in STD_LOGIC;
    bram_reg_bram_7_5 : in STD_LOGIC;
    bram_reg_bram_7_6 : in STD_LOGIC;
    bram_reg_bram_7_7 : in STD_LOGIC;
    bram_reg_bram_7_8 : in STD_LOGIC;
    bram_reg_bram_7_9 : in STD_LOGIC;
    bram_reg_bram_7_10 : in STD_LOGIC;
    \bram_2_addr_reg[13]_i_1\ : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_HISTOGRAM_ARBITER_FSM_0_0_FILLING_FSM : entity is "FILLING_FSM";
end histo_HISTOGRAM_ARBITER_FSM_0_0_FILLING_FSM;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0_FILLING_FSM is
  signal FILL_FSM_DIN : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \^fill_fsm_we\ : STD_LOGIC;
  signal \FSM_onehot_state_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \^bin_full_warning\ : STD_LOGIC;
  signal bin_full_warning_r_i_2_n_0 : STD_LOGIC;
  signal bin_full_warning_r_i_3_n_0 : STD_LOGIC;
  signal bin_full_warning_r_i_4_n_0 : STD_LOGIC;
  signal bin_full_warning_r_i_5_n_0 : STD_LOGIC;
  signal bin_full_warning_r_i_6_n_0 : STD_LOGIC;
  signal bin_full_warning_r_i_7_n_0 : STD_LOGIC;
  signal \^bin_written_but_never_read_warning\ : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0 : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_1\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_2\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_3\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_4\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_5\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_6\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__0_n_7\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_1\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_2\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_3\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_4\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_5\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_6\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__1_n_7\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_n_1\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_n_2\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_n_3\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_n_4\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_n_5\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_n_6\ : STD_LOGIC;
  signal \bin_written_but_never_read_warning_r0_carry__2_n_7\ : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_10_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_11_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_12_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_13_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_14_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_15_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_16_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_1_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_2_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_3_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_4_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_5_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_6_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_7_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_8_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_i_9_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_0 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_1 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_2 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_3 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_4 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_5 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_6 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r0_carry_n_7 : STD_LOGIC;
  signal bin_written_but_never_read_warning_r_i_1_n_0 : STD_LOGIC;
  signal \bram_addr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal bram_din0 : STD_LOGIC_VECTOR ( 17 downto 1 );
  signal \bram_din0_carry__0_n_0\ : STD_LOGIC;
  signal \bram_din0_carry__0_n_1\ : STD_LOGIC;
  signal \bram_din0_carry__0_n_2\ : STD_LOGIC;
  signal \bram_din0_carry__0_n_3\ : STD_LOGIC;
  signal \bram_din0_carry__0_n_4\ : STD_LOGIC;
  signal \bram_din0_carry__0_n_5\ : STD_LOGIC;
  signal \bram_din0_carry__0_n_6\ : STD_LOGIC;
  signal \bram_din0_carry__0_n_7\ : STD_LOGIC;
  signal bram_din0_carry_n_0 : STD_LOGIC;
  signal bram_din0_carry_n_1 : STD_LOGIC;
  signal bram_din0_carry_n_2 : STD_LOGIC;
  signal bram_din0_carry_n_3 : STD_LOGIC;
  signal bram_din0_carry_n_4 : STD_LOGIC;
  signal bram_din0_carry_n_5 : STD_LOGIC;
  signal bram_din0_carry_n_6 : STD_LOGIC;
  signal bram_din0_carry_n_7 : STD_LOGIC;
  signal \bram_din_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_din_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal bram_we_reg_i_1_n_0 : STD_LOGIC;
  signal read_value : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal state_r : STD_LOGIC;
  signal \^tdata_in[13]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal tready_in_n : STD_LOGIC;
  signal NLW_bin_written_but_never_read_warning_r0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bin_written_but_never_read_warning_r0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bin_written_but_never_read_warning_r0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bin_written_but_never_read_warning_r0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bram_din0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bram_din0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_r[1]_i_1\ : label is "soft_lutpair56";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[0]\ : label is "IDLE:001,READ:010,WRITE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[1]\ : label is "IDLE:001,READ:010,WRITE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[2]\ : label is "IDLE:001,READ:010,WRITE:100,";
  attribute SOFT_HLUTNM of bin_full_warning_r_i_2 : label is "soft_lutpair71";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of bin_written_but_never_read_warning_r0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \bin_written_but_never_read_warning_r0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \bin_written_but_never_read_warning_r0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \bin_written_but_never_read_warning_r0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of bin_written_but_never_read_warning_r_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bram_0_din_reg[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \bram_0_din_reg[10]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \bram_0_din_reg[11]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \bram_0_din_reg[12]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \bram_0_din_reg[13]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \bram_0_din_reg[14]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \bram_0_din_reg[15]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \bram_0_din_reg[16]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \bram_0_din_reg[17]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \bram_0_din_reg[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \bram_0_din_reg[2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \bram_0_din_reg[3]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \bram_0_din_reg[4]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \bram_0_din_reg[5]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \bram_0_din_reg[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \bram_0_din_reg[7]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \bram_0_din_reg[8]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \bram_0_din_reg[9]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[10]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[11]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[12]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[13]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[5]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[8]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bram_1_addr_reg[9]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bram_1_din_reg[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \bram_1_din_reg[10]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \bram_1_din_reg[11]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \bram_1_din_reg[12]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \bram_1_din_reg[13]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bram_1_din_reg[14]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \bram_1_din_reg[15]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \bram_1_din_reg[16]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \bram_1_din_reg[17]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \bram_1_din_reg[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bram_1_din_reg[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bram_1_din_reg[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bram_1_din_reg[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bram_1_din_reg[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bram_1_din_reg[6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \bram_1_din_reg[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \bram_1_din_reg[8]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \bram_1_din_reg[9]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \bram_2_din_reg[0]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \bram_2_din_reg[10]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \bram_2_din_reg[11]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \bram_2_din_reg[12]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \bram_2_din_reg[13]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \bram_2_din_reg[14]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \bram_2_din_reg[15]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \bram_2_din_reg[16]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \bram_2_din_reg[17]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \bram_2_din_reg[1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \bram_2_din_reg[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \bram_2_din_reg[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \bram_2_din_reg[4]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \bram_2_din_reg[5]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \bram_2_din_reg[6]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \bram_2_din_reg[7]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \bram_2_din_reg[8]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \bram_2_din_reg[9]_i_1\ : label is "soft_lutpair88";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_addr_reg[13]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_addr_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_addr_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bram_din0_carry : label is 35;
  attribute ADDER_THRESHOLD of \bram_din0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_din0_carry__1\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[0]_i_1\ : label is "soft_lutpair72";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[10]_i_1\ : label is "soft_lutpair96";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[11]_i_1\ : label is "soft_lutpair97";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[12]_i_1\ : label is "soft_lutpair97";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[13]_i_1\ : label is "soft_lutpair98";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[14]_i_1\ : label is "soft_lutpair98";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[15]_i_1\ : label is "soft_lutpair99";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[16]_i_1\ : label is "soft_lutpair99";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[1]_i_1\ : label is "soft_lutpair71";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[2]_i_1\ : label is "soft_lutpair72";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[3]_i_1\ : label is "soft_lutpair93";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[4]_i_1\ : label is "soft_lutpair93";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[5]_i_1\ : label is "soft_lutpair94";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[6]_i_1\ : label is "soft_lutpair94";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[7]_i_1\ : label is "soft_lutpair95";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[8]_i_1\ : label is "soft_lutpair95";
  attribute XILINX_LEGACY_PRIM of \bram_din_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_din_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bram_din_reg[9]_i_1\ : label is "soft_lutpair96";
  attribute XILINX_LEGACY_PRIM of bram_we_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of bram_we_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of tready_in_r_i_1 : label is "soft_lutpair56";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of tready_in_r_reg : label is "xilinx.com:interface:axis:1.0 AXIS_IN TREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of tready_in_r_reg : label is "FREQ_HZ 100000000";
begin
  FILL_FSM_WE <= \^fill_fsm_we\;
  bin_full_warning <= \^bin_full_warning\;
  bin_written_but_never_read_warning <= \^bin_written_but_never_read_warning\;
  \tdata_in[13]\(13 downto 0) <= \^tdata_in[13]\(13 downto 0);
\FSM_onehot_state_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_r_reg_n_0_[0]\,
      O => \FSM_onehot_state_r[1]_i_1_n_0\
    );
\FSM_onehot_state_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_state_r_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_r_reg_n_0_[1]\,
      I3 => tvalid_in,
      I4 => pixel_done,
      I5 => \FSM_onehot_state_r_reg_n_0_[0]\,
      O => state_r
    );
\FSM_onehot_state_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => state_r,
      D => '0',
      Q => \FSM_onehot_state_r_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_r,
      D => \FSM_onehot_state_r[1]_i_1_n_0\,
      Q => \FSM_onehot_state_r_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_state_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_r,
      D => \FSM_onehot_state_r_reg_n_0_[1]\,
      Q => \FSM_onehot_state_r_reg_n_0_[2]\,
      R => SR(0)
    );
bin_full_warning_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => bin_full_warning_r_i_3_n_0,
      I1 => \FSM_onehot_state_r_reg_n_0_[2]\,
      I2 => en,
      I3 => \^bin_full_warning\,
      O => bin_full_warning_r_i_2_n_0
    );
bin_full_warning_r_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => Q(12),
      I1 => pixel_done,
      I2 => Q(6),
      I3 => Q(5),
      I4 => bin_full_warning_r_i_4_n_0,
      O => bin_full_warning_r_i_3_n_0
    );
bin_full_warning_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => bin_full_warning_r_i_5_n_0,
      I1 => bin_full_warning_r_i_6_n_0,
      I2 => bin_full_warning_r_i_7_n_0,
      I3 => Q(15),
      I4 => Q(0),
      I5 => Q(10),
      O => bin_full_warning_r_i_4_n_0
    );
bin_full_warning_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(7),
      I1 => Q(14),
      I2 => Q(9),
      I3 => Q(13),
      O => bin_full_warning_r_i_5_n_0
    );
bin_full_warning_r_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(8),
      I1 => Q(16),
      I2 => Q(2),
      I3 => Q(4),
      O => bin_full_warning_r_i_6_n_0
    );
bin_full_warning_r_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(17),
      I2 => Q(1),
      I3 => Q(11),
      O => bin_full_warning_r_i_7_n_0
    );
bin_full_warning_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => bin_full_warning_r_i_2_n_0,
      Q => \^bin_full_warning\,
      R => SR(0)
    );
bin_written_but_never_read_warning_r0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => bin_written_but_never_read_warning_r0_carry_n_0,
      CO(6) => bin_written_but_never_read_warning_r0_carry_n_1,
      CO(5) => bin_written_but_never_read_warning_r0_carry_n_2,
      CO(4) => bin_written_but_never_read_warning_r0_carry_n_3,
      CO(3) => bin_written_but_never_read_warning_r0_carry_n_4,
      CO(2) => bin_written_but_never_read_warning_r0_carry_n_5,
      CO(1) => bin_written_but_never_read_warning_r0_carry_n_6,
      CO(0) => bin_written_but_never_read_warning_r0_carry_n_7,
      DI(7) => bin_written_but_never_read_warning_r0_carry_i_1_n_0,
      DI(6) => bin_written_but_never_read_warning_r0_carry_i_2_n_0,
      DI(5) => bin_written_but_never_read_warning_r0_carry_i_3_n_0,
      DI(4) => bin_written_but_never_read_warning_r0_carry_i_4_n_0,
      DI(3) => bin_written_but_never_read_warning_r0_carry_i_5_n_0,
      DI(2) => bin_written_but_never_read_warning_r0_carry_i_6_n_0,
      DI(1) => bin_written_but_never_read_warning_r0_carry_i_7_n_0,
      DI(0) => bin_written_but_never_read_warning_r0_carry_i_8_n_0,
      O(7 downto 0) => NLW_bin_written_but_never_read_warning_r0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => bin_written_but_never_read_warning_r0_carry_i_9_n_0,
      S(6) => bin_written_but_never_read_warning_r0_carry_i_10_n_0,
      S(5) => bin_written_but_never_read_warning_r0_carry_i_11_n_0,
      S(4) => bin_written_but_never_read_warning_r0_carry_i_12_n_0,
      S(3) => bin_written_but_never_read_warning_r0_carry_i_13_n_0,
      S(2) => bin_written_but_never_read_warning_r0_carry_i_14_n_0,
      S(1) => bin_written_but_never_read_warning_r0_carry_i_15_n_0,
      S(0) => bin_written_but_never_read_warning_r0_carry_i_16_n_0
    );
\bin_written_but_never_read_warning_r0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => bin_written_but_never_read_warning_r0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \bin_written_but_never_read_warning_r0_carry__0_n_0\,
      CO(6) => \bin_written_but_never_read_warning_r0_carry__0_n_1\,
      CO(5) => \bin_written_but_never_read_warning_r0_carry__0_n_2\,
      CO(4) => \bin_written_but_never_read_warning_r0_carry__0_n_3\,
      CO(3) => \bin_written_but_never_read_warning_r0_carry__0_n_4\,
      CO(2) => \bin_written_but_never_read_warning_r0_carry__0_n_5\,
      CO(1) => \bin_written_but_never_read_warning_r0_carry__0_n_6\,
      CO(0) => \bin_written_but_never_read_warning_r0_carry__0_n_7\,
      DI(7) => \bin_written_but_never_read_warning_r0_carry__0_i_1_n_0\,
      DI(6) => \bin_written_but_never_read_warning_r0_carry__0_i_2_n_0\,
      DI(5) => \bin_written_but_never_read_warning_r0_carry__0_i_3_n_0\,
      DI(4) => \bin_written_but_never_read_warning_r0_carry__0_i_4_n_0\,
      DI(3) => \bin_written_but_never_read_warning_r0_carry__0_i_5_n_0\,
      DI(2) => \bin_written_but_never_read_warning_r0_carry__0_i_6_n_0\,
      DI(1) => \bin_written_but_never_read_warning_r0_carry__0_i_7_n_0\,
      DI(0) => \bin_written_but_never_read_warning_r0_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_bin_written_but_never_read_warning_r0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \bin_written_but_never_read_warning_r0_carry__0_i_9_n_0\,
      S(6) => \bin_written_but_never_read_warning_r0_carry__0_i_10_n_0\,
      S(5) => \bin_written_but_never_read_warning_r0_carry__0_i_11_n_0\,
      S(4) => \bin_written_but_never_read_warning_r0_carry__0_i_12_n_0\,
      S(3) => \bin_written_but_never_read_warning_r0_carry__0_i_13_n_0\,
      S(2) => \bin_written_but_never_read_warning_r0_carry__0_i_14_n_0\,
      S(1) => \bin_written_but_never_read_warning_r0_carry__0_i_15_n_0\,
      S(0) => \bin_written_but_never_read_warning_r0_carry__0_i_16_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(31),
      I1 => tdata_in(30),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_1_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(28),
      I1 => tdata_in(29),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_10_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(26),
      I1 => tdata_in(27),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_11_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(24),
      I1 => tdata_in(25),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_12_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(22),
      I1 => tdata_in(23),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_13_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(20),
      I1 => tdata_in(21),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_14_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(18),
      I1 => tdata_in(19),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_15_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(16),
      I1 => tdata_in(17),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_16_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(29),
      I1 => tdata_in(28),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_2_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(27),
      I1 => tdata_in(26),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_3_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(25),
      I1 => tdata_in(24),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_4_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(23),
      I1 => tdata_in(22),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_5_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(21),
      I1 => tdata_in(20),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_6_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(19),
      I1 => tdata_in(18),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_7_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(17),
      I1 => tdata_in(16),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_8_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(30),
      I1 => tdata_in(31),
      O => \bin_written_but_never_read_warning_r0_carry__0_i_9_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bin_written_but_never_read_warning_r0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \bin_written_but_never_read_warning_r0_carry__1_n_0\,
      CO(6) => \bin_written_but_never_read_warning_r0_carry__1_n_1\,
      CO(5) => \bin_written_but_never_read_warning_r0_carry__1_n_2\,
      CO(4) => \bin_written_but_never_read_warning_r0_carry__1_n_3\,
      CO(3) => \bin_written_but_never_read_warning_r0_carry__1_n_4\,
      CO(2) => \bin_written_but_never_read_warning_r0_carry__1_n_5\,
      CO(1) => \bin_written_but_never_read_warning_r0_carry__1_n_6\,
      CO(0) => \bin_written_but_never_read_warning_r0_carry__1_n_7\,
      DI(7) => \bin_written_but_never_read_warning_r0_carry__1_i_1_n_0\,
      DI(6) => \bin_written_but_never_read_warning_r0_carry__1_i_2_n_0\,
      DI(5) => \bin_written_but_never_read_warning_r0_carry__1_i_3_n_0\,
      DI(4) => \bin_written_but_never_read_warning_r0_carry__1_i_4_n_0\,
      DI(3) => \bin_written_but_never_read_warning_r0_carry__1_i_5_n_0\,
      DI(2) => \bin_written_but_never_read_warning_r0_carry__1_i_6_n_0\,
      DI(1) => \bin_written_but_never_read_warning_r0_carry__1_i_7_n_0\,
      DI(0) => \bin_written_but_never_read_warning_r0_carry__1_i_8_n_0\,
      O(7 downto 0) => \NLW_bin_written_but_never_read_warning_r0_carry__1_O_UNCONNECTED\(7 downto 0),
      S(7) => \bin_written_but_never_read_warning_r0_carry__1_i_9_n_0\,
      S(6) => \bin_written_but_never_read_warning_r0_carry__1_i_10_n_0\,
      S(5) => \bin_written_but_never_read_warning_r0_carry__1_i_11_n_0\,
      S(4) => \bin_written_but_never_read_warning_r0_carry__1_i_12_n_0\,
      S(3) => \bin_written_but_never_read_warning_r0_carry__1_i_13_n_0\,
      S(2) => \bin_written_but_never_read_warning_r0_carry__1_i_14_n_0\,
      S(1) => \bin_written_but_never_read_warning_r0_carry__1_i_15_n_0\,
      S(0) => \bin_written_but_never_read_warning_r0_carry__1_i_16_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(47),
      I1 => tdata_in(46),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_1_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(44),
      I1 => tdata_in(45),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_10_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(42),
      I1 => tdata_in(43),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_11_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(40),
      I1 => tdata_in(41),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_12_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(38),
      I1 => tdata_in(39),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_13_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(36),
      I1 => tdata_in(37),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_14_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(34),
      I1 => tdata_in(35),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_15_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(32),
      I1 => tdata_in(33),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_16_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(45),
      I1 => tdata_in(44),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_2_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(43),
      I1 => tdata_in(42),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_3_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(41),
      I1 => tdata_in(40),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_4_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(39),
      I1 => tdata_in(38),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_5_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(37),
      I1 => tdata_in(36),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_6_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(35),
      I1 => tdata_in(34),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_7_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(33),
      I1 => tdata_in(32),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_8_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(46),
      I1 => tdata_in(47),
      O => \bin_written_but_never_read_warning_r0_carry__1_i_9_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \bin_written_but_never_read_warning_r0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => bin_written_but_never_read_warning_r0,
      CO(6) => \bin_written_but_never_read_warning_r0_carry__2_n_1\,
      CO(5) => \bin_written_but_never_read_warning_r0_carry__2_n_2\,
      CO(4) => \bin_written_but_never_read_warning_r0_carry__2_n_3\,
      CO(3) => \bin_written_but_never_read_warning_r0_carry__2_n_4\,
      CO(2) => \bin_written_but_never_read_warning_r0_carry__2_n_5\,
      CO(1) => \bin_written_but_never_read_warning_r0_carry__2_n_6\,
      CO(0) => \bin_written_but_never_read_warning_r0_carry__2_n_7\,
      DI(7) => \bin_written_but_never_read_warning_r0_carry__2_i_1_n_0\,
      DI(6) => \bin_written_but_never_read_warning_r0_carry__2_i_2_n_0\,
      DI(5) => \bin_written_but_never_read_warning_r0_carry__2_i_3_n_0\,
      DI(4) => \bin_written_but_never_read_warning_r0_carry__2_i_4_n_0\,
      DI(3) => \bin_written_but_never_read_warning_r0_carry__2_i_5_n_0\,
      DI(2) => \bin_written_but_never_read_warning_r0_carry__2_i_6_n_0\,
      DI(1) => \bin_written_but_never_read_warning_r0_carry__2_i_7_n_0\,
      DI(0) => \bin_written_but_never_read_warning_r0_carry__2_i_8_n_0\,
      O(7 downto 0) => \NLW_bin_written_but_never_read_warning_r0_carry__2_O_UNCONNECTED\(7 downto 0),
      S(7) => \bin_written_but_never_read_warning_r0_carry__2_i_9_n_0\,
      S(6) => \bin_written_but_never_read_warning_r0_carry__2_i_10_n_0\,
      S(5) => \bin_written_but_never_read_warning_r0_carry__2_i_11_n_0\,
      S(4) => \bin_written_but_never_read_warning_r0_carry__2_i_12_n_0\,
      S(3) => \bin_written_but_never_read_warning_r0_carry__2_i_13_n_0\,
      S(2) => \bin_written_but_never_read_warning_r0_carry__2_i_14_n_0\,
      S(1) => \bin_written_but_never_read_warning_r0_carry__2_i_15_n_0\,
      S(0) => \bin_written_but_never_read_warning_r0_carry__2_i_16_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(63),
      I1 => tdata_in(62),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_1_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(60),
      I1 => tdata_in(61),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_10_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(58),
      I1 => tdata_in(59),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_11_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(56),
      I1 => tdata_in(57),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_12_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(54),
      I1 => tdata_in(55),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_13_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(52),
      I1 => tdata_in(53),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_14_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(50),
      I1 => tdata_in(51),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_15_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(48),
      I1 => tdata_in(49),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_16_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(61),
      I1 => tdata_in(60),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_2_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(59),
      I1 => tdata_in(58),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_3_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(57),
      I1 => tdata_in(56),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_4_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(55),
      I1 => tdata_in(54),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_5_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(53),
      I1 => tdata_in(52),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_6_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(51),
      I1 => tdata_in(50),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_7_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tdata_in(49),
      I1 => tdata_in(48),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_8_n_0\
    );
\bin_written_but_never_read_warning_r0_carry__2_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_in(62),
      I1 => tdata_in(63),
      O => \bin_written_but_never_read_warning_r0_carry__2_i_9_n_0\
    );
bin_written_but_never_read_warning_r0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => tdata_in(15),
      I1 => bin_written_but_never_read_warning_r0_carry_0(14),
      I2 => tdata_in(14),
      O => bin_written_but_never_read_warning_r0_carry_i_1_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bin_written_but_never_read_warning_r0_carry_0(13),
      I1 => tdata_in(13),
      I2 => bin_written_but_never_read_warning_r0_carry_0(12),
      I3 => tdata_in(12),
      O => bin_written_but_never_read_warning_r0_carry_i_10_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bin_written_but_never_read_warning_r0_carry_0(11),
      I1 => tdata_in(11),
      I2 => bin_written_but_never_read_warning_r0_carry_0(10),
      I3 => tdata_in(10),
      O => bin_written_but_never_read_warning_r0_carry_i_11_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bin_written_but_never_read_warning_r0_carry_0(9),
      I1 => tdata_in(9),
      I2 => bin_written_but_never_read_warning_r0_carry_0(8),
      I3 => tdata_in(8),
      O => bin_written_but_never_read_warning_r0_carry_i_12_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bin_written_but_never_read_warning_r0_carry_0(7),
      I1 => tdata_in(7),
      I2 => bin_written_but_never_read_warning_r0_carry_0(6),
      I3 => tdata_in(6),
      O => bin_written_but_never_read_warning_r0_carry_i_13_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bin_written_but_never_read_warning_r0_carry_0(5),
      I1 => tdata_in(5),
      I2 => bin_written_but_never_read_warning_r0_carry_0(4),
      I3 => tdata_in(4),
      O => bin_written_but_never_read_warning_r0_carry_i_14_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bin_written_but_never_read_warning_r0_carry_0(3),
      I1 => tdata_in(3),
      I2 => bin_written_but_never_read_warning_r0_carry_0(2),
      I3 => tdata_in(2),
      O => bin_written_but_never_read_warning_r0_carry_i_15_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bin_written_but_never_read_warning_r0_carry_0(1),
      I1 => tdata_in(1),
      I2 => bin_written_but_never_read_warning_r0_carry_0(0),
      I3 => tdata_in(0),
      O => bin_written_but_never_read_warning_r0_carry_i_16_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tdata_in(13),
      I1 => bin_written_but_never_read_warning_r0_carry_0(13),
      I2 => tdata_in(12),
      I3 => bin_written_but_never_read_warning_r0_carry_0(12),
      O => bin_written_but_never_read_warning_r0_carry_i_2_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tdata_in(11),
      I1 => bin_written_but_never_read_warning_r0_carry_0(11),
      I2 => tdata_in(10),
      I3 => bin_written_but_never_read_warning_r0_carry_0(10),
      O => bin_written_but_never_read_warning_r0_carry_i_3_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tdata_in(9),
      I1 => bin_written_but_never_read_warning_r0_carry_0(9),
      I2 => tdata_in(8),
      I3 => bin_written_but_never_read_warning_r0_carry_0(8),
      O => bin_written_but_never_read_warning_r0_carry_i_4_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tdata_in(7),
      I1 => bin_written_but_never_read_warning_r0_carry_0(7),
      I2 => tdata_in(6),
      I3 => bin_written_but_never_read_warning_r0_carry_0(6),
      O => bin_written_but_never_read_warning_r0_carry_i_5_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tdata_in(5),
      I1 => bin_written_but_never_read_warning_r0_carry_0(5),
      I2 => tdata_in(4),
      I3 => bin_written_but_never_read_warning_r0_carry_0(4),
      O => bin_written_but_never_read_warning_r0_carry_i_6_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tdata_in(3),
      I1 => bin_written_but_never_read_warning_r0_carry_0(3),
      I2 => tdata_in(2),
      I3 => bin_written_but_never_read_warning_r0_carry_0(2),
      O => bin_written_but_never_read_warning_r0_carry_i_7_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tdata_in(1),
      I1 => bin_written_but_never_read_warning_r0_carry_0(1),
      I2 => tdata_in(0),
      I3 => bin_written_but_never_read_warning_r0_carry_0(0),
      O => bin_written_but_never_read_warning_r0_carry_i_8_n_0
    );
bin_written_but_never_read_warning_r0_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => tdata_in(15),
      I1 => bin_written_but_never_read_warning_r0_carry_0(14),
      I2 => tdata_in(14),
      O => bin_written_but_never_read_warning_r0_carry_i_9_n_0
    );
bin_written_but_never_read_warning_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[1]\,
      I1 => tvalid_in,
      I2 => en,
      I3 => bin_written_but_never_read_warning_r0,
      I4 => \^bin_written_but_never_read_warning\,
      O => bin_written_but_never_read_warning_r_i_1_n_0
    );
bin_written_but_never_read_warning_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => bin_written_but_never_read_warning_r_i_1_n_0,
      Q => \^bin_written_but_never_read_warning\,
      R => SR(0)
    );
\bram_0_din_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(0),
      I2 => bram_reg_bram_7(0),
      O => D(0)
    );
\bram_0_din_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(10),
      I2 => bram_reg_bram_7(0),
      O => D(10)
    );
\bram_0_din_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(11),
      I2 => bram_reg_bram_7(0),
      O => D(11)
    );
\bram_0_din_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(12),
      I2 => bram_reg_bram_7(0),
      O => D(12)
    );
\bram_0_din_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(13),
      I2 => bram_reg_bram_7(0),
      O => D(13)
    );
\bram_0_din_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(14),
      I2 => bram_reg_bram_7(0),
      O => D(14)
    );
\bram_0_din_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(15),
      I2 => bram_reg_bram_7(0),
      O => D(15)
    );
\bram_0_din_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(16),
      I2 => bram_reg_bram_7(0),
      O => D(16)
    );
\bram_0_din_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(17),
      I2 => bram_reg_bram_7(0),
      O => D(17)
    );
\bram_0_din_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(1),
      I2 => bram_reg_bram_7(0),
      O => D(1)
    );
\bram_0_din_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(2),
      I2 => bram_reg_bram_7(0),
      O => D(2)
    );
\bram_0_din_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(3),
      I2 => bram_reg_bram_7(0),
      O => D(3)
    );
\bram_0_din_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(4),
      I2 => bram_reg_bram_7(0),
      O => D(4)
    );
\bram_0_din_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(5),
      I2 => bram_reg_bram_7(0),
      O => D(5)
    );
\bram_0_din_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(6),
      I2 => bram_reg_bram_7(0),
      O => D(6)
    );
\bram_0_din_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(7),
      I2 => bram_reg_bram_7(0),
      O => D(7)
    );
\bram_0_din_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(8),
      I2 => bram_reg_bram_7(0),
      O => D(8)
    );
\bram_0_din_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(1),
      I1 => FILL_FSM_DIN(9),
      I2 => bram_reg_bram_7(0),
      O => D(9)
    );
bram_0_we_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^fill_fsm_we\,
      I1 => bram_reg_bram_7(1),
      I2 => bram_reg_bram_7(3),
      I3 => CLEAR_FSM_WE,
      I4 => bram_reg_bram_7(0),
      O => \bram_0_we__0\
    );
\bram_1_addr_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(0),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_10,
      O => \FSM_onehot_state_r_reg[3]_0\(0)
    );
\bram_1_addr_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(10),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_0,
      O => \FSM_onehot_state_r_reg[3]_0\(10)
    );
\bram_1_addr_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(11),
      I2 => bram_reg_bram_7(0),
      I3 => \bram_1_addr_reg[11]\,
      O => \FSM_onehot_state_r_reg[3]_0\(11)
    );
\bram_1_addr_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(12),
      I2 => bram_reg_bram_7(0),
      I3 => \bram_1_addr_reg[12]\,
      O => \FSM_onehot_state_r_reg[3]_0\(12)
    );
\bram_1_addr_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(13),
      I2 => bram_reg_bram_7(0),
      I3 => \bram_1_addr_reg[13]\,
      O => \FSM_onehot_state_r_reg[3]_0\(13)
    );
\bram_1_addr_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(1),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_9,
      O => \FSM_onehot_state_r_reg[3]_0\(1)
    );
\bram_1_addr_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(2),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_8,
      O => \FSM_onehot_state_r_reg[3]_0\(2)
    );
\bram_1_addr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(3),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_7,
      O => \FSM_onehot_state_r_reg[3]_0\(3)
    );
\bram_1_addr_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(4),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_6,
      O => \FSM_onehot_state_r_reg[3]_0\(4)
    );
\bram_1_addr_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(5),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_5,
      O => \FSM_onehot_state_r_reg[3]_0\(5)
    );
\bram_1_addr_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(6),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_4,
      O => \FSM_onehot_state_r_reg[3]_0\(6)
    );
\bram_1_addr_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(7),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_3,
      O => \FSM_onehot_state_r_reg[3]_0\(7)
    );
\bram_1_addr_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(8),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_2,
      O => \FSM_onehot_state_r_reg[3]_0\(8)
    );
\bram_1_addr_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => \^tdata_in[13]\(9),
      I2 => bram_reg_bram_7(0),
      I3 => bram_reg_bram_7_1,
      O => \FSM_onehot_state_r_reg[3]_0\(9)
    );
\bram_1_din_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(0),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(0)
    );
\bram_1_din_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(10),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(10)
    );
\bram_1_din_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(11),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(11)
    );
\bram_1_din_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(12),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(12)
    );
\bram_1_din_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(13),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(13)
    );
\bram_1_din_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(14),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(14)
    );
\bram_1_din_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(15),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(15)
    );
\bram_1_din_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(16),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(16)
    );
\bram_1_din_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(17),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(17)
    );
\bram_1_din_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(1),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(1)
    );
\bram_1_din_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(2),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(2)
    );
\bram_1_din_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(3),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(3)
    );
\bram_1_din_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(4),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(4)
    );
\bram_1_din_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(5),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(5)
    );
\bram_1_din_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(6),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(6)
    );
\bram_1_din_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(7),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(7)
    );
\bram_1_din_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(8),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(8)
    );
\bram_1_din_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bram_reg_bram_7(3),
      I1 => FILL_FSM_DIN(9),
      I2 => bram_reg_bram_7(0),
      O => \FSM_onehot_state_r_reg[3]\(9)
    );
\bram_2_addr_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(0),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(0),
      O => \FSM_onehot_state_r_reg[2]_13\
    );
\bram_2_addr_reg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(10),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(10),
      O => \FSM_onehot_state_r_reg[2]_3\
    );
\bram_2_addr_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(11),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(11),
      O => \FSM_onehot_state_r_reg[2]_2\
    );
\bram_2_addr_reg[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(12),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(12),
      O => \FSM_onehot_state_r_reg[2]_1\
    );
\bram_2_addr_reg[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(13),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(13),
      O => \FSM_onehot_state_r_reg[2]_0\
    );
\bram_2_addr_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(1),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(1),
      O => \FSM_onehot_state_r_reg[2]_12\
    );
\bram_2_addr_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(2),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(2),
      O => \FSM_onehot_state_r_reg[2]_11\
    );
\bram_2_addr_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(3),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(3),
      O => \FSM_onehot_state_r_reg[2]_10\
    );
\bram_2_addr_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(4),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(4),
      O => \FSM_onehot_state_r_reg[2]_9\
    );
\bram_2_addr_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(5),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(5),
      O => \FSM_onehot_state_r_reg[2]_8\
    );
\bram_2_addr_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(6),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(6),
      O => \FSM_onehot_state_r_reg[2]_7\
    );
\bram_2_addr_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(7),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(7),
      O => \FSM_onehot_state_r_reg[2]_6\
    );
\bram_2_addr_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(8),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(8),
      O => \FSM_onehot_state_r_reg[2]_5\
    );
\bram_2_addr_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^tdata_in[13]\(9),
      I1 => bram_reg_bram_7(2),
      I2 => bram_reg_bram_7(1),
      I3 => \bram_2_addr_reg[13]_i_1\(9),
      O => \FSM_onehot_state_r_reg[2]_4\
    );
\bram_2_din_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(0),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(0)
    );
\bram_2_din_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(10),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(10)
    );
\bram_2_din_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(11),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(11)
    );
\bram_2_din_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(12),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(12)
    );
\bram_2_din_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(13),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(13)
    );
\bram_2_din_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(14),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(14)
    );
\bram_2_din_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(15),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(15)
    );
\bram_2_din_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(16),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(16)
    );
\bram_2_din_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(17),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(17)
    );
\bram_2_din_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(1),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(1)
    );
\bram_2_din_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(2),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(2)
    );
\bram_2_din_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(3),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(3)
    );
\bram_2_din_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(4),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(4)
    );
\bram_2_din_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(5),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(5)
    );
\bram_2_din_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(6),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(6)
    );
\bram_2_din_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(7),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(7)
    );
\bram_2_din_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(8),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(8)
    );
\bram_2_din_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => FILL_FSM_DIN(9),
      I1 => bram_reg_bram_7(0),
      I2 => bram_reg_bram_7(2),
      O => \FSM_onehot_state_r_reg[0]_0\(9)
    );
\bram_addr_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(0),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(0)
    );
\bram_addr_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(10),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(10)
    );
\bram_addr_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(11),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(11)
    );
\bram_addr_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(12),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(12)
    );
\bram_addr_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(13),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(13)
    );
\bram_addr_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tvalid_in,
      I1 => \FSM_onehot_state_r_reg_n_0_[1]\,
      O => \bram_addr_reg[13]_i_1_n_0\
    );
\bram_addr_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(1),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(1)
    );
\bram_addr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(2),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(2)
    );
\bram_addr_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(3),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(3)
    );
\bram_addr_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(4),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(4)
    );
\bram_addr_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(5),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(5)
    );
\bram_addr_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(6),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(6)
    );
\bram_addr_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(7),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(7)
    );
\bram_addr_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(8),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(8)
    );
\bram_addr_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdata_in(9),
      G => \bram_addr_reg[13]_i_1_n_0\,
      GE => '1',
      Q => \^tdata_in[13]\(9)
    );
bram_din0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => read_value(0),
      CI_TOP => '0',
      CO(7) => bram_din0_carry_n_0,
      CO(6) => bram_din0_carry_n_1,
      CO(5) => bram_din0_carry_n_2,
      CO(4) => bram_din0_carry_n_3,
      CO(3) => bram_din0_carry_n_4,
      CO(2) => bram_din0_carry_n_5,
      CO(1) => bram_din0_carry_n_6,
      CO(0) => bram_din0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => bram_din0(8 downto 1),
      S(7 downto 0) => read_value(8 downto 1)
    );
\bram_din0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => bram_din0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \bram_din0_carry__0_n_0\,
      CO(6) => \bram_din0_carry__0_n_1\,
      CO(5) => \bram_din0_carry__0_n_2\,
      CO(4) => \bram_din0_carry__0_n_3\,
      CO(3) => \bram_din0_carry__0_n_4\,
      CO(2) => \bram_din0_carry__0_n_5\,
      CO(1) => \bram_din0_carry__0_n_6\,
      CO(0) => \bram_din0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => bram_din0(16 downto 9),
      S(7 downto 0) => read_value(16 downto 9)
    );
\bram_din0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(16),
      I1 => pixel_done,
      O => read_value(16)
    );
\bram_din0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(15),
      I1 => pixel_done,
      O => read_value(15)
    );
\bram_din0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(14),
      I1 => pixel_done,
      O => read_value(14)
    );
\bram_din0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(13),
      I1 => pixel_done,
      O => read_value(13)
    );
\bram_din0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(12),
      I1 => pixel_done,
      O => read_value(12)
    );
\bram_din0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(11),
      I1 => pixel_done,
      O => read_value(11)
    );
\bram_din0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(10),
      I1 => pixel_done,
      O => read_value(10)
    );
\bram_din0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(9),
      I1 => pixel_done,
      O => read_value(9)
    );
\bram_din0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_din0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_bram_din0_carry__1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_bram_din0_carry__1_O_UNCONNECTED\(7 downto 1),
      O(0) => bram_din0(17),
      S(7 downto 1) => B"0000000",
      S(0) => read_value(17)
    );
\bram_din0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(17),
      I1 => pixel_done,
      O => read_value(17)
    );
bram_din0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => pixel_done,
      O => read_value(0)
    );
bram_din0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(8),
      I1 => pixel_done,
      O => read_value(8)
    );
bram_din0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(7),
      I1 => pixel_done,
      O => read_value(7)
    );
bram_din0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => pixel_done,
      O => read_value(6)
    );
bram_din0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(5),
      I1 => pixel_done,
      O => read_value(5)
    );
bram_din0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => pixel_done,
      O => read_value(4)
    );
bram_din0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => pixel_done,
      O => read_value(3)
    );
bram_din0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => pixel_done,
      O => read_value(2)
    );
bram_din0_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => pixel_done,
      O => read_value(1)
    );
\bram_din_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[0]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(0)
    );
\bram_din_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => bin_full_warning_r_i_3_n_0,
      I1 => pixel_done,
      I2 => Q(0),
      O => \bram_din_reg[0]_i_1_n_0\
    );
\bram_din_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[10]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(10)
    );
\bram_din_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(10),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[10]_i_1_n_0\
    );
\bram_din_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[11]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(11)
    );
\bram_din_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(11),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[11]_i_1_n_0\
    );
\bram_din_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[12]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(12)
    );
\bram_din_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(12),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[12]_i_1_n_0\
    );
\bram_din_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[13]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(13)
    );
\bram_din_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(13),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[13]_i_1_n_0\
    );
\bram_din_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[14]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(14)
    );
\bram_din_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(14),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[14]_i_1_n_0\
    );
\bram_din_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[15]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(15)
    );
\bram_din_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(15),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[15]_i_1_n_0\
    );
\bram_din_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[16]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(16)
    );
\bram_din_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(16),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[16]_i_1_n_0\
    );
\bram_din_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[17]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(17)
    );
\bram_din_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(17),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[17]_i_1_n_0\
    );
\bram_din_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[1]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(1)
    );
\bram_din_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(1),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[1]_i_1_n_0\
    );
\bram_din_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[2]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(2)
    );
\bram_din_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(2),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[2]_i_1_n_0\
    );
\bram_din_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[3]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(3)
    );
\bram_din_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(3),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[3]_i_1_n_0\
    );
\bram_din_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[4]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(4)
    );
\bram_din_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(4),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[4]_i_1_n_0\
    );
\bram_din_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[5]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(5)
    );
\bram_din_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(5),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[5]_i_1_n_0\
    );
\bram_din_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[6]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(6)
    );
\bram_din_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(6),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[6]_i_1_n_0\
    );
\bram_din_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[7]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(7)
    );
\bram_din_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(7),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[7]_i_1_n_0\
    );
\bram_din_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[8]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(8)
    );
\bram_din_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(8),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[8]_i_1_n_0\
    );
\bram_din_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_din_reg[9]_i_1_n_0\,
      G => \FSM_onehot_state_r_reg_n_0_[2]\,
      GE => '1',
      Q => FILL_FSM_DIN(9)
    );
\bram_din_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_din0(9),
      I1 => bin_full_warning_r_i_3_n_0,
      O => \bram_din_reg[9]_i_1_n_0\
    );
bram_we_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_r_reg_n_0_[2]\,
      G => bram_we_reg_i_1_n_0,
      GE => '1',
      Q => \^fill_fsm_we\
    );
bram_we_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_r_reg_n_0_[1]\,
      O => bram_we_reg_i_1_n_0
    );
tready_in_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_r_reg_n_0_[2]\,
      I2 => tvalid_in,
      I3 => \FSM_onehot_state_r_reg_n_0_[1]\,
      O => tready_in_n
    );
tready_in_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tready_in_n,
      Q => tready_in,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0_READING_FSM is
  port (
    tvalid_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    tlast_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_state_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bram_addr_r_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    tdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    reading_fsm_state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_r_reg[3]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    tready_out : in STD_LOGIC;
    pixel_done : in STD_LOGIC;
    \tdata_out_r_reg[17]_0\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    tlast_out_r_i_2_0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \FSM_onehot_state_r_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLEAR_IDLE_FLAG : in STD_LOGIC;
    \bram_2_addr_reg[13]\ : in STD_LOGIC;
    \bram_2_addr_reg[12]\ : in STD_LOGIC;
    \bram_2_addr_reg[11]\ : in STD_LOGIC;
    bram_reg_bram_7 : in STD_LOGIC;
    bram_reg_bram_7_0 : in STD_LOGIC;
    bram_reg_bram_7_1 : in STD_LOGIC;
    bram_reg_bram_7_2 : in STD_LOGIC;
    bram_reg_bram_7_3 : in STD_LOGIC;
    bram_reg_bram_7_4 : in STD_LOGIC;
    bram_reg_bram_7_5 : in STD_LOGIC;
    bram_reg_bram_7_6 : in STD_LOGIC;
    bram_reg_bram_7_7 : in STD_LOGIC;
    bram_reg_bram_7_8 : in STD_LOGIC;
    bram_reg_bram_7_9 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    MAX_PIXELS : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_HISTOGRAM_ARBITER_FSM_0_0_READING_FSM : entity is "READING_FSM";
end histo_HISTOGRAM_ARBITER_FSM_0_0_READING_FSM;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0_READING_FSM is
  signal \FSM_sequential_state_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_r_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal IDLE_FLAG_r_i_1_n_0 : STD_LOGIC;
  signal IDLE_FLAG_r_i_2_n_0 : STD_LOGIC;
  signal IDLE_FLAG_r_i_3_n_0 : STD_LOGIC;
  signal IDLE_FLAG_r_i_4_n_0 : STD_LOGIC;
  signal IDLE_FLAG_r_i_5_n_0 : STD_LOGIC;
  signal MAX_PIXELS_R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal READ_IDLE_FLAG : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bram_addr_r : STD_LOGIC;
  signal \bram_addr_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[10]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[12]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_2__0_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_5_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_6_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_7_n_0\ : STD_LOGIC;
  signal \bram_addr_r[13]_i_8_n_0\ : STD_LOGIC;
  signal \bram_addr_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[9]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_r[9]_i_2_n_0\ : STD_LOGIC;
  signal \^bram_addr_r_reg[13]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal in7 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \pixel_counter_n0_carry__0_n_0\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__0_n_1\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__0_n_2\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__0_n_3\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__0_n_4\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__0_n_5\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__0_n_6\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__0_n_7\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_0\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_1\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_2\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_3\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_4\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_5\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_6\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__1_n_7\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__2_n_2\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__2_n_3\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__2_n_4\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__2_n_5\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__2_n_6\ : STD_LOGIC;
  signal \pixel_counter_n0_carry__2_n_7\ : STD_LOGIC;
  signal pixel_counter_n0_carry_n_0 : STD_LOGIC;
  signal pixel_counter_n0_carry_n_1 : STD_LOGIC;
  signal pixel_counter_n0_carry_n_2 : STD_LOGIC;
  signal pixel_counter_n0_carry_n_3 : STD_LOGIC;
  signal pixel_counter_n0_carry_n_4 : STD_LOGIC;
  signal pixel_counter_n0_carry_n_5 : STD_LOGIC;
  signal pixel_counter_n0_carry_n_6 : STD_LOGIC;
  signal pixel_counter_n0_carry_n_7 : STD_LOGIC;
  signal \pixel_counter_n__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pixel_counter_r : STD_LOGIC;
  signal \^reading_fsm_state_dbg\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_n11_in : STD_LOGIC;
  signal \state_n1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state_n1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state_n1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state_n1_carry__0_n_6\ : STD_LOGIC;
  signal \state_n1_carry__0_n_7\ : STD_LOGIC;
  signal state_n1_carry_i_1_n_0 : STD_LOGIC;
  signal state_n1_carry_i_2_n_0 : STD_LOGIC;
  signal state_n1_carry_i_3_n_0 : STD_LOGIC;
  signal state_n1_carry_i_4_n_0 : STD_LOGIC;
  signal state_n1_carry_i_5_n_0 : STD_LOGIC;
  signal state_n1_carry_i_6_n_0 : STD_LOGIC;
  signal state_n1_carry_i_7_n_0 : STD_LOGIC;
  signal state_n1_carry_i_8_n_0 : STD_LOGIC;
  signal state_n1_carry_n_0 : STD_LOGIC;
  signal state_n1_carry_n_1 : STD_LOGIC;
  signal state_n1_carry_n_2 : STD_LOGIC;
  signal state_n1_carry_n_3 : STD_LOGIC;
  signal state_n1_carry_n_4 : STD_LOGIC;
  signal state_n1_carry_n_5 : STD_LOGIC;
  signal state_n1_carry_n_6 : STD_LOGIC;
  signal state_n1_carry_n_7 : STD_LOGIC;
  signal \state_n__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state_r : STD_LOGIC;
  signal \state_r__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^tdata_out\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tdata_out_n : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \tdata_out_r[17]_i_2_n_0\ : STD_LOGIC;
  signal tlast_out_n : STD_LOGIC;
  signal tlast_out_r_i_2_n_0 : STD_LOGIC;
  signal tlast_out_r_i_3_n_0 : STD_LOGIC;
  signal tlast_out_r_i_4_n_0 : STD_LOGIC;
  signal tlast_out_r_i_5_n_0 : STD_LOGIC;
  signal tlast_out_r_i_6_n_0 : STD_LOGIC;
  signal tlast_out_r_i_7_n_0 : STD_LOGIC;
  signal tvalid_out_r_i_1_n_0 : STD_LOGIC;
  signal \NLW_pixel_counter_n0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_pixel_counter_n0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_state_n1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_state_n1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_state_n1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_r[1]_i_1__0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \FSM_onehot_state_r[2]_i_1__1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[0]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[1]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[3]_i_2\ : label is "soft_lutpair110";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[0]\ : label is "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[1]\ : label is "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[2]\ : label is "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[3]\ : label is "IDLE:0000,ACC4:0111,DELAY:1000,ACC3:0110,ACC2:0101,ACC1:0100,WAIT:0011,WRITE_START_MESSAGE:0010,IDLE2:0001";
  attribute SOFT_HLUTNM of IDLE_FLAG_r_i_2 : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of IDLE_FLAG_r_i_5 : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \bram_2_addr_reg[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \bram_2_addr_reg[1]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \bram_addr_r[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \bram_addr_r[12]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \bram_addr_r[13]_i_2__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \bram_addr_r[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \bram_addr_r[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \bram_addr_r[3]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \bram_addr_r[5]_i_2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \bram_addr_r[6]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \bram_addr_r[7]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \bram_addr_r[8]_i_1\ : label is "soft_lutpair109";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of pixel_counter_n0_carry : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_n0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_n0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_n0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \pixel_counter_r[0]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \pixel_counter_r[10]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \pixel_counter_r[11]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \pixel_counter_r[12]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \pixel_counter_r[13]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \pixel_counter_r[14]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \pixel_counter_r[15]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \pixel_counter_r[16]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \pixel_counter_r[17]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \pixel_counter_r[18]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \pixel_counter_r[19]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \pixel_counter_r[1]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \pixel_counter_r[20]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \pixel_counter_r[21]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \pixel_counter_r[22]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \pixel_counter_r[23]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \pixel_counter_r[24]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \pixel_counter_r[25]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \pixel_counter_r[26]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \pixel_counter_r[27]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \pixel_counter_r[28]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \pixel_counter_r[29]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \pixel_counter_r[2]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \pixel_counter_r[30]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \pixel_counter_r[31]_i_2\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \pixel_counter_r[3]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \pixel_counter_r[4]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \pixel_counter_r[5]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \pixel_counter_r[6]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \pixel_counter_r[7]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \pixel_counter_r[8]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \pixel_counter_r[9]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \reading_fsm_state_dbg[0]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \reading_fsm_state_dbg[1]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \reading_fsm_state_dbg[2]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \tdata_out_r[17]_i_2\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \tdata_out_r[32]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \tdata_out_r[33]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \tdata_out_r[34]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \tdata_out_r[35]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \tdata_out_r[36]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \tdata_out_r[37]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \tdata_out_r[38]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \tdata_out_r[39]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \tdata_out_r[40]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \tdata_out_r[41]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \tdata_out_r[42]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \tdata_out_r[43]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \tdata_out_r[44]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \tdata_out_r[45]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \tdata_out_r[47]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \tdata_out_r[48]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \tdata_out_r[49]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \tdata_out_r[51]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \tdata_out_r[54]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \tdata_out_r[55]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \tdata_out_r[56]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \tdata_out_r[58]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \tdata_out_r[59]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \tdata_out_r[61]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \tdata_out_r[62]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \tdata_out_r[63]_i_1\ : label is "soft_lutpair111";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[0]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[10]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[11]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[12]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[13]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[14]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[15]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[16]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[17]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[18]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[19]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[1]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[20]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[21]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[22]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[23]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[24]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[25]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[26]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[27]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[28]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[29]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[2]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[30]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[31]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[32]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[33]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[34]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[35]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[36]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[37]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[38]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[39]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[3]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[40]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[41]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[42]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[43]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[44]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[45]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[46]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[47]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[48]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[49]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[4]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[50]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[51]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[52]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[53]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[54]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[55]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[56]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[57]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[58]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[59]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[5]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[60]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[61]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[62]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[63]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[6]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[7]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[8]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of \tdata_out_r_reg[9]\ : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_INFO of tlast_out_r_reg : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST";
  attribute SOFT_HLUTNM of tvalid_out_r_i_1 : label is "soft_lutpair101";
  attribute X_INTERFACE_INFO of tvalid_out_r_reg : label is "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID";
begin
  \FSM_sequential_state_r_reg[3]_0\(0) <= \^fsm_sequential_state_r_reg[3]_0\(0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  SR(0) <= \^sr\(0);
  \bram_addr_r_reg[13]_0\(13 downto 0) <= \^bram_addr_r_reg[13]_0\(13 downto 0);
  reading_fsm_state_dbg(2 downto 0) <= \^reading_fsm_state_dbg\(2 downto 0);
  tdata_out(63 downto 0) <= \^tdata_out\(63 downto 0);
\FSM_onehot_state_r[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => READ_IDLE_FLAG,
      I1 => CLEAR_IDLE_FLAG,
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => \FSM_onehot_state_r_reg[4]\(3),
      O => D(0)
    );
\FSM_onehot_state_r[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(1),
      I1 => READ_IDLE_FLAG,
      I2 => CLEAR_IDLE_FLAG,
      O => D(1)
    );
\FSM_onehot_state_r[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(2),
      I1 => READ_IDLE_FLAG,
      I2 => CLEAR_IDLE_FLAG,
      O => D(2)
    );
\FSM_onehot_state_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFEFFFEFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(1),
      I1 => \FSM_onehot_state_r_reg[4]\(0),
      I2 => \FSM_onehot_state_r_reg[4]\(3),
      I3 => \FSM_onehot_state_r_reg[4]\(2),
      I4 => READ_IDLE_FLAG,
      I5 => CLEAR_IDLE_FLAG,
      O => D(3)
    );
\FSM_sequential_state_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB11BB11BF11BB11"
    )
        port map (
      I0 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I1 => \state_r__0\(0),
      I2 => state_n11_in,
      I3 => \FSM_sequential_state_r[2]_i_2_n_0\,
      I4 => tready_out,
      I5 => \FSM_sequential_state_r[0]_i_2_n_0\,
      O => \state_n__0\(0)
    );
\FSM_sequential_state_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \state_r__0\(1),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => \FSM_sequential_state_r[0]_i_2_n_0\
    );
\FSM_sequential_state_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \state_n__0\(1)
    );
\FSM_sequential_state_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555554FF0F0F0"
    )
        port map (
      I0 => \FSM_sequential_state_r[2]_i_2_n_0\,
      I1 => tready_out,
      I2 => \state_r__0\(2),
      I3 => \state_r__0\(1),
      I4 => \state_r__0\(0),
      I5 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \state_n__0\(2)
    );
\FSM_sequential_state_r[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tlast_out_r_i_2_n_0,
      I1 => \bram_addr_r[13]_i_6_n_0\,
      O => \FSM_sequential_state_r[2]_i_2_n_0\
    );
\FSM_sequential_state_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => en,
      I1 => \FSM_sequential_state_r[3]_i_3_n_0\,
      O => state_r
    );
\FSM_sequential_state_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => tready_out,
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => \state_n__0\(3)
    );
\FSM_sequential_state_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABA2AAAAABF7"
    )
        port map (
      I0 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I1 => tready_out,
      I2 => \state_r__0\(0),
      I3 => \state_r__0\(1),
      I4 => \state_r__0\(2),
      I5 => pixel_done,
      O => \FSM_sequential_state_r[3]_i_3_n_0\
    );
\FSM_sequential_state_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_r,
      D => \state_n__0\(0),
      Q => \state_r__0\(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_r,
      D => \state_n__0\(1),
      Q => \state_r__0\(1),
      R => \^sr\(0)
    );
\FSM_sequential_state_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_r,
      D => \state_n__0\(2),
      Q => \state_r__0\(2),
      R => \^sr\(0)
    );
\FSM_sequential_state_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_r,
      D => \state_n__0\(3),
      Q => \^fsm_sequential_state_r_reg[3]_0\(0),
      R => \^sr\(0)
    );
IDLE_FLAG_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBFB00088808"
    )
        port map (
      I0 => IDLE_FLAG_r_i_2_n_0,
      I1 => en,
      I2 => IDLE_FLAG_r_i_3_n_0,
      I3 => \state_r__0\(0),
      I4 => IDLE_FLAG_r_i_4_n_0,
      I5 => READ_IDLE_FLAG,
      O => IDLE_FLAG_r_i_1_n_0
    );
IDLE_FLAG_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01F10000"
    )
        port map (
      I0 => \state_r__0\(1),
      I1 => \state_r__0\(0),
      I2 => \state_r__0\(2),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => tready_out,
      O => IDLE_FLAG_r_i_2_n_0
    );
IDLE_FLAG_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFFFEFFFFFFF"
    )
        port map (
      I0 => \state_r__0\(2),
      I1 => \state_r__0\(1),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I3 => tready_out,
      I4 => \bram_addr_r[13]_i_6_n_0\,
      I5 => tlast_out_r_i_2_n_0,
      O => IDLE_FLAG_r_i_3_n_0
    );
IDLE_FLAG_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAA2AAAAAAA"
    )
        port map (
      I0 => IDLE_FLAG_r_i_5_n_0,
      I1 => \state_r__0\(1),
      I2 => \^reading_fsm_state_dbg\(2),
      I3 => tready_out,
      I4 => \bram_addr_r[13]_i_6_n_0\,
      I5 => tlast_out_r_i_2_n_0,
      O => IDLE_FLAG_r_i_4_n_0
    );
IDLE_FLAG_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => pixel_done,
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(2),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => IDLE_FLAG_r_i_5_n_0
    );
IDLE_FLAG_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => IDLE_FLAG_r_i_1_n_0,
      Q => READ_IDLE_FLAG,
      S => \^sr\(0)
    );
\MAX_PIXELS_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(0),
      Q => MAX_PIXELS_R(0),
      R => '0'
    );
\MAX_PIXELS_R_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(10),
      Q => MAX_PIXELS_R(10),
      R => '0'
    );
\MAX_PIXELS_R_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(11),
      Q => MAX_PIXELS_R(11),
      R => '0'
    );
\MAX_PIXELS_R_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(12),
      Q => MAX_PIXELS_R(12),
      R => '0'
    );
\MAX_PIXELS_R_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(13),
      Q => MAX_PIXELS_R(13),
      R => '0'
    );
\MAX_PIXELS_R_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(14),
      Q => MAX_PIXELS_R(14),
      R => '0'
    );
\MAX_PIXELS_R_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(15),
      Q => MAX_PIXELS_R(15),
      R => '0'
    );
\MAX_PIXELS_R_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(16),
      Q => MAX_PIXELS_R(16),
      R => '0'
    );
\MAX_PIXELS_R_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(17),
      Q => MAX_PIXELS_R(17),
      R => '0'
    );
\MAX_PIXELS_R_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(18),
      Q => MAX_PIXELS_R(18),
      R => '0'
    );
\MAX_PIXELS_R_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(19),
      Q => MAX_PIXELS_R(19),
      R => '0'
    );
\MAX_PIXELS_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(1),
      Q => MAX_PIXELS_R(1),
      R => '0'
    );
\MAX_PIXELS_R_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(20),
      Q => MAX_PIXELS_R(20),
      R => '0'
    );
\MAX_PIXELS_R_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(21),
      Q => MAX_PIXELS_R(21),
      R => '0'
    );
\MAX_PIXELS_R_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(22),
      Q => MAX_PIXELS_R(22),
      R => '0'
    );
\MAX_PIXELS_R_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(23),
      Q => MAX_PIXELS_R(23),
      R => '0'
    );
\MAX_PIXELS_R_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(24),
      Q => MAX_PIXELS_R(24),
      R => '0'
    );
\MAX_PIXELS_R_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(25),
      Q => MAX_PIXELS_R(25),
      R => '0'
    );
\MAX_PIXELS_R_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(26),
      Q => MAX_PIXELS_R(26),
      R => '0'
    );
\MAX_PIXELS_R_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(27),
      Q => MAX_PIXELS_R(27),
      R => '0'
    );
\MAX_PIXELS_R_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(28),
      Q => MAX_PIXELS_R(28),
      R => '0'
    );
\MAX_PIXELS_R_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(29),
      Q => MAX_PIXELS_R(29),
      R => '0'
    );
\MAX_PIXELS_R_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(2),
      Q => MAX_PIXELS_R(2),
      R => '0'
    );
\MAX_PIXELS_R_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(30),
      Q => MAX_PIXELS_R(30),
      R => '0'
    );
\MAX_PIXELS_R_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(31),
      Q => MAX_PIXELS_R(31),
      R => '0'
    );
\MAX_PIXELS_R_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(3),
      Q => MAX_PIXELS_R(3),
      R => '0'
    );
\MAX_PIXELS_R_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(4),
      Q => MAX_PIXELS_R(4),
      R => '0'
    );
\MAX_PIXELS_R_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(5),
      Q => MAX_PIXELS_R(5),
      R => '0'
    );
\MAX_PIXELS_R_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(6),
      Q => MAX_PIXELS_R(6),
      R => '0'
    );
\MAX_PIXELS_R_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(7),
      Q => MAX_PIXELS_R(7),
      R => '0'
    );
\MAX_PIXELS_R_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(8),
      Q => MAX_PIXELS_R(8),
      R => '0'
    );
\MAX_PIXELS_R_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => MAX_PIXELS(9),
      Q => MAX_PIXELS_R(9),
      R => '0'
    );
bin_full_warning_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
\bram_2_addr_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(0),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_9,
      O => \FSM_onehot_state_r_reg[3]\(0)
    );
\bram_2_addr_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(10),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7,
      O => \FSM_onehot_state_r_reg[3]\(10)
    );
\bram_2_addr_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(11),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => \bram_2_addr_reg[11]\,
      O => \FSM_onehot_state_r_reg[3]\(11)
    );
\bram_2_addr_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(12),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => \bram_2_addr_reg[12]\,
      O => \FSM_onehot_state_r_reg[3]\(12)
    );
\bram_2_addr_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(13),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => \bram_2_addr_reg[13]\,
      O => \FSM_onehot_state_r_reg[3]\(13)
    );
\bram_2_addr_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(1),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_8,
      O => \FSM_onehot_state_r_reg[3]\(1)
    );
\bram_2_addr_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(2),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_7,
      O => \FSM_onehot_state_r_reg[3]\(2)
    );
\bram_2_addr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(3),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_6,
      O => \FSM_onehot_state_r_reg[3]\(3)
    );
\bram_2_addr_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(4),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_5,
      O => \FSM_onehot_state_r_reg[3]\(4)
    );
\bram_2_addr_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(5),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_4,
      O => \FSM_onehot_state_r_reg[3]\(5)
    );
\bram_2_addr_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(6),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_3,
      O => \FSM_onehot_state_r_reg[3]\(6)
    );
\bram_2_addr_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(7),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_2,
      O => \FSM_onehot_state_r_reg[3]\(7)
    );
\bram_2_addr_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(8),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_1,
      O => \FSM_onehot_state_r_reg[3]\(8)
    );
\bram_2_addr_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg[4]\(3),
      I1 => \^bram_addr_r_reg[13]_0\(9),
      I2 => \FSM_onehot_state_r_reg[4]\(0),
      I3 => bram_reg_bram_7_0,
      O => \FSM_onehot_state_r_reg[3]\(9)
    );
\bram_addr_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(0),
      O => \bram_addr_r[0]_i_1_n_0\
    );
\bram_addr_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(8),
      I2 => \bram_addr_r[10]_i_2_n_0\,
      I3 => \^bram_addr_r_reg[13]_0\(7),
      I4 => \^bram_addr_r_reg[13]_0\(9),
      I5 => \^bram_addr_r_reg[13]_0\(10),
      O => \bram_addr_r[10]_i_1_n_0\
    );
\bram_addr_r[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(5),
      I1 => \^bram_addr_r_reg[13]_0\(3),
      I2 => \bram_addr_r[5]_i_2_n_0\,
      I3 => \^bram_addr_r_reg[13]_0\(2),
      I4 => \^bram_addr_r_reg[13]_0\(4),
      I5 => \^bram_addr_r_reg[13]_0\(6),
      O => \bram_addr_r[10]_i_2_n_0\
    );
\bram_addr_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \bram_addr_r[13]_i_4_n_0\,
      I2 => \^bram_addr_r_reg[13]_0\(11),
      O => \bram_addr_r[11]_i_1_n_0\
    );
\bram_addr_r[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(11),
      I2 => \bram_addr_r[13]_i_4_n_0\,
      I3 => \^bram_addr_r_reg[13]_0\(12),
      O => \bram_addr_r[12]_i_1_n_0\
    );
\bram_addr_r[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => en,
      I1 => \bram_addr_r[13]_i_3_n_0\,
      O => bram_addr_r
    );
\bram_addr_r[13]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF200000"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(11),
      I1 => \bram_addr_r[13]_i_4_n_0\,
      I2 => \^bram_addr_r_reg[13]_0\(12),
      I3 => \^bram_addr_r_reg[13]_0\(13),
      I4 => \bram_addr_r[13]_i_5_n_0\,
      O => \bram_addr_r[13]_i_2__0_n_0\
    );
\bram_addr_r[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAAAAAAAAFFFF27"
    )
        port map (
      I0 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I1 => tready_out,
      I2 => pixel_done,
      I3 => \state_r__0\(0),
      I4 => \state_r__0\(1),
      I5 => \state_r__0\(2),
      O => \bram_addr_r[13]_i_3_n_0\
    );
\bram_addr_r[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(9),
      I1 => \^bram_addr_r_reg[13]_0\(7),
      I2 => \bram_addr_r[9]_i_2_n_0\,
      I3 => \^bram_addr_r_reg[13]_0\(6),
      I4 => \^bram_addr_r_reg[13]_0\(8),
      I5 => \^bram_addr_r_reg[13]_0\(10),
      O => \bram_addr_r[13]_i_4_n_0\
    );
\bram_addr_r[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007E007E007E01FE"
    )
        port map (
      I0 => \state_r__0\(1),
      I1 => \state_r__0\(2),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => tlast_out_r_i_2_n_0,
      I5 => \bram_addr_r[13]_i_6_n_0\,
      O => \bram_addr_r[13]_i_5_n_0\
    );
\bram_addr_r[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \bram_addr_r[13]_i_7_n_0\,
      I1 => \bram_addr_r[13]_i_8_n_0\,
      I2 => \^bram_addr_r_reg[13]_0\(11),
      I3 => \^bram_addr_r_reg[13]_0\(3),
      I4 => \^bram_addr_r_reg[13]_0\(12),
      I5 => \^bram_addr_r_reg[13]_0\(4),
      O => \bram_addr_r[13]_i_6_n_0\
    );
\bram_addr_r[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(1),
      I1 => \^bram_addr_r_reg[13]_0\(0),
      I2 => \^bram_addr_r_reg[13]_0\(5),
      I3 => \^bram_addr_r_reg[13]_0\(10),
      I4 => \^bram_addr_r_reg[13]_0\(6),
      I5 => \^bram_addr_r_reg[13]_0\(7),
      O => \bram_addr_r[13]_i_7_n_0\
    );
\bram_addr_r[13]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(13),
      I1 => \^bram_addr_r_reg[13]_0\(8),
      I2 => \^bram_addr_r_reg[13]_0\(9),
      I3 => \^bram_addr_r_reg[13]_0\(2),
      O => \bram_addr_r[13]_i_8_n_0\
    );
\bram_addr_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(0),
      I2 => \^bram_addr_r_reg[13]_0\(1),
      O => \bram_addr_r[1]_i_1_n_0\
    );
\bram_addr_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(0),
      I2 => \^bram_addr_r_reg[13]_0\(1),
      I3 => \^bram_addr_r_reg[13]_0\(2),
      O => \bram_addr_r[2]_i_1_n_0\
    );
\bram_addr_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(1),
      I2 => \^bram_addr_r_reg[13]_0\(0),
      I3 => \^bram_addr_r_reg[13]_0\(2),
      I4 => \^bram_addr_r_reg[13]_0\(3),
      O => \bram_addr_r[3]_i_1_n_0\
    );
\bram_addr_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(2),
      I2 => \^bram_addr_r_reg[13]_0\(0),
      I3 => \^bram_addr_r_reg[13]_0\(1),
      I4 => \^bram_addr_r_reg[13]_0\(3),
      I5 => \^bram_addr_r_reg[13]_0\(4),
      O => \bram_addr_r[4]_i_1_n_0\
    );
\bram_addr_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(3),
      I2 => \bram_addr_r[5]_i_2_n_0\,
      I3 => \^bram_addr_r_reg[13]_0\(2),
      I4 => \^bram_addr_r_reg[13]_0\(4),
      I5 => \^bram_addr_r_reg[13]_0\(5),
      O => \bram_addr_r[5]_i_1_n_0\
    );
\bram_addr_r[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(0),
      I1 => \^bram_addr_r_reg[13]_0\(1),
      O => \bram_addr_r[5]_i_2_n_0\
    );
\bram_addr_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \bram_addr_r[9]_i_2_n_0\,
      I2 => \^bram_addr_r_reg[13]_0\(6),
      O => \bram_addr_r[6]_i_1_n_0\
    );
\bram_addr_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \bram_addr_r[9]_i_2_n_0\,
      I2 => \^bram_addr_r_reg[13]_0\(6),
      I3 => \^bram_addr_r_reg[13]_0\(7),
      O => \bram_addr_r[7]_i_1_n_0\
    );
\bram_addr_r[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(6),
      I2 => \bram_addr_r[9]_i_2_n_0\,
      I3 => \^bram_addr_r_reg[13]_0\(7),
      I4 => \^bram_addr_r_reg[13]_0\(8),
      O => \bram_addr_r[8]_i_1_n_0\
    );
\bram_addr_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \bram_addr_r[13]_i_5_n_0\,
      I1 => \^bram_addr_r_reg[13]_0\(7),
      I2 => \bram_addr_r[9]_i_2_n_0\,
      I3 => \^bram_addr_r_reg[13]_0\(6),
      I4 => \^bram_addr_r_reg[13]_0\(8),
      I5 => \^bram_addr_r_reg[13]_0\(9),
      O => \bram_addr_r[9]_i_1_n_0\
    );
\bram_addr_r[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(4),
      I1 => \^bram_addr_r_reg[13]_0\(2),
      I2 => \^bram_addr_r_reg[13]_0\(0),
      I3 => \^bram_addr_r_reg[13]_0\(1),
      I4 => \^bram_addr_r_reg[13]_0\(3),
      I5 => \^bram_addr_r_reg[13]_0\(5),
      O => \bram_addr_r[9]_i_2_n_0\
    );
\bram_addr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[0]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(0),
      R => \^sr\(0)
    );
\bram_addr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[10]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(10),
      R => \^sr\(0)
    );
\bram_addr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[11]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(11),
      R => \^sr\(0)
    );
\bram_addr_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[12]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(12),
      R => \^sr\(0)
    );
\bram_addr_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[13]_i_2__0_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(13),
      R => \^sr\(0)
    );
\bram_addr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[1]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(1),
      R => \^sr\(0)
    );
\bram_addr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[2]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(2),
      R => \^sr\(0)
    );
\bram_addr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[3]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(3),
      R => \^sr\(0)
    );
\bram_addr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[4]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(4),
      R => \^sr\(0)
    );
\bram_addr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[5]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(5),
      R => \^sr\(0)
    );
\bram_addr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[6]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(6),
      R => \^sr\(0)
    );
\bram_addr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[7]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(7),
      R => \^sr\(0)
    );
\bram_addr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[8]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(8),
      R => \^sr\(0)
    );
\bram_addr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bram_addr_r,
      D => \bram_addr_r[9]_i_1_n_0\,
      Q => \^bram_addr_r_reg[13]_0\(9),
      R => \^sr\(0)
    );
pixel_counter_n0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7) => pixel_counter_n0_carry_n_0,
      CO(6) => pixel_counter_n0_carry_n_1,
      CO(5) => pixel_counter_n0_carry_n_2,
      CO(4) => pixel_counter_n0_carry_n_3,
      CO(3) => pixel_counter_n0_carry_n_4,
      CO(2) => pixel_counter_n0_carry_n_5,
      CO(1) => pixel_counter_n0_carry_n_6,
      CO(0) => pixel_counter_n0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in7(8 downto 1),
      S(7 downto 0) => \^q\(8 downto 1)
    );
\pixel_counter_n0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => pixel_counter_n0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \pixel_counter_n0_carry__0_n_0\,
      CO(6) => \pixel_counter_n0_carry__0_n_1\,
      CO(5) => \pixel_counter_n0_carry__0_n_2\,
      CO(4) => \pixel_counter_n0_carry__0_n_3\,
      CO(3) => \pixel_counter_n0_carry__0_n_4\,
      CO(2) => \pixel_counter_n0_carry__0_n_5\,
      CO(1) => \pixel_counter_n0_carry__0_n_6\,
      CO(0) => \pixel_counter_n0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in7(16 downto 9),
      S(7 downto 0) => \^q\(16 downto 9)
    );
\pixel_counter_n0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pixel_counter_n0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \pixel_counter_n0_carry__1_n_0\,
      CO(6) => \pixel_counter_n0_carry__1_n_1\,
      CO(5) => \pixel_counter_n0_carry__1_n_2\,
      CO(4) => \pixel_counter_n0_carry__1_n_3\,
      CO(3) => \pixel_counter_n0_carry__1_n_4\,
      CO(2) => \pixel_counter_n0_carry__1_n_5\,
      CO(1) => \pixel_counter_n0_carry__1_n_6\,
      CO(0) => \pixel_counter_n0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in7(24 downto 17),
      S(7 downto 0) => \^q\(24 downto 17)
    );
\pixel_counter_n0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \pixel_counter_n0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_pixel_counter_n0_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \pixel_counter_n0_carry__2_n_2\,
      CO(4) => \pixel_counter_n0_carry__2_n_3\,
      CO(3) => \pixel_counter_n0_carry__2_n_4\,
      CO(2) => \pixel_counter_n0_carry__2_n_5\,
      CO(1) => \pixel_counter_n0_carry__2_n_6\,
      CO(0) => \pixel_counter_n0_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_pixel_counter_n0_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => in7(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => \^q\(31 downto 25)
    );
\pixel_counter_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(0)
    );
\pixel_counter_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(10),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(10)
    );
\pixel_counter_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(11),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(11)
    );
\pixel_counter_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(12),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(12)
    );
\pixel_counter_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(13),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(13)
    );
\pixel_counter_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(14),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(14)
    );
\pixel_counter_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(15),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(15)
    );
\pixel_counter_r[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(16),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(16)
    );
\pixel_counter_r[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(17),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(17)
    );
\pixel_counter_r[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(18),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(18)
    );
\pixel_counter_r[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(19),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(19)
    );
\pixel_counter_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(1),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(1)
    );
\pixel_counter_r[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(20),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(20)
    );
\pixel_counter_r[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(21),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(21)
    );
\pixel_counter_r[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(22),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(22)
    );
\pixel_counter_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(23),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(23)
    );
\pixel_counter_r[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(24),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(24)
    );
\pixel_counter_r[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(25),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(25)
    );
\pixel_counter_r[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(26),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(26)
    );
\pixel_counter_r[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(27),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(27)
    );
\pixel_counter_r[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(28),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(28)
    );
\pixel_counter_r[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(29),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(29)
    );
\pixel_counter_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(2),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(2)
    );
\pixel_counter_r[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(30),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(30)
    );
\pixel_counter_r[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B380000000000000"
    )
        port map (
      I0 => tlast_out_r_i_2_n_0,
      I1 => \state_r__0\(2),
      I2 => state_n11_in,
      I3 => tready_out,
      I4 => tvalid_out_r_i_1_n_0,
      I5 => en,
      O => pixel_counter_r
    );
\pixel_counter_r[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(31),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(31)
    );
\pixel_counter_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(3),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(3)
    );
\pixel_counter_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(4),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(4)
    );
\pixel_counter_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(5),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(5)
    );
\pixel_counter_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(6),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(6)
    );
\pixel_counter_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(7),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(7)
    );
\pixel_counter_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(8),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(8)
    );
\pixel_counter_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => in7(9),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \pixel_counter_n__0\(9)
    );
\pixel_counter_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(20),
      Q => \^q\(20),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(21),
      Q => \^q\(21),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(22),
      Q => \^q\(22),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(23),
      Q => \^q\(23),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(24),
      Q => \^q\(24),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(25),
      Q => \^q\(25),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(26),
      Q => \^q\(26),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(27),
      Q => \^q\(27),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(28),
      Q => \^q\(28),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(29),
      Q => \^q\(29),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(30),
      Q => \^q\(30),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(31),
      Q => \^q\(31),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\pixel_counter_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pixel_counter_r,
      D => \pixel_counter_n__0\(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\reading_fsm_state_dbg[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \^reading_fsm_state_dbg\(0)
    );
\reading_fsm_state_dbg[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_r__0\(1),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \^reading_fsm_state_dbg\(1)
    );
\reading_fsm_state_dbg[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_r__0\(2),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => \^reading_fsm_state_dbg\(2)
    );
state_n1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => state_n1_carry_n_0,
      CO(6) => state_n1_carry_n_1,
      CO(5) => state_n1_carry_n_2,
      CO(4) => state_n1_carry_n_3,
      CO(3) => state_n1_carry_n_4,
      CO(2) => state_n1_carry_n_5,
      CO(1) => state_n1_carry_n_6,
      CO(0) => state_n1_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_state_n1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => state_n1_carry_i_1_n_0,
      S(6) => state_n1_carry_i_2_n_0,
      S(5) => state_n1_carry_i_3_n_0,
      S(4) => state_n1_carry_i_4_n_0,
      S(3) => state_n1_carry_i_5_n_0,
      S(2) => state_n1_carry_i_6_n_0,
      S(1) => state_n1_carry_i_7_n_0,
      S(0) => state_n1_carry_i_8_n_0
    );
\state_n1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => state_n1_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_state_n1_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => state_n11_in,
      CO(1) => \state_n1_carry__0_n_6\,
      CO(0) => \state_n1_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_state_n1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \state_n1_carry__0_i_1_n_0\,
      S(1) => \state_n1_carry__0_i_2_n_0\,
      S(0) => \state_n1_carry__0_i_3_n_0\
    );
\state_n1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => MAX_PIXELS_R(31),
      I1 => \^q\(31),
      I2 => MAX_PIXELS_R(30),
      I3 => \^q\(30),
      O => \state_n1_carry__0_i_1_n_0\
    );
\state_n1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(27),
      I1 => MAX_PIXELS_R(27),
      I2 => \^q\(28),
      I3 => MAX_PIXELS_R(28),
      I4 => MAX_PIXELS_R(29),
      I5 => \^q\(29),
      O => \state_n1_carry__0_i_2_n_0\
    );
\state_n1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(25),
      I1 => MAX_PIXELS_R(25),
      I2 => \^q\(24),
      I3 => MAX_PIXELS_R(24),
      I4 => MAX_PIXELS_R(26),
      I5 => \^q\(26),
      O => \state_n1_carry__0_i_3_n_0\
    );
state_n1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(21),
      I1 => MAX_PIXELS_R(21),
      I2 => \^q\(22),
      I3 => MAX_PIXELS_R(22),
      I4 => MAX_PIXELS_R(23),
      I5 => \^q\(23),
      O => state_n1_carry_i_1_n_0
    );
state_n1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(18),
      I1 => MAX_PIXELS_R(18),
      I2 => \^q\(19),
      I3 => MAX_PIXELS_R(19),
      I4 => MAX_PIXELS_R(20),
      I5 => \^q\(20),
      O => state_n1_carry_i_2_n_0
    );
state_n1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(15),
      I1 => MAX_PIXELS_R(15),
      I2 => \^q\(16),
      I3 => MAX_PIXELS_R(16),
      I4 => MAX_PIXELS_R(17),
      I5 => \^q\(17),
      O => state_n1_carry_i_3_n_0
    );
state_n1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(12),
      I1 => MAX_PIXELS_R(12),
      I2 => \^q\(13),
      I3 => MAX_PIXELS_R(13),
      I4 => MAX_PIXELS_R(14),
      I5 => \^q\(14),
      O => state_n1_carry_i_4_n_0
    );
state_n1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(10),
      I1 => MAX_PIXELS_R(10),
      I2 => \^q\(9),
      I3 => MAX_PIXELS_R(9),
      I4 => MAX_PIXELS_R(11),
      I5 => \^q\(11),
      O => state_n1_carry_i_5_n_0
    );
state_n1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(7),
      I1 => MAX_PIXELS_R(7),
      I2 => \^q\(6),
      I3 => MAX_PIXELS_R(6),
      I4 => MAX_PIXELS_R(8),
      I5 => \^q\(8),
      O => state_n1_carry_i_6_n_0
    );
state_n1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => MAX_PIXELS_R(5),
      I2 => \^q\(3),
      I3 => MAX_PIXELS_R(3),
      I4 => MAX_PIXELS_R(4),
      I5 => \^q\(4),
      O => state_n1_carry_i_7_n_0
    );
state_n1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => MAX_PIXELS_R(2),
      I2 => \^q\(0),
      I3 => MAX_PIXELS_R(0),
      I4 => MAX_PIXELS_R(1),
      I5 => \^q\(1),
      O => state_n1_carry_i_8_n_0
    );
\tdata_out_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(0),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(0),
      O => tdata_out_n(0)
    );
\tdata_out_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(10),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(10),
      O => tdata_out_n(10)
    );
\tdata_out_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(11),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(11),
      O => tdata_out_n(11)
    );
\tdata_out_r[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(12),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(12),
      O => tdata_out_n(12)
    );
\tdata_out_r[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(13),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(13),
      O => tdata_out_n(13)
    );
\tdata_out_r[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(14),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(14),
      O => tdata_out_n(14)
    );
\tdata_out_r[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080B080808080808"
    )
        port map (
      I0 => \tdata_out_r_reg[17]_0\(15),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I3 => \state_r__0\(0),
      I4 => \state_r__0\(1),
      I5 => \^q\(15),
      O => tdata_out_n(15)
    );
\tdata_out_r[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FFF44444"
    )
        port map (
      I0 => \tdata_out_r[17]_i_2_n_0\,
      I1 => \^q\(16),
      I2 => \tdata_out_r_reg[17]_0\(16),
      I3 => \^tdata_out\(0),
      I4 => \state_r__0\(2),
      I5 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => tdata_out_n(16)
    );
\tdata_out_r[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FFF44444"
    )
        port map (
      I0 => \tdata_out_r[17]_i_2_n_0\,
      I1 => \^q\(17),
      I2 => \tdata_out_r_reg[17]_0\(17),
      I3 => \^tdata_out\(1),
      I4 => \state_r__0\(2),
      I5 => \^fsm_sequential_state_r_reg[3]_0\(0),
      O => tdata_out_n(17)
    );
\tdata_out_r[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \state_r__0\(2),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(0),
      I3 => \state_r__0\(1),
      O => \tdata_out_r[17]_i_2_n_0\
    );
\tdata_out_r[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(18),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(2),
      O => tdata_out_n(18)
    );
\tdata_out_r[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(19),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(3),
      O => tdata_out_n(19)
    );
\tdata_out_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(1),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(1),
      O => tdata_out_n(1)
    );
\tdata_out_r[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(20),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(4),
      O => tdata_out_n(20)
    );
\tdata_out_r[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(21),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(5),
      O => tdata_out_n(21)
    );
\tdata_out_r[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(22),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(6),
      O => tdata_out_n(22)
    );
\tdata_out_r[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(23),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(7),
      O => tdata_out_n(23)
    );
\tdata_out_r[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(24),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(8),
      O => tdata_out_n(24)
    );
\tdata_out_r[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(25),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(9),
      O => tdata_out_n(25)
    );
\tdata_out_r[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(26),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(10),
      O => tdata_out_n(26)
    );
\tdata_out_r[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080B080808080808"
    )
        port map (
      I0 => \^tdata_out\(11),
      I1 => \state_r__0\(2),
      I2 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I3 => \state_r__0\(0),
      I4 => \state_r__0\(1),
      I5 => \^q\(27),
      O => tdata_out_n(27)
    );
\tdata_out_r[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(28),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(12),
      O => tdata_out_n(28)
    );
\tdata_out_r[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(29),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(13),
      O => tdata_out_n(29)
    );
\tdata_out_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(2),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(2),
      O => tdata_out_n(2)
    );
\tdata_out_r[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(30),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(14),
      O => tdata_out_n(30)
    );
\tdata_out_r[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(31),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \^tdata_out\(15),
      O => tdata_out_n(31)
    );
\tdata_out_r[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(16),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(32)
    );
\tdata_out_r[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(17),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(33)
    );
\tdata_out_r[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(18),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(34)
    );
\tdata_out_r[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(19),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(35)
    );
\tdata_out_r[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(20),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(36)
    );
\tdata_out_r[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(21),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(37)
    );
\tdata_out_r[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(22),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(38)
    );
\tdata_out_r[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(23),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(39)
    );
\tdata_out_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(3),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(3),
      O => tdata_out_n(3)
    );
\tdata_out_r[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(24),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(40)
    );
\tdata_out_r[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(25),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(41)
    );
\tdata_out_r[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(26),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(42)
    );
\tdata_out_r[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(27),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(43)
    );
\tdata_out_r[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(28),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(44)
    );
\tdata_out_r[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(29),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(45)
    );
\tdata_out_r[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(30),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(46)
    );
\tdata_out_r[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(31),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(47)
    );
\tdata_out_r[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(32),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(48)
    );
\tdata_out_r[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(33),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(49)
    );
\tdata_out_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(4),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(4),
      O => tdata_out_n(4)
    );
\tdata_out_r[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(34),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(50)
    );
\tdata_out_r[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(35),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(51)
    );
\tdata_out_r[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(36),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(52)
    );
\tdata_out_r[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(37),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(53)
    );
\tdata_out_r[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(38),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(54)
    );
\tdata_out_r[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(39),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(55)
    );
\tdata_out_r[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(40),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(56)
    );
\tdata_out_r[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(41),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(57)
    );
\tdata_out_r[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(42),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(58)
    );
\tdata_out_r[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(43),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(59)
    );
\tdata_out_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(5),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(5),
      O => tdata_out_n(5)
    );
\tdata_out_r[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA000C"
    )
        port map (
      I0 => \^tdata_out\(44),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I4 => \state_r__0\(2),
      O => tdata_out_n(60)
    );
\tdata_out_r[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(45),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(61)
    );
\tdata_out_r[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(46),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(62)
    );
\tdata_out_r[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^tdata_out\(47),
      I1 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I2 => \state_r__0\(2),
      O => tdata_out_n(63)
    );
\tdata_out_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(6),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(6),
      O => tdata_out_n(6)
    );
\tdata_out_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(7),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(7),
      O => tdata_out_n(7)
    );
\tdata_out_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(8),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(8),
      O => tdata_out_n(8)
    );
\tdata_out_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000000040"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      I2 => \^q\(9),
      I3 => \state_r__0\(2),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \tdata_out_r_reg[17]_0\(9),
      O => tdata_out_n(9)
    );
\tdata_out_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(0),
      Q => \^tdata_out\(0),
      R => \^sr\(0)
    );
\tdata_out_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(10),
      Q => \^tdata_out\(10),
      R => \^sr\(0)
    );
\tdata_out_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(11),
      Q => \^tdata_out\(11),
      R => \^sr\(0)
    );
\tdata_out_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(12),
      Q => \^tdata_out\(12),
      R => \^sr\(0)
    );
\tdata_out_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(13),
      Q => \^tdata_out\(13),
      R => \^sr\(0)
    );
\tdata_out_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(14),
      Q => \^tdata_out\(14),
      R => \^sr\(0)
    );
\tdata_out_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(15),
      Q => \^tdata_out\(15),
      R => \^sr\(0)
    );
\tdata_out_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(16),
      Q => \^tdata_out\(16),
      R => \^sr\(0)
    );
\tdata_out_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(17),
      Q => \^tdata_out\(17),
      R => \^sr\(0)
    );
\tdata_out_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(18),
      Q => \^tdata_out\(18),
      R => \^sr\(0)
    );
\tdata_out_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(19),
      Q => \^tdata_out\(19),
      R => \^sr\(0)
    );
\tdata_out_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(1),
      Q => \^tdata_out\(1),
      R => \^sr\(0)
    );
\tdata_out_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(20),
      Q => \^tdata_out\(20),
      R => \^sr\(0)
    );
\tdata_out_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(21),
      Q => \^tdata_out\(21),
      R => \^sr\(0)
    );
\tdata_out_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(22),
      Q => \^tdata_out\(22),
      R => \^sr\(0)
    );
\tdata_out_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(23),
      Q => \^tdata_out\(23),
      R => \^sr\(0)
    );
\tdata_out_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(24),
      Q => \^tdata_out\(24),
      R => \^sr\(0)
    );
\tdata_out_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(25),
      Q => \^tdata_out\(25),
      R => \^sr\(0)
    );
\tdata_out_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(26),
      Q => \^tdata_out\(26),
      R => \^sr\(0)
    );
\tdata_out_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(27),
      Q => \^tdata_out\(27),
      R => \^sr\(0)
    );
\tdata_out_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(28),
      Q => \^tdata_out\(28),
      R => \^sr\(0)
    );
\tdata_out_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(29),
      Q => \^tdata_out\(29),
      R => \^sr\(0)
    );
\tdata_out_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(2),
      Q => \^tdata_out\(2),
      R => \^sr\(0)
    );
\tdata_out_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(30),
      Q => \^tdata_out\(30),
      R => \^sr\(0)
    );
\tdata_out_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(31),
      Q => \^tdata_out\(31),
      R => \^sr\(0)
    );
\tdata_out_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(32),
      Q => \^tdata_out\(32),
      R => \^sr\(0)
    );
\tdata_out_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(33),
      Q => \^tdata_out\(33),
      R => \^sr\(0)
    );
\tdata_out_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(34),
      Q => \^tdata_out\(34),
      R => \^sr\(0)
    );
\tdata_out_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(35),
      Q => \^tdata_out\(35),
      R => \^sr\(0)
    );
\tdata_out_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(36),
      Q => \^tdata_out\(36),
      R => \^sr\(0)
    );
\tdata_out_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(37),
      Q => \^tdata_out\(37),
      R => \^sr\(0)
    );
\tdata_out_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(38),
      Q => \^tdata_out\(38),
      R => \^sr\(0)
    );
\tdata_out_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(39),
      Q => \^tdata_out\(39),
      R => \^sr\(0)
    );
\tdata_out_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(3),
      Q => \^tdata_out\(3),
      R => \^sr\(0)
    );
\tdata_out_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(40),
      Q => \^tdata_out\(40),
      R => \^sr\(0)
    );
\tdata_out_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(41),
      Q => \^tdata_out\(41),
      R => \^sr\(0)
    );
\tdata_out_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(42),
      Q => \^tdata_out\(42),
      R => \^sr\(0)
    );
\tdata_out_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(43),
      Q => \^tdata_out\(43),
      R => \^sr\(0)
    );
\tdata_out_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(44),
      Q => \^tdata_out\(44),
      R => \^sr\(0)
    );
\tdata_out_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(45),
      Q => \^tdata_out\(45),
      R => \^sr\(0)
    );
\tdata_out_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(46),
      Q => \^tdata_out\(46),
      R => \^sr\(0)
    );
\tdata_out_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(47),
      Q => \^tdata_out\(47),
      R => \^sr\(0)
    );
\tdata_out_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(48),
      Q => \^tdata_out\(48),
      R => \^sr\(0)
    );
\tdata_out_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(49),
      Q => \^tdata_out\(49),
      R => \^sr\(0)
    );
\tdata_out_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(4),
      Q => \^tdata_out\(4),
      R => \^sr\(0)
    );
\tdata_out_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(50),
      Q => \^tdata_out\(50),
      R => \^sr\(0)
    );
\tdata_out_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(51),
      Q => \^tdata_out\(51),
      R => \^sr\(0)
    );
\tdata_out_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(52),
      Q => \^tdata_out\(52),
      R => \^sr\(0)
    );
\tdata_out_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(53),
      Q => \^tdata_out\(53),
      R => \^sr\(0)
    );
\tdata_out_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(54),
      Q => \^tdata_out\(54),
      R => \^sr\(0)
    );
\tdata_out_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(55),
      Q => \^tdata_out\(55),
      R => \^sr\(0)
    );
\tdata_out_r_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(56),
      Q => \^tdata_out\(56),
      R => \^sr\(0)
    );
\tdata_out_r_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(57),
      Q => \^tdata_out\(57),
      R => \^sr\(0)
    );
\tdata_out_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(58),
      Q => \^tdata_out\(58),
      R => \^sr\(0)
    );
\tdata_out_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(59),
      Q => \^tdata_out\(59),
      R => \^sr\(0)
    );
\tdata_out_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(5),
      Q => \^tdata_out\(5),
      R => \^sr\(0)
    );
\tdata_out_r_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(60),
      Q => \^tdata_out\(60),
      R => \^sr\(0)
    );
\tdata_out_r_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(61),
      Q => \^tdata_out\(61),
      R => \^sr\(0)
    );
\tdata_out_r_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(62),
      Q => \^tdata_out\(62),
      R => \^sr\(0)
    );
\tdata_out_r_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(63),
      Q => \^tdata_out\(63),
      R => \^sr\(0)
    );
\tdata_out_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(6),
      Q => \^tdata_out\(6),
      R => \^sr\(0)
    );
\tdata_out_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(7),
      Q => \^tdata_out\(7),
      R => \^sr\(0)
    );
\tdata_out_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(8),
      Q => \^tdata_out\(8),
      R => \^sr\(0)
    );
\tdata_out_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tdata_out_n(9),
      Q => \^tdata_out\(9),
      R => \^sr\(0)
    );
tlast_out_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => tlast_out_r_i_2_n_0,
      I1 => \state_r__0\(2),
      I2 => state_n11_in,
      I3 => \state_r__0\(0),
      I4 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I5 => \state_r__0\(1),
      O => tlast_out_n
    );
tlast_out_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => tlast_out_r_i_3_n_0,
      I1 => tlast_out_r_i_4_n_0,
      I2 => tlast_out_r_i_5_n_0,
      I3 => tlast_out_r_i_6_n_0,
      I4 => tlast_out_r_i_7_n_0,
      O => tlast_out_r_i_2_n_0
    );
tlast_out_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(6),
      I1 => tlast_out_r_i_2_0(6),
      I2 => tlast_out_r_i_2_0(8),
      I3 => \^bram_addr_r_reg[13]_0\(8),
      I4 => tlast_out_r_i_2_0(7),
      I5 => \^bram_addr_r_reg[13]_0\(7),
      O => tlast_out_r_i_3_n_0
    );
tlast_out_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => tlast_out_r_i_2_0(4),
      I1 => \^bram_addr_r_reg[13]_0\(4),
      I2 => tlast_out_r_i_2_0(5),
      I3 => \^bram_addr_r_reg[13]_0\(5),
      I4 => \^bram_addr_r_reg[13]_0\(3),
      I5 => tlast_out_r_i_2_0(3),
      O => tlast_out_r_i_4_n_0
    );
tlast_out_r_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(12),
      I1 => tlast_out_r_i_2_0(12),
      I2 => tlast_out_r_i_2_0(13),
      I3 => \^bram_addr_r_reg[13]_0\(13),
      I4 => tlast_out_r_i_2_0(14),
      O => tlast_out_r_i_5_n_0
    );
tlast_out_r_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^bram_addr_r_reg[13]_0\(9),
      I1 => tlast_out_r_i_2_0(9),
      I2 => tlast_out_r_i_2_0(11),
      I3 => \^bram_addr_r_reg[13]_0\(11),
      I4 => tlast_out_r_i_2_0(10),
      I5 => \^bram_addr_r_reg[13]_0\(10),
      O => tlast_out_r_i_6_n_0
    );
tlast_out_r_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => tlast_out_r_i_2_0(1),
      I1 => \^bram_addr_r_reg[13]_0\(1),
      I2 => tlast_out_r_i_2_0(2),
      I3 => \^bram_addr_r_reg[13]_0\(2),
      I4 => \^bram_addr_r_reg[13]_0\(0),
      I5 => tlast_out_r_i_2_0(0),
      O => tlast_out_r_i_7_n_0
    );
tlast_out_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tlast_out_n,
      Q => tlast_out,
      R => \^sr\(0)
    );
tvalid_out_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => \^fsm_sequential_state_r_reg[3]_0\(0),
      I1 => \state_r__0\(1),
      I2 => \state_r__0\(0),
      I3 => \state_r__0\(2),
      O => tvalid_out_r_i_1_n_0
    );
tvalid_out_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => tvalid_out_r_i_1_n_0,
      Q => tvalid_out,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0_HISTOGRAM_ARBITER_FSM is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bram_addr_r_reg[13]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    tready_in : out STD_LOGIC;
    pixel_counter_dbg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid_out : out STD_LOGIC;
    tlast_out : out STD_LOGIC;
    main_fsm_state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reading_fsm_state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bin_full_warning : out STD_LOGIC;
    bin_written_but_never_read_warning : out STD_LOGIC;
    tready_out : in STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    tdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    MAX_PIXELS : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BINS_TO_READ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    tvalid_in : in STD_LOGIC;
    pixel_done : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of histo_HISTOGRAM_ARBITER_FSM_0_0_HISTOGRAM_ARBITER_FSM : entity is "HISTOGRAM_ARBITER_FSM";
end histo_HISTOGRAM_ARBITER_FSM_0_0_HISTOGRAM_ARBITER_FSM;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0_HISTOGRAM_ARBITER_FSM is
  signal BINS_TO_READ_R : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \BINS_TO_READ_R[14]_i_1_n_0\ : STD_LOGIC;
  signal CLEAR_FSM_ADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal CLEAR_FSM_WE : STD_LOGIC;
  signal CLEAR_IDLE_FLAG : STD_LOGIC;
  signal FILL_FSM_ADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal FILL_FSM_DOUT : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \FILL_FSM_DOUT__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \FILL_FSM_DOUT_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal FILL_FSM_WE : STD_LOGIC;
  signal \FSM_onehot_state_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_r_reg_n_0_[3]\ : STD_LOGIC;
  signal READ_FSM_DOUT : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \READ_FSM_DOUT__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal bram_0_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \bram_0_addr__0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal bram_0_din : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \bram_0_din__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal bram_0_dout : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal bram_0_n_0 : STD_LOGIC;
  signal bram_0_n_19 : STD_LOGIC;
  signal bram_0_n_20 : STD_LOGIC;
  signal bram_0_n_21 : STD_LOGIC;
  signal bram_0_n_22 : STD_LOGIC;
  signal bram_0_n_23 : STD_LOGIC;
  signal bram_0_n_24 : STD_LOGIC;
  signal bram_0_n_25 : STD_LOGIC;
  signal bram_0_n_26 : STD_LOGIC;
  signal bram_0_n_27 : STD_LOGIC;
  signal bram_0_n_28 : STD_LOGIC;
  signal bram_0_n_29 : STD_LOGIC;
  signal bram_0_n_30 : STD_LOGIC;
  signal bram_0_n_31 : STD_LOGIC;
  signal bram_0_n_32 : STD_LOGIC;
  signal bram_0_n_33 : STD_LOGIC;
  signal bram_0_n_34 : STD_LOGIC;
  signal bram_0_n_35 : STD_LOGIC;
  signal bram_0_we : STD_LOGIC;
  signal \bram_0_we__0\ : STD_LOGIC;
  signal bram_1_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \bram_1_addr__0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal bram_1_din : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \bram_1_din__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal bram_1_dout : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal bram_1_we : STD_LOGIC;
  signal \bram_1_we__0\ : STD_LOGIC;
  signal bram_2_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \bram_2_addr__0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal bram_2_din : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \bram_2_din__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal bram_2_n_0 : STD_LOGIC;
  signal bram_2_n_1 : STD_LOGIC;
  signal bram_2_n_10 : STD_LOGIC;
  signal bram_2_n_11 : STD_LOGIC;
  signal bram_2_n_12 : STD_LOGIC;
  signal bram_2_n_13 : STD_LOGIC;
  signal bram_2_n_14 : STD_LOGIC;
  signal bram_2_n_15 : STD_LOGIC;
  signal bram_2_n_16 : STD_LOGIC;
  signal bram_2_n_17 : STD_LOGIC;
  signal bram_2_n_2 : STD_LOGIC;
  signal bram_2_n_3 : STD_LOGIC;
  signal bram_2_n_4 : STD_LOGIC;
  signal bram_2_n_5 : STD_LOGIC;
  signal bram_2_n_6 : STD_LOGIC;
  signal bram_2_n_7 : STD_LOGIC;
  signal bram_2_n_8 : STD_LOGIC;
  signal bram_2_n_9 : STD_LOGIC;
  signal bram_2_we : STD_LOGIC;
  signal \bram_2_we__0\ : STD_LOGIC;
  signal \^bram_addr_r_reg[13]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal clearing_fsm_n_32 : STD_LOGIC;
  signal clearing_fsm_n_33 : STD_LOGIC;
  signal clearing_fsm_n_34 : STD_LOGIC;
  signal clearing_fsm_n_35 : STD_LOGIC;
  signal clearing_fsm_n_36 : STD_LOGIC;
  signal clearing_fsm_n_37 : STD_LOGIC;
  signal clearing_fsm_n_38 : STD_LOGIC;
  signal clearing_fsm_n_39 : STD_LOGIC;
  signal clearing_fsm_n_40 : STD_LOGIC;
  signal clearing_fsm_n_41 : STD_LOGIC;
  signal clearing_fsm_n_42 : STD_LOGIC;
  signal clearing_fsm_n_43 : STD_LOGIC;
  signal clearing_fsm_n_44 : STD_LOGIC;
  signal clearing_fsm_n_45 : STD_LOGIC;
  signal filling_fsm_n_100 : STD_LOGIC;
  signal filling_fsm_n_87 : STD_LOGIC;
  signal filling_fsm_n_88 : STD_LOGIC;
  signal filling_fsm_n_89 : STD_LOGIC;
  signal filling_fsm_n_90 : STD_LOGIC;
  signal filling_fsm_n_91 : STD_LOGIC;
  signal filling_fsm_n_92 : STD_LOGIC;
  signal filling_fsm_n_93 : STD_LOGIC;
  signal filling_fsm_n_94 : STD_LOGIC;
  signal filling_fsm_n_95 : STD_LOGIC;
  signal filling_fsm_n_96 : STD_LOGIC;
  signal filling_fsm_n_97 : STD_LOGIC;
  signal filling_fsm_n_98 : STD_LOGIC;
  signal filling_fsm_n_99 : STD_LOGIC;
  signal reading_fsm_n_1 : STD_LOGIC;
  signal reading_fsm_n_117 : STD_LOGIC;
  signal reading_fsm_n_118 : STD_LOGIC;
  signal reading_fsm_n_119 : STD_LOGIC;
  signal reading_fsm_n_120 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FILL_FSM_DOUT_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FILL_FSM_DOUT_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[0]\ : label is "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[1]\ : label is "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[2]\ : label is "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[3]\ : label is "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_r_reg[4]\ : label is "IDLE:00001,STATE1:00100,STATE2:01000,ERROR:10000,STATE0:00010";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \READ_FSM_DOUT_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \READ_FSM_DOUT_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_addr_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_addr_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_0_din_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_0_din_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of bram_0_we_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of bram_0_we_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_addr_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_addr_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_1_din_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_1_din_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of bram_1_we_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of bram_1_we_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_addr_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_addr_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bram_2_din_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bram_2_din_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of bram_2_we_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of bram_2_we_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \main_fsm_state_dbg[0]_INST_0\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \main_fsm_state_dbg[1]_INST_0\ : label is "soft_lutpair141";
begin
  \bram_addr_r_reg[13]\(13 downto 0) <= \^bram_addr_r_reg[13]\(13 downto 0);
\BINS_TO_READ_R[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => BINS_TO_READ(14),
      O => \BINS_TO_READ_R[14]_i_1_n_0\
    );
\BINS_TO_READ_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(0),
      Q => BINS_TO_READ_R(0),
      R => '0'
    );
\BINS_TO_READ_R_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(10),
      Q => BINS_TO_READ_R(10),
      R => '0'
    );
\BINS_TO_READ_R_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(11),
      Q => BINS_TO_READ_R(11),
      R => '0'
    );
\BINS_TO_READ_R_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(12),
      Q => BINS_TO_READ_R(12),
      R => '0'
    );
\BINS_TO_READ_R_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(13),
      Q => BINS_TO_READ_R(13),
      R => '0'
    );
\BINS_TO_READ_R_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \BINS_TO_READ_R[14]_i_1_n_0\,
      Q => BINS_TO_READ_R(14),
      R => '0'
    );
\BINS_TO_READ_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(1),
      Q => BINS_TO_READ_R(1),
      R => '0'
    );
\BINS_TO_READ_R_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(2),
      Q => BINS_TO_READ_R(2),
      R => '0'
    );
\BINS_TO_READ_R_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(3),
      Q => BINS_TO_READ_R(3),
      R => '0'
    );
\BINS_TO_READ_R_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(4),
      Q => BINS_TO_READ_R(4),
      R => '0'
    );
\BINS_TO_READ_R_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(5),
      Q => BINS_TO_READ_R(5),
      R => '0'
    );
\BINS_TO_READ_R_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(6),
      Q => BINS_TO_READ_R(6),
      R => '0'
    );
\BINS_TO_READ_R_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(7),
      Q => BINS_TO_READ_R(7),
      R => '0'
    );
\BINS_TO_READ_R_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(8),
      Q => BINS_TO_READ_R(8),
      R => '0'
    );
\BINS_TO_READ_R_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BINS_TO_READ(9),
      Q => BINS_TO_READ_R(9),
      R => '0'
    );
\FILL_FSM_DOUT_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(0)
    );
\FILL_FSM_DOUT_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(10)
    );
\FILL_FSM_DOUT_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(11)
    );
\FILL_FSM_DOUT_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(12)
    );
\FILL_FSM_DOUT_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(13)
    );
\FILL_FSM_DOUT_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(14),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(14)
    );
\FILL_FSM_DOUT_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(15),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(15)
    );
\FILL_FSM_DOUT_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(16),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(16)
    );
\FILL_FSM_DOUT_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(17),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(17)
    );
\FILL_FSM_DOUT_reg[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_r_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_r_reg_n_0_[3]\,
      O => \FILL_FSM_DOUT_reg[17]_i_2_n_0\
    );
\FILL_FSM_DOUT_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(1)
    );
\FILL_FSM_DOUT_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(2)
    );
\FILL_FSM_DOUT_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(3)
    );
\FILL_FSM_DOUT_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(4)
    );
\FILL_FSM_DOUT_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(5)
    );
\FILL_FSM_DOUT_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(6)
    );
\FILL_FSM_DOUT_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(7)
    );
\FILL_FSM_DOUT_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(8)
    );
\FILL_FSM_DOUT_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FILL_FSM_DOUT__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => FILL_FSM_DOUT(9)
    );
\FSM_onehot_state_r[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => pixel_done,
      I1 => \FSM_onehot_state_r_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_r_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_r_reg_n_0_[2]\,
      O => \FSM_onehot_state_r[4]_i_1_n_0\
    );
\FSM_onehot_state_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_r[4]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_state_r_reg_n_0_[0]\,
      S => reading_fsm_n_1
    );
\FSM_onehot_state_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_r[4]_i_1_n_0\,
      D => reading_fsm_n_120,
      Q => \FSM_onehot_state_r_reg_n_0_[1]\,
      R => reading_fsm_n_1
    );
\FSM_onehot_state_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_r[4]_i_1_n_0\,
      D => reading_fsm_n_119,
      Q => \FSM_onehot_state_r_reg_n_0_[2]\,
      R => reading_fsm_n_1
    );
\FSM_onehot_state_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_r[4]_i_1_n_0\,
      D => reading_fsm_n_118,
      Q => \FSM_onehot_state_r_reg_n_0_[3]\,
      R => reading_fsm_n_1
    );
\FSM_onehot_state_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_r[4]_i_1_n_0\,
      D => reading_fsm_n_117,
      Q => main_fsm_state_dbg(2),
      R => reading_fsm_n_1
    );
\READ_FSM_DOUT_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(0)
    );
\READ_FSM_DOUT_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(10)
    );
\READ_FSM_DOUT_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(11)
    );
\READ_FSM_DOUT_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(12)
    );
\READ_FSM_DOUT_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(13)
    );
\READ_FSM_DOUT_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(14),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(14)
    );
\READ_FSM_DOUT_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(15),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(15)
    );
\READ_FSM_DOUT_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(16),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(16)
    );
\READ_FSM_DOUT_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(17),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(17)
    );
\READ_FSM_DOUT_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(1)
    );
\READ_FSM_DOUT_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(2)
    );
\READ_FSM_DOUT_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(3)
    );
\READ_FSM_DOUT_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(4)
    );
\READ_FSM_DOUT_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(5)
    );
\READ_FSM_DOUT_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(6)
    );
\READ_FSM_DOUT_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(7)
    );
\READ_FSM_DOUT_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(8)
    );
\READ_FSM_DOUT_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \READ_FSM_DOUT__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => READ_FSM_DOUT(9)
    );
bram_0: entity work.histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist
     port map (
      Q(13 downto 0) => bram_0_addr(13 downto 0),
      \READ_FSM_DOUT_reg[0]_i_1\(1) => \FSM_onehot_state_r_reg_n_0_[2]\,
      \READ_FSM_DOUT_reg[0]_i_1\(0) => \FSM_onehot_state_r_reg_n_0_[1]\,
      \READ_FSM_DOUT_reg[17]_i_1\(17 downto 0) => bram_1_dout(17 downto 0),
      bram_0_we => bram_0_we,
      bram_dout(17 downto 0) => bram_0_dout(17 downto 0),
      bram_reg_bram_7_0 => bram_0_n_0,
      bram_reg_bram_7_1 => bram_0_n_19,
      bram_reg_bram_7_10 => bram_0_n_28,
      bram_reg_bram_7_11 => bram_0_n_29,
      bram_reg_bram_7_12 => bram_0_n_30,
      bram_reg_bram_7_13 => bram_0_n_31,
      bram_reg_bram_7_14 => bram_0_n_32,
      bram_reg_bram_7_15 => bram_0_n_33,
      bram_reg_bram_7_16 => bram_0_n_34,
      bram_reg_bram_7_17 => bram_0_n_35,
      bram_reg_bram_7_18(17 downto 0) => bram_0_din(17 downto 0),
      bram_reg_bram_7_2 => bram_0_n_20,
      bram_reg_bram_7_3 => bram_0_n_21,
      bram_reg_bram_7_4 => bram_0_n_22,
      bram_reg_bram_7_5 => bram_0_n_23,
      bram_reg_bram_7_6 => bram_0_n_24,
      bram_reg_bram_7_7 => bram_0_n_25,
      bram_reg_bram_7_8 => bram_0_n_26,
      bram_reg_bram_7_9 => bram_0_n_27,
      clk => clk
    );
\bram_0_addr_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(0)
    );
\bram_0_addr_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(10)
    );
\bram_0_addr_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(11)
    );
\bram_0_addr_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(12)
    );
\bram_0_addr_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(13)
    );
\bram_0_addr_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(1)
    );
\bram_0_addr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(2)
    );
\bram_0_addr_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(3)
    );
\bram_0_addr_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(4)
    );
\bram_0_addr_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(5)
    );
\bram_0_addr_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(6)
    );
\bram_0_addr_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(7)
    );
\bram_0_addr_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(8)
    );
\bram_0_addr_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_addr__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_addr(9)
    );
\bram_0_din_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(0)
    );
\bram_0_din_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(10)
    );
\bram_0_din_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(11)
    );
\bram_0_din_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(12)
    );
\bram_0_din_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(13)
    );
\bram_0_din_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(14),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(14)
    );
\bram_0_din_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(15),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(15)
    );
\bram_0_din_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(16),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(16)
    );
\bram_0_din_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(17),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(17)
    );
\bram_0_din_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(1)
    );
\bram_0_din_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(2)
    );
\bram_0_din_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(3)
    );
\bram_0_din_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(4)
    );
\bram_0_din_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(5)
    );
\bram_0_din_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(6)
    );
\bram_0_din_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(7)
    );
\bram_0_din_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(8)
    );
\bram_0_din_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_din__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_din(9)
    );
bram_0_we_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_0_we__0\,
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_0_we
    );
bram_1: entity work.histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_0
     port map (
      D(17 downto 0) => \FILL_FSM_DOUT__0\(17 downto 0),
      \FILL_FSM_DOUT_reg[0]\(1) => \FSM_onehot_state_r_reg_n_0_[3]\,
      \FILL_FSM_DOUT_reg[0]\(0) => \FSM_onehot_state_r_reg_n_0_[0]\,
      \FILL_FSM_DOUT_reg[0]_0\ => bram_2_n_17,
      \FILL_FSM_DOUT_reg[10]\ => bram_2_n_7,
      \FILL_FSM_DOUT_reg[11]\ => bram_2_n_6,
      \FILL_FSM_DOUT_reg[12]\ => bram_2_n_5,
      \FILL_FSM_DOUT_reg[13]\ => bram_2_n_4,
      \FILL_FSM_DOUT_reg[14]\ => bram_2_n_3,
      \FILL_FSM_DOUT_reg[15]\ => bram_2_n_2,
      \FILL_FSM_DOUT_reg[16]\ => bram_2_n_1,
      \FILL_FSM_DOUT_reg[17]\ => bram_2_n_0,
      \FILL_FSM_DOUT_reg[1]\ => bram_2_n_16,
      \FILL_FSM_DOUT_reg[2]\ => bram_2_n_15,
      \FILL_FSM_DOUT_reg[3]\ => bram_2_n_14,
      \FILL_FSM_DOUT_reg[4]\ => bram_2_n_13,
      \FILL_FSM_DOUT_reg[5]\ => bram_2_n_12,
      \FILL_FSM_DOUT_reg[6]\ => bram_2_n_11,
      \FILL_FSM_DOUT_reg[7]\ => bram_2_n_10,
      \FILL_FSM_DOUT_reg[8]\ => bram_2_n_9,
      \FILL_FSM_DOUT_reg[9]\ => bram_2_n_8,
      Q(13 downto 0) => bram_1_addr(13 downto 0),
      bram_1_we => bram_1_we,
      bram_dout(17 downto 0) => bram_1_dout(17 downto 0),
      bram_reg_bram_7_0(17 downto 0) => bram_1_din(17 downto 0),
      clk => clk
    );
\bram_1_addr_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(0)
    );
\bram_1_addr_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(10)
    );
\bram_1_addr_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(11)
    );
\bram_1_addr_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(12)
    );
\bram_1_addr_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(13)
    );
\bram_1_addr_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(1)
    );
\bram_1_addr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(2)
    );
\bram_1_addr_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(3)
    );
\bram_1_addr_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(4)
    );
\bram_1_addr_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(5)
    );
\bram_1_addr_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(6)
    );
\bram_1_addr_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(7)
    );
\bram_1_addr_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(8)
    );
\bram_1_addr_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_addr__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_addr(9)
    );
\bram_1_din_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(0)
    );
\bram_1_din_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(10)
    );
\bram_1_din_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(11)
    );
\bram_1_din_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(12)
    );
\bram_1_din_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(13)
    );
\bram_1_din_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(14),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(14)
    );
\bram_1_din_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(15),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(15)
    );
\bram_1_din_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(16),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(16)
    );
\bram_1_din_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(17),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(17)
    );
\bram_1_din_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(1)
    );
\bram_1_din_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(2)
    );
\bram_1_din_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(3)
    );
\bram_1_din_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(4)
    );
\bram_1_din_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(5)
    );
\bram_1_din_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(6)
    );
\bram_1_din_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(7)
    );
\bram_1_din_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(8)
    );
\bram_1_din_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_din__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_din(9)
    );
bram_1_we_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_1_we__0\,
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_1_we
    );
bram_2: entity work.histo_HISTOGRAM_ARBITER_FSM_0_0_BRAM_hist_1
     port map (
      D(17 downto 0) => \READ_FSM_DOUT__0\(17 downto 0),
      Q(13 downto 0) => bram_2_addr(13 downto 0),
      \READ_FSM_DOUT_reg[0]\(3) => \FSM_onehot_state_r_reg_n_0_[3]\,
      \READ_FSM_DOUT_reg[0]\(2) => \FSM_onehot_state_r_reg_n_0_[2]\,
      \READ_FSM_DOUT_reg[0]\(1) => \FSM_onehot_state_r_reg_n_0_[1]\,
      \READ_FSM_DOUT_reg[0]\(0) => \FSM_onehot_state_r_reg_n_0_[0]\,
      \READ_FSM_DOUT_reg[0]_0\ => bram_0_n_35,
      \READ_FSM_DOUT_reg[10]\ => bram_0_n_25,
      \READ_FSM_DOUT_reg[11]\ => bram_0_n_24,
      \READ_FSM_DOUT_reg[12]\ => bram_0_n_23,
      \READ_FSM_DOUT_reg[13]\ => bram_0_n_22,
      \READ_FSM_DOUT_reg[14]\ => bram_0_n_21,
      \READ_FSM_DOUT_reg[15]\ => bram_0_n_20,
      \READ_FSM_DOUT_reg[16]\ => bram_0_n_19,
      \READ_FSM_DOUT_reg[17]\ => bram_0_n_0,
      \READ_FSM_DOUT_reg[1]\ => bram_0_n_34,
      \READ_FSM_DOUT_reg[2]\ => bram_0_n_33,
      \READ_FSM_DOUT_reg[3]\ => bram_0_n_32,
      \READ_FSM_DOUT_reg[4]\ => bram_0_n_31,
      \READ_FSM_DOUT_reg[5]\ => bram_0_n_30,
      \READ_FSM_DOUT_reg[6]\ => bram_0_n_29,
      \READ_FSM_DOUT_reg[7]\ => bram_0_n_28,
      \READ_FSM_DOUT_reg[8]\ => bram_0_n_27,
      \READ_FSM_DOUT_reg[9]\ => bram_0_n_26,
      bram_2_we => bram_2_we,
      bram_dout(17 downto 0) => bram_0_dout(17 downto 0),
      bram_reg_bram_7_0 => bram_2_n_0,
      bram_reg_bram_7_1 => bram_2_n_1,
      bram_reg_bram_7_10 => bram_2_n_10,
      bram_reg_bram_7_11 => bram_2_n_11,
      bram_reg_bram_7_12 => bram_2_n_12,
      bram_reg_bram_7_13 => bram_2_n_13,
      bram_reg_bram_7_14 => bram_2_n_14,
      bram_reg_bram_7_15 => bram_2_n_15,
      bram_reg_bram_7_16 => bram_2_n_16,
      bram_reg_bram_7_17 => bram_2_n_17,
      bram_reg_bram_7_18(17 downto 0) => bram_2_din(17 downto 0),
      bram_reg_bram_7_2 => bram_2_n_2,
      bram_reg_bram_7_3 => bram_2_n_3,
      bram_reg_bram_7_4 => bram_2_n_4,
      bram_reg_bram_7_5 => bram_2_n_5,
      bram_reg_bram_7_6 => bram_2_n_6,
      bram_reg_bram_7_7 => bram_2_n_7,
      bram_reg_bram_7_8 => bram_2_n_8,
      bram_reg_bram_7_9 => bram_2_n_9,
      clk => clk
    );
\bram_2_addr_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(0)
    );
\bram_2_addr_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(10)
    );
\bram_2_addr_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(11)
    );
\bram_2_addr_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(12)
    );
\bram_2_addr_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(13)
    );
\bram_2_addr_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(1)
    );
\bram_2_addr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(2)
    );
\bram_2_addr_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(3)
    );
\bram_2_addr_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(4)
    );
\bram_2_addr_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(5)
    );
\bram_2_addr_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(6)
    );
\bram_2_addr_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(7)
    );
\bram_2_addr_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(8)
    );
\bram_2_addr_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_addr__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_addr(9)
    );
\bram_2_din_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(0),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(0)
    );
\bram_2_din_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(10),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(10)
    );
\bram_2_din_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(11),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(11)
    );
\bram_2_din_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(12),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(12)
    );
\bram_2_din_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(13),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(13)
    );
\bram_2_din_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(14),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(14)
    );
\bram_2_din_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(15),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(15)
    );
\bram_2_din_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(16),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(16)
    );
\bram_2_din_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(17),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(17)
    );
\bram_2_din_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(1),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(1)
    );
\bram_2_din_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(2),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(2)
    );
\bram_2_din_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(3),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(3)
    );
\bram_2_din_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(4),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(4)
    );
\bram_2_din_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(5),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(5)
    );
\bram_2_din_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(6),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(6)
    );
\bram_2_din_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(7),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(7)
    );
\bram_2_din_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(8),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(8)
    );
\bram_2_din_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_din__0\(9),
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_din(9)
    );
bram_2_we_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_2_we__0\,
      G => \FILL_FSM_DOUT_reg[17]_i_2_n_0\,
      GE => '1',
      Q => bram_2_we
    );
clearing_fsm: entity work.histo_HISTOGRAM_ARBITER_FSM_0_0_CLEARING_FSM
     port map (
      CLEAR_FSM_WE => CLEAR_FSM_WE,
      CLEAR_IDLE_FLAG => CLEAR_IDLE_FLAG,
      D(13 downto 0) => \bram_0_addr__0\(13 downto 0),
      FILL_FSM_WE => FILL_FSM_WE,
      \FSM_onehot_state_r_reg[2]_0\ => clearing_fsm_n_32,
      \FSM_onehot_state_r_reg[2]_1\ => clearing_fsm_n_33,
      \FSM_onehot_state_r_reg[2]_10\ => clearing_fsm_n_42,
      \FSM_onehot_state_r_reg[2]_11\ => clearing_fsm_n_43,
      \FSM_onehot_state_r_reg[2]_12\ => clearing_fsm_n_44,
      \FSM_onehot_state_r_reg[2]_13\ => clearing_fsm_n_45,
      \FSM_onehot_state_r_reg[2]_2\ => clearing_fsm_n_34,
      \FSM_onehot_state_r_reg[2]_3\ => clearing_fsm_n_35,
      \FSM_onehot_state_r_reg[2]_4\ => clearing_fsm_n_36,
      \FSM_onehot_state_r_reg[2]_5\ => clearing_fsm_n_37,
      \FSM_onehot_state_r_reg[2]_6\ => clearing_fsm_n_38,
      \FSM_onehot_state_r_reg[2]_7\ => clearing_fsm_n_39,
      \FSM_onehot_state_r_reg[2]_8\ => clearing_fsm_n_40,
      \FSM_onehot_state_r_reg[2]_9\ => clearing_fsm_n_41,
      Q(13 downto 0) => CLEAR_FSM_ADDR(13 downto 0),
      SR(0) => reading_fsm_n_1,
      \bram_0_addr_reg[0]_i_1_0\(3) => \FSM_onehot_state_r_reg_n_0_[3]\,
      \bram_0_addr_reg[0]_i_1_0\(2) => \FSM_onehot_state_r_reg_n_0_[2]\,
      \bram_0_addr_reg[0]_i_1_0\(1) => \FSM_onehot_state_r_reg_n_0_[1]\,
      \bram_0_addr_reg[0]_i_1_0\(0) => \FSM_onehot_state_r_reg_n_0_[0]\,
      \bram_0_addr_reg[13]\(13 downto 0) => FILL_FSM_ADDR(13 downto 0),
      \bram_0_addr_reg[13]_i_1_0\(13 downto 0) => \^bram_addr_r_reg[13]\(13 downto 0),
      \bram_1_we__0\ => \bram_1_we__0\,
      \bram_2_we__0\ => \bram_2_we__0\,
      clk => clk,
      en => en,
      pixel_done => pixel_done,
      \state_n0_carry__0_0\(14 downto 0) => BINS_TO_READ_R(14 downto 0)
    );
filling_fsm: entity work.histo_HISTOGRAM_ARBITER_FSM_0_0_FILLING_FSM
     port map (
      CLEAR_FSM_WE => CLEAR_FSM_WE,
      D(17 downto 0) => \bram_0_din__0\(17 downto 0),
      FILL_FSM_WE => FILL_FSM_WE,
      \FSM_onehot_state_r_reg[0]_0\(17 downto 0) => \bram_2_din__0\(17 downto 0),
      \FSM_onehot_state_r_reg[2]_0\ => filling_fsm_n_87,
      \FSM_onehot_state_r_reg[2]_1\ => filling_fsm_n_88,
      \FSM_onehot_state_r_reg[2]_10\ => filling_fsm_n_97,
      \FSM_onehot_state_r_reg[2]_11\ => filling_fsm_n_98,
      \FSM_onehot_state_r_reg[2]_12\ => filling_fsm_n_99,
      \FSM_onehot_state_r_reg[2]_13\ => filling_fsm_n_100,
      \FSM_onehot_state_r_reg[2]_2\ => filling_fsm_n_89,
      \FSM_onehot_state_r_reg[2]_3\ => filling_fsm_n_90,
      \FSM_onehot_state_r_reg[2]_4\ => filling_fsm_n_91,
      \FSM_onehot_state_r_reg[2]_5\ => filling_fsm_n_92,
      \FSM_onehot_state_r_reg[2]_6\ => filling_fsm_n_93,
      \FSM_onehot_state_r_reg[2]_7\ => filling_fsm_n_94,
      \FSM_onehot_state_r_reg[2]_8\ => filling_fsm_n_95,
      \FSM_onehot_state_r_reg[2]_9\ => filling_fsm_n_96,
      \FSM_onehot_state_r_reg[3]\(17 downto 0) => \bram_1_din__0\(17 downto 0),
      \FSM_onehot_state_r_reg[3]_0\(13 downto 0) => \bram_1_addr__0\(13 downto 0),
      Q(17 downto 0) => FILL_FSM_DOUT(17 downto 0),
      SR(0) => reading_fsm_n_1,
      bin_full_warning => bin_full_warning,
      bin_written_but_never_read_warning => bin_written_but_never_read_warning,
      bin_written_but_never_read_warning_r0_carry_0(14 downto 0) => BINS_TO_READ_R(14 downto 0),
      \bram_0_we__0\ => \bram_0_we__0\,
      \bram_1_addr_reg[11]\ => clearing_fsm_n_34,
      \bram_1_addr_reg[12]\ => clearing_fsm_n_33,
      \bram_1_addr_reg[13]\ => clearing_fsm_n_32,
      \bram_2_addr_reg[13]_i_1\(13 downto 0) => CLEAR_FSM_ADDR(13 downto 0),
      bram_reg_bram_7(3) => \FSM_onehot_state_r_reg_n_0_[3]\,
      bram_reg_bram_7(2) => \FSM_onehot_state_r_reg_n_0_[2]\,
      bram_reg_bram_7(1) => \FSM_onehot_state_r_reg_n_0_[1]\,
      bram_reg_bram_7(0) => \FSM_onehot_state_r_reg_n_0_[0]\,
      bram_reg_bram_7_0 => clearing_fsm_n_35,
      bram_reg_bram_7_1 => clearing_fsm_n_36,
      bram_reg_bram_7_10 => clearing_fsm_n_45,
      bram_reg_bram_7_2 => clearing_fsm_n_37,
      bram_reg_bram_7_3 => clearing_fsm_n_38,
      bram_reg_bram_7_4 => clearing_fsm_n_39,
      bram_reg_bram_7_5 => clearing_fsm_n_40,
      bram_reg_bram_7_6 => clearing_fsm_n_41,
      bram_reg_bram_7_7 => clearing_fsm_n_42,
      bram_reg_bram_7_8 => clearing_fsm_n_43,
      bram_reg_bram_7_9 => clearing_fsm_n_44,
      clk => clk,
      en => en,
      pixel_done => pixel_done,
      tdata_in(63 downto 0) => tdata_in(63 downto 0),
      \tdata_in[13]\(13 downto 0) => FILL_FSM_ADDR(13 downto 0),
      tready_in => tready_in,
      tvalid_in => tvalid_in
    );
\main_fsm_state_dbg[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_r_reg_n_0_[1]\,
      O => main_fsm_state_dbg(0)
    );
\main_fsm_state_dbg[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_r_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_r_reg_n_0_[2]\,
      O => main_fsm_state_dbg(1)
    );
reading_fsm: entity work.histo_HISTOGRAM_ARBITER_FSM_0_0_READING_FSM
     port map (
      CLEAR_IDLE_FLAG => CLEAR_IDLE_FLAG,
      D(3) => reading_fsm_n_117,
      D(2) => reading_fsm_n_118,
      D(1) => reading_fsm_n_119,
      D(0) => reading_fsm_n_120,
      \FSM_onehot_state_r_reg[3]\(13 downto 0) => \bram_2_addr__0\(13 downto 0),
      \FSM_onehot_state_r_reg[4]\(3) => \FSM_onehot_state_r_reg_n_0_[3]\,
      \FSM_onehot_state_r_reg[4]\(2) => \FSM_onehot_state_r_reg_n_0_[2]\,
      \FSM_onehot_state_r_reg[4]\(1) => \FSM_onehot_state_r_reg_n_0_[1]\,
      \FSM_onehot_state_r_reg[4]\(0) => \FSM_onehot_state_r_reg_n_0_[0]\,
      \FSM_sequential_state_r_reg[3]_0\(0) => Q(0),
      MAX_PIXELS(31 downto 0) => MAX_PIXELS(31 downto 0),
      Q(31 downto 0) => pixel_counter_dbg(31 downto 0),
      SR(0) => reading_fsm_n_1,
      aresetn => aresetn,
      \bram_2_addr_reg[11]\ => filling_fsm_n_89,
      \bram_2_addr_reg[12]\ => filling_fsm_n_88,
      \bram_2_addr_reg[13]\ => filling_fsm_n_87,
      \bram_addr_r_reg[13]_0\(13 downto 0) => \^bram_addr_r_reg[13]\(13 downto 0),
      bram_reg_bram_7 => filling_fsm_n_90,
      bram_reg_bram_7_0 => filling_fsm_n_91,
      bram_reg_bram_7_1 => filling_fsm_n_92,
      bram_reg_bram_7_2 => filling_fsm_n_93,
      bram_reg_bram_7_3 => filling_fsm_n_94,
      bram_reg_bram_7_4 => filling_fsm_n_95,
      bram_reg_bram_7_5 => filling_fsm_n_96,
      bram_reg_bram_7_6 => filling_fsm_n_97,
      bram_reg_bram_7_7 => filling_fsm_n_98,
      bram_reg_bram_7_8 => filling_fsm_n_99,
      bram_reg_bram_7_9 => filling_fsm_n_100,
      clk => clk,
      en => en,
      pixel_done => pixel_done,
      reading_fsm_state_dbg(2 downto 0) => reading_fsm_state_dbg(2 downto 0),
      tdata_out(63 downto 0) => tdata_out(63 downto 0),
      \tdata_out_r_reg[17]_0\(17 downto 0) => READ_FSM_DOUT(17 downto 0),
      tlast_out => tlast_out,
      tlast_out_r_i_2_0(14 downto 0) => BINS_TO_READ_R(14 downto 0),
      tready_out => tready_out,
      tvalid_out => tvalid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity histo_HISTOGRAM_ARBITER_FSM_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    en : in STD_LOGIC;
    pixel_done : in STD_LOGIC;
    BINS_TO_READ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    bin_full_warning : out STD_LOGIC;
    bin_written_but_never_read_warning : out STD_LOGIC;
    premature_pixel_done_error : out STD_LOGIC;
    MAX_PIXELS : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid_in : in STD_LOGIC;
    tready_in : out STD_LOGIC;
    tlast_in : in STD_LOGIC;
    tdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid_out : out STD_LOGIC;
    tready_out : in STD_LOGIC;
    tlast_out : out STD_LOGIC;
    main_fsm_state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reading_fsm_state_dbg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    tvalid_dbg : out STD_LOGIC;
    bram_addr_dbg : out STD_LOGIC_VECTOR ( 13 downto 0 );
    pixel_counter_dbg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tready_dbg : out STD_LOGIC;
    tlast_dbg : out STD_LOGIC;
    tdata_dbg : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "histo_HISTOGRAM_ARBITER_FSM_0_0,HISTOGRAM_ARBITER_FSM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "HISTOGRAM_ARBITER_FSM,Vivado 2024.2";
end histo_HISTOGRAM_ARBITER_FSM_0_0;

architecture STRUCTURE of histo_HISTOGRAM_ARBITER_FSM_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^main_fsm_state_dbg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^premature_pixel_done_error\ : STD_LOGIC;
  signal \^reading_fsm_state_dbg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tdata_dbg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^tdata_out\ : STD_LOGIC_VECTOR ( 63 downto 2 );
  signal \^tlast_out\ : STD_LOGIC;
  signal \^tready_out\ : STD_LOGIC;
  signal \^tvalid_out\ : STD_LOGIC;
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
  \^tready_out\ <= tready_out;
  main_fsm_state_dbg(2) <= \^premature_pixel_done_error\;
  main_fsm_state_dbg(1 downto 0) <= \^main_fsm_state_dbg\(1 downto 0);
  premature_pixel_done_error <= \^premature_pixel_done_error\;
  reading_fsm_state_dbg(4) <= \<const0>\;
  reading_fsm_state_dbg(3 downto 0) <= \^reading_fsm_state_dbg\(3 downto 0);
  tdata_dbg(63 downto 2) <= \^tdata_out\(63 downto 2);
  tdata_dbg(1 downto 0) <= \^tdata_dbg\(1 downto 0);
  tdata_out(63 downto 2) <= \^tdata_out\(63 downto 2);
  tdata_out(1 downto 0) <= \^tdata_dbg\(1 downto 0);
  tlast_dbg <= \^tlast_out\;
  tlast_out <= \^tlast_out\;
  tready_dbg <= \^tready_out\;
  tvalid_dbg <= \^tvalid_out\;
  tvalid_out <= \^tvalid_out\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.histo_HISTOGRAM_ARBITER_FSM_0_0_HISTOGRAM_ARBITER_FSM
     port map (
      BINS_TO_READ(14 downto 0) => BINS_TO_READ(14 downto 0),
      MAX_PIXELS(31 downto 0) => MAX_PIXELS(31 downto 0),
      Q(0) => \^reading_fsm_state_dbg\(3),
      aresetn => aresetn,
      bin_full_warning => bin_full_warning,
      bin_written_but_never_read_warning => bin_written_but_never_read_warning,
      \bram_addr_r_reg[13]\(13 downto 0) => bram_addr_dbg(13 downto 0),
      clk => clk,
      en => en,
      main_fsm_state_dbg(2) => \^premature_pixel_done_error\,
      main_fsm_state_dbg(1 downto 0) => \^main_fsm_state_dbg\(1 downto 0),
      pixel_counter_dbg(31 downto 0) => pixel_counter_dbg(31 downto 0),
      pixel_done => pixel_done,
      reading_fsm_state_dbg(2 downto 0) => \^reading_fsm_state_dbg\(2 downto 0),
      tdata_in(63 downto 0) => tdata_in(63 downto 0),
      tdata_out(63 downto 2) => \^tdata_out\(63 downto 2),
      tdata_out(1 downto 0) => \^tdata_dbg\(1 downto 0),
      tlast_out => \^tlast_out\,
      tready_in => tready_in,
      tready_out => \^tready_out\,
      tvalid_in => tvalid_in,
      tvalid_out => \^tvalid_out\
    );
end STRUCTURE;
