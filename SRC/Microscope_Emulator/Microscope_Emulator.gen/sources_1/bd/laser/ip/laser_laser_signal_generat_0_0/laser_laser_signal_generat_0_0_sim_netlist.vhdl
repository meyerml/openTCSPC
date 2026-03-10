-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Feb 23 12:31:03 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/marce/OneDrive/Dokumente/zynq_project/photonsorting/emulator_4x8bit/emulator_4x8bit.gen/sources_1/bd/laser/ip/laser_laser_signal_generat_0_0/laser_laser_signal_generat_0_0_sim_netlist.vhdl
-- Design      : laser_laser_signal_generat_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity laser_laser_signal_generat_0_0_DelayChain is
  port (
    refclk_out : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pulses_per_pixel[24]\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \image_size[31]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pixel_counter_r_reg[30]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \return_counter_r_reg[10]\ : out STD_LOGIC;
    \line_counter_r_reg[20]\ : out STD_LOGIC;
    \line_counter_r_reg[4]\ : out STD_LOGIC;
    \return_counter_r_reg[10]_0\ : out STD_LOGIC;
    \return_counter_r_reg[2]\ : out STD_LOGIC;
    \return_counter_r_reg[26]\ : out STD_LOGIC;
    \return_counter_r_reg[18]\ : out STD_LOGIC;
    \return_counter_r_reg[29]\ : out STD_LOGIC;
    \return_counter_r_reg[21]\ : out STD_LOGIC;
    stop_out : out STD_LOGIC;
    CNTVALUEOUT_dbg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pixel_complete_dbg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    image_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    line_complete1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \line_complete0_carry__1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    frame_clk_r_i_5_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pulses_per_pixel : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_arvalid_n_dbg_INST_0_i_7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_rdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    shift_counter_r : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DELAY_CHAIN[0].IDELAYE2_inst_i_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gate_stop_r : in STD_LOGIC;
    LD_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of laser_laser_signal_generat_0_0_DelayChain : entity is "DelayChain";
end laser_laser_signal_generat_0_0_DelayChain;

architecture STRUCTURE of laser_laser_signal_generat_0_0_DelayChain is
  signal CNTVALUEIN : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \DELAY_CHAIN[0].IDELAYE2_inst_i_i_10_n_0\ : STD_LOGIC;
  signal \DELAY_CHAIN[0].IDELAYE2_inst_i_i_11_n_0\ : STD_LOGIC;
  signal \DELAY_CHAIN[0].IDELAYE2_inst_i_i_12_n_0\ : STD_LOGIC;
  signal \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0\ : STD_LOGIC;
  signal \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0\ : STD_LOGIC;
  signal \DELAY_CHAIN[0].IDELAYE2_inst_i_i_8_n_0\ : STD_LOGIC;
  signal \DELAY_CHAIN[0].IDELAYE2_inst_i_i_9_n_0\ : STD_LOGIC;
  signal delayed_signals : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal frame_clk_r_i_10_n_0 : STD_LOGIC;
  signal frame_clk_r_i_11_n_0 : STD_LOGIC;
  signal frame_clk_r_i_12_n_0 : STD_LOGIC;
  signal frame_clk_r_i_13_n_0 : STD_LOGIC;
  signal frame_clk_r_i_14_n_0 : STD_LOGIC;
  signal frame_clk_r_i_15_n_0 : STD_LOGIC;
  signal frame_clk_r_i_16_n_0 : STD_LOGIC;
  signal frame_clk_r_i_17_n_0 : STD_LOGIC;
  signal frame_clk_r_i_18_n_0 : STD_LOGIC;
  signal frame_clk_r_i_7_n_0 : STD_LOGIC;
  signal frame_clk_r_i_8_n_0 : STD_LOGIC;
  signal frame_clk_r_i_9_n_0 : STD_LOGIC;
  signal \^line_counter_r_reg[20]\ : STD_LOGIC;
  signal \^line_counter_r_reg[4]\ : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_15_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_16_n_0 : STD_LOGIC;
  signal pixel_complete0 : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \pixel_complete_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_6_n_1\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_6_n_2\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_6_n_3\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_17_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_4_n_2\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_4_n_3\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_5_n_1\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_5_n_2\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_5_n_3\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_6_n_1\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_6_n_2\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_6_n_3\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__1_i_9_n_0\ : STD_LOGIC;
  signal pixel_complete_carry_i_10_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_11_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_12_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_13_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_14_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_15_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_16_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_17_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_18_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_19_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_5_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_5_n_1 : STD_LOGIC;
  signal pixel_complete_carry_i_5_n_2 : STD_LOGIC;
  signal pixel_complete_carry_i_5_n_3 : STD_LOGIC;
  signal pixel_complete_carry_i_6_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_6_n_1 : STD_LOGIC;
  signal pixel_complete_carry_i_6_n_2 : STD_LOGIC;
  signal pixel_complete_carry_i_6_n_3 : STD_LOGIC;
  signal pixel_complete_carry_i_7_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_7_n_1 : STD_LOGIC;
  signal pixel_complete_carry_i_7_n_2 : STD_LOGIC;
  signal pixel_complete_carry_i_7_n_3 : STD_LOGIC;
  signal pixel_complete_carry_i_8_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_9_n_0 : STD_LOGIC;
  signal \^refclk_out\ : STD_LOGIC;
  signal refclk_out_delayed : STD_LOGIC;
  signal \^return_counter_r_reg[10]\ : STD_LOGIC;
  signal \^return_counter_r_reg[10]_0\ : STD_LOGIC;
  signal \^return_counter_r_reg[18]\ : STD_LOGIC;
  signal \^return_counter_r_reg[21]\ : STD_LOGIC;
  signal \^return_counter_r_reg[26]\ : STD_LOGIC;
  signal \^return_counter_r_reg[29]\ : STD_LOGIC;
  signal \^return_counter_r_reg[2]\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[0].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pixel_complete_carry__1_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pixel_complete_carry__1_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \DELAY_CHAIN[0].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of \DELAY_CHAIN[0].IDELAYE2_inst_i\ : label is 0;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6\ : label is "soft_lutpair0";
  attribute BOX_TYPE of \DELAY_CHAIN[1].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[1].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[2].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[2].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[3].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[3].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[4].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[4].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[5].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[5].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[6].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[6].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[7].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[7].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[8].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[8].IDELAYE2_inst_i\ : label is 0;
  attribute BOX_TYPE of \DELAY_CHAIN[9].IDELAYE2_inst_i\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \DELAY_CHAIN[9].IDELAYE2_inst_i\ : label is 0;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pixel_complete_carry__0_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_complete_carry__0_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_complete_carry__1_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_complete_carry__1_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_complete_carry__1_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of pixel_complete_carry_i_5 : label is 35;
  attribute ADDER_THRESHOLD of pixel_complete_carry_i_6 : label is 35;
  attribute ADDER_THRESHOLD of pixel_complete_carry_i_7 : label is 35;
  attribute SOFT_HLUTNM of refclk_out_INST_0 : label is "soft_lutpair0";
begin
  \line_counter_r_reg[20]\ <= \^line_counter_r_reg[20]\;
  \line_counter_r_reg[4]\ <= \^line_counter_r_reg[4]\;
  refclk_out <= \^refclk_out\;
  \return_counter_r_reg[10]\ <= \^return_counter_r_reg[10]\;
  \return_counter_r_reg[10]_0\ <= \^return_counter_r_reg[10]_0\;
  \return_counter_r_reg[18]\ <= \^return_counter_r_reg[18]\;
  \return_counter_r_reg[21]\ <= \^return_counter_r_reg[21]\;
  \return_counter_r_reg[26]\ <= \^return_counter_r_reg[26]\;
  \return_counter_r_reg[29]\ <= \^return_counter_r_reg[29]\;
  \return_counter_r_reg[2]\ <= \^return_counter_r_reg[2]\;
\DELAY_CHAIN[0].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => CNTVALUEOUT_dbg(4 downto 0),
      DATAIN => \^refclk_out\,
      DATAOUT => delayed_signals(0),
      IDATAIN => \NLW_DELAY_CHAIN[0].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB00000000"
    )
        port map (
      I0 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0\,
      I1 => \^return_counter_r_reg[10]\,
      I2 => Q(1),
      I3 => CO(0),
      I4 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0\,
      I5 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_8_n_0\,
      O => CNTVALUEIN(4)
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_rdata(7),
      I1 => m_rdata(17),
      I2 => shift_counter_r(0),
      I3 => m_rdata(2),
      I4 => shift_counter_r(1),
      I5 => m_rdata(12),
      O => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_10_n_0\
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_rdata(6),
      I1 => m_rdata(16),
      I2 => shift_counter_r(0),
      I3 => m_rdata(1),
      I4 => shift_counter_r(1),
      I5 => m_rdata(11),
      O => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_11_n_0\
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_rdata(5),
      I1 => m_rdata(15),
      I2 => shift_counter_r(0),
      I3 => m_rdata(0),
      I4 => shift_counter_r(1),
      I5 => m_rdata(10),
      O => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_12_n_0\
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB00000000"
    )
        port map (
      I0 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0\,
      I1 => \^return_counter_r_reg[10]\,
      I2 => Q(1),
      I3 => CO(0),
      I4 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0\,
      I5 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_9_n_0\,
      O => CNTVALUEIN(3)
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB00000000"
    )
        port map (
      I0 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0\,
      I1 => \^return_counter_r_reg[10]\,
      I2 => Q(1),
      I3 => CO(0),
      I4 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0\,
      I5 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_10_n_0\,
      O => CNTVALUEIN(2)
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB00000000"
    )
        port map (
      I0 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0\,
      I1 => \^return_counter_r_reg[10]\,
      I2 => Q(1),
      I3 => CO(0),
      I4 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0\,
      I5 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_11_n_0\,
      O => CNTVALUEIN(1)
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB00000000"
    )
        port map (
      I0 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0\,
      I1 => \^return_counter_r_reg[10]\,
      I2 => Q(1),
      I3 => CO(0),
      I4 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0\,
      I5 => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_12_n_0\,
      O => CNTVALUEIN(0)
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FABF"
    )
        port map (
      I0 => Q(2),
      I1 => \DELAY_CHAIN[0].IDELAYE2_inst_i_0\(0),
      I2 => Q(1),
      I3 => Q(0),
      O => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_6_n_0\
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(1),
      I1 => \^line_counter_r_reg[20]\,
      I2 => \^line_counter_r_reg[4]\,
      O => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_7_n_0\
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_rdata(9),
      I1 => m_rdata(19),
      I2 => shift_counter_r(0),
      I3 => m_rdata(4),
      I4 => shift_counter_r(1),
      I5 => m_rdata(14),
      O => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_8_n_0\
    );
\DELAY_CHAIN[0].IDELAYE2_inst_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_rdata(8),
      I1 => m_rdata(18),
      I2 => shift_counter_r(0),
      I3 => m_rdata(3),
      I4 => shift_counter_r(1),
      I5 => m_rdata(13),
      O => \DELAY_CHAIN[0].IDELAYE2_inst_i_i_9_n_0\
    );
\DELAY_CHAIN[1].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(0),
      DATAOUT => delayed_signals(1),
      IDATAIN => \NLW_DELAY_CHAIN[1].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[2].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(1),
      DATAOUT => delayed_signals(2),
      IDATAIN => \NLW_DELAY_CHAIN[2].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[3].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(2),
      DATAOUT => delayed_signals(3),
      IDATAIN => \NLW_DELAY_CHAIN[3].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[4].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(3),
      DATAOUT => delayed_signals(4),
      IDATAIN => \NLW_DELAY_CHAIN[4].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[5].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(4),
      DATAOUT => delayed_signals(5),
      IDATAIN => \NLW_DELAY_CHAIN[5].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[6].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(5),
      DATAOUT => delayed_signals(6),
      IDATAIN => \NLW_DELAY_CHAIN[6].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[7].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(6),
      DATAOUT => delayed_signals(7),
      IDATAIN => \NLW_DELAY_CHAIN[7].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[8].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(7),
      DATAOUT => delayed_signals(8),
      IDATAIN => \NLW_DELAY_CHAIN[8].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\DELAY_CHAIN[9].IDELAYE2_inst_i\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "DATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
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
      CNTVALUEOUT(4 downto 0) => \NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => delayed_signals(8),
      DATAOUT => refclk_out_delayed,
      IDATAIN => \NLW_DELAY_CHAIN[9].IDELAYE2_inst_i_IDATAIN_UNCONNECTED\,
      INC => '0',
      LD => LD_r,
      LDPIPEEN => '0',
      REGRST => '0'
    );
frame_clk_r_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(18),
      I1 => frame_clk_r_i_5_0(19),
      O => frame_clk_r_i_10_n_0
    );
frame_clk_r_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_clk_r_i_5_0(29),
      I1 => frame_clk_r_i_5_0(28),
      I2 => frame_clk_r_i_5_0(31),
      I3 => frame_clk_r_i_5_0(30),
      O => frame_clk_r_i_11_n_0
    );
frame_clk_r_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_clk_r_i_5_0(25),
      I1 => frame_clk_r_i_5_0(24),
      I2 => frame_clk_r_i_5_0(27),
      I3 => frame_clk_r_i_5_0(26),
      O => frame_clk_r_i_12_n_0
    );
frame_clk_r_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(4),
      I1 => frame_clk_r_i_5_0(5),
      O => frame_clk_r_i_13_n_0
    );
frame_clk_r_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(6),
      I1 => frame_clk_r_i_5_0(7),
      O => frame_clk_r_i_14_n_0
    );
frame_clk_r_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(0),
      I1 => frame_clk_r_i_5_0(1),
      O => frame_clk_r_i_15_n_0
    );
frame_clk_r_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(2),
      I1 => frame_clk_r_i_5_0(3),
      O => frame_clk_r_i_16_n_0
    );
frame_clk_r_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_clk_r_i_5_0(13),
      I1 => frame_clk_r_i_5_0(12),
      I2 => frame_clk_r_i_5_0(15),
      I3 => frame_clk_r_i_5_0(14),
      O => frame_clk_r_i_17_n_0
    );
frame_clk_r_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_clk_r_i_5_0(9),
      I1 => frame_clk_r_i_5_0(8),
      I2 => frame_clk_r_i_5_0(11),
      I3 => frame_clk_r_i_5_0(10),
      O => frame_clk_r_i_18_n_0
    );
frame_clk_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => frame_clk_r_i_7_n_0,
      I1 => frame_clk_r_i_8_n_0,
      I2 => frame_clk_r_i_9_n_0,
      I3 => frame_clk_r_i_10_n_0,
      I4 => frame_clk_r_i_11_n_0,
      I5 => frame_clk_r_i_12_n_0,
      O => \^line_counter_r_reg[20]\
    );
frame_clk_r_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => frame_clk_r_i_13_n_0,
      I1 => frame_clk_r_i_14_n_0,
      I2 => frame_clk_r_i_15_n_0,
      I3 => frame_clk_r_i_16_n_0,
      I4 => frame_clk_r_i_17_n_0,
      I5 => frame_clk_r_i_18_n_0,
      O => \^line_counter_r_reg[4]\
    );
frame_clk_r_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(20),
      I1 => frame_clk_r_i_5_0(21),
      O => frame_clk_r_i_7_n_0
    );
frame_clk_r_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(22),
      I1 => frame_clk_r_i_5_0(23),
      O => frame_clk_r_i_8_n_0
    );
frame_clk_r_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_clk_r_i_5_0(16),
      I1 => frame_clk_r_i_5_0(17),
      O => frame_clk_r_i_9_n_0
    );
line_clk_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^return_counter_r_reg[10]_0\,
      I1 => \^return_counter_r_reg[2]\,
      I2 => \^return_counter_r_reg[26]\,
      I3 => \^return_counter_r_reg[18]\,
      O => \^return_counter_r_reg[10]\
    );
line_clk_r_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(26),
      I1 => m_arvalid_n_dbg_INST_0_i_7(27),
      I2 => m_arvalid_n_dbg_INST_0_i_7(24),
      I3 => m_arvalid_n_dbg_INST_0_i_7(25),
      I4 => \^return_counter_r_reg[29]\,
      O => \^return_counter_r_reg[26]\
    );
line_clk_r_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(18),
      I1 => m_arvalid_n_dbg_INST_0_i_7(19),
      I2 => m_arvalid_n_dbg_INST_0_i_7(16),
      I3 => m_arvalid_n_dbg_INST_0_i_7(17),
      I4 => \^return_counter_r_reg[21]\,
      O => \^return_counter_r_reg[18]\
    );
\line_complete0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \line_complete0_carry__1\(6),
      I1 => line_complete1(6),
      I2 => \line_complete0_carry__1\(7),
      I3 => line_complete1(7),
      O => \pixel_counter_r_reg[30]\(2)
    );
\line_complete0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(5),
      I1 => \line_complete0_carry__1\(5),
      I2 => line_complete1(4),
      I3 => \line_complete0_carry__1\(4),
      I4 => \line_complete0_carry__1\(3),
      I5 => line_complete1(3),
      O => \pixel_counter_r_reg[30]\(1)
    );
\line_complete0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(2),
      I1 => \line_complete0_carry__1\(2),
      I2 => line_complete1(1),
      I3 => \line_complete0_carry__1\(1),
      I4 => \line_complete0_carry__1\(0),
      I5 => line_complete1(0),
      O => \pixel_counter_r_reg[30]\(0)
    );
\line_complete1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(2),
      O => \image_size[31]\(2)
    );
\line_complete1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(1),
      O => \image_size[31]\(1)
    );
\line_complete1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(0),
      O => \image_size[31]\(0)
    );
m_arvalid_n_dbg_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(21),
      I1 => m_arvalid_n_dbg_INST_0_i_7(20),
      I2 => m_arvalid_n_dbg_INST_0_i_7(23),
      I3 => m_arvalid_n_dbg_INST_0_i_7(22),
      O => \^return_counter_r_reg[21]\
    );
m_arvalid_n_dbg_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(29),
      I1 => m_arvalid_n_dbg_INST_0_i_7(28),
      I2 => m_arvalid_n_dbg_INST_0_i_7(31),
      I3 => m_arvalid_n_dbg_INST_0_i_7(30),
      O => \^return_counter_r_reg[29]\
    );
m_arvalid_n_dbg_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(4),
      I1 => m_arvalid_n_dbg_INST_0_i_7(5),
      I2 => m_arvalid_n_dbg_INST_0_i_7(7),
      I3 => m_arvalid_n_dbg_INST_0_i_7(6),
      O => m_arvalid_n_dbg_INST_0_i_15_n_0
    );
m_arvalid_n_dbg_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(13),
      I1 => m_arvalid_n_dbg_INST_0_i_7(12),
      I2 => m_arvalid_n_dbg_INST_0_i_7(15),
      I3 => m_arvalid_n_dbg_INST_0_i_7(14),
      O => m_arvalid_n_dbg_INST_0_i_16_n_0
    );
m_arvalid_n_dbg_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(2),
      I1 => m_arvalid_n_dbg_INST_0_i_7(3),
      I2 => m_arvalid_n_dbg_INST_0_i_7(0),
      I3 => m_arvalid_n_dbg_INST_0_i_7(1),
      I4 => m_arvalid_n_dbg_INST_0_i_15_n_0,
      O => \^return_counter_r_reg[2]\
    );
m_arvalid_n_dbg_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_7(10),
      I1 => m_arvalid_n_dbg_INST_0_i_7(11),
      I2 => m_arvalid_n_dbg_INST_0_i_7(8),
      I3 => m_arvalid_n_dbg_INST_0_i_7(9),
      I4 => m_arvalid_n_dbg_INST_0_i_16_n_0,
      O => \^return_counter_r_reg[10]_0\
    );
\pixel_complete_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(17),
      O => \pixel_complete_carry__0_i_10_n_0\
    );
\pixel_complete_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(16),
      O => \pixel_complete_carry__0_i_11_n_0\
    );
\pixel_complete_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(15),
      O => \pixel_complete_carry__0_i_12_n_0\
    );
\pixel_complete_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(14),
      O => \pixel_complete_carry__0_i_13_n_0\
    );
\pixel_complete_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(13),
      O => \pixel_complete_carry__0_i_14_n_0\
    );
\pixel_complete_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_complete_carry__0_i_6_n_0\,
      CO(3) => \pixel_complete_carry__0_i_5_n_0\,
      CO(2) => \pixel_complete_carry__0_i_5_n_1\,
      CO(1) => \pixel_complete_carry__0_i_5_n_2\,
      CO(0) => \pixel_complete_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(20 downto 17),
      O(3 downto 0) => \pulses_per_pixel[24]\(19 downto 16),
      S(3) => \pixel_complete_carry__0_i_7_n_0\,
      S(2) => \pixel_complete_carry__0_i_8_n_0\,
      S(1) => \pixel_complete_carry__0_i_9_n_0\,
      S(0) => \pixel_complete_carry__0_i_10_n_0\
    );
