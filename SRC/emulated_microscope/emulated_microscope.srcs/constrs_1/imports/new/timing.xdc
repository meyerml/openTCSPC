create_clock -period 4.000 -name l_clk_in_p -waveform {0.000 2.000} [get_ports l_clk_in_p]


#set_false_path -from [get_pins {signal_generator_i/axi_gpio_0/U0/gpio_core_1/Dual.gpio_Data_Out_reg[15]/C}] -to [get_pins -hierarchical *signal_generator_ILA*]

set_false_path -from [get_pins -hierarchical -filter {NAME =~ *signal_generator_i/axi_gpio_0*}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *ila_0*}]
set_false_path -from [get_pins -hierarchical -filter {NAME =~ *rst_ps7_0_100M*}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *signal_generator_ILA*}]
set_false_path -from [get_pins -hierarchical -filter {NAME =~ *pixel_clk*}]

#set_false_path -from [get_pins {signal_generator_i/axi_gpio_0/U0/gpio_core_1/Dual.gpio_Data_Out_reg[15]/C}] -to [get_pins -hierarchical *signal_generator_ILA/probe*]