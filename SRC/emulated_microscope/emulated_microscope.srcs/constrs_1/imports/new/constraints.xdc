
#========================================================#
# === PmodACL => PMOD JD ===
#========================================================#
set_property IOSTANDARD LVCMOS25 [get_ports {spi_cs_n[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports spi_mosi]
set_property IOSTANDARD LVCMOS25 [get_ports spi_miso]
set_property IOSTANDARD LVCMOS25 [get_ports spi_sclk]
#set_property IOSTANDARD LVCMOS25 [get_ports spi_interrupt_n]


# CSn => PMOD JD PIN 1 = T14
# SDI => PMOD JD PIN 2 = T15
# SDO => PMOD JD PIN 3 = P14
# SCLK => PMOD JD PIN 4 = R14
# PMOD_ACL_INT2 => PMOD JD PIN 7 = U14
# PMOD_ACL_INT1 => PMOD JD PIN 8 = U15
#set_property PACKAGE_PIN V7 [get_ports spi_cs_n]
#set_property PACKAGE_PIN W7 [get_ports spi_mosi]
#set_property PACKAGE_PIN V5 [get_ports spi_miso]
#set_property PACKAGE_PIN V4 [get_ports spi_sclk]
#set_property PACKAGE_PIN W6 [get_ports spi_interrupt_n]

# CSn => Syzygy S20 => J16
# MISO => Sysygy S26 => E19
# MOSI => Sysygy S24 = G15
# SCLK => Syzygy S22 = B19
# INT_N => Syzygy S18 = L17
# Parity => Syzygy S16 = N17
set_property PACKAGE_PIN J16 [get_ports {spi_cs_n[0]}]
set_property PACKAGE_PIN G15 [get_ports spi_mosi]
set_property PACKAGE_PIN E19 [get_ports spi_miso]
set_property PACKAGE_PIN B19 [get_ports spi_sclk]
#set_property PACKAGE_PIN L17 [get_ports spi_interrupt_n]


#DISABLE => Syzygy S19 = K19
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS25} [get_ports disable_p]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS25} [get_ports refres_p]

#set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVCMOS33}  [get_ports attiny_sclk]
#set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33}  [get_ports attiny_sda_mosi]

set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS25} [get_ports level_shifter_en]


set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVDS_25} [get_ports l_clk_out_p]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVDS_25} [get_ports l_clk_out_n]

set_property DIFF_TERM TRUE [get_ports l_clk_in_n]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports l_clk_in_p]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVDS_25} [get_ports l_clk_in_n]

set_property DIFF_TERM TRUE [get_ports frame_n]
set_property -dict {PACKAGE_PIN R20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports frame_p]
set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVDS_25} [get_ports frame_n]

set_property DIFF_TERM TRUE [get_ports sdo_n]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports sdo_p]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVDS_25} [get_ports sdo_n]


#Buffer_overflow LED on LED0 on zedboard
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33} [get_ports buffer_overflow]

#create_clock -period 5.000 -name ddr_clock -waveform {0.000 2.500} -add [get_pins spi_to_dma_i/LVDS_to_AXIS_1/ddr_clk]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]

#refclk and stop pins from signal generator:
#JA4
set_property -dict {PACKAGE_PIN AA9 IOSTANDARD LVCMOS33 DRIVE 16 SLEW FAST} [get_ports refclk_out]
#JB4
set_property -dict {PACKAGE_PIN W8 IOSTANDARD LVCMOS33 DRIVE 16 SLEW FAST} [get_ports stop_out]