\pixel_complete_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_complete_carry_i_5_n_0,
      CO(3) => \pixel_complete_carry__0_i_6_n_0\,
      CO(2) => \pixel_complete_carry__0_i_6_n_1\,
      CO(1) => \pixel_complete_carry__0_i_6_n_2\,
      CO(0) => \pixel_complete_carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(16 downto 13),
      O(3 downto 0) => \pulses_per_pixel[24]\(15 downto 12),
      S(3) => \pixel_complete_carry__0_i_11_n_0\,
      S(2) => \pixel_complete_carry__0_i_12_n_0\,
      S(1) => \pixel_complete_carry__0_i_13_n_0\,
      S(0) => \pixel_complete_carry__0_i_14_n_0\
    );
\pixel_complete_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(20),
      O => \pixel_complete_carry__0_i_7_n_0\
    );
\pixel_complete_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(19),
      O => \pixel_complete_carry__0_i_8_n_0\
    );
\pixel_complete_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(18),
      O => \pixel_complete_carry__0_i_9_n_0\
    );
\pixel_complete_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pixel_complete_dbg(6),
      I1 => pixel_complete0(30),
      I2 => pixel_complete_dbg(7),
      I3 => pixel_complete0(31),
      O => S(2)
    );
\pixel_complete_carry__1_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(28),
      O => \pixel_complete_carry__1_i_10_n_0\
    );
\pixel_complete_carry__1_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(27),
      O => \pixel_complete_carry__1_i_11_n_0\
    );
\pixel_complete_carry__1_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(26),
      O => \pixel_complete_carry__1_i_12_n_0\
    );
\pixel_complete_carry__1_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(25),
      O => \pixel_complete_carry__1_i_13_n_0\
    );
\pixel_complete_carry__1_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(24),
      O => \pixel_complete_carry__1_i_14_n_0\
    );
\pixel_complete_carry__1_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(23),
      O => \pixel_complete_carry__1_i_15_n_0\
    );
\pixel_complete_carry__1_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(22),
      O => \pixel_complete_carry__1_i_16_n_0\
    );
\pixel_complete_carry__1_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(21),
      O => \pixel_complete_carry__1_i_17_n_0\
    );
\pixel_complete_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(29),
      I1 => pixel_complete_dbg(5),
      I2 => pixel_complete0(28),
      I3 => pixel_complete_dbg(4),
      I4 => pixel_complete_dbg(3),
      I5 => pixel_complete0(27),
      O => S(1)
    );
\pixel_complete_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(26),
      I1 => pixel_complete_dbg(2),
      I2 => pixel_complete0(25),
      I3 => pixel_complete_dbg(1),
      I4 => pixel_complete_dbg(0),
      I5 => pixel_complete0(24),
      O => S(0)
    );
\pixel_complete_carry__1_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_complete_carry__1_i_5_n_0\,
      CO(3 downto 2) => \NLW_pixel_complete_carry__1_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pixel_complete_carry__1_i_4_n_2\,
      CO(0) => \pixel_complete_carry__1_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => pulses_per_pixel(30 downto 29),
      O(3) => \NLW_pixel_complete_carry__1_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => pixel_complete0(31 downto 29),
      S(3) => '0',
      S(2) => \pixel_complete_carry__1_i_7_n_0\,
      S(1) => \pixel_complete_carry__1_i_8_n_0\,
      S(0) => \pixel_complete_carry__1_i_9_n_0\
    );
\pixel_complete_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_complete_carry__1_i_6_n_0\,
      CO(3) => \pixel_complete_carry__1_i_5_n_0\,
      CO(2) => \pixel_complete_carry__1_i_5_n_1\,
      CO(1) => \pixel_complete_carry__1_i_5_n_2\,
      CO(0) => \pixel_complete_carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(28 downto 25),
      O(3 downto 0) => pixel_complete0(28 downto 25),
      S(3) => \pixel_complete_carry__1_i_10_n_0\,
      S(2) => \pixel_complete_carry__1_i_11_n_0\,
      S(1) => \pixel_complete_carry__1_i_12_n_0\,
      S(0) => \pixel_complete_carry__1_i_13_n_0\
    );
\pixel_complete_carry__1_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_complete_carry__0_i_5_n_0\,
      CO(3) => \pixel_complete_carry__1_i_6_n_0\,
      CO(2) => \pixel_complete_carry__1_i_6_n_1\,
      CO(1) => \pixel_complete_carry__1_i_6_n_2\,
      CO(0) => \pixel_complete_carry__1_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(24 downto 21),
      O(3) => pixel_complete0(24),
      O(2 downto 0) => \pulses_per_pixel[24]\(22 downto 20),
      S(3) => \pixel_complete_carry__1_i_14_n_0\,
      S(2) => \pixel_complete_carry__1_i_15_n_0\,
      S(1) => \pixel_complete_carry__1_i_16_n_0\,
      S(0) => \pixel_complete_carry__1_i_17_n_0\
    );
\pixel_complete_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(31),
      O => \pixel_complete_carry__1_i_7_n_0\
    );
\pixel_complete_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(30),
      O => \pixel_complete_carry__1_i_8_n_0\
    );
\pixel_complete_carry__1_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(29),
      O => \pixel_complete_carry__1_i_9_n_0\
    );
pixel_complete_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(10),
      O => pixel_complete_carry_i_10_n_0
    );
pixel_complete_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(9),
      O => pixel_complete_carry_i_11_n_0
    );
pixel_complete_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(8),
      O => pixel_complete_carry_i_12_n_0
    );
pixel_complete_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(7),
      O => pixel_complete_carry_i_13_n_0
    );
pixel_complete_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(6),
      O => pixel_complete_carry_i_14_n_0
    );
pixel_complete_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(5),
      O => pixel_complete_carry_i_15_n_0
    );
pixel_complete_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(4),
      O => pixel_complete_carry_i_16_n_0
    );
pixel_complete_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(3),
      O => pixel_complete_carry_i_17_n_0
    );
pixel_complete_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(2),
      O => pixel_complete_carry_i_18_n_0
    );
pixel_complete_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(1),
      O => pixel_complete_carry_i_19_n_0
    );
pixel_complete_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_complete_carry_i_6_n_0,
      CO(3) => pixel_complete_carry_i_5_n_0,
      CO(2) => pixel_complete_carry_i_5_n_1,
      CO(1) => pixel_complete_carry_i_5_n_2,
      CO(0) => pixel_complete_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(12 downto 9),
      O(3 downto 0) => \pulses_per_pixel[24]\(11 downto 8),
      S(3) => pixel_complete_carry_i_8_n_0,
      S(2) => pixel_complete_carry_i_9_n_0,
      S(1) => pixel_complete_carry_i_10_n_0,
      S(0) => pixel_complete_carry_i_11_n_0
    );
pixel_complete_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_complete_carry_i_7_n_0,
      CO(3) => pixel_complete_carry_i_6_n_0,
      CO(2) => pixel_complete_carry_i_6_n_1,
      CO(1) => pixel_complete_carry_i_6_n_2,
      CO(0) => pixel_complete_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(8 downto 5),
      O(3 downto 0) => \pulses_per_pixel[24]\(7 downto 4),
      S(3) => pixel_complete_carry_i_12_n_0,
      S(2) => pixel_complete_carry_i_13_n_0,
      S(1) => pixel_complete_carry_i_14_n_0,
      S(0) => pixel_complete_carry_i_15_n_0
    );
pixel_complete_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pixel_complete_carry_i_7_n_0,
      CO(2) => pixel_complete_carry_i_7_n_1,
      CO(1) => pixel_complete_carry_i_7_n_2,
      CO(0) => pixel_complete_carry_i_7_n_3,
      CYINIT => pulses_per_pixel(0),
      DI(3 downto 0) => pulses_per_pixel(4 downto 1),
      O(3 downto 0) => \pulses_per_pixel[24]\(3 downto 0),
      S(3) => pixel_complete_carry_i_16_n_0,
      S(2) => pixel_complete_carry_i_17_n_0,
      S(1) => pixel_complete_carry_i_18_n_0,
      S(0) => pixel_complete_carry_i_19_n_0
    );
pixel_complete_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(12),
      O => pixel_complete_carry_i_8_n_0
    );
pixel_complete_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(11),
      O => pixel_complete_carry_i_9_n_0
    );
refclk_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk,
      I1 => Q(2),
      O => \^refclk_out\
    );
