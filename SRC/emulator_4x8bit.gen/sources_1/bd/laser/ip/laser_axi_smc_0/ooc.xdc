# aclk {FREQ_HZ 10000000 CLK_DOMAIN laser_laser_clk PHASE 0.0}
# Clock Domain: laser_laser_clk
create_clock -name aclk -period 100.000 [get_ports aclk]
# Generated clocks
