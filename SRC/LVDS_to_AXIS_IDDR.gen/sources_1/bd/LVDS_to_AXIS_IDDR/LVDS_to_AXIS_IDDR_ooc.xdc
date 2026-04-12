################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name l_clk_in_n -period 10 [get_ports l_clk_in_n]
create_clock -name l_clk_in_p -period 10 [get_ports l_clk_in_p]
create_clock -name frame_n -period 10 [get_ports frame_n]
create_clock -name frame_p -period 10 [get_ports frame_p]
create_clock -name sdo_n -period 10 [get_ports sdo_n]
create_clock -name sdo_p -period 10 [get_ports sdo_p]
create_clock -name lvds_clk -period 10 [get_ports lvds_clk]
create_clock -name clk -period 10 [get_ports clk]
create_clock -name ila_clk -period 10 [get_ports ila_clk]

################################################################################