stop_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => refclk_out_delayed,
      I1 => gate_stop_r,
      O => stop_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity laser_laser_signal_generat_0_0_laser_signal_generator is
  port (
    warmup_pulse_counter_dbg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    refclk_out : out STD_LOGIC;
    start_frame_r_reg_0 : out STD_LOGIC;
    CNTVALUEOUT_dbg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_arvalid_r_dbg : out STD_LOGIC;
    m_arvalid_n_dbg : out STD_LOGIC;
    m_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pixel_complete_dbg : out STD_LOGIC;
    line_complete_dbg : out STD_LOGIC;
    state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    stop_out : out STD_LOGIC;
    frame_clk_r : out STD_LOGIC;
    line_clk_r : out STD_LOGIC;
    pixel_clk_r : out STD_LOGIC;
    m_rready : out STD_LOGIC;
    clk : in STD_LOGIC;
    m_arready : in STD_LOGIC;
    pulses_per_pixel : in STD_LOGIC_VECTOR ( 31 downto 0 );
    image_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_rdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    en : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of laser_laser_signal_generat_0_0_laser_signal_generator : entity is "laser_signal_generator";
end laser_laser_signal_generat_0_0_laser_signal_generator;

architecture STRUCTURE of laser_laser_signal_generat_0_0_laser_signal_generator is
  signal DelayChain_inst_n_1 : STD_LOGIC;
  signal DelayChain_inst_n_2 : STD_LOGIC;
  signal DelayChain_inst_n_27 : STD_LOGIC;
  signal DelayChain_inst_n_28 : STD_LOGIC;
  signal DelayChain_inst_n_29 : STD_LOGIC;
  signal DelayChain_inst_n_3 : STD_LOGIC;
  signal DelayChain_inst_n_30 : STD_LOGIC;
  signal DelayChain_inst_n_31 : STD_LOGIC;
  signal DelayChain_inst_n_32 : STD_LOGIC;
  signal DelayChain_inst_n_33 : STD_LOGIC;
  signal DelayChain_inst_n_34 : STD_LOGIC;
  signal DelayChain_inst_n_35 : STD_LOGIC;
  signal DelayChain_inst_n_36 : STD_LOGIC;
  signal DelayChain_inst_n_37 : STD_LOGIC;
  signal DelayChain_inst_n_38 : STD_LOGIC;
  signal DelayChain_inst_n_39 : STD_LOGIC;
  signal DelayChain_inst_n_40 : STD_LOGIC;
  signal DelayChain_inst_n_41 : STD_LOGIC;
  signal \FSM_sequential_state_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_r[2]_i_1_n_0\ : STD_LOGIC;
  signal LD_r : STD_LOGIC;
  signal LD_r_i_1_n_0 : STD_LOGIC;
  signal LD_r_i_2_n_0 : STD_LOGIC;
  signal clk_counter_n : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clk_counter_n0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_counter_n0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_counter_n0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_counter_n0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_counter_n0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_counter_n0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_counter_n0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_counter_n0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_counter_n0_carry__2_n_0\ : STD_LOGIC;
  signal \clk_counter_n0_carry__2_n_1\ : STD_LOGIC;
  signal \clk_counter_n0_carry__2_n_2\ : STD_LOGIC;
  signal \clk_counter_n0_carry__2_n_3\ : STD_LOGIC;
  signal \clk_counter_n0_carry__3_n_0\ : STD_LOGIC;
  signal \clk_counter_n0_carry__3_n_1\ : STD_LOGIC;
  signal \clk_counter_n0_carry__3_n_2\ : STD_LOGIC;
  signal \clk_counter_n0_carry__3_n_3\ : STD_LOGIC;
  signal \clk_counter_n0_carry__4_n_0\ : STD_LOGIC;
  signal \clk_counter_n0_carry__4_n_1\ : STD_LOGIC;
  signal \clk_counter_n0_carry__4_n_2\ : STD_LOGIC;
  signal \clk_counter_n0_carry__4_n_3\ : STD_LOGIC;
  signal \clk_counter_n0_carry__5_n_0\ : STD_LOGIC;
  signal \clk_counter_n0_carry__5_n_1\ : STD_LOGIC;
  signal \clk_counter_n0_carry__5_n_2\ : STD_LOGIC;
  signal \clk_counter_n0_carry__5_n_3\ : STD_LOGIC;
  signal \clk_counter_n0_carry__6_n_2\ : STD_LOGIC;
  signal \clk_counter_n0_carry__6_n_3\ : STD_LOGIC;
  signal clk_counter_n0_carry_n_0 : STD_LOGIC;
  signal clk_counter_n0_carry_n_1 : STD_LOGIC;
  signal clk_counter_n0_carry_n_2 : STD_LOGIC;
  signal clk_counter_n0_carry_n_3 : STD_LOGIC;
  signal clk_counter_n_1 : STD_LOGIC;
  signal clk_counter_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^frame_clk_r\ : STD_LOGIC;
  signal frame_clk_r_i_1_n_0 : STD_LOGIC;
  signal frame_clk_r_i_2_n_0 : STD_LOGIC;
  signal frame_clk_r_i_3_n_0 : STD_LOGIC;
  signal frame_clk_r_i_4_n_0 : STD_LOGIC;
  signal gate_stop_r : STD_LOGIC;
  signal gate_stop_r_i_1_n_0 : STD_LOGIC;
  signal gate_stop_r_i_2_n_0 : STD_LOGIC;
  signal in22 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^line_clk_r\ : STD_LOGIC;
  signal line_clk_r_i_1_n_0 : STD_LOGIC;
  signal line_clk_r_i_3_n_0 : STD_LOGIC;
  signal line_clk_r_i_4_n_0 : STD_LOGIC;
  signal line_clk_r_i_7_n_0 : STD_LOGIC;
  signal line_complete0 : STD_LOGIC;
  signal \line_complete0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \line_complete0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \line_complete0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \line_complete0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \line_complete0_carry__0_n_0\ : STD_LOGIC;
  signal \line_complete0_carry__0_n_1\ : STD_LOGIC;
  signal \line_complete0_carry__0_n_2\ : STD_LOGIC;
  signal \line_complete0_carry__0_n_3\ : STD_LOGIC;
  signal \line_complete0_carry__1_n_2\ : STD_LOGIC;
  signal \line_complete0_carry__1_n_3\ : STD_LOGIC;
  signal line_complete0_carry_i_1_n_0 : STD_LOGIC;
  signal line_complete0_carry_i_2_n_0 : STD_LOGIC;
  signal line_complete0_carry_i_3_n_0 : STD_LOGIC;
  signal line_complete0_carry_i_4_n_0 : STD_LOGIC;
  signal line_complete0_carry_n_0 : STD_LOGIC;
  signal line_complete0_carry_n_1 : STD_LOGIC;
  signal line_complete0_carry_n_2 : STD_LOGIC;
  signal line_complete0_carry_n_3 : STD_LOGIC;
  signal line_complete1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \line_complete1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__0_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__0_n_1\ : STD_LOGIC;
  signal \line_complete1_carry__0_n_2\ : STD_LOGIC;
  signal \line_complete1_carry__0_n_3\ : STD_LOGIC;
  signal \line_complete1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__1_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__1_n_1\ : STD_LOGIC;
  signal \line_complete1_carry__1_n_2\ : STD_LOGIC;
  signal \line_complete1_carry__1_n_3\ : STD_LOGIC;
  signal \line_complete1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__2_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__2_n_1\ : STD_LOGIC;
  signal \line_complete1_carry__2_n_2\ : STD_LOGIC;
  signal \line_complete1_carry__2_n_3\ : STD_LOGIC;
  signal \line_complete1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__3_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__3_n_1\ : STD_LOGIC;
  signal \line_complete1_carry__3_n_2\ : STD_LOGIC;
  signal \line_complete1_carry__3_n_3\ : STD_LOGIC;
  signal \line_complete1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__4_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__4_n_1\ : STD_LOGIC;
  signal \line_complete1_carry__4_n_2\ : STD_LOGIC;
  signal \line_complete1_carry__4_n_3\ : STD_LOGIC;
  signal \line_complete1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__5_n_0\ : STD_LOGIC;
  signal \line_complete1_carry__5_n_1\ : STD_LOGIC;
  signal \line_complete1_carry__5_n_2\ : STD_LOGIC;
  signal \line_complete1_carry__5_n_3\ : STD_LOGIC;
  signal \line_complete1_carry__6_n_2\ : STD_LOGIC;
  signal \line_complete1_carry__6_n_3\ : STD_LOGIC;
  signal line_complete1_carry_i_1_n_0 : STD_LOGIC;
  signal line_complete1_carry_i_2_n_0 : STD_LOGIC;
  signal line_complete1_carry_i_3_n_0 : STD_LOGIC;
  signal line_complete1_carry_i_4_n_0 : STD_LOGIC;
  signal line_complete1_carry_n_0 : STD_LOGIC;
  signal line_complete1_carry_n_1 : STD_LOGIC;
  signal line_complete1_carry_n_2 : STD_LOGIC;
  signal line_complete1_carry_n_3 : STD_LOGIC;
  signal line_counter_n : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal line_counter_n0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal line_counter_n1 : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_n_1\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_n_2\ : STD_LOGIC;
  signal \line_counter_n1_carry__0_n_3\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_n_1\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_n_2\ : STD_LOGIC;
  signal \line_counter_n1_carry__1_n_3\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_n_1\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_n_2\ : STD_LOGIC;
  signal \line_counter_n1_carry__2_n_3\ : STD_LOGIC;
  signal line_counter_n1_carry_i_1_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_i_2_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_i_3_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_i_4_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_i_5_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_i_6_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_i_7_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_i_8_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_n_0 : STD_LOGIC;
  signal line_counter_n1_carry_n_1 : STD_LOGIC;
  signal line_counter_n1_carry_n_2 : STD_LOGIC;
  signal line_counter_n1_carry_n_3 : STD_LOGIC;
  signal line_counter_n_2 : STD_LOGIC;
  signal line_counter_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \line_counter_r_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_r_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \line_counter_r_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \line_counter_r_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_r_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \line_counter_r_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \line_counter_r_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_r_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \line_counter_r_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \line_counter_r_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_r_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \line_counter_r_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \line_counter_r_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_r_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \line_counter_r_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \line_counter_r_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \line_counter_r_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_r_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \line_counter_r_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \line_counter_r_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter_r_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \line_counter_r_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \line_counter_r_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \^m_araddr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \m_araddr_r[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_araddr_r[17]_i_3_n_0\ : STD_LOGIC;
  signal \m_araddr_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \m_araddr_r_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \m_araddr_r_reg[17]_i_2_n_1\ : STD_LOGIC;
  signal \m_araddr_r_reg[17]_i_2_n_2\ : STD_LOGIC;
  signal \m_araddr_r_reg[17]_i_2_n_3\ : STD_LOGIC;
  signal \m_araddr_r_reg[17]_i_2_n_4\ : STD_LOGIC;
  signal \m_araddr_r_reg[17]_i_2_n_5\ : STD_LOGIC;
  signal \m_araddr_r_reg[17]_i_2_n_6\ : STD_LOGIC;
  signal \m_araddr_r_reg[17]_i_2_n_7\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \m_araddr_r_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \m_araddr_r_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \^m_arvalid_n_dbg\ : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_10_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_12_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_14_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_3_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_4_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_5_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_6_n_0 : STD_LOGIC;
  signal m_arvalid_n_dbg_INST_0_i_7_n_0 : STD_LOGIC;
  signal \^m_arvalid_r_dbg\ : STD_LOGIC;
  signal \^m_rready\ : STD_LOGIC;
  signal m_rready_r_i_1_n_0 : STD_LOGIC;
  signal m_rready_r_i_2_n_0 : STD_LOGIC;
  signal m_rready_r_i_3_n_0 : STD_LOGIC;
  signal m_rready_r_i_4_n_0 : STD_LOGIC;
  signal m_rready_r_i_5_n_0 : STD_LOGIC;
  signal m_rready_r_i_6_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^pixel_clk_r\ : STD_LOGIC;
  signal pixel_clk_r_i_1_n_0 : STD_LOGIC;
  signal pixel_clk_r_i_2_n_0 : STD_LOGIC;
  signal pixel_clk_r_i_3_n_0 : STD_LOGIC;
  signal pixel_clk_r_i_4_n_0 : STD_LOGIC;
  signal pixel_complete0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \pixel_complete_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_n_0\ : STD_LOGIC;
  signal \pixel_complete_carry__0_n_1\ : STD_LOGIC;
  signal \pixel_complete_carry__0_n_2\ : STD_LOGIC;
  signal \pixel_complete_carry__0_n_3\ : STD_LOGIC;
  signal \pixel_complete_carry__1_n_2\ : STD_LOGIC;
  signal \pixel_complete_carry__1_n_3\ : STD_LOGIC;
  signal pixel_complete_carry_i_1_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_2_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_3_n_0 : STD_LOGIC;
  signal pixel_complete_carry_i_4_n_0 : STD_LOGIC;
  signal pixel_complete_carry_n_0 : STD_LOGIC;
  signal pixel_complete_carry_n_1 : STD_LOGIC;
  signal pixel_complete_carry_n_2 : STD_LOGIC;
  signal pixel_complete_carry_n_3 : STD_LOGIC;
  signal \^pixel_complete_dbg\ : STD_LOGIC;
  signal pixel_counter_n : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pixel_counter_n0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal pixel_counter_n1 : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_n_1\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_n_2\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__0_n_3\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_n_1\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_n_2\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__1_n_3\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_n_1\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_n_2\ : STD_LOGIC;
  signal \pixel_counter_n1_carry__2_n_3\ : STD_LOGIC;
  signal pixel_counter_n1_carry_i_1_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_i_2_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_i_3_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_i_4_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_i_5_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_i_6_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_i_7_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_i_8_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_n_0 : STD_LOGIC;
  signal pixel_counter_n1_carry_n_1 : STD_LOGIC;
  signal pixel_counter_n1_carry_n_2 : STD_LOGIC;
  signal pixel_counter_n1_carry_n_3 : STD_LOGIC;
  signal pixel_counter_n_0 : STD_LOGIC;
  signal pixel_counter_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pixel_counter_r_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_r_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_counter_r_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_counter_r_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_r_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_counter_r_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_counter_r_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_r_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_counter_r_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_counter_r_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_r_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_counter_r_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_counter_r_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_r_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_counter_r_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_counter_r_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \pixel_counter_r_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_r_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_counter_r_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_counter_r_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_counter_r_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_counter_r_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_counter_r_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal pixel_halftime : STD_LOGIC;
  signal pixel_halftime0 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \pixel_halftime_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_6_n_1\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_6_n_2\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_6_n_3\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_7_n_1\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_7_n_2\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_7_n_3\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_n_1\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_n_2\ : STD_LOGIC;
  signal \pixel_halftime_carry__0_n_3\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_4_n_1\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_4_n_3\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_5_n_1\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_5_n_2\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_5_n_3\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_n_2\ : STD_LOGIC;
  signal \pixel_halftime_carry__1_n_3\ : STD_LOGIC;
  signal pixel_halftime_carry_i_10_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_11_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_12_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_13_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_14_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_15_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_16_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_17_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_18_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_19_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_1_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_2_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_3_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_4_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_5_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_5_n_1 : STD_LOGIC;
  signal pixel_halftime_carry_i_5_n_2 : STD_LOGIC;
  signal pixel_halftime_carry_i_5_n_3 : STD_LOGIC;
  signal pixel_halftime_carry_i_6_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_6_n_1 : STD_LOGIC;
  signal pixel_halftime_carry_i_6_n_2 : STD_LOGIC;
  signal pixel_halftime_carry_i_6_n_3 : STD_LOGIC;
  signal pixel_halftime_carry_i_7_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_7_n_1 : STD_LOGIC;
  signal pixel_halftime_carry_i_7_n_2 : STD_LOGIC;
  signal pixel_halftime_carry_i_7_n_3 : STD_LOGIC;
  signal pixel_halftime_carry_i_8_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_i_9_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_n_0 : STD_LOGIC;
  signal pixel_halftime_carry_n_1 : STD_LOGIC;
  signal pixel_halftime_carry_n_2 : STD_LOGIC;
  signal pixel_halftime_carry_n_3 : STD_LOGIC;
  signal return_counter_n : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \return_counter_n0_carry__0_n_0\ : STD_LOGIC;
  signal \return_counter_n0_carry__0_n_1\ : STD_LOGIC;
  signal \return_counter_n0_carry__0_n_2\ : STD_LOGIC;
  signal \return_counter_n0_carry__0_n_3\ : STD_LOGIC;
  signal \return_counter_n0_carry__1_n_0\ : STD_LOGIC;
  signal \return_counter_n0_carry__1_n_1\ : STD_LOGIC;
  signal \return_counter_n0_carry__1_n_2\ : STD_LOGIC;
  signal \return_counter_n0_carry__1_n_3\ : STD_LOGIC;
  signal \return_counter_n0_carry__2_n_0\ : STD_LOGIC;
  signal \return_counter_n0_carry__2_n_1\ : STD_LOGIC;
  signal \return_counter_n0_carry__2_n_2\ : STD_LOGIC;
  signal \return_counter_n0_carry__2_n_3\ : STD_LOGIC;
  signal \return_counter_n0_carry__3_n_0\ : STD_LOGIC;
  signal \return_counter_n0_carry__3_n_1\ : STD_LOGIC;
  signal \return_counter_n0_carry__3_n_2\ : STD_LOGIC;
  signal \return_counter_n0_carry__3_n_3\ : STD_LOGIC;
  signal \return_counter_n0_carry__4_n_0\ : STD_LOGIC;
  signal \return_counter_n0_carry__4_n_1\ : STD_LOGIC;
  signal \return_counter_n0_carry__4_n_2\ : STD_LOGIC;
  signal \return_counter_n0_carry__4_n_3\ : STD_LOGIC;
  signal \return_counter_n0_carry__5_n_0\ : STD_LOGIC;
  signal \return_counter_n0_carry__5_n_1\ : STD_LOGIC;
  signal \return_counter_n0_carry__5_n_2\ : STD_LOGIC;
  signal \return_counter_n0_carry__5_n_3\ : STD_LOGIC;
  signal \return_counter_n0_carry__6_n_2\ : STD_LOGIC;
  signal \return_counter_n0_carry__6_n_3\ : STD_LOGIC;
  signal return_counter_n0_carry_n_0 : STD_LOGIC;
  signal return_counter_n0_carry_n_1 : STD_LOGIC;
  signal return_counter_n0_carry_n_2 : STD_LOGIC;
  signal return_counter_n0_carry_n_3 : STD_LOGIC;
  signal return_counter_n_3 : STD_LOGIC;
  signal return_counter_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal shift_counter_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \shift_counter_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_counter_r[1]_i_1_n_0\ : STD_LOGIC;
  signal start_frame_r_i_1_n_0 : STD_LOGIC;
  signal \^start_frame_r_reg_0\ : STD_LOGIC;
  signal \^state_dbg\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_n__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^warmup_pulse_counter_dbg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal warmup_pulse_counter_n : STD_LOGIC;
  signal \warmup_pulse_counter_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \warmup_pulse_counter_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_clk_counter_n0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clk_counter_n0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_line_complete0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_complete0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_complete0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_line_complete0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_complete1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_line_complete1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_line_counter_n1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_counter_n1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_counter_n1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_counter_n1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_counter_r_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_line_counter_r_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m_araddr_r_reg[17]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pixel_complete_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_complete_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_complete_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pixel_complete_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pixel_counter_n1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_counter_n1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_counter_n1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_counter_n1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_counter_r_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pixel_counter_r_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pixel_halftime_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_halftime_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_halftime_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pixel_halftime_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixel_halftime_carry__1_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pixel_halftime_carry__1_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_return_counter_n0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_return_counter_n0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[2]_i_1\ : label is "soft_lutpair27";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[0]\ : label is "IDLE:100,WARMUP:011,RETURN:001,PIXEL:010,DONE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[1]\ : label is "IDLE:100,WARMUP:011,RETURN:001,PIXEL:010,DONE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[2]\ : label is "IDLE:100,WARMUP:011,RETURN:001,PIXEL:010,DONE:000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of clk_counter_n0_carry : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter_n0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter_n0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter_n0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter_n0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter_n0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter_n0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter_n0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \clk_counter_r[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of frame_clk_r_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of frame_clk_r_i_4 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of line_clk_r_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of line_clk_r_i_7 : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of line_complete1_carry : label is 35;
  attribute ADDER_THRESHOLD of \line_complete1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \line_complete1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \line_complete1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_complete1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \line_complete1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \line_complete1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \line_complete1_carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of line_counter_n1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \line_counter_n1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \line_counter_n1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \line_counter_n1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \line_counter_r[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \line_counter_r[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \line_counter_r[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \line_counter_r[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \line_counter_r[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \line_counter_r[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \line_counter_r[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \line_counter_r[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \line_counter_r[17]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \line_counter_r[18]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \line_counter_r[19]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \line_counter_r[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \line_counter_r[20]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \line_counter_r[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \line_counter_r[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \line_counter_r[23]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \line_counter_r[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \line_counter_r[25]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \line_counter_r[26]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \line_counter_r[27]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \line_counter_r[28]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_counter_r[29]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_counter_r[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \line_counter_r[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \line_counter_r[31]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \line_counter_r[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \line_counter_r[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_counter_r[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_counter_r[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_counter_r[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_counter_r[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_counter_r[9]_i_1\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD of \line_counter_r_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_counter_r_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_counter_r_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_counter_r_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_counter_r_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_counter_r_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \line_counter_r_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_counter_r_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \m_araddr_r[17]_i_3\ : label is "soft_lutpair3";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[10]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[11]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[12]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[13]\ : label is "FREQ_HZ 10000000";
  attribute ADDER_THRESHOLD of \m_araddr_r_reg[13]_i_1\ : label is 11;
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[14]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[15]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[16]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[17]\ : label is "FREQ_HZ 10000000";
  attribute ADDER_THRESHOLD of \m_araddr_r_reg[17]_i_2\ : label is 11;
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[2]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[3]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[4]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[5]\ : label is "FREQ_HZ 10000000";
  attribute ADDER_THRESHOLD of \m_araddr_r_reg[5]_i_1\ : label is 11;
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[6]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[7]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[8]\ : label is "FREQ_HZ 10000000";
  attribute X_INTERFACE_INFO of \m_araddr_r_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_PARAMETER of \m_araddr_r_reg[9]\ : label is "FREQ_HZ 10000000";
  attribute ADDER_THRESHOLD of \m_araddr_r_reg[9]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of m_arvalid_n_dbg_INST_0_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_arvalid_n_dbg_INST_0_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_arvalid_n_dbg_INST_0_i_4 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of m_arvalid_n_dbg_INST_0_i_6 : label is "soft_lutpair44";
  attribute X_INTERFACE_INFO of m_arvalid_r_reg : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID";
  attribute SOFT_HLUTNM of m_rready_r_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_rready_r_i_6 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO of m_rready_r_reg : label is "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY";
  attribute SOFT_HLUTNM of pixel_clk_r_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of pixel_clk_r_i_4 : label is "soft_lutpair25";
  attribute COMPARATOR_THRESHOLD of pixel_counter_n1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pixel_counter_n1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pixel_counter_n1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pixel_counter_n1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \pixel_counter_r[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pixel_counter_r[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pixel_counter_r[11]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pixel_counter_r[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \pixel_counter_r[13]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \pixel_counter_r[14]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pixel_counter_r[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pixel_counter_r[16]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pixel_counter_r[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pixel_counter_r[18]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pixel_counter_r[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pixel_counter_r[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pixel_counter_r[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pixel_counter_r[21]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pixel_counter_r[22]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pixel_counter_r[23]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pixel_counter_r[24]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pixel_counter_r[25]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pixel_counter_r[26]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pixel_counter_r[27]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pixel_counter_r[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pixel_counter_r[29]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pixel_counter_r[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \pixel_counter_r[30]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pixel_counter_r[31]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pixel_counter_r[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \pixel_counter_r[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \pixel_counter_r[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \pixel_counter_r[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pixel_counter_r[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pixel_counter_r[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \pixel_counter_r[9]_i_1\ : label is "soft_lutpair39";
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_r_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of return_counter_n0_carry : label is 35;
  attribute ADDER_THRESHOLD of \return_counter_n0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \return_counter_n0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \return_counter_n0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \return_counter_n0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \return_counter_n0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \return_counter_n0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \return_counter_n0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \return_counter_r[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \return_counter_r[11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \return_counter_r[12]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \return_counter_r[13]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \return_counter_r[14]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \return_counter_r[15]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \return_counter_r[16]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \return_counter_r[17]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \return_counter_r[18]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \return_counter_r[19]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \return_counter_r[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \return_counter_r[20]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \return_counter_r[21]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \return_counter_r[22]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \return_counter_r[23]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \return_counter_r[24]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \return_counter_r[25]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \return_counter_r[26]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \return_counter_r[27]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \return_counter_r[28]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \return_counter_r[29]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \return_counter_r[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \return_counter_r[30]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \return_counter_r[31]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \return_counter_r[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \return_counter_r[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \return_counter_r[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \return_counter_r[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \return_counter_r[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \return_counter_r[8]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \return_counter_r[9]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \shift_counter_r[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of start_frame_r_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state_dbg[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state_dbg[1]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \state_dbg[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \warmup_pulse_counter_r[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \warmup_pulse_counter_r[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \warmup_pulse_counter_r[3]_i_2\ : label is "soft_lutpair6";
begin
  frame_clk_r <= \^frame_clk_r\;
  line_clk_r <= \^line_clk_r\;
  m_araddr(15 downto 0) <= \^m_araddr\(15 downto 0);
  m_arvalid_n_dbg <= \^m_arvalid_n_dbg\;
  m_arvalid_r_dbg <= \^m_arvalid_r_dbg\;
  m_rready <= \^m_rready\;
  pixel_clk_r <= \^pixel_clk_r\;
  pixel_complete_dbg <= \^pixel_complete_dbg\;
  start_frame_r_reg_0 <= \^start_frame_r_reg_0\;
  state_dbg(2 downto 0) <= \^state_dbg\(2 downto 0);
  warmup_pulse_counter_dbg(3 downto 0) <= \^warmup_pulse_counter_dbg\(3 downto 0);
DelayChain_inst: entity work.laser_laser_signal_generat_0_0_DelayChain
     port map (
      CNTVALUEOUT_dbg(4 downto 0) => CNTVALUEOUT_dbg(4 downto 0),
      CO(0) => \^pixel_complete_dbg\,
      \DELAY_CHAIN[0].IDELAYE2_inst_i_0\(0) => line_complete0,
      LD_r => LD_r,
      Q(2 downto 0) => state_r(2 downto 0),
      S(2) => DelayChain_inst_n_1,
      S(1) => DelayChain_inst_n_2,
      S(0) => DelayChain_inst_n_3,
      clk => clk,
      frame_clk_r_i_5_0(31 downto 0) => line_counter_r(31 downto 0),
      gate_stop_r => gate_stop_r,
      image_size(2 downto 0) => image_size(31 downto 29),
      \image_size[31]\(2) => DelayChain_inst_n_27,
      \image_size[31]\(1) => DelayChain_inst_n_28,
      \image_size[31]\(0) => DelayChain_inst_n_29,
      \line_complete0_carry__1\(7 downto 0) => pixel_counter_r(31 downto 24),
      line_complete1(7 downto 0) => line_complete1(31 downto 24),
      \line_counter_r_reg[20]\ => DelayChain_inst_n_34,
      \line_counter_r_reg[4]\ => DelayChain_inst_n_35,
      m_arvalid_n_dbg_INST_0_i_7(31 downto 0) => return_counter_r(31 downto 0),
      m_rdata(19 downto 0) => m_rdata(19 downto 0),
      pixel_complete_dbg(7 downto 0) => clk_counter_r(31 downto 24),
      \pixel_counter_r_reg[30]\(2) => DelayChain_inst_n_30,
      \pixel_counter_r_reg[30]\(1) => DelayChain_inst_n_31,
      \pixel_counter_r_reg[30]\(0) => DelayChain_inst_n_32,
      pulses_per_pixel(31 downto 0) => pulses_per_pixel(31 downto 0),
      \pulses_per_pixel[24]\(22 downto 0) => pixel_complete0(23 downto 1),
      refclk_out => refclk_out,
      \return_counter_r_reg[10]\ => DelayChain_inst_n_33,
      \return_counter_r_reg[10]_0\ => DelayChain_inst_n_36,
      \return_counter_r_reg[18]\ => DelayChain_inst_n_39,
      \return_counter_r_reg[21]\ => DelayChain_inst_n_41,
      \return_counter_r_reg[26]\ => DelayChain_inst_n_38,
      \return_counter_r_reg[29]\ => DelayChain_inst_n_40,
      \return_counter_r_reg[2]\ => DelayChain_inst_n_37,
      shift_counter_r(1 downto 0) => shift_counter_r(1 downto 0),
      stop_out => stop_out
    );
\FSM_sequential_state_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEEEEEEEEEEE"
    )
        port map (
      I0 => m_rready_r_i_3_n_0,
      I1 => \FSM_sequential_state_r[0]_i_2_n_0\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => state_r(0),
      I5 => \FSM_sequential_state_r[0]_i_3_n_0\,
      O => \state_n__0\(0)
    );
\FSM_sequential_state_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00008888A000"
    )
        port map (
      I0 => state_r(1),
      I1 => frame_clk_r_i_4_n_0,
      I2 => \^pixel_complete_dbg\,
      I3 => line_complete0,
      I4 => state_r(0),
      I5 => state_r(2),
      O => \FSM_sequential_state_r[0]_i_2_n_0\
    );
\FSM_sequential_state_r[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DelayChain_inst_n_35,
      I1 => DelayChain_inst_n_34,
      O => \FSM_sequential_state_r[0]_i_3_n_0\
    );
\FSM_sequential_state_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAC0FFC0C0"
    )
        port map (
      I0 => \^start_frame_r_reg_0\,
      I1 => line_clk_r_i_4_n_0,
      I2 => state_r(1),
      I3 => DelayChain_inst_n_33,
      I4 => state_r(0),
      I5 => state_r(2),
      O => \state_n__0\(1)
    );
\FSM_sequential_state_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_r(2),
      I1 => \^start_frame_r_reg_0\,
      O => \FSM_sequential_state_r[2]_i_1_n_0\
    );
\FSM_sequential_state_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => \state_n__0\(0),
      Q => state_r(0)
    );
\FSM_sequential_state_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => \state_n__0\(1),
      Q => state_r(1)
    );
\FSM_sequential_state_r_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state_r[2]_i_1_n_0\,
      PRE => frame_clk_r_i_2_n_0,
      Q => state_r(2)
    );
LD_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8FFFFFFA80000"
    )
        port map (
      I0 => state_r(0),
      I1 => m_arvalid_n_dbg_INST_0_i_10_n_0,
      I2 => LD_r_i_2_n_0,
      I3 => m_arvalid_n_dbg_INST_0_i_2_n_0,
      I4 => aresetn,
      I5 => LD_r,
      O => LD_r_i_1_n_0
    );
LD_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(1),
      I2 => DelayChain_inst_n_39,
      I3 => DelayChain_inst_n_38,
      I4 => DelayChain_inst_n_37,
      I5 => DelayChain_inst_n_36,
      O => LD_r_i_2_n_0
    );
LD_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => LD_r_i_1_n_0,
      Q => LD_r,
      R => '0'
    );
clk_counter_n0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_counter_n0_carry_n_0,
      CO(2) => clk_counter_n0_carry_n_1,
      CO(1) => clk_counter_n0_carry_n_2,
      CO(0) => clk_counter_n0_carry_n_3,
      CYINIT => clk_counter_r(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(4 downto 1),
      S(3 downto 0) => clk_counter_r(4 downto 1)
    );
\clk_counter_n0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_counter_n0_carry_n_0,
      CO(3) => \clk_counter_n0_carry__0_n_0\,
      CO(2) => \clk_counter_n0_carry__0_n_1\,
      CO(1) => \clk_counter_n0_carry__0_n_2\,
      CO(0) => \clk_counter_n0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(8 downto 5),
      S(3 downto 0) => clk_counter_r(8 downto 5)
    );
\clk_counter_n0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_n0_carry__0_n_0\,
      CO(3) => \clk_counter_n0_carry__1_n_0\,
      CO(2) => \clk_counter_n0_carry__1_n_1\,
      CO(1) => \clk_counter_n0_carry__1_n_2\,
      CO(0) => \clk_counter_n0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(12 downto 9),
      S(3 downto 0) => clk_counter_r(12 downto 9)
    );
\clk_counter_n0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_n0_carry__1_n_0\,
      CO(3) => \clk_counter_n0_carry__2_n_0\,
      CO(2) => \clk_counter_n0_carry__2_n_1\,
      CO(1) => \clk_counter_n0_carry__2_n_2\,
      CO(0) => \clk_counter_n0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(16 downto 13),
      S(3 downto 0) => clk_counter_r(16 downto 13)
    );
\clk_counter_n0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_n0_carry__2_n_0\,
      CO(3) => \clk_counter_n0_carry__3_n_0\,
      CO(2) => \clk_counter_n0_carry__3_n_1\,
      CO(1) => \clk_counter_n0_carry__3_n_2\,
      CO(0) => \clk_counter_n0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(20 downto 17),
      S(3 downto 0) => clk_counter_r(20 downto 17)
    );
\clk_counter_n0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_n0_carry__3_n_0\,
      CO(3) => \clk_counter_n0_carry__4_n_0\,
      CO(2) => \clk_counter_n0_carry__4_n_1\,
      CO(1) => \clk_counter_n0_carry__4_n_2\,
      CO(0) => \clk_counter_n0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(24 downto 21),
      S(3 downto 0) => clk_counter_r(24 downto 21)
    );
\clk_counter_n0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_n0_carry__4_n_0\,
      CO(3) => \clk_counter_n0_carry__5_n_0\,
      CO(2) => \clk_counter_n0_carry__5_n_1\,
      CO(1) => \clk_counter_n0_carry__5_n_2\,
      CO(0) => \clk_counter_n0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(28 downto 25),
      S(3 downto 0) => clk_counter_r(28 downto 25)
    );
\clk_counter_n0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_n0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_clk_counter_n0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clk_counter_n0_carry__6_n_2\,
      CO(0) => \clk_counter_n0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clk_counter_n0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \p_0_in__0\(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => clk_counter_r(31 downto 29)
    );
\clk_counter_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000011F1"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => clk_counter_r(0),
      O => clk_counter_n(0)
    );
\clk_counter_r[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(10),
      O => clk_counter_n(10)
    );
\clk_counter_r[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(11),
      O => clk_counter_n(11)
    );
\clk_counter_r[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(12),
      O => clk_counter_n(12)
    );
\clk_counter_r[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(13),
      O => clk_counter_n(13)
    );
\clk_counter_r[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(14),
      O => clk_counter_n(14)
    );
\clk_counter_r[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(15),
      O => clk_counter_n(15)
    );
\clk_counter_r[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(16),
      O => clk_counter_n(16)
    );
\clk_counter_r[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(17),
      O => clk_counter_n(17)
    );
\clk_counter_r[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(18),
      O => clk_counter_n(18)
    );
\clk_counter_r[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(19),
      O => clk_counter_n(19)
    );
\clk_counter_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(1),
      O => clk_counter_n(1)
    );
\clk_counter_r[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(20),
      O => clk_counter_n(20)
    );
\clk_counter_r[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(21),
      O => clk_counter_n(21)
    );
\clk_counter_r[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(22),
      O => clk_counter_n(22)
    );
\clk_counter_r[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(23),
      O => clk_counter_n(23)
    );
\clk_counter_r[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(24),
      O => clk_counter_n(24)
    );
\clk_counter_r[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(25),
      O => clk_counter_n(25)
    );
\clk_counter_r[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(26),
      O => clk_counter_n(26)
    );
\clk_counter_r[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(27),
      O => clk_counter_n(27)
    );
\clk_counter_r[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(28),
      O => clk_counter_n(28)
    );
\clk_counter_r[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(29),
      O => clk_counter_n(29)
    );
\clk_counter_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(2),
      O => clk_counter_n(2)
    );
\clk_counter_r[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(30),
      O => clk_counter_n(30)
    );
\clk_counter_r[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007A"
    )
        port map (
      I0 => state_r(0),
      I1 => frame_clk_r_i_4_n_0,
      I2 => state_r(1),
      I3 => state_r(2),
      O => clk_counter_n_1
    );
\clk_counter_r[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(31),
      O => clk_counter_n(31)
    );
\clk_counter_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(3),
      O => clk_counter_n(3)
    );
\clk_counter_r[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(4),
      O => clk_counter_n(4)
    );
\clk_counter_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(5),
      O => clk_counter_n(5)
    );
\clk_counter_r[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(6),
      O => clk_counter_n(6)
    );
\clk_counter_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(7),
      O => clk_counter_n(7)
    );
\clk_counter_r[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(8),
      O => clk_counter_n(8)
    );
\clk_counter_r[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F10000"
    )
        port map (
      I0 => state_r(0),
      I1 => \^pixel_complete_dbg\,
      I2 => DelayChain_inst_n_33,
      I3 => state_r(1),
      I4 => \p_0_in__0\(9),
      O => clk_counter_n(9)
    );
\clk_counter_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(0),
      Q => clk_counter_r(0)
    );
\clk_counter_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(10),
      Q => clk_counter_r(10)
    );
\clk_counter_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(11),
      Q => clk_counter_r(11)
    );
\clk_counter_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(12),
      Q => clk_counter_r(12)
    );
\clk_counter_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(13),
      Q => clk_counter_r(13)
    );
\clk_counter_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(14),
      Q => clk_counter_r(14)
    );
\clk_counter_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(15),
      Q => clk_counter_r(15)
    );
\clk_counter_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(16),
      Q => clk_counter_r(16)
    );
\clk_counter_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(17),
      Q => clk_counter_r(17)
    );
\clk_counter_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(18),
      Q => clk_counter_r(18)
    );
\clk_counter_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(19),
      Q => clk_counter_r(19)
    );
\clk_counter_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(1),
      Q => clk_counter_r(1)
    );
\clk_counter_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(20),
      Q => clk_counter_r(20)
    );
\clk_counter_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(21),
      Q => clk_counter_r(21)
    );
\clk_counter_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(22),
      Q => clk_counter_r(22)
    );
\clk_counter_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(23),
      Q => clk_counter_r(23)
    );
\clk_counter_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(24),
      Q => clk_counter_r(24)
    );
\clk_counter_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(25),
      Q => clk_counter_r(25)
    );
\clk_counter_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(26),
      Q => clk_counter_r(26)
    );
\clk_counter_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(27),
      Q => clk_counter_r(27)
    );
\clk_counter_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(28),
      Q => clk_counter_r(28)
    );
\clk_counter_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(29),
      Q => clk_counter_r(29)
    );
\clk_counter_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(2),
      Q => clk_counter_r(2)
    );
\clk_counter_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(30),
      Q => clk_counter_r(30)
    );
\clk_counter_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(31),
      Q => clk_counter_r(31)
    );
\clk_counter_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(3),
      Q => clk_counter_r(3)
    );
\clk_counter_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(4),
      Q => clk_counter_r(4)
    );
\clk_counter_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(5),
      Q => clk_counter_r(5)
    );
\clk_counter_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(6),
      Q => clk_counter_r(6)
    );
\clk_counter_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(7),
      Q => clk_counter_r(7)
    );
