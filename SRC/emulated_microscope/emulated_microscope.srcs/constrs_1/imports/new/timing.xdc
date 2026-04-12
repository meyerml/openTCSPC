#create_clock -period 4.000 -name l_clk_in_p -waveform {0.000 2.000} [get_ports l_clk_in_p]
create_clock -period 100.000 -name l_clk_in_p -waveform {0.000 50.000} [get_ports l_clk_in_p]


#set_false_path -from [get_pins {signal_generator_i/axi_gpio_0/U0/gpio_core_1/Dual.gpio_Data_Out_reg[15]/C}] -to [get_pins -hierarchical *signal_generator_ILA*]

set_false_path -from [get_pins -hierarchical -filter {NAME =~ *emulated_microscope_i/axi_gpio_*}]
#set_false_path -to [get_pins -hierarchical -filter {NAME =~ *ila_0*}]
set_false_path -from [get_pins -hierarchical -filter {NAME =~ *proc_sys_reset_0*}]
#set_false_path -to [get_pins -hierarchical -filter {NAME =~ *slow_laser_ILA*}]

set_false_path -to [get_pins -hierarchical -filter {NAME =~ *ila_LVDS_to_AXIS*}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *ila_LVDS_fast*}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *ila_histo_int*}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *slow_laser_ILA*}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *histogram_ILA*}]


set_false_path -from [get_pins emulated_microscope_i/Microscope_Emulator_0/inst/laser_signal_generat_0/inst/pixel_clk_r_reg/C] -to [get_pins emulated_microscope_i/Histogramming/inst/pixel_posedge_detect/inst/old_reg/D]
set_false_path -from [get_pins emulated_microscope_i/Microscope_Emulator_0/inst/laser_signal_generat_0/inst/frame_clk_r_reg/C] -to [get_pins emulated_microscope_i/Histogramming/inst/frame_negedge_detect/inst/old_reg/D]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]

#set_false_path -from [get_pins -hierarchical -filter {NAME =~ *pixel_clk*}]

#set_false_path -from [get_pins {signal_generator_i/axi_gpio_0/U0/gpio_core_1/Dual.gpio_Data_Out_reg[15]/C}] -to [get_pins -hierarchical *signal_generator_ILA/probe*]

