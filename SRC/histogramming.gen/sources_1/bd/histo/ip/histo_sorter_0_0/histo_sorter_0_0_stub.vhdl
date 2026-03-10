-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Mar 10 16:56:18 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/histogramming.gen/sources_1/bd/histo/ip/histo_sorter_0_0/histo_sorter_0_0_stub.vhdl
-- Design      : histo_sorter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity histo_sorter_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of histo_sorter_0_0 : entity is "histo_sorter_0_0,sorter,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of histo_sorter_0_0 : entity is "histo_sorter_0_0,sorter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=sorter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of histo_sorter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of histo_sorter_0_0 : entity is "module_ref";
end histo_sorter_0_0;

architecture stub of histo_sorter_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "en,clk,aresetn,log_2_BIN_WIDTH[15:0],REFINDEX_BITS[5:0],STOPRESULT_BITS[5:0],tdata_in[63:0],tvalid_in,tready_in,tlast_in,tdata_out[63:0],tvalid_out,tready_out,tlast_out";
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
  attribute X_CORE_INFO of stub : architecture is "sorter,Vivado 2024.2";
begin
end;