\clk_counter_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(8),
      Q => clk_counter_r(8)
    );
\clk_counter_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clk_counter_n_1,
      CLR => frame_clk_r_i_2_n_0,
      D => clk_counter_n(9),
      Q => clk_counter_r(9)
    );
frame_clk_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F555F550B000A00"
    )
        port map (
      I0 => frame_clk_r_i_3_n_0,
      I1 => frame_clk_r_i_4_n_0,
      I2 => state_r(2),
      I3 => state_r(1),
      I4 => state_r(0),
      I5 => \^frame_clk_r\,
      O => frame_clk_r_i_1_n_0
    );
frame_clk_r_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => frame_clk_r_i_2_n_0
    );
frame_clk_r_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => state_r(0),
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => DelayChain_inst_n_34,
      I4 => DelayChain_inst_n_35,
      O => frame_clk_r_i_3_n_0
    );
frame_clk_r_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^warmup_pulse_counter_dbg\(2),
      I1 => \^warmup_pulse_counter_dbg\(0),
      I2 => \^warmup_pulse_counter_dbg\(1),
      I3 => \^warmup_pulse_counter_dbg\(3),
      O => frame_clk_r_i_4_n_0
    );
frame_clk_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => frame_clk_r_i_1_n_0,
      Q => \^frame_clk_r\
    );
gate_stop_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFAA002000AA"
    )
        port map (
      I0 => gate_stop_r_i_2_n_0,
      I1 => state_r(1),
      I2 => DelayChain_inst_n_33,
      I3 => state_r(2),
      I4 => state_r(0),
      I5 => gate_stop_r,
      O => gate_stop_r_i_1_n_0
    );
gate_stop_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000110010"
    )
        port map (
      I0 => clk_counter_r(1),
      I1 => clk_counter_r(0),
      I2 => state_r(1),
      I3 => state_r(2),
      I4 => state_r(0),
      I5 => clk_counter_r(2),
      O => gate_stop_r_i_2_n_0
    );
gate_stop_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => gate_stop_r_i_1_n_0,
      Q => gate_stop_r
    );
line_clk_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4F400F4F4"
    )
        port map (
      I0 => DelayChain_inst_n_33,
      I1 => \^state_dbg\(1),
      I2 => warmup_pulse_counter_n,
      I3 => line_clk_r_i_3_n_0,
      I4 => line_clk_r_i_4_n_0,
      I5 => \^line_clk_r\,
      O => line_clk_r_i_1_n_0
    );
line_clk_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => DelayChain_inst_n_36,
      I1 => DelayChain_inst_n_37,
      I2 => DelayChain_inst_n_38,
      I3 => DelayChain_inst_n_39,
      I4 => m_arvalid_n_dbg_INST_0_i_6_n_0,
      I5 => line_clk_r_i_7_n_0,
      O => line_clk_r_i_3_n_0
    );
line_clk_r_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^pixel_complete_dbg\,
      I1 => state_r(0),
      I2 => state_r(2),
      I3 => line_complete0,
      O => line_clk_r_i_4_n_0
    );
line_clk_r_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0043"
    )
        port map (
      I0 => frame_clk_r_i_4_n_0,
      I1 => state_r(0),
      I2 => state_r(1),
      I3 => state_r(2),
      O => line_clk_r_i_7_n_0
    );
line_clk_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => line_clk_r_i_1_n_0,
      Q => \^line_clk_r\
    );
line_complete0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => line_complete0_carry_n_0,
      CO(2) => line_complete0_carry_n_1,
      CO(1) => line_complete0_carry_n_2,
      CO(0) => line_complete0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_line_complete0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => line_complete0_carry_i_1_n_0,
      S(2) => line_complete0_carry_i_2_n_0,
      S(1) => line_complete0_carry_i_3_n_0,
      S(0) => line_complete0_carry_i_4_n_0
    );
\line_complete0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => line_complete0_carry_n_0,
      CO(3) => \line_complete0_carry__0_n_0\,
      CO(2) => \line_complete0_carry__0_n_1\,
      CO(1) => \line_complete0_carry__0_n_2\,
      CO(0) => \line_complete0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_line_complete0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \line_complete0_carry__0_i_1_n_0\,
      S(2) => \line_complete0_carry__0_i_2_n_0\,
      S(1) => \line_complete0_carry__0_i_3_n_0\,
      S(0) => \line_complete0_carry__0_i_4_n_0\
    );
\line_complete0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(23),
      I1 => pixel_counter_r(23),
      I2 => line_complete1(22),
      I3 => pixel_counter_r(22),
      I4 => pixel_counter_r(21),
      I5 => line_complete1(21),
      O => \line_complete0_carry__0_i_1_n_0\
    );
\line_complete0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(20),
      I1 => pixel_counter_r(20),
      I2 => line_complete1(19),
      I3 => pixel_counter_r(19),
      I4 => pixel_counter_r(18),
      I5 => line_complete1(18),
      O => \line_complete0_carry__0_i_2_n_0\
    );
\line_complete0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(17),
      I1 => pixel_counter_r(17),
      I2 => line_complete1(16),
      I3 => pixel_counter_r(16),
      I4 => pixel_counter_r(15),
      I5 => line_complete1(15),
      O => \line_complete0_carry__0_i_3_n_0\
    );
\line_complete0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(14),
      I1 => pixel_counter_r(14),
      I2 => line_complete1(13),
      I3 => pixel_counter_r(13),
      I4 => pixel_counter_r(12),
      I5 => line_complete1(12),
      O => \line_complete0_carry__0_i_4_n_0\
    );
\line_complete0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_complete0_carry__0_n_0\,
      CO(3) => \NLW_line_complete0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => line_complete0,
      CO(1) => \line_complete0_carry__1_n_2\,
      CO(0) => \line_complete0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_line_complete0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => DelayChain_inst_n_30,
      S(1) => DelayChain_inst_n_31,
      S(0) => DelayChain_inst_n_32
    );
line_complete0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(11),
      I1 => pixel_counter_r(11),
      I2 => line_complete1(10),
      I3 => pixel_counter_r(10),
      I4 => pixel_counter_r(9),
      I5 => line_complete1(9),
      O => line_complete0_carry_i_1_n_0
    );
line_complete0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(8),
      I1 => pixel_counter_r(8),
      I2 => line_complete1(7),
      I3 => pixel_counter_r(7),
      I4 => pixel_counter_r(6),
      I5 => line_complete1(6),
      O => line_complete0_carry_i_2_n_0
    );
line_complete0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_complete1(5),
      I1 => pixel_counter_r(5),
      I2 => line_complete1(4),
      I3 => pixel_counter_r(4),
      I4 => pixel_counter_r(3),
      I5 => line_complete1(3),
      O => line_complete0_carry_i_3_n_0
    );
line_complete0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => line_complete1(2),
      I1 => pixel_counter_r(2),
      I2 => line_complete1(1),
      I3 => pixel_counter_r(1),
      I4 => pixel_counter_r(0),
      I5 => image_size(0),
      O => line_complete0_carry_i_4_n_0
    );
line_complete1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => line_complete1_carry_n_0,
      CO(2) => line_complete1_carry_n_1,
      CO(1) => line_complete1_carry_n_2,
      CO(0) => line_complete1_carry_n_3,
      CYINIT => image_size(0),
      DI(3 downto 0) => image_size(4 downto 1),
      O(3 downto 0) => line_complete1(4 downto 1),
      S(3) => line_complete1_carry_i_1_n_0,
      S(2) => line_complete1_carry_i_2_n_0,
      S(1) => line_complete1_carry_i_3_n_0,
      S(0) => line_complete1_carry_i_4_n_0
    );
\line_complete1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => line_complete1_carry_n_0,
      CO(3) => \line_complete1_carry__0_n_0\,
      CO(2) => \line_complete1_carry__0_n_1\,
      CO(1) => \line_complete1_carry__0_n_2\,
      CO(0) => \line_complete1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => image_size(8 downto 5),
      O(3 downto 0) => line_complete1(8 downto 5),
      S(3) => \line_complete1_carry__0_i_1_n_0\,
      S(2) => \line_complete1_carry__0_i_2_n_0\,
      S(1) => \line_complete1_carry__0_i_3_n_0\,
      S(0) => \line_complete1_carry__0_i_4_n_0\
    );
\line_complete1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(8),
      O => \line_complete1_carry__0_i_1_n_0\
    );
\line_complete1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(7),
      O => \line_complete1_carry__0_i_2_n_0\
    );
\line_complete1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(6),
      O => \line_complete1_carry__0_i_3_n_0\
    );
\line_complete1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(5),
      O => \line_complete1_carry__0_i_4_n_0\
    );
\line_complete1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_complete1_carry__0_n_0\,
      CO(3) => \line_complete1_carry__1_n_0\,
      CO(2) => \line_complete1_carry__1_n_1\,
      CO(1) => \line_complete1_carry__1_n_2\,
      CO(0) => \line_complete1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => image_size(12 downto 9),
      O(3 downto 0) => line_complete1(12 downto 9),
      S(3) => \line_complete1_carry__1_i_1_n_0\,
      S(2) => \line_complete1_carry__1_i_2_n_0\,
      S(1) => \line_complete1_carry__1_i_3_n_0\,
      S(0) => \line_complete1_carry__1_i_4_n_0\
    );
\line_complete1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(12),
      O => \line_complete1_carry__1_i_1_n_0\
    );
\line_complete1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(11),
      O => \line_complete1_carry__1_i_2_n_0\
    );
\line_complete1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(10),
      O => \line_complete1_carry__1_i_3_n_0\
    );
\line_complete1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(9),
      O => \line_complete1_carry__1_i_4_n_0\
    );
\line_complete1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_complete1_carry__1_n_0\,
      CO(3) => \line_complete1_carry__2_n_0\,
      CO(2) => \line_complete1_carry__2_n_1\,
      CO(1) => \line_complete1_carry__2_n_2\,
      CO(0) => \line_complete1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => image_size(16 downto 13),
      O(3 downto 0) => line_complete1(16 downto 13),
      S(3) => \line_complete1_carry__2_i_1_n_0\,
      S(2) => \line_complete1_carry__2_i_2_n_0\,
      S(1) => \line_complete1_carry__2_i_3_n_0\,
      S(0) => \line_complete1_carry__2_i_4_n_0\
    );
\line_complete1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(16),
      O => \line_complete1_carry__2_i_1_n_0\
    );
\line_complete1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(15),
      O => \line_complete1_carry__2_i_2_n_0\
    );
\line_complete1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(14),
      O => \line_complete1_carry__2_i_3_n_0\
    );
\line_complete1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(13),
      O => \line_complete1_carry__2_i_4_n_0\
    );
\line_complete1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_complete1_carry__2_n_0\,
      CO(3) => \line_complete1_carry__3_n_0\,
      CO(2) => \line_complete1_carry__3_n_1\,
      CO(1) => \line_complete1_carry__3_n_2\,
      CO(0) => \line_complete1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => image_size(20 downto 17),
      O(3 downto 0) => line_complete1(20 downto 17),
      S(3) => \line_complete1_carry__3_i_1_n_0\,
      S(2) => \line_complete1_carry__3_i_2_n_0\,
      S(1) => \line_complete1_carry__3_i_3_n_0\,
      S(0) => \line_complete1_carry__3_i_4_n_0\
    );
\line_complete1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(20),
      O => \line_complete1_carry__3_i_1_n_0\
    );
\line_complete1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(19),
      O => \line_complete1_carry__3_i_2_n_0\
    );
\line_complete1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(18),
      O => \line_complete1_carry__3_i_3_n_0\
    );
\line_complete1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(17),
      O => \line_complete1_carry__3_i_4_n_0\
    );
\line_complete1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_complete1_carry__3_n_0\,
      CO(3) => \line_complete1_carry__4_n_0\,
      CO(2) => \line_complete1_carry__4_n_1\,
      CO(1) => \line_complete1_carry__4_n_2\,
      CO(0) => \line_complete1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => image_size(24 downto 21),
      O(3 downto 0) => line_complete1(24 downto 21),
      S(3) => \line_complete1_carry__4_i_1_n_0\,
      S(2) => \line_complete1_carry__4_i_2_n_0\,
      S(1) => \line_complete1_carry__4_i_3_n_0\,
      S(0) => \line_complete1_carry__4_i_4_n_0\
    );
\line_complete1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(24),
      O => \line_complete1_carry__4_i_1_n_0\
    );
\line_complete1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(23),
      O => \line_complete1_carry__4_i_2_n_0\
    );
\line_complete1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(22),
      O => \line_complete1_carry__4_i_3_n_0\
    );
\line_complete1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(21),
      O => \line_complete1_carry__4_i_4_n_0\
    );
\line_complete1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_complete1_carry__4_n_0\,
      CO(3) => \line_complete1_carry__5_n_0\,
      CO(2) => \line_complete1_carry__5_n_1\,
      CO(1) => \line_complete1_carry__5_n_2\,
      CO(0) => \line_complete1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => image_size(28 downto 25),
      O(3 downto 0) => line_complete1(28 downto 25),
      S(3) => \line_complete1_carry__5_i_1_n_0\,
      S(2) => \line_complete1_carry__5_i_2_n_0\,
      S(1) => \line_complete1_carry__5_i_3_n_0\,
      S(0) => \line_complete1_carry__5_i_4_n_0\
    );
\line_complete1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(28),
      O => \line_complete1_carry__5_i_1_n_0\
    );
\line_complete1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(27),
      O => \line_complete1_carry__5_i_2_n_0\
    );
\line_complete1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(26),
      O => \line_complete1_carry__5_i_3_n_0\
    );
\line_complete1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(25),
      O => \line_complete1_carry__5_i_4_n_0\
    );
\line_complete1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_complete1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_line_complete1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \line_complete1_carry__6_n_2\,
      CO(0) => \line_complete1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => image_size(30 downto 29),
      O(3) => \NLW_line_complete1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => line_complete1(31 downto 29),
      S(3) => '0',
      S(2) => DelayChain_inst_n_27,
      S(1) => DelayChain_inst_n_28,
      S(0) => DelayChain_inst_n_29
    );
line_complete1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(4),
      O => line_complete1_carry_i_1_n_0
    );
line_complete1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(3),
      O => line_complete1_carry_i_2_n_0
    );
line_complete1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(2),
      O => line_complete1_carry_i_3_n_0
    );
line_complete1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_size(1),
      O => line_complete1_carry_i_4_n_0
    );
