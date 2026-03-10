# aclk {FREQ_HZ 125000000 CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK0 PHASE 0.0} aclk1 {FREQ_HZ 10000000 CLK_DOMAIN emulated_microscope_processing_system7_0_0_FCLK_CLK2 PHASE 0.0}
# Clock Domain: emulated_microscope_processing_system7_0_0_FCLK_CLK0
create_clock -name aclk -period 8.000 [get_ports aclk]
# Clock Domain: emulated_microscope_processing_system7_0_0_FCLK_CLK2
create_clock -name aclk1 -period 100.000 [get_ports aclk1]
# Generated clocks
