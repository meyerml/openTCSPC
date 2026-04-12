-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Mar 31 01:52:28 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_HISTOGRAM_ARBITER_FSM_0_0/histo_HISTOGRAM_ARBITER_FSM_0_0_stub.vhdl
-- Design      : histo_HISTOGRAM_ARBITER_FSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity histo_HISTOGRAM_ARBITER_FSM_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "histo_HISTOGRAM_ARBITER_FSM_0_0,HISTOGRAM_ARBITER_FSM,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "histo_HISTOGRAM_ARBITER_FSM_0_0,HISTOGRAM_ARBITER_FSM,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HISTOGRAM_ARBITER_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,HIST_BINS=16384,BIN_WIDTH=18}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of histo_HISTOGRAM_ARBITER_FSM_0_0 : entity is "module_ref";
end histo_HISTOGRAM_ARBITER_FSM_0_0;

architecture stub of histo_HISTOGRAM_ARBITER_FSM_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,aresetn,en,pixel_done,BINS_TO_READ[14:0],bin_full_warning,bin_written_but_never_read_warning,premature_pixel_done_error,MAX_PIXELS[31:0],tdata_in[63:0],tvalid_in,tready_in,tlast_in,tdata_out[63:0],tvalid_out,tready_out,tlast_out,main_fsm_state_dbg[2:0],reading_fsm_state_dbg[4:0],tvalid_dbg,bram_addr_dbg[13:0],pixel_counter_dbg[31:0],tready_dbg,tlast_dbg,tdata_dbg[63:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXIS_IN:AXIS_OUT, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN histo_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tdata_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TDATA";
  attribute X_INTERFACE_MODE of tdata_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of tdata_in : signal is "XIL_INTERFACENAME AXIS_IN, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tvalid_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TVALID";
  attribute X_INTERFACE_INFO of tready_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TREADY";
  attribute X_INTERFACE_INFO of tlast_in : signal is "xilinx.com:interface:axis:1.0 AXIS_IN TLAST";
  attribute X_INTERFACE_INFO of tdata_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TDATA";
  attribute X_INTERFACE_MODE of tdata_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of tdata_out : signal is "XIL_INTERFACENAME AXIS_OUT, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN histo_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tvalid_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TVALID";
  attribute X_INTERFACE_INFO of tready_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TREADY";
  attribute X_INTERFACE_PARAMETER of tready_out : signal is "FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of tlast_out : signal is "xilinx.com:interface:axis:1.0 AXIS_OUT TLAST";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "HISTOGRAM_ARBITER_FSM,Vivado 2024.2";
begin
end;