line_complete_dbg_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^pixel_complete_dbg\,
      I1 => line_complete0,
      O => line_complete_dbg
    );
line_counter_n1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => line_counter_n1_carry_n_0,
      CO(2) => line_counter_n1_carry_n_1,
      CO(1) => line_counter_n1_carry_n_2,
      CO(0) => line_counter_n1_carry_n_3,
      CYINIT => '0',
      DI(3) => line_counter_n1_carry_i_1_n_0,
      DI(2) => line_counter_n1_carry_i_2_n_0,
      DI(1) => line_counter_n1_carry_i_3_n_0,
      DI(0) => line_counter_n1_carry_i_4_n_0,
      O(3 downto 0) => NLW_line_counter_n1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => line_counter_n1_carry_i_5_n_0,
      S(2) => line_counter_n1_carry_i_6_n_0,
      S(1) => line_counter_n1_carry_i_7_n_0,
      S(0) => line_counter_n1_carry_i_8_n_0
    );
\line_counter_n1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => line_counter_n1_carry_n_0,
      CO(3) => \line_counter_n1_carry__0_n_0\,
      CO(2) => \line_counter_n1_carry__0_n_1\,
      CO(1) => \line_counter_n1_carry__0_n_2\,
      CO(0) => \line_counter_n1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \line_counter_n1_carry__0_i_1_n_0\,
      DI(2) => \line_counter_n1_carry__0_i_2_n_0\,
      DI(1) => \line_counter_n1_carry__0_i_3_n_0\,
      DI(0) => \line_counter_n1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_line_counter_n1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \line_counter_n1_carry__0_i_5_n_0\,
      S(2) => \line_counter_n1_carry__0_i_6_n_0\,
      S(1) => \line_counter_n1_carry__0_i_7_n_0\,
      S(0) => \line_counter_n1_carry__0_i_8_n_0\
    );
\line_counter_n1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(15),
      I1 => line_counter_r(14),
      I2 => line_counter_r(15),
      I3 => line_complete1(14),
      O => \line_counter_n1_carry__0_i_1_n_0\
    );
\line_counter_n1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(13),
      I1 => line_counter_r(12),
      I2 => line_counter_r(13),
      I3 => line_complete1(12),
      O => \line_counter_n1_carry__0_i_2_n_0\
    );
\line_counter_n1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(11),
      I1 => line_counter_r(10),
      I2 => line_counter_r(11),
      I3 => line_complete1(10),
      O => \line_counter_n1_carry__0_i_3_n_0\
    );
\line_counter_n1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(9),
      I1 => line_counter_r(8),
      I2 => line_counter_r(9),
      I3 => line_complete1(8),
      O => \line_counter_n1_carry__0_i_4_n_0\
    );
\line_counter_n1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(15),
      I1 => line_counter_r(15),
      I2 => line_complete1(14),
      I3 => line_counter_r(14),
      O => \line_counter_n1_carry__0_i_5_n_0\
    );
\line_counter_n1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(13),
      I1 => line_counter_r(13),
      I2 => line_complete1(12),
      I3 => line_counter_r(12),
      O => \line_counter_n1_carry__0_i_6_n_0\
    );
\line_counter_n1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(11),
      I1 => line_counter_r(11),
      I2 => line_complete1(10),
      I3 => line_counter_r(10),
      O => \line_counter_n1_carry__0_i_7_n_0\
    );
\line_counter_n1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(9),
      I1 => line_counter_r(9),
      I2 => line_complete1(8),
      I3 => line_counter_r(8),
      O => \line_counter_n1_carry__0_i_8_n_0\
    );
\line_counter_n1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_n1_carry__0_n_0\,
      CO(3) => \line_counter_n1_carry__1_n_0\,
      CO(2) => \line_counter_n1_carry__1_n_1\,
      CO(1) => \line_counter_n1_carry__1_n_2\,
      CO(0) => \line_counter_n1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \line_counter_n1_carry__1_i_1_n_0\,
      DI(2) => \line_counter_n1_carry__1_i_2_n_0\,
      DI(1) => \line_counter_n1_carry__1_i_3_n_0\,
      DI(0) => \line_counter_n1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_line_counter_n1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \line_counter_n1_carry__1_i_5_n_0\,
      S(2) => \line_counter_n1_carry__1_i_6_n_0\,
      S(1) => \line_counter_n1_carry__1_i_7_n_0\,
      S(0) => \line_counter_n1_carry__1_i_8_n_0\
    );
\line_counter_n1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(23),
      I1 => line_counter_r(22),
      I2 => line_counter_r(23),
      I3 => line_complete1(22),
      O => \line_counter_n1_carry__1_i_1_n_0\
    );
\line_counter_n1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(21),
      I1 => line_counter_r(20),
      I2 => line_counter_r(21),
      I3 => line_complete1(20),
      O => \line_counter_n1_carry__1_i_2_n_0\
    );
\line_counter_n1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(19),
      I1 => line_counter_r(18),
      I2 => line_counter_r(19),
      I3 => line_complete1(18),
      O => \line_counter_n1_carry__1_i_3_n_0\
    );
\line_counter_n1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(17),
      I1 => line_counter_r(16),
      I2 => line_counter_r(17),
      I3 => line_complete1(16),
      O => \line_counter_n1_carry__1_i_4_n_0\
    );
\line_counter_n1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(23),
      I1 => line_counter_r(23),
      I2 => line_complete1(22),
      I3 => line_counter_r(22),
      O => \line_counter_n1_carry__1_i_5_n_0\
    );
\line_counter_n1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(21),
      I1 => line_counter_r(21),
      I2 => line_complete1(20),
      I3 => line_counter_r(20),
      O => \line_counter_n1_carry__1_i_6_n_0\
    );
\line_counter_n1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(19),
      I1 => line_counter_r(19),
      I2 => line_complete1(18),
      I3 => line_counter_r(18),
      O => \line_counter_n1_carry__1_i_7_n_0\
    );
\line_counter_n1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(17),
      I1 => line_counter_r(17),
      I2 => line_complete1(16),
      I3 => line_counter_r(16),
      O => \line_counter_n1_carry__1_i_8_n_0\
    );
\line_counter_n1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_n1_carry__1_n_0\,
      CO(3) => line_counter_n1,
      CO(2) => \line_counter_n1_carry__2_n_1\,
      CO(1) => \line_counter_n1_carry__2_n_2\,
      CO(0) => \line_counter_n1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \line_counter_n1_carry__2_i_1_n_0\,
      DI(2) => \line_counter_n1_carry__2_i_2_n_0\,
      DI(1) => \line_counter_n1_carry__2_i_3_n_0\,
      DI(0) => \line_counter_n1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_line_counter_n1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \line_counter_n1_carry__2_i_5_n_0\,
      S(2) => \line_counter_n1_carry__2_i_6_n_0\,
      S(1) => \line_counter_n1_carry__2_i_7_n_0\,
      S(0) => \line_counter_n1_carry__2_i_8_n_0\
    );
\line_counter_n1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(31),
      I1 => line_counter_r(30),
      I2 => line_counter_r(31),
      I3 => line_complete1(30),
      O => \line_counter_n1_carry__2_i_1_n_0\
    );
\line_counter_n1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(29),
      I1 => line_counter_r(28),
      I2 => line_counter_r(29),
      I3 => line_complete1(28),
      O => \line_counter_n1_carry__2_i_2_n_0\
    );
\line_counter_n1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(27),
      I1 => line_counter_r(26),
      I2 => line_counter_r(27),
      I3 => line_complete1(26),
      O => \line_counter_n1_carry__2_i_3_n_0\
    );
\line_counter_n1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(25),
      I1 => line_counter_r(24),
      I2 => line_counter_r(25),
      I3 => line_complete1(24),
      O => \line_counter_n1_carry__2_i_4_n_0\
    );
\line_counter_n1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(31),
      I1 => line_counter_r(31),
      I2 => line_complete1(30),
      I3 => line_counter_r(30),
      O => \line_counter_n1_carry__2_i_5_n_0\
    );
\line_counter_n1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(29),
      I1 => line_counter_r(29),
      I2 => line_complete1(28),
      I3 => line_counter_r(28),
      O => \line_counter_n1_carry__2_i_6_n_0\
    );
\line_counter_n1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(27),
      I1 => line_counter_r(27),
      I2 => line_complete1(26),
      I3 => line_counter_r(26),
      O => \line_counter_n1_carry__2_i_7_n_0\
    );
\line_counter_n1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(25),
      I1 => line_counter_r(25),
      I2 => line_complete1(24),
      I3 => line_counter_r(24),
      O => \line_counter_n1_carry__2_i_8_n_0\
    );
line_counter_n1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(7),
      I1 => line_counter_r(6),
      I2 => line_counter_r(7),
      I3 => line_complete1(6),
      O => line_counter_n1_carry_i_1_n_0
    );
line_counter_n1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(5),
      I1 => line_counter_r(4),
      I2 => line_counter_r(5),
      I3 => line_complete1(4),
      O => line_counter_n1_carry_i_2_n_0
    );
line_counter_n1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => line_complete1(3),
      I1 => line_counter_r(2),
      I2 => line_counter_r(3),
      I3 => line_complete1(2),
      O => line_counter_n1_carry_i_3_n_0
    );
line_counter_n1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => line_counter_r(0),
      I1 => image_size(0),
      I2 => line_counter_r(1),
      I3 => line_complete1(1),
      O => line_counter_n1_carry_i_4_n_0
    );
line_counter_n1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(7),
      I1 => line_counter_r(7),
      I2 => line_complete1(6),
      I3 => line_counter_r(6),
      O => line_counter_n1_carry_i_5_n_0
    );
line_counter_n1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(5),
      I1 => line_counter_r(5),
      I2 => line_complete1(4),
      I3 => line_counter_r(4),
      O => line_counter_n1_carry_i_6_n_0
    );
line_counter_n1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(3),
      I1 => line_counter_r(3),
      I2 => line_complete1(2),
      I3 => line_counter_r(2),
      O => line_counter_n1_carry_i_7_n_0
    );
line_counter_n1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4812"
    )
        port map (
      I0 => line_counter_r(0),
      I1 => line_counter_r(1),
      I2 => image_size(0),
      I3 => line_complete1(1),
      O => line_counter_n1_carry_i_8_n_0
    );
\line_counter_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_r(0),
      O => line_counter_n(0)
    );
\line_counter_r[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(10),
      O => line_counter_n(10)
    );
\line_counter_r[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(11),
      O => line_counter_n(11)
    );
\line_counter_r[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(12),
      O => line_counter_n(12)
    );
\line_counter_r[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(13),
      O => line_counter_n(13)
    );
\line_counter_r[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(14),
      O => line_counter_n(14)
    );
\line_counter_r[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(15),
      O => line_counter_n(15)
    );
\line_counter_r[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(16),
      O => line_counter_n(16)
    );
\line_counter_r[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(17),
      O => line_counter_n(17)
    );
\line_counter_r[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(18),
      O => line_counter_n(18)
    );
\line_counter_r[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(19),
      O => line_counter_n(19)
    );
\line_counter_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(1),
      O => line_counter_n(1)
    );
\line_counter_r[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(20),
      O => line_counter_n(20)
    );
\line_counter_r[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(21),
      O => line_counter_n(21)
    );
\line_counter_r[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(22),
      O => line_counter_n(22)
    );
\line_counter_r[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(23),
      O => line_counter_n(23)
    );
\line_counter_r[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(24),
      O => line_counter_n(24)
    );
\line_counter_r[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(25),
      O => line_counter_n(25)
    );
\line_counter_r[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(26),
      O => line_counter_n(26)
    );
\line_counter_r[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(27),
      O => line_counter_n(27)
    );
\line_counter_r[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(28),
      O => line_counter_n(28)
    );
\line_counter_r[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(29),
      O => line_counter_n(29)
    );
\line_counter_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(2),
      O => line_counter_n(2)
    );
\line_counter_r[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(30),
      O => line_counter_n(30)
    );
\line_counter_r[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAAA"
    )
        port map (
      I0 => frame_clk_r_i_3_n_0,
      I1 => line_complete0,
      I2 => state_r(1),
      I3 => \^pixel_complete_dbg\,
      I4 => state_r(0),
      I5 => state_r(2),
      O => line_counter_n_2
    );
\line_counter_r[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(31),
      O => line_counter_n(31)
    );
\line_counter_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(3),
      O => line_counter_n(3)
    );
\line_counter_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(4),
      O => line_counter_n(4)
    );
\line_counter_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(5),
      O => line_counter_n(5)
    );
\line_counter_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(6),
      O => line_counter_n(6)
    );
\line_counter_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(7),
      O => line_counter_n(7)
    );
\line_counter_r[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(8),
      O => line_counter_n(8)
    );
\line_counter_r[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_counter_n1,
      I1 => state_r(1),
      I2 => state_r(2),
      I3 => line_counter_n0(9),
      O => line_counter_n(9)
    );
\line_counter_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(0),
      Q => line_counter_r(0)
    );
\line_counter_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(10),
      Q => line_counter_r(10)
    );
\line_counter_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(11),
      Q => line_counter_r(11)
    );
\line_counter_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(12),
      Q => line_counter_r(12)
    );
\line_counter_r_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_r_reg[8]_i_2_n_0\,
      CO(3) => \line_counter_r_reg[12]_i_2_n_0\,
      CO(2) => \line_counter_r_reg[12]_i_2_n_1\,
      CO(1) => \line_counter_r_reg[12]_i_2_n_2\,
      CO(0) => \line_counter_r_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => line_counter_n0(12 downto 9),
      S(3 downto 0) => line_counter_r(12 downto 9)
    );
\line_counter_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(13),
      Q => line_counter_r(13)
    );
\line_counter_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(14),
      Q => line_counter_r(14)
    );
\line_counter_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(15),
      Q => line_counter_r(15)
    );
\line_counter_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(16),
      Q => line_counter_r(16)
    );
\line_counter_r_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_r_reg[12]_i_2_n_0\,
      CO(3) => \line_counter_r_reg[16]_i_2_n_0\,
      CO(2) => \line_counter_r_reg[16]_i_2_n_1\,
      CO(1) => \line_counter_r_reg[16]_i_2_n_2\,
      CO(0) => \line_counter_r_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => line_counter_n0(16 downto 13),
      S(3 downto 0) => line_counter_r(16 downto 13)
    );
\line_counter_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(17),
      Q => line_counter_r(17)
    );
\line_counter_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(18),
      Q => line_counter_r(18)
    );
\line_counter_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(19),
      Q => line_counter_r(19)
    );
\line_counter_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(1),
      Q => line_counter_r(1)
    );
\line_counter_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(20),
      Q => line_counter_r(20)
    );
\line_counter_r_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_r_reg[16]_i_2_n_0\,
      CO(3) => \line_counter_r_reg[20]_i_2_n_0\,
      CO(2) => \line_counter_r_reg[20]_i_2_n_1\,
      CO(1) => \line_counter_r_reg[20]_i_2_n_2\,
      CO(0) => \line_counter_r_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => line_counter_n0(20 downto 17),
      S(3 downto 0) => line_counter_r(20 downto 17)
    );
\line_counter_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(21),
      Q => line_counter_r(21)
    );
\line_counter_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(22),
      Q => line_counter_r(22)
    );
\line_counter_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(23),
      Q => line_counter_r(23)
    );
\line_counter_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(24),
      Q => line_counter_r(24)
    );
\line_counter_r_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_r_reg[20]_i_2_n_0\,
      CO(3) => \line_counter_r_reg[24]_i_2_n_0\,
      CO(2) => \line_counter_r_reg[24]_i_2_n_1\,
      CO(1) => \line_counter_r_reg[24]_i_2_n_2\,
      CO(0) => \line_counter_r_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => line_counter_n0(24 downto 21),
      S(3 downto 0) => line_counter_r(24 downto 21)
    );
\line_counter_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(25),
      Q => line_counter_r(25)
    );
\line_counter_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(26),
      Q => line_counter_r(26)
    );
\line_counter_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(27),
      Q => line_counter_r(27)
    );
\line_counter_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(28),
      Q => line_counter_r(28)
    );
\line_counter_r_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_r_reg[24]_i_2_n_0\,
      CO(3) => \line_counter_r_reg[28]_i_2_n_0\,
      CO(2) => \line_counter_r_reg[28]_i_2_n_1\,
      CO(1) => \line_counter_r_reg[28]_i_2_n_2\,
      CO(0) => \line_counter_r_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => line_counter_n0(28 downto 25),
      S(3 downto 0) => line_counter_r(28 downto 25)
    );
\line_counter_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(29),
      Q => line_counter_r(29)
    );
\line_counter_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(2),
      Q => line_counter_r(2)
    );
\line_counter_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(30),
      Q => line_counter_r(30)
    );
\line_counter_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(31),
      Q => line_counter_r(31)
    );
\line_counter_r_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_r_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_line_counter_r_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \line_counter_r_reg[31]_i_3_n_2\,
      CO(0) => \line_counter_r_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_line_counter_r_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => line_counter_n0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => line_counter_r(31 downto 29)
    );
\line_counter_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(3),
      Q => line_counter_r(3)
    );
\line_counter_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(4),
      Q => line_counter_r(4)
    );
\line_counter_r_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \line_counter_r_reg[4]_i_2_n_0\,
      CO(2) => \line_counter_r_reg[4]_i_2_n_1\,
      CO(1) => \line_counter_r_reg[4]_i_2_n_2\,
      CO(0) => \line_counter_r_reg[4]_i_2_n_3\,
      CYINIT => line_counter_r(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => line_counter_n0(4 downto 1),
      S(3 downto 0) => line_counter_r(4 downto 1)
    );
\line_counter_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(5),
      Q => line_counter_r(5)
    );
\line_counter_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(6),
      Q => line_counter_r(6)
    );
\line_counter_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(7),
      Q => line_counter_r(7)
    );
\line_counter_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(8),
      Q => line_counter_r(8)
    );
\line_counter_r_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_r_reg[4]_i_2_n_0\,
      CO(3) => \line_counter_r_reg[8]_i_2_n_0\,
      CO(2) => \line_counter_r_reg[8]_i_2_n_1\,
      CO(1) => \line_counter_r_reg[8]_i_2_n_2\,
      CO(0) => \line_counter_r_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => line_counter_n0(8 downto 5),
      S(3 downto 0) => line_counter_r(8 downto 5)
    );
\line_counter_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => line_counter_n_2,
      CLR => frame_clk_r_i_2_n_0,
      D => line_counter_n(9),
      Q => line_counter_r(9)
    );
\m_araddr_r[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA88A888888888"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_3_n_0,
      I1 => \m_araddr_r[17]_i_3_n_0\,
      I2 => m_arvalid_n_dbg_INST_0_i_6_n_0,
      I3 => DelayChain_inst_n_33,
      I4 => m_arvalid_n_dbg_INST_0_i_10_n_0,
      I5 => state_r(0),
      O => \m_araddr_r[17]_i_1_n_0\
    );
\m_araddr_r[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(0),
      I2 => \^pixel_complete_dbg\,
      I3 => state_r(1),
      I4 => line_complete0,
      O => \m_araddr_r[17]_i_3_n_0\
    );
\m_araddr_r[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_araddr\(0),
      O => \m_araddr_r[5]_i_2_n_0\
    );
\m_araddr_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[13]_i_1_n_7\,
      Q => \^m_araddr\(8)
    );
\m_araddr_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[13]_i_1_n_6\,
      Q => \^m_araddr\(9)
    );
\m_araddr_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[13]_i_1_n_5\,
      Q => \^m_araddr\(10)
    );
\m_araddr_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[13]_i_1_n_4\,
      Q => \^m_araddr\(11)
    );
\m_araddr_r_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_araddr_r_reg[9]_i_1_n_0\,
      CO(3) => \m_araddr_r_reg[13]_i_1_n_0\,
      CO(2) => \m_araddr_r_reg[13]_i_1_n_1\,
      CO(1) => \m_araddr_r_reg[13]_i_1_n_2\,
      CO(0) => \m_araddr_r_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \m_araddr_r_reg[13]_i_1_n_4\,
      O(2) => \m_araddr_r_reg[13]_i_1_n_5\,
      O(1) => \m_araddr_r_reg[13]_i_1_n_6\,
      O(0) => \m_araddr_r_reg[13]_i_1_n_7\,
      S(3 downto 0) => \^m_araddr\(11 downto 8)
    );
\m_araddr_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[17]_i_2_n_7\,
      Q => \^m_araddr\(12)
    );
\m_araddr_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[17]_i_2_n_6\,
      Q => \^m_araddr\(13)
    );
\m_araddr_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[17]_i_2_n_5\,
      Q => \^m_araddr\(14)
    );
\m_araddr_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[17]_i_2_n_4\,
      Q => \^m_araddr\(15)
    );
