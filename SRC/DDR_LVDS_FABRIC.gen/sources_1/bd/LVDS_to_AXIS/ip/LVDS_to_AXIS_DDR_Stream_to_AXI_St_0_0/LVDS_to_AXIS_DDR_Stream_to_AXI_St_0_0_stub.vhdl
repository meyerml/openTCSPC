-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Apr  3 23:42:19 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/openTCSPC3/SRC/DDR_LVDS_FABRIC.gen/sources_1/bd/LVDS_to_AXIS/ip/LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0/LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_stub.vhdl
-- Design      : LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0 is
  Port ( 
    msglen : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aresetn : in STD_LOGIC;
    C : in STD_LOGIC;
    D : in STD_LOGIC;
    F : in STD_LOGIC;
    tready : in STD_LOGIC;
    tdata_delayed : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid_delayed : out STD_LOGIC;
    tlast_delayed : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0 : entity is "LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0,DDR_Stream_to_AXI_Stream,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0 : entity is "LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0,DDR_Stream_to_AXI_Stream,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DDR_Stream_to_AXI_Stream,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NUM_TRANSACTIONS=256}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0 : entity is "module_ref";
end LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0;

architecture stub of LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "msglen[5:0],aresetn,C,D,F,tready,tdata_delayed[63:0],tvalid_delayed,tlast_delayed";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tready : signal is "xilinx.com:interface:axis:1.0 AXIS TREADY";
  attribute X_INTERFACE_MODE of tready : signal is "master";
  attribute X_INTERFACE_PARAMETER of tready : signal is "XIL_INTERFACENAME AXIS, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tdata_delayed : signal is "xilinx.com:interface:axis:1.0 AXIS TDATA";
  attribute X_INTERFACE_INFO of tvalid_delayed : signal is "xilinx.com:interface:axis:1.0 AXIS TVALID";
  attribute X_INTERFACE_INFO of tlast_delayed : signal is "xilinx.com:interface:axis:1.0 AXIS TLAST";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "DDR_Stream_to_AXI_Stream,Vivado 2024.2";
begin
end;
