-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Mar  9 14:30:04 2026
-- Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/DDR_LVDS_FABRIC.gen/sources_1/bd/LVDS_to_AXIS/ip/LVDS_to_AXIS_util_ds_buf_0_4/LVDS_to_AXIS_util_ds_buf_0_4_stub.vhdl
-- Design      : LVDS_to_AXIS_util_ds_buf_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LVDS_to_AXIS_util_ds_buf_0_4 is
  Port ( 
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LVDS_to_AXIS_util_ds_buf_0_4 : entity is "LVDS_to_AXIS_util_ds_buf_0_4,util_ds_buf,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of LVDS_to_AXIS_util_ds_buf_0_4 : entity is "LVDS_to_AXIS_util_ds_buf_0_4,util_ds_buf,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_ds_buf,x_ipVersion=2.2,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_SIZE=1,C_BUF_TYPE=BUFG,C_BUFGCE_DIV=1,C_BUFG_GT_SYNC=0,C_OBUFDS_GTE5_ADV=00,C_REFCLK_ICNTL_TX=00000,C_SIM_DEVICE=VERSAL_AI_CORE_ES1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of LVDS_to_AXIS_util_ds_buf_0_4 : entity is "yes";
end LVDS_to_AXIS_util_ds_buf_0_4;

architecture stub of LVDS_to_AXIS_util_ds_buf_0_4 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "BUFG_I[0:0],BUFG_O[0:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of BUFG_I : signal is "xilinx.com:signal:clock:1.0 BUFG_I CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of BUFG_I : signal is "slave BUFG_I";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of BUFG_I : signal is "XIL_INTERFACENAME BUFG_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_l_clk_in_n, INSERT_VIP 0";
  attribute x_interface_info of BUFG_O : signal is "xilinx.com:signal:clock:1.0 BUFG_O CLK";
  attribute x_interface_mode of BUFG_O : signal is "master BUFG_O";
  attribute x_interface_parameter of BUFG_O : signal is "XIL_INTERFACENAME BUFG_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LVDS_to_AXIS_l_clk_in_n, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2024.2";
begin
end;