\m_araddr_r_reg[17]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_araddr_r_reg[13]_i_1_n_0\,
      CO(3) => \NLW_m_araddr_r_reg[17]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \m_araddr_r_reg[17]_i_2_n_1\,
      CO(1) => \m_araddr_r_reg[17]_i_2_n_2\,
      CO(0) => \m_araddr_r_reg[17]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \m_araddr_r_reg[17]_i_2_n_4\,
      O(2) => \m_araddr_r_reg[17]_i_2_n_5\,
      O(1) => \m_araddr_r_reg[17]_i_2_n_6\,
      O(0) => \m_araddr_r_reg[17]_i_2_n_7\,
      S(3 downto 0) => \^m_araddr\(15 downto 12)
    );
\m_araddr_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[5]_i_1_n_7\,
      Q => \^m_araddr\(0)
    );
\m_araddr_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[5]_i_1_n_6\,
      Q => \^m_araddr\(1)
    );
\m_araddr_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[5]_i_1_n_5\,
      Q => \^m_araddr\(2)
    );
\m_araddr_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[5]_i_1_n_4\,
      Q => \^m_araddr\(3)
    );
\m_araddr_r_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m_araddr_r_reg[5]_i_1_n_0\,
      CO(2) => \m_araddr_r_reg[5]_i_1_n_1\,
      CO(1) => \m_araddr_r_reg[5]_i_1_n_2\,
      CO(0) => \m_araddr_r_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \m_araddr_r_reg[5]_i_1_n_4\,
      O(2) => \m_araddr_r_reg[5]_i_1_n_5\,
      O(1) => \m_araddr_r_reg[5]_i_1_n_6\,
      O(0) => \m_araddr_r_reg[5]_i_1_n_7\,
      S(3 downto 1) => \^m_araddr\(3 downto 1),
      S(0) => \m_araddr_r[5]_i_2_n_0\
    );
\m_araddr_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[9]_i_1_n_7\,
      Q => \^m_araddr\(4)
    );
\m_araddr_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[9]_i_1_n_6\,
      Q => \^m_araddr\(5)
    );
\m_araddr_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[9]_i_1_n_5\,
      Q => \^m_araddr\(6)
    );
\m_araddr_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_araddr_r[17]_i_1_n_0\,
      CLR => frame_clk_r_i_2_n_0,
      D => \m_araddr_r_reg[9]_i_1_n_4\,
      Q => \^m_araddr\(7)
    );
\m_araddr_r_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_araddr_r_reg[5]_i_1_n_0\,
      CO(3) => \m_araddr_r_reg[9]_i_1_n_0\,
      CO(2) => \m_araddr_r_reg[9]_i_1_n_1\,
      CO(1) => \m_araddr_r_reg[9]_i_1_n_2\,
      CO(0) => \m_araddr_r_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \m_araddr_r_reg[9]_i_1_n_4\,
      O(2) => \m_araddr_r_reg[9]_i_1_n_5\,
      O(1) => \m_araddr_r_reg[9]_i_1_n_6\,
      O(0) => \m_araddr_r_reg[9]_i_1_n_7\,
      S(3 downto 0) => \^m_araddr\(7 downto 4)
    );
m_arvalid_n_dbg_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBA00"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_1_n_0,
      I1 => line_complete0,
      I2 => m_arvalid_n_dbg_INST_0_i_2_n_0,
      I3 => m_arvalid_n_dbg_INST_0_i_3_n_0,
      I4 => m_arvalid_n_dbg_INST_0_i_4_n_0,
      I5 => m_arvalid_n_dbg_INST_0_i_5_n_0,
      O => \^m_arvalid_n_dbg\
    );
m_arvalid_n_dbg_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000200000000"
    )
        port map (
      I0 => m_arvalid_n_dbg_INST_0_i_6_n_0,
      I1 => m_arvalid_n_dbg_INST_0_i_7_n_0,
      I2 => DelayChain_inst_n_37,
      I3 => DelayChain_inst_n_36,
      I4 => m_arvalid_n_dbg_INST_0_i_10_n_0,
      I5 => state_r(0),
      O => m_arvalid_n_dbg_INST_0_i_1_n_0
    );
m_arvalid_n_dbg_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(1),
      I2 => \^warmup_pulse_counter_dbg\(3),
      I3 => \^warmup_pulse_counter_dbg\(1),
      I4 => \^warmup_pulse_counter_dbg\(0),
      I5 => \^warmup_pulse_counter_dbg\(2),
      O => m_arvalid_n_dbg_INST_0_i_10_n_0
    );
m_arvalid_n_dbg_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => return_counter_r(17),
      I1 => return_counter_r(16),
      I2 => return_counter_r(19),
      I3 => return_counter_r(18),
      O => m_arvalid_n_dbg_INST_0_i_12_n_0
    );
m_arvalid_n_dbg_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => return_counter_r(25),
      I1 => return_counter_r(24),
      I2 => return_counter_r(27),
      I3 => return_counter_r(26),
      O => m_arvalid_n_dbg_INST_0_i_14_n_0
    );
m_arvalid_n_dbg_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => state_r(1),
      I1 => \^pixel_complete_dbg\,
      I2 => state_r(0),
      I3 => state_r(2),
      O => m_arvalid_n_dbg_INST_0_i_2_n_0
    );
m_arvalid_n_dbg_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_counter_r(0),
      I1 => shift_counter_r(1),
      O => m_arvalid_n_dbg_INST_0_i_3_n_0
    );
m_arvalid_n_dbg_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^m_arvalid_r_dbg\,
      I1 => \^start_frame_r_reg_0\,
      I2 => state_r(2),
      O => m_arvalid_n_dbg_INST_0_i_4_n_0
    );
m_arvalid_n_dbg_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00550000FF7F0000"
    )
        port map (
      I0 => state_r(1),
      I1 => \^pixel_complete_dbg\,
      I2 => line_complete0,
      I3 => state_r(0),
      I4 => \^m_arvalid_r_dbg\,
      I5 => m_arready,
      O => m_arvalid_n_dbg_INST_0_i_5_n_0
    );
m_arvalid_n_dbg_INST_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_r(1),
      I1 => state_r(2),
      O => m_arvalid_n_dbg_INST_0_i_6_n_0
    );
m_arvalid_n_dbg_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DelayChain_inst_n_41,
      I1 => m_arvalid_n_dbg_INST_0_i_12_n_0,
      I2 => DelayChain_inst_n_40,
      I3 => m_arvalid_n_dbg_INST_0_i_14_n_0,
      O => m_arvalid_n_dbg_INST_0_i_7_n_0
    );
m_arvalid_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => \^m_arvalid_n_dbg\,
      Q => \^m_arvalid_r_dbg\
    );
m_rready_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFAAAAAA80"
    )
        port map (
      I0 => m_rready_r_i_2_n_0,
      I1 => m_rready_r_i_3_n_0,
      I2 => m_rready_r_i_4_n_0,
      I3 => m_rready_r_i_5_n_0,
      I4 => m_rready_r_i_6_n_0,
      I5 => \^m_rready\,
      O => m_rready_r_i_1_n_0
    );
m_rready_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10BA10BA10BA10FF"
    )
        port map (
      I0 => state_r(0),
      I1 => state_r(1),
      I2 => \^start_frame_r_reg_0\,
      I3 => state_r(2),
      I4 => shift_counter_r(0),
      I5 => shift_counter_r(1),
      O => m_rready_r_i_2_n_0
    );
m_rready_r_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_r(2),
      I1 => \^start_frame_r_reg_0\,
      O => m_rready_r_i_3_n_0
    );
m_rready_r_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_r(0),
      I1 => state_r(1),
      O => m_rready_r_i_4_n_0
    );
m_rready_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0000008800"
    )
        port map (
      I0 => state_r(1),
      I1 => \^pixel_complete_dbg\,
      I2 => frame_clk_r_i_4_n_0,
      I3 => m_arvalid_n_dbg_INST_0_i_3_n_0,
      I4 => state_r(2),
      I5 => state_r(0),
      O => m_rready_r_i_5_n_0
    );
m_rready_r_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(1),
      I2 => state_r(0),
      O => m_rready_r_i_6_n_0
    );
m_rready_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => m_rready_r_i_1_n_0,
      Q => \^m_rready\
    );
pixel_clk_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFE00"
    )
        port map (
      I0 => pixel_clk_r_i_2_n_0,
      I1 => warmup_pulse_counter_n,
      I2 => pixel_clk_r_i_3_n_0,
      I3 => pixel_clk_r_i_4_n_0,
      I4 => line_clk_r_i_3_n_0,
      I5 => \^pixel_clk_r\,
      O => pixel_clk_r_i_1_n_0
    );
pixel_clk_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => line_complete0,
      I1 => \^pixel_complete_dbg\,
      I2 => state_r(2),
      I3 => state_r(1),
      O => pixel_clk_r_i_2_n_0
    );
pixel_clk_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(0),
      I2 => DelayChain_inst_n_39,
      I3 => DelayChain_inst_n_38,
      I4 => DelayChain_inst_n_37,
      I5 => DelayChain_inst_n_36,
      O => pixel_clk_r_i_3_n_0
    );
pixel_clk_r_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => pixel_halftime,
      I1 => \^pixel_complete_dbg\,
      I2 => state_r(0),
      I3 => state_r(2),
      O => pixel_clk_r_i_4_n_0
    );
pixel_clk_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_clk_r_i_1_n_0,
      Q => \^pixel_clk_r\
    );
pixel_complete_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pixel_complete_carry_n_0,
      CO(2) => pixel_complete_carry_n_1,
      CO(1) => pixel_complete_carry_n_2,
      CO(0) => pixel_complete_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pixel_complete_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pixel_complete_carry_i_1_n_0,
      S(2) => pixel_complete_carry_i_2_n_0,
      S(1) => pixel_complete_carry_i_3_n_0,
      S(0) => pixel_complete_carry_i_4_n_0
    );
\pixel_complete_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_complete_carry_n_0,
      CO(3) => \pixel_complete_carry__0_n_0\,
      CO(2) => \pixel_complete_carry__0_n_1\,
      CO(1) => \pixel_complete_carry__0_n_2\,
      CO(0) => \pixel_complete_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pixel_complete_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pixel_complete_carry__0_i_1_n_0\,
      S(2) => \pixel_complete_carry__0_i_2_n_0\,
      S(1) => \pixel_complete_carry__0_i_3_n_0\,
      S(0) => \pixel_complete_carry__0_i_4_n_0\
    );
\pixel_complete_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(23),
      I1 => clk_counter_r(23),
      I2 => pixel_complete0(22),
      I3 => clk_counter_r(22),
      I4 => clk_counter_r(21),
      I5 => pixel_complete0(21),
      O => \pixel_complete_carry__0_i_1_n_0\
    );
\pixel_complete_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(20),
      I1 => clk_counter_r(20),
      I2 => pixel_complete0(19),
      I3 => clk_counter_r(19),
      I4 => clk_counter_r(18),
      I5 => pixel_complete0(18),
      O => \pixel_complete_carry__0_i_2_n_0\
    );
\pixel_complete_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(17),
      I1 => clk_counter_r(17),
      I2 => pixel_complete0(16),
      I3 => clk_counter_r(16),
      I4 => clk_counter_r(15),
      I5 => pixel_complete0(15),
      O => \pixel_complete_carry__0_i_3_n_0\
    );
\pixel_complete_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(14),
      I1 => clk_counter_r(14),
      I2 => pixel_complete0(13),
      I3 => clk_counter_r(13),
      I4 => clk_counter_r(12),
      I5 => pixel_complete0(12),
      O => \pixel_complete_carry__0_i_4_n_0\
    );
\pixel_complete_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_complete_carry__0_n_0\,
      CO(3) => \NLW_pixel_complete_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \^pixel_complete_dbg\,
      CO(1) => \pixel_complete_carry__1_n_2\,
      CO(0) => \pixel_complete_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pixel_complete_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => DelayChain_inst_n_1,
      S(1) => DelayChain_inst_n_2,
      S(0) => DelayChain_inst_n_3
    );
pixel_complete_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(11),
      I1 => clk_counter_r(11),
      I2 => pixel_complete0(10),
      I3 => clk_counter_r(10),
      I4 => clk_counter_r(9),
      I5 => pixel_complete0(9),
      O => pixel_complete_carry_i_1_n_0
    );
pixel_complete_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(8),
      I1 => clk_counter_r(8),
      I2 => pixel_complete0(7),
      I3 => clk_counter_r(7),
      I4 => clk_counter_r(6),
      I5 => pixel_complete0(6),
      O => pixel_complete_carry_i_2_n_0
    );
pixel_complete_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_complete0(5),
      I1 => clk_counter_r(5),
      I2 => pixel_complete0(4),
      I3 => clk_counter_r(4),
      I4 => clk_counter_r(3),
      I5 => pixel_complete0(3),
      O => pixel_complete_carry_i_3_n_0
    );
pixel_complete_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => pixel_complete0(2),
      I1 => clk_counter_r(2),
      I2 => pixel_complete0(1),
      I3 => clk_counter_r(1),
      I4 => clk_counter_r(0),
      I5 => pulses_per_pixel(0),
      O => pixel_complete_carry_i_4_n_0
    );
pixel_counter_n1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pixel_counter_n1_carry_n_0,
      CO(2) => pixel_counter_n1_carry_n_1,
      CO(1) => pixel_counter_n1_carry_n_2,
      CO(0) => pixel_counter_n1_carry_n_3,
      CYINIT => '0',
      DI(3) => pixel_counter_n1_carry_i_1_n_0,
      DI(2) => pixel_counter_n1_carry_i_2_n_0,
      DI(1) => pixel_counter_n1_carry_i_3_n_0,
      DI(0) => pixel_counter_n1_carry_i_4_n_0,
      O(3 downto 0) => NLW_pixel_counter_n1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pixel_counter_n1_carry_i_5_n_0,
      S(2) => pixel_counter_n1_carry_i_6_n_0,
      S(1) => pixel_counter_n1_carry_i_7_n_0,
      S(0) => pixel_counter_n1_carry_i_8_n_0
    );
\pixel_counter_n1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_counter_n1_carry_n_0,
      CO(3) => \pixel_counter_n1_carry__0_n_0\,
      CO(2) => \pixel_counter_n1_carry__0_n_1\,
      CO(1) => \pixel_counter_n1_carry__0_n_2\,
      CO(0) => \pixel_counter_n1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pixel_counter_n1_carry__0_i_1_n_0\,
      DI(2) => \pixel_counter_n1_carry__0_i_2_n_0\,
      DI(1) => \pixel_counter_n1_carry__0_i_3_n_0\,
      DI(0) => \pixel_counter_n1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pixel_counter_n1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pixel_counter_n1_carry__0_i_5_n_0\,
      S(2) => \pixel_counter_n1_carry__0_i_6_n_0\,
      S(1) => \pixel_counter_n1_carry__0_i_7_n_0\,
      S(0) => \pixel_counter_n1_carry__0_i_8_n_0\
    );
\pixel_counter_n1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(15),
      I1 => pixel_counter_r(15),
      I2 => line_complete1(14),
      I3 => pixel_counter_r(14),
      O => \pixel_counter_n1_carry__0_i_1_n_0\
    );
\pixel_counter_n1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(13),
      I1 => pixel_counter_r(13),
      I2 => line_complete1(12),
      I3 => pixel_counter_r(12),
      O => \pixel_counter_n1_carry__0_i_2_n_0\
    );
\pixel_counter_n1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(11),
      I1 => pixel_counter_r(11),
      I2 => line_complete1(10),
      I3 => pixel_counter_r(10),
      O => \pixel_counter_n1_carry__0_i_3_n_0\
    );
\pixel_counter_n1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(9),
      I1 => pixel_counter_r(9),
      I2 => line_complete1(8),
      I3 => pixel_counter_r(8),
      O => \pixel_counter_n1_carry__0_i_4_n_0\
    );
\pixel_counter_n1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(15),
      I1 => pixel_counter_r(15),
      I2 => line_complete1(14),
      I3 => pixel_counter_r(14),
      O => \pixel_counter_n1_carry__0_i_5_n_0\
    );
\pixel_counter_n1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(13),
      I1 => pixel_counter_r(13),
      I2 => line_complete1(12),
      I3 => pixel_counter_r(12),
      O => \pixel_counter_n1_carry__0_i_6_n_0\
    );
\pixel_counter_n1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(11),
      I1 => pixel_counter_r(11),
      I2 => line_complete1(10),
      I3 => pixel_counter_r(10),
      O => \pixel_counter_n1_carry__0_i_7_n_0\
    );
\pixel_counter_n1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(9),
      I1 => pixel_counter_r(9),
      I2 => line_complete1(8),
      I3 => pixel_counter_r(8),
      O => \pixel_counter_n1_carry__0_i_8_n_0\
    );
\pixel_counter_n1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_n1_carry__0_n_0\,
      CO(3) => \pixel_counter_n1_carry__1_n_0\,
      CO(2) => \pixel_counter_n1_carry__1_n_1\,
      CO(1) => \pixel_counter_n1_carry__1_n_2\,
      CO(0) => \pixel_counter_n1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \pixel_counter_n1_carry__1_i_1_n_0\,
      DI(2) => \pixel_counter_n1_carry__1_i_2_n_0\,
      DI(1) => \pixel_counter_n1_carry__1_i_3_n_0\,
      DI(0) => \pixel_counter_n1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_pixel_counter_n1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pixel_counter_n1_carry__1_i_5_n_0\,
      S(2) => \pixel_counter_n1_carry__1_i_6_n_0\,
      S(1) => \pixel_counter_n1_carry__1_i_7_n_0\,
      S(0) => \pixel_counter_n1_carry__1_i_8_n_0\
    );
\pixel_counter_n1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(23),
      I1 => pixel_counter_r(23),
      I2 => line_complete1(22),
      I3 => pixel_counter_r(22),
      O => \pixel_counter_n1_carry__1_i_1_n_0\
    );
\pixel_counter_n1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(21),
      I1 => pixel_counter_r(21),
      I2 => line_complete1(20),
      I3 => pixel_counter_r(20),
      O => \pixel_counter_n1_carry__1_i_2_n_0\
    );
\pixel_counter_n1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(19),
      I1 => pixel_counter_r(19),
      I2 => line_complete1(18),
      I3 => pixel_counter_r(18),
      O => \pixel_counter_n1_carry__1_i_3_n_0\
    );
\pixel_counter_n1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(17),
      I1 => pixel_counter_r(17),
      I2 => line_complete1(16),
      I3 => pixel_counter_r(16),
      O => \pixel_counter_n1_carry__1_i_4_n_0\
    );
\pixel_counter_n1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(23),
      I1 => pixel_counter_r(23),
      I2 => line_complete1(22),
      I3 => pixel_counter_r(22),
      O => \pixel_counter_n1_carry__1_i_5_n_0\
    );
\pixel_counter_n1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(21),
      I1 => pixel_counter_r(21),
      I2 => line_complete1(20),
      I3 => pixel_counter_r(20),
      O => \pixel_counter_n1_carry__1_i_6_n_0\
    );
\pixel_counter_n1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(19),
      I1 => pixel_counter_r(19),
      I2 => line_complete1(18),
      I3 => pixel_counter_r(18),
      O => \pixel_counter_n1_carry__1_i_7_n_0\
    );
\pixel_counter_n1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(17),
      I1 => pixel_counter_r(17),
      I2 => line_complete1(16),
      I3 => pixel_counter_r(16),
      O => \pixel_counter_n1_carry__1_i_8_n_0\
    );
\pixel_counter_n1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_n1_carry__1_n_0\,
      CO(3) => pixel_counter_n1,
      CO(2) => \pixel_counter_n1_carry__2_n_1\,
      CO(1) => \pixel_counter_n1_carry__2_n_2\,
      CO(0) => \pixel_counter_n1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \pixel_counter_n1_carry__2_i_1_n_0\,
      DI(2) => \pixel_counter_n1_carry__2_i_2_n_0\,
      DI(1) => \pixel_counter_n1_carry__2_i_3_n_0\,
      DI(0) => \pixel_counter_n1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_pixel_counter_n1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pixel_counter_n1_carry__2_i_5_n_0\,
      S(2) => \pixel_counter_n1_carry__2_i_6_n_0\,
      S(1) => \pixel_counter_n1_carry__2_i_7_n_0\,
      S(0) => \pixel_counter_n1_carry__2_i_8_n_0\
    );
\pixel_counter_n1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(31),
      I1 => pixel_counter_r(31),
      I2 => line_complete1(30),
      I3 => pixel_counter_r(30),
      O => \pixel_counter_n1_carry__2_i_1_n_0\
    );
\pixel_counter_n1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(29),
      I1 => pixel_counter_r(29),
      I2 => line_complete1(28),
      I3 => pixel_counter_r(28),
      O => \pixel_counter_n1_carry__2_i_2_n_0\
    );
