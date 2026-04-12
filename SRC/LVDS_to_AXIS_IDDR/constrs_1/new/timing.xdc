#create_clock -period 4.000 -name l_clk_in_p -waveform {0.000 2.000} [get_ports l_clk_in_p]
#create_clock -period 100.000 -name l_clk_in_p -waveform {0.000 50.000} [get_ports l_clk_in_p]

set_false_path -from [get_pins -hierarchical -filter {NAME =~ *proc_sys_reset_0*}]
#set_false_path -from [get_pins -hierarchical -filter {NAME =~ *ila_0*}]