\pixel_counter_n1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(27),
      I1 => pixel_counter_r(27),
      I2 => line_complete1(26),
      I3 => pixel_counter_r(26),
      O => \pixel_counter_n1_carry__2_i_3_n_0\
    );
\pixel_counter_n1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(25),
      I1 => pixel_counter_r(25),
      I2 => line_complete1(24),
      I3 => pixel_counter_r(24),
      O => \pixel_counter_n1_carry__2_i_4_n_0\
    );
\pixel_counter_n1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(31),
      I1 => pixel_counter_r(31),
      I2 => line_complete1(30),
      I3 => pixel_counter_r(30),
      O => \pixel_counter_n1_carry__2_i_5_n_0\
    );
\pixel_counter_n1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(29),
      I1 => pixel_counter_r(29),
      I2 => line_complete1(28),
      I3 => pixel_counter_r(28),
      O => \pixel_counter_n1_carry__2_i_6_n_0\
    );
\pixel_counter_n1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(27),
      I1 => pixel_counter_r(27),
      I2 => line_complete1(26),
      I3 => pixel_counter_r(26),
      O => \pixel_counter_n1_carry__2_i_7_n_0\
    );
\pixel_counter_n1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(25),
      I1 => pixel_counter_r(25),
      I2 => line_complete1(24),
      I3 => pixel_counter_r(24),
      O => \pixel_counter_n1_carry__2_i_8_n_0\
    );
pixel_counter_n1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(7),
      I1 => pixel_counter_r(7),
      I2 => line_complete1(6),
      I3 => pixel_counter_r(6),
      O => pixel_counter_n1_carry_i_1_n_0
    );
pixel_counter_n1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(5),
      I1 => pixel_counter_r(5),
      I2 => line_complete1(4),
      I3 => pixel_counter_r(4),
      O => pixel_counter_n1_carry_i_2_n_0
    );
pixel_counter_n1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_complete1(3),
      I1 => pixel_counter_r(3),
      I2 => line_complete1(2),
      I3 => pixel_counter_r(2),
      O => pixel_counter_n1_carry_i_3_n_0
    );
pixel_counter_n1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => line_complete1(1),
      I1 => pixel_counter_r(1),
      I2 => pixel_counter_r(0),
      I3 => image_size(0),
      O => pixel_counter_n1_carry_i_4_n_0
    );
pixel_counter_n1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(7),
      I1 => pixel_counter_r(7),
      I2 => line_complete1(6),
      I3 => pixel_counter_r(6),
      O => pixel_counter_n1_carry_i_5_n_0
    );
pixel_counter_n1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(5),
      I1 => pixel_counter_r(5),
      I2 => line_complete1(4),
      I3 => pixel_counter_r(4),
      O => pixel_counter_n1_carry_i_6_n_0
    );
pixel_counter_n1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_complete1(3),
      I1 => pixel_counter_r(3),
      I2 => line_complete1(2),
      I3 => pixel_counter_r(2),
      O => pixel_counter_n1_carry_i_7_n_0
    );
pixel_counter_n1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => pixel_counter_r(0),
      I1 => image_size(0),
      I2 => line_complete1(1),
      I3 => pixel_counter_r(1),
      O => pixel_counter_n1_carry_i_8_n_0
    );
\pixel_counter_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_r(0),
      O => pixel_counter_n(0)
    );
\pixel_counter_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(10),
      O => pixel_counter_n(10)
    );
\pixel_counter_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(11),
      O => pixel_counter_n(11)
    );
\pixel_counter_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(12),
      O => pixel_counter_n(12)
    );
\pixel_counter_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(13),
      O => pixel_counter_n(13)
    );
\pixel_counter_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(14),
      O => pixel_counter_n(14)
    );
\pixel_counter_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(15),
      O => pixel_counter_n(15)
    );
\pixel_counter_r[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(16),
      O => pixel_counter_n(16)
    );
\pixel_counter_r[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(17),
      O => pixel_counter_n(17)
    );
\pixel_counter_r[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(18),
      O => pixel_counter_n(18)
    );
\pixel_counter_r[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(19),
      O => pixel_counter_n(19)
    );
\pixel_counter_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(1),
      O => pixel_counter_n(1)
    );
\pixel_counter_r[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(20),
      O => pixel_counter_n(20)
    );
\pixel_counter_r[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(21),
      O => pixel_counter_n(21)
    );
\pixel_counter_r[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(22),
      O => pixel_counter_n(22)
    );
\pixel_counter_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(23),
      O => pixel_counter_n(23)
    );
\pixel_counter_r[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(24),
      O => pixel_counter_n(24)
    );
\pixel_counter_r[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(25),
      O => pixel_counter_n(25)
    );
\pixel_counter_r[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(26),
      O => pixel_counter_n(26)
    );
\pixel_counter_r[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(27),
      O => pixel_counter_n(27)
    );
\pixel_counter_r[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(28),
      O => pixel_counter_n(28)
    );
\pixel_counter_r[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(29),
      O => pixel_counter_n(29)
    );
\pixel_counter_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(2),
      O => pixel_counter_n(2)
    );
\pixel_counter_r[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(30),
      O => pixel_counter_n(30)
    );
\pixel_counter_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13100000"
    )
        port map (
      I0 => frame_clk_r_i_4_n_0,
      I1 => state_r(2),
      I2 => state_r(0),
      I3 => \^pixel_complete_dbg\,
      I4 => state_r(1),
      O => pixel_counter_n_0
    );
\pixel_counter_r[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(31),
      O => pixel_counter_n(31)
    );
\pixel_counter_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(3),
      O => pixel_counter_n(3)
    );
\pixel_counter_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(4),
      O => pixel_counter_n(4)
    );
\pixel_counter_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(5),
      O => pixel_counter_n(5)
    );
\pixel_counter_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(6),
      O => pixel_counter_n(6)
    );
\pixel_counter_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(7),
      O => pixel_counter_n(7)
    );
\pixel_counter_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(8),
      O => pixel_counter_n(8)
    );
\pixel_counter_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(0),
      I1 => pixel_counter_n1,
      I2 => pixel_counter_n0(9),
      O => pixel_counter_n(9)
    );
\pixel_counter_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(0),
      Q => pixel_counter_r(0)
    );
\pixel_counter_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(10),
      Q => pixel_counter_r(10)
    );
\pixel_counter_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(11),
      Q => pixel_counter_r(11)
    );
\pixel_counter_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(12),
      Q => pixel_counter_r(12)
    );
\pixel_counter_r_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_r_reg[8]_i_2_n_0\,
      CO(3) => \pixel_counter_r_reg[12]_i_2_n_0\,
      CO(2) => \pixel_counter_r_reg[12]_i_2_n_1\,
      CO(1) => \pixel_counter_r_reg[12]_i_2_n_2\,
      CO(0) => \pixel_counter_r_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pixel_counter_n0(12 downto 9),
      S(3 downto 0) => pixel_counter_r(12 downto 9)
    );
\pixel_counter_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(13),
      Q => pixel_counter_r(13)
    );
\pixel_counter_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(14),
      Q => pixel_counter_r(14)
    );
\pixel_counter_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(15),
      Q => pixel_counter_r(15)
    );
\pixel_counter_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(16),
      Q => pixel_counter_r(16)
    );
\pixel_counter_r_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_r_reg[12]_i_2_n_0\,
      CO(3) => \pixel_counter_r_reg[16]_i_2_n_0\,
      CO(2) => \pixel_counter_r_reg[16]_i_2_n_1\,
      CO(1) => \pixel_counter_r_reg[16]_i_2_n_2\,
      CO(0) => \pixel_counter_r_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pixel_counter_n0(16 downto 13),
      S(3 downto 0) => pixel_counter_r(16 downto 13)
    );
\pixel_counter_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(17),
      Q => pixel_counter_r(17)
    );
\pixel_counter_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(18),
      Q => pixel_counter_r(18)
    );
\pixel_counter_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(19),
      Q => pixel_counter_r(19)
    );
\pixel_counter_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(1),
      Q => pixel_counter_r(1)
    );
\pixel_counter_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(20),
      Q => pixel_counter_r(20)
    );
\pixel_counter_r_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_r_reg[16]_i_2_n_0\,
      CO(3) => \pixel_counter_r_reg[20]_i_2_n_0\,
      CO(2) => \pixel_counter_r_reg[20]_i_2_n_1\,
      CO(1) => \pixel_counter_r_reg[20]_i_2_n_2\,
      CO(0) => \pixel_counter_r_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pixel_counter_n0(20 downto 17),
      S(3 downto 0) => pixel_counter_r(20 downto 17)
    );
\pixel_counter_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(21),
      Q => pixel_counter_r(21)
    );
\pixel_counter_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(22),
      Q => pixel_counter_r(22)
    );
\pixel_counter_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(23),
      Q => pixel_counter_r(23)
    );
\pixel_counter_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(24),
      Q => pixel_counter_r(24)
    );
\pixel_counter_r_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_r_reg[20]_i_2_n_0\,
      CO(3) => \pixel_counter_r_reg[24]_i_2_n_0\,
      CO(2) => \pixel_counter_r_reg[24]_i_2_n_1\,
      CO(1) => \pixel_counter_r_reg[24]_i_2_n_2\,
      CO(0) => \pixel_counter_r_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pixel_counter_n0(24 downto 21),
      S(3 downto 0) => pixel_counter_r(24 downto 21)
    );
\pixel_counter_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(25),
      Q => pixel_counter_r(25)
    );
\pixel_counter_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(26),
      Q => pixel_counter_r(26)
    );
\pixel_counter_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(27),
      Q => pixel_counter_r(27)
    );
\pixel_counter_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(28),
      Q => pixel_counter_r(28)
    );
\pixel_counter_r_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_r_reg[24]_i_2_n_0\,
      CO(3) => \pixel_counter_r_reg[28]_i_2_n_0\,
      CO(2) => \pixel_counter_r_reg[28]_i_2_n_1\,
      CO(1) => \pixel_counter_r_reg[28]_i_2_n_2\,
      CO(0) => \pixel_counter_r_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pixel_counter_n0(28 downto 25),
      S(3 downto 0) => pixel_counter_r(28 downto 25)
    );
\pixel_counter_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(29),
      Q => pixel_counter_r(29)
    );
\pixel_counter_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(2),
      Q => pixel_counter_r(2)
    );
\pixel_counter_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(30),
      Q => pixel_counter_r(30)
    );
\pixel_counter_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(31),
      Q => pixel_counter_r(31)
    );
\pixel_counter_r_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_r_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_pixel_counter_r_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pixel_counter_r_reg[31]_i_3_n_2\,
      CO(0) => \pixel_counter_r_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pixel_counter_r_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => pixel_counter_n0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => pixel_counter_r(31 downto 29)
    );
\pixel_counter_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(3),
      Q => pixel_counter_r(3)
    );
\pixel_counter_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(4),
      Q => pixel_counter_r(4)
    );
\pixel_counter_r_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixel_counter_r_reg[4]_i_2_n_0\,
      CO(2) => \pixel_counter_r_reg[4]_i_2_n_1\,
      CO(1) => \pixel_counter_r_reg[4]_i_2_n_2\,
      CO(0) => \pixel_counter_r_reg[4]_i_2_n_3\,
      CYINIT => pixel_counter_r(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pixel_counter_n0(4 downto 1),
      S(3 downto 0) => pixel_counter_r(4 downto 1)
    );
\pixel_counter_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(5),
      Q => pixel_counter_r(5)
    );
\pixel_counter_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(6),
      Q => pixel_counter_r(6)
    );
\pixel_counter_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(7),
      Q => pixel_counter_r(7)
    );
\pixel_counter_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(8),
      Q => pixel_counter_r(8)
    );
\pixel_counter_r_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_r_reg[4]_i_2_n_0\,
      CO(3) => \pixel_counter_r_reg[8]_i_2_n_0\,
      CO(2) => \pixel_counter_r_reg[8]_i_2_n_1\,
      CO(1) => \pixel_counter_r_reg[8]_i_2_n_2\,
      CO(0) => \pixel_counter_r_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pixel_counter_n0(8 downto 5),
      S(3 downto 0) => pixel_counter_r(8 downto 5)
    );
\pixel_counter_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_counter_n_0,
      CLR => frame_clk_r_i_2_n_0,
      D => pixel_counter_n(9),
      Q => pixel_counter_r(9)
    );
pixel_halftime_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pixel_halftime_carry_n_0,
      CO(2) => pixel_halftime_carry_n_1,
      CO(1) => pixel_halftime_carry_n_2,
      CO(0) => pixel_halftime_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pixel_halftime_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pixel_halftime_carry_i_1_n_0,
      S(2) => pixel_halftime_carry_i_2_n_0,
      S(1) => pixel_halftime_carry_i_3_n_0,
      S(0) => pixel_halftime_carry_i_4_n_0
    );
\pixel_halftime_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_halftime_carry_n_0,
      CO(3) => \pixel_halftime_carry__0_n_0\,
      CO(2) => \pixel_halftime_carry__0_n_1\,
      CO(1) => \pixel_halftime_carry__0_n_2\,
      CO(0) => \pixel_halftime_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pixel_halftime_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pixel_halftime_carry__0_i_1_n_0\,
      S(2) => \pixel_halftime_carry__0_i_2_n_0\,
      S(1) => \pixel_halftime_carry__0_i_3_n_0\,
      S(0) => \pixel_halftime_carry__0_i_4_n_0\
    );
\pixel_halftime_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(23),
      I1 => clk_counter_r(23),
      I2 => pixel_halftime0(22),
      I3 => clk_counter_r(22),
      I4 => clk_counter_r(21),
      I5 => pixel_halftime0(21),
      O => \pixel_halftime_carry__0_i_1_n_0\
    );
\pixel_halftime_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(23),
      O => \pixel_halftime_carry__0_i_10_n_0\
    );
\pixel_halftime_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(22),
      O => \pixel_halftime_carry__0_i_11_n_0\
    );
\pixel_halftime_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(21),
      O => \pixel_halftime_carry__0_i_12_n_0\
    );
\pixel_halftime_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(20),
      O => \pixel_halftime_carry__0_i_13_n_0\
    );
\pixel_halftime_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(19),
      O => \pixel_halftime_carry__0_i_14_n_0\
    );
\pixel_halftime_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(18),
      O => \pixel_halftime_carry__0_i_15_n_0\
    );
\pixel_halftime_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(17),
      O => \pixel_halftime_carry__0_i_16_n_0\
    );
\pixel_halftime_carry__0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(16),
      O => \pixel_halftime_carry__0_i_17_n_0\
    );
\pixel_halftime_carry__0_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(15),
      O => \pixel_halftime_carry__0_i_18_n_0\
    );
\pixel_halftime_carry__0_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(14),
      O => \pixel_halftime_carry__0_i_19_n_0\
    );
\pixel_halftime_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(20),
      I1 => clk_counter_r(20),
      I2 => pixel_halftime0(19),
      I3 => clk_counter_r(19),
      I4 => clk_counter_r(18),
      I5 => pixel_halftime0(18),
      O => \pixel_halftime_carry__0_i_2_n_0\
    );
\pixel_halftime_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(17),
      I1 => clk_counter_r(17),
      I2 => pixel_halftime0(16),
      I3 => clk_counter_r(16),
      I4 => clk_counter_r(15),
      I5 => pixel_halftime0(15),
      O => \pixel_halftime_carry__0_i_3_n_0\
    );
\pixel_halftime_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(14),
      I1 => clk_counter_r(14),
      I2 => pixel_halftime0(13),
      I3 => clk_counter_r(13),
      I4 => clk_counter_r(12),
      I5 => pixel_halftime0(12),
      O => \pixel_halftime_carry__0_i_4_n_0\
    );
\pixel_halftime_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_halftime_carry__0_i_6_n_0\,
      CO(3) => \pixel_halftime_carry__0_i_5_n_0\,
      CO(2) => \pixel_halftime_carry__0_i_5_n_1\,
      CO(1) => \pixel_halftime_carry__0_i_5_n_2\,
      CO(0) => \pixel_halftime_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(25 downto 22),
      O(3 downto 0) => pixel_halftime0(24 downto 21),
      S(3) => \pixel_halftime_carry__0_i_8_n_0\,
      S(2) => \pixel_halftime_carry__0_i_9_n_0\,
      S(1) => \pixel_halftime_carry__0_i_10_n_0\,
      S(0) => \pixel_halftime_carry__0_i_11_n_0\
    );
\pixel_halftime_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_halftime_carry__0_i_7_n_0\,
      CO(3) => \pixel_halftime_carry__0_i_6_n_0\,
      CO(2) => \pixel_halftime_carry__0_i_6_n_1\,
      CO(1) => \pixel_halftime_carry__0_i_6_n_2\,
      CO(0) => \pixel_halftime_carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(21 downto 18),
      O(3 downto 0) => pixel_halftime0(20 downto 17),
      S(3) => \pixel_halftime_carry__0_i_12_n_0\,
      S(2) => \pixel_halftime_carry__0_i_13_n_0\,
      S(1) => \pixel_halftime_carry__0_i_14_n_0\,
      S(0) => \pixel_halftime_carry__0_i_15_n_0\
    );
\pixel_halftime_carry__0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_halftime_carry_i_5_n_0,
      CO(3) => \pixel_halftime_carry__0_i_7_n_0\,
      CO(2) => \pixel_halftime_carry__0_i_7_n_1\,
      CO(1) => \pixel_halftime_carry__0_i_7_n_2\,
      CO(0) => \pixel_halftime_carry__0_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(17 downto 14),
      O(3 downto 0) => pixel_halftime0(16 downto 13),
      S(3) => \pixel_halftime_carry__0_i_16_n_0\,
      S(2) => \pixel_halftime_carry__0_i_17_n_0\,
      S(1) => \pixel_halftime_carry__0_i_18_n_0\,
      S(0) => \pixel_halftime_carry__0_i_19_n_0\
    );
\pixel_halftime_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(25),
      O => \pixel_halftime_carry__0_i_8_n_0\
    );
\pixel_halftime_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(24),
      O => \pixel_halftime_carry__0_i_9_n_0\
    );
\pixel_halftime_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_halftime_carry__0_n_0\,
      CO(3) => \NLW_pixel_halftime_carry__1_CO_UNCONNECTED\(3),
      CO(2) => pixel_halftime,
      CO(1) => \pixel_halftime_carry__1_n_2\,
      CO(0) => \pixel_halftime_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pixel_halftime_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \pixel_halftime_carry__1_i_1_n_0\,
      S(1) => \pixel_halftime_carry__1_i_2_n_0\,
      S(0) => \pixel_halftime_carry__1_i_3_n_0\
    );
\pixel_halftime_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => clk_counter_r(31),
      I1 => \pixel_halftime_carry__1_i_4_n_1\,
      I2 => clk_counter_r(30),
      I3 => pixel_halftime0(30),
      O => \pixel_halftime_carry__1_i_1_n_0\
    );
\pixel_halftime_carry__1_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(27),
      O => \pixel_halftime_carry__1_i_10_n_0\
    );
\pixel_halftime_carry__1_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(26),
      O => \pixel_halftime_carry__1_i_11_n_0\
    );
\pixel_halftime_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(29),
      I1 => clk_counter_r(29),
      I2 => pixel_halftime0(28),
      I3 => clk_counter_r(28),
      I4 => clk_counter_r(27),
      I5 => pixel_halftime0(27),
      O => \pixel_halftime_carry__1_i_2_n_0\
    );
\pixel_halftime_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(26),
      I1 => clk_counter_r(26),
      I2 => pixel_halftime0(25),
      I3 => clk_counter_r(25),
      I4 => clk_counter_r(24),
      I5 => pixel_halftime0(24),
      O => \pixel_halftime_carry__1_i_3_n_0\
    );
\pixel_halftime_carry__1_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_halftime_carry__1_i_5_n_0\,
      CO(3) => \NLW_pixel_halftime_carry__1_i_4_CO_UNCONNECTED\(3),
      CO(2) => \pixel_halftime_carry__1_i_4_n_1\,
      CO(1) => \NLW_pixel_halftime_carry__1_i_4_CO_UNCONNECTED\(1),
      CO(0) => \pixel_halftime_carry__1_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => pulses_per_pixel(31 downto 30),
      O(3 downto 2) => \NLW_pixel_halftime_carry__1_i_4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => pixel_halftime0(30 downto 29),
      S(3 downto 2) => B"01",
      S(1) => \pixel_halftime_carry__1_i_6_n_0\,
      S(0) => \pixel_halftime_carry__1_i_7_n_0\
    );
\pixel_halftime_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_halftime_carry__0_i_5_n_0\,
      CO(3) => \pixel_halftime_carry__1_i_5_n_0\,
      CO(2) => \pixel_halftime_carry__1_i_5_n_1\,
      CO(1) => \pixel_halftime_carry__1_i_5_n_2\,
      CO(0) => \pixel_halftime_carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(29 downto 26),
      O(3 downto 0) => pixel_halftime0(28 downto 25),
      S(3) => \pixel_halftime_carry__1_i_8_n_0\,
      S(2) => \pixel_halftime_carry__1_i_9_n_0\,
      S(1) => \pixel_halftime_carry__1_i_10_n_0\,
      S(0) => \pixel_halftime_carry__1_i_11_n_0\
    );
\pixel_halftime_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(31),
      O => \pixel_halftime_carry__1_i_6_n_0\
    );
\pixel_halftime_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(30),
      O => \pixel_halftime_carry__1_i_7_n_0\
    );
\pixel_halftime_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(29),
      O => \pixel_halftime_carry__1_i_8_n_0\
    );
\pixel_halftime_carry__1_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(28),
      O => \pixel_halftime_carry__1_i_9_n_0\
    );
pixel_halftime_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(11),
      I1 => clk_counter_r(11),
      I2 => pixel_halftime0(10),
      I3 => clk_counter_r(10),
      I4 => clk_counter_r(9),
      I5 => pixel_halftime0(9),
      O => pixel_halftime_carry_i_1_n_0
    );
pixel_halftime_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(11),
      O => pixel_halftime_carry_i_10_n_0
    );
pixel_halftime_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(10),
      O => pixel_halftime_carry_i_11_n_0
    );
pixel_halftime_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(9),
      O => pixel_halftime_carry_i_12_n_0
    );
pixel_halftime_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(8),
      O => pixel_halftime_carry_i_13_n_0
    );
pixel_halftime_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(7),
      O => pixel_halftime_carry_i_14_n_0
    );
pixel_halftime_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(6),
      O => pixel_halftime_carry_i_15_n_0
    );
pixel_halftime_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(5),
      O => pixel_halftime_carry_i_16_n_0
    );
pixel_halftime_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(4),
      O => pixel_halftime_carry_i_17_n_0
    );
pixel_halftime_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(3),
      O => pixel_halftime_carry_i_18_n_0
    );
pixel_halftime_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(2),
      O => pixel_halftime_carry_i_19_n_0
    );
pixel_halftime_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(8),
      I1 => clk_counter_r(8),
      I2 => pixel_halftime0(7),
      I3 => clk_counter_r(7),
      I4 => clk_counter_r(6),
      I5 => pixel_halftime0(6),
      O => pixel_halftime_carry_i_2_n_0
    );
pixel_halftime_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pixel_halftime0(5),
      I1 => clk_counter_r(5),
      I2 => pixel_halftime0(4),
      I3 => clk_counter_r(4),
      I4 => clk_counter_r(3),
      I5 => pixel_halftime0(3),
      O => pixel_halftime_carry_i_3_n_0
    );
pixel_halftime_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => pixel_halftime0(2),
      I1 => clk_counter_r(2),
      I2 => pixel_halftime0(1),
      I3 => clk_counter_r(1),
      I4 => clk_counter_r(0),
      I5 => pulses_per_pixel(1),
      O => pixel_halftime_carry_i_4_n_0
    );
pixel_halftime_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_halftime_carry_i_6_n_0,
      CO(3) => pixel_halftime_carry_i_5_n_0,
      CO(2) => pixel_halftime_carry_i_5_n_1,
      CO(1) => pixel_halftime_carry_i_5_n_2,
      CO(0) => pixel_halftime_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(13 downto 10),
      O(3 downto 0) => pixel_halftime0(12 downto 9),
      S(3) => pixel_halftime_carry_i_8_n_0,
      S(2) => pixel_halftime_carry_i_9_n_0,
      S(1) => pixel_halftime_carry_i_10_n_0,
      S(0) => pixel_halftime_carry_i_11_n_0
    );
pixel_halftime_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => pixel_halftime_carry_i_7_n_0,
      CO(3) => pixel_halftime_carry_i_6_n_0,
      CO(2) => pixel_halftime_carry_i_6_n_1,
      CO(1) => pixel_halftime_carry_i_6_n_2,
      CO(0) => pixel_halftime_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => pulses_per_pixel(9 downto 6),
      O(3 downto 0) => pixel_halftime0(8 downto 5),
      S(3) => pixel_halftime_carry_i_12_n_0,
      S(2) => pixel_halftime_carry_i_13_n_0,
      S(1) => pixel_halftime_carry_i_14_n_0,
      S(0) => pixel_halftime_carry_i_15_n_0
    );
pixel_halftime_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pixel_halftime_carry_i_7_n_0,
      CO(2) => pixel_halftime_carry_i_7_n_1,
      CO(1) => pixel_halftime_carry_i_7_n_2,
      CO(0) => pixel_halftime_carry_i_7_n_3,
      CYINIT => pulses_per_pixel(1),
      DI(3 downto 0) => pulses_per_pixel(5 downto 2),
      O(3 downto 0) => pixel_halftime0(4 downto 1),
      S(3) => pixel_halftime_carry_i_16_n_0,
      S(2) => pixel_halftime_carry_i_17_n_0,
      S(1) => pixel_halftime_carry_i_18_n_0,
      S(0) => pixel_halftime_carry_i_19_n_0
    );
pixel_halftime_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(13),
      O => pixel_halftime_carry_i_8_n_0
    );
pixel_halftime_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulses_per_pixel(12),
      O => pixel_halftime_carry_i_9_n_0
    );
return_counter_n0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => return_counter_n0_carry_n_0,
      CO(2) => return_counter_n0_carry_n_1,
      CO(1) => return_counter_n0_carry_n_2,
      CO(0) => return_counter_n0_carry_n_3,
      CYINIT => return_counter_r(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(4 downto 1),
      S(3 downto 0) => return_counter_r(4 downto 1)
    );
\return_counter_n0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => return_counter_n0_carry_n_0,
      CO(3) => \return_counter_n0_carry__0_n_0\,
      CO(2) => \return_counter_n0_carry__0_n_1\,
      CO(1) => \return_counter_n0_carry__0_n_2\,
      CO(0) => \return_counter_n0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(8 downto 5),
      S(3 downto 0) => return_counter_r(8 downto 5)
    );
\return_counter_n0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \return_counter_n0_carry__0_n_0\,
      CO(3) => \return_counter_n0_carry__1_n_0\,
      CO(2) => \return_counter_n0_carry__1_n_1\,
      CO(1) => \return_counter_n0_carry__1_n_2\,
      CO(0) => \return_counter_n0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(12 downto 9),
      S(3 downto 0) => return_counter_r(12 downto 9)
    );
\return_counter_n0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \return_counter_n0_carry__1_n_0\,
      CO(3) => \return_counter_n0_carry__2_n_0\,
      CO(2) => \return_counter_n0_carry__2_n_1\,
      CO(1) => \return_counter_n0_carry__2_n_2\,
      CO(0) => \return_counter_n0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(16 downto 13),
      S(3 downto 0) => return_counter_r(16 downto 13)
    );
\return_counter_n0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \return_counter_n0_carry__2_n_0\,
      CO(3) => \return_counter_n0_carry__3_n_0\,
      CO(2) => \return_counter_n0_carry__3_n_1\,
      CO(1) => \return_counter_n0_carry__3_n_2\,
      CO(0) => \return_counter_n0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(20 downto 17),
      S(3 downto 0) => return_counter_r(20 downto 17)
    );
\return_counter_n0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \return_counter_n0_carry__3_n_0\,
      CO(3) => \return_counter_n0_carry__4_n_0\,
      CO(2) => \return_counter_n0_carry__4_n_1\,
      CO(1) => \return_counter_n0_carry__4_n_2\,
      CO(0) => \return_counter_n0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(24 downto 21),
      S(3 downto 0) => return_counter_r(24 downto 21)
    );
\return_counter_n0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \return_counter_n0_carry__4_n_0\,
      CO(3) => \return_counter_n0_carry__5_n_0\,
      CO(2) => \return_counter_n0_carry__5_n_1\,
      CO(1) => \return_counter_n0_carry__5_n_2\,
      CO(0) => \return_counter_n0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(28 downto 25),
      S(3 downto 0) => return_counter_r(28 downto 25)
    );
\return_counter_n0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \return_counter_n0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_return_counter_n0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \return_counter_n0_carry__6_n_2\,
      CO(0) => \return_counter_n0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_return_counter_n0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in22(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => return_counter_r(31 downto 29)
    );
\return_counter_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_r(1),
      I1 => return_counter_r(0),
      O => return_counter_n(0)
    );
\return_counter_r[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(10),
      O => return_counter_n(10)
    );
\return_counter_r[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(11),
      O => return_counter_n(11)
    );
\return_counter_r[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(12),
      O => return_counter_n(12)
    );
\return_counter_r[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(13),
      O => return_counter_n(13)
    );
\return_counter_r[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(14),
      O => return_counter_n(14)
    );
\return_counter_r[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(15),
      O => return_counter_n(15)
    );
\return_counter_r[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(16),
      O => return_counter_n(16)
    );
\return_counter_r[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(17),
      O => return_counter_n(17)
    );
\return_counter_r[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(18),
      O => return_counter_n(18)
    );
\return_counter_r[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(19),
      O => return_counter_n(19)
    );
\return_counter_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(1),
      O => return_counter_n(1)
    );
\return_counter_r[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(20),
      O => return_counter_n(20)
    );
\return_counter_r[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(21),
      O => return_counter_n(21)
    );
\return_counter_r[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(22),
      O => return_counter_n(22)
    );
\return_counter_r[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(23),
      O => return_counter_n(23)
    );
\return_counter_r[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(24),
      O => return_counter_n(24)
    );
\return_counter_r[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(25),
      O => return_counter_n(25)
    );
\return_counter_r[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(26),
      O => return_counter_n(26)
    );
\return_counter_r[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(27),
      O => return_counter_n(27)
    );
\return_counter_r[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(28),
      O => return_counter_n(28)
    );
\return_counter_r[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(29),
      O => return_counter_n(29)
    );
\return_counter_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(2),
      O => return_counter_n(2)
    );
\return_counter_r[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(30),
      O => return_counter_n(30)
    );
\return_counter_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008F0"
    )
        port map (
      I0 => line_complete0,
      I1 => \^pixel_complete_dbg\,
      I2 => state_r(0),
      I3 => state_r(1),
      I4 => state_r(2),
      O => return_counter_n_3
    );
\return_counter_r[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(31),
      O => return_counter_n(31)
    );
\return_counter_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(3),
      O => return_counter_n(3)
    );
\return_counter_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(4),
      O => return_counter_n(4)
    );
\return_counter_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(5),
      O => return_counter_n(5)
    );
\return_counter_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(6),
      O => return_counter_n(6)
    );
\return_counter_r[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(7),
      O => return_counter_n(7)
    );
\return_counter_r[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(8),
      O => return_counter_n(8)
    );
\return_counter_r[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_r(1),
      I1 => in22(9),
      O => return_counter_n(9)
    );
\return_counter_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(0),
      Q => return_counter_r(0)
    );
\return_counter_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(10),
      Q => return_counter_r(10)
    );
\return_counter_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(11),
      Q => return_counter_r(11)
    );
\return_counter_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(12),
      Q => return_counter_r(12)
    );
\return_counter_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(13),
      Q => return_counter_r(13)
    );
\return_counter_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(14),
      Q => return_counter_r(14)
    );
\return_counter_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(15),
      Q => return_counter_r(15)
    );
\return_counter_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(16),
      Q => return_counter_r(16)
    );
\return_counter_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(17),
      Q => return_counter_r(17)
    );
\return_counter_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(18),
      Q => return_counter_r(18)
    );
\return_counter_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(19),
      Q => return_counter_r(19)
    );
\return_counter_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(1),
      Q => return_counter_r(1)
    );
\return_counter_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(20),
      Q => return_counter_r(20)
    );
\return_counter_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(21),
      Q => return_counter_r(21)
    );
\return_counter_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(22),
      Q => return_counter_r(22)
    );
\return_counter_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(23),
      Q => return_counter_r(23)
    );
\return_counter_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(24),
      Q => return_counter_r(24)
    );
\return_counter_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(25),
      Q => return_counter_r(25)
    );
\return_counter_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(26),
      Q => return_counter_r(26)
    );
\return_counter_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(27),
      Q => return_counter_r(27)
    );
\return_counter_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(28),
      Q => return_counter_r(28)
    );
\return_counter_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(29),
      Q => return_counter_r(29)
    );
\return_counter_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(2),
      Q => return_counter_r(2)
    );
\return_counter_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(30),
      Q => return_counter_r(30)
    );
\return_counter_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(31),
      Q => return_counter_r(31)
    );
\return_counter_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(3),
      Q => return_counter_r(3)
    );
\return_counter_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(4),
      Q => return_counter_r(4)
    );
\return_counter_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(5),
      Q => return_counter_r(5)
    );
\return_counter_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(6),
      Q => return_counter_r(6)
    );
\return_counter_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(7),
      Q => return_counter_r(7)
    );
\return_counter_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(8),
      Q => return_counter_r(8)
    );
\return_counter_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => return_counter_n_3,
      CLR => frame_clk_r_i_2_n_0,
      D => return_counter_n(9),
      Q => return_counter_r(9)
    );
\shift_counter_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00515555FFAEAAAA"
    )
        port map (
      I0 => \m_araddr_r[17]_i_3_n_0\,
      I1 => m_arvalid_n_dbg_INST_0_i_6_n_0,
      I2 => DelayChain_inst_n_33,
      I3 => m_arvalid_n_dbg_INST_0_i_10_n_0,
      I4 => state_r(0),
      I5 => shift_counter_r(0),
      O => \shift_counter_r[0]_i_1_n_0\
    );
\shift_counter_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75778A88"
    )
        port map (
      I0 => shift_counter_r(0),
      I1 => m_arvalid_n_dbg_INST_0_i_1_n_0,
      I2 => line_complete0,
      I3 => m_arvalid_n_dbg_INST_0_i_2_n_0,
      I4 => shift_counter_r(1),
      O => \shift_counter_r[1]_i_1_n_0\
    );
\shift_counter_r_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \shift_counter_r[0]_i_1_n_0\,
      PRE => frame_clk_r_i_2_n_0,
      Q => shift_counter_r(0)
    );
\shift_counter_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => \shift_counter_r[1]_i_1_n_0\,
      Q => shift_counter_r(1)
    );
start_frame_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => en,
      I1 => state_r(1),
      I2 => state_r(0),
      I3 => state_r(2),
      I4 => \^start_frame_r_reg_0\,
      O => start_frame_r_i_1_n_0
    );
start_frame_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => frame_clk_r_i_2_n_0,
      D => start_frame_r_i_1_n_0,
      Q => \^start_frame_r_reg_0\
    );
\state_dbg[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_r(1),
      I1 => state_r(2),
      O => \^state_dbg\(0)
    );
\state_dbg[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_r(0),
      I1 => state_r(2),
      O => \^state_dbg\(1)
    );
\state_dbg[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(1),
      I2 => state_r(0),
      O => \^state_dbg\(2)
    );
\warmup_pulse_counter_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^warmup_pulse_counter_dbg\(0),
      O => p_0_in(0)
    );
\warmup_pulse_counter_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^warmup_pulse_counter_dbg\(0),
      I1 => \^warmup_pulse_counter_dbg\(1),
      O => p_0_in(1)
    );
\warmup_pulse_counter_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^warmup_pulse_counter_dbg\(1),
      I1 => \^warmup_pulse_counter_dbg\(0),
      I2 => \^warmup_pulse_counter_dbg\(2),
      O => \warmup_pulse_counter_r[2]_i_1_n_0\
    );
\warmup_pulse_counter_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(1),
      I2 => state_r(0),
      O => warmup_pulse_counter_n
    );
\warmup_pulse_counter_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^warmup_pulse_counter_dbg\(2),
      I1 => \^warmup_pulse_counter_dbg\(0),
      I2 => \^warmup_pulse_counter_dbg\(1),
      I3 => \^warmup_pulse_counter_dbg\(3),
      O => \warmup_pulse_counter_r[3]_i_2_n_0\
    );
\warmup_pulse_counter_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => warmup_pulse_counter_n,
      CLR => frame_clk_r_i_2_n_0,
      D => p_0_in(0),
      Q => \^warmup_pulse_counter_dbg\(0)
    );
\warmup_pulse_counter_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => warmup_pulse_counter_n,
      CLR => frame_clk_r_i_2_n_0,
      D => p_0_in(1),
      Q => \^warmup_pulse_counter_dbg\(1)
    );
\warmup_pulse_counter_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => warmup_pulse_counter_n,
      CLR => frame_clk_r_i_2_n_0,
      D => \warmup_pulse_counter_r[2]_i_1_n_0\,
      Q => \^warmup_pulse_counter_dbg\(2)
    );
\warmup_pulse_counter_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => warmup_pulse_counter_n,
      CLR => frame_clk_r_i_2_n_0,
      D => \warmup_pulse_counter_r[3]_i_2_n_0\,
      Q => \^warmup_pulse_counter_dbg\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity laser_laser_signal_generat_0_0 is
  port (
    en : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    image_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pulses_per_pixel : in STD_LOGIC_VECTOR ( 31 downto 0 );
    refclk_out : out STD_LOGIC;
    stop_out : out STD_LOGIC;
    frame_clk_r : out STD_LOGIC;
    line_clk_r : out STD_LOGIC;
    pixel_clk_r : out STD_LOGIC;
    CNTVALUEOUT_dbg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    warmup_pulse_counter_dbg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    start_frame_dbg : out STD_LOGIC;
    state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    line_complete_dbg : out STD_LOGIC;
    pixel_complete_dbg : out STD_LOGIC;
    m_arvalid_n_dbg : out STD_LOGIC;
    m_arvalid_r_dbg : out STD_LOGIC;
    m_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_arvalid : out STD_LOGIC;
    m_arready : in STD_LOGIC;
    m_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_rvalid : in STD_LOGIC;
    m_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of laser_laser_signal_generat_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of laser_laser_signal_generat_0_0 : entity is "laser_laser_signal_generat_0_0,laser_signal_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of laser_laser_signal_generat_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of laser_laser_signal_generat_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of laser_laser_signal_generat_0_0 : entity is "laser_signal_generator,Vivado 2024.2";
end laser_laser_signal_generat_0_0;

architecture STRUCTURE of laser_laser_signal_generat_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_araddr\ : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal \^m_arvalid_r_dbg\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXI4lite_m, ASSOCIATED_RESET aresetn, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN laser_laser_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_arready : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARREADY";
  attribute X_INTERFACE_INFO of m_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID";
  attribute X_INTERFACE_INFO of m_rready : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY";
  attribute X_INTERFACE_INFO of m_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m RVALID";
  attribute X_INTERFACE_INFO of m_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR";
  attribute X_INTERFACE_MODE of m_araddr : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_araddr : signal is "XIL_INTERFACENAME AXI4lite_m, FREQ_HZ 10000000, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN laser_laser_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI4lite_m RDATA";
begin
  m_araddr(17 downto 2) <= \^m_araddr\(17 downto 2);
  m_araddr(1) <= \<const0>\;
  m_araddr(0) <= \<const0>\;
  m_arvalid <= \^m_arvalid_r_dbg\;
  m_arvalid_r_dbg <= \^m_arvalid_r_dbg\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.laser_laser_signal_generat_0_0_laser_signal_generator
     port map (
      CNTVALUEOUT_dbg(4 downto 0) => CNTVALUEOUT_dbg(4 downto 0),
      aresetn => aresetn,
      clk => clk,
      en => en,
      frame_clk_r => frame_clk_r,
      image_size(31 downto 0) => image_size(31 downto 0),
      line_clk_r => line_clk_r,
      line_complete_dbg => line_complete_dbg,
      m_araddr(15 downto 0) => \^m_araddr\(17 downto 2),
      m_arready => m_arready,
      m_arvalid_n_dbg => m_arvalid_n_dbg,
      m_arvalid_r_dbg => \^m_arvalid_r_dbg\,
      m_rdata(19 downto 15) => m_rdata(28 downto 24),
      m_rdata(14 downto 10) => m_rdata(20 downto 16),
      m_rdata(9 downto 5) => m_rdata(12 downto 8),
      m_rdata(4 downto 0) => m_rdata(4 downto 0),
      m_rready => m_rready,
      pixel_clk_r => pixel_clk_r,
      pixel_complete_dbg => pixel_complete_dbg,
      pulses_per_pixel(31 downto 0) => pulses_per_pixel(31 downto 0),
      refclk_out => refclk_out,
      start_frame_r_reg_0 => start_frame_dbg,
      state_dbg(2 downto 0) => state_dbg(2 downto 0),
      stop_out => stop_out,
      warmup_pulse_counter_dbg(3 downto 0) => warmup_pulse_counter_dbg(3 downto 0)
    );
end STRUCTURE;
