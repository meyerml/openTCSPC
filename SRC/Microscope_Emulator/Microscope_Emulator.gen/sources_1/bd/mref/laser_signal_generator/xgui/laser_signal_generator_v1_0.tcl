# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "addr_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pulses_per_photon" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pulses_per_photon_return" -parent ${Page_0}
  ipgui::add_param $IPINST -name "return_counter_clocks" -parent ${Page_0}
  ipgui::add_param $IPINST -name "warmup_pulses" -parent ${Page_0}


}

proc update_PARAM_VALUE.addr_width { PARAM_VALUE.addr_width } {
	# Procedure called to update addr_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.addr_width { PARAM_VALUE.addr_width } {
	# Procedure called to validate addr_width
	return true
}

proc update_PARAM_VALUE.pulses_per_photon { PARAM_VALUE.pulses_per_photon } {
	# Procedure called to update pulses_per_photon when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pulses_per_photon { PARAM_VALUE.pulses_per_photon } {
	# Procedure called to validate pulses_per_photon
	return true
}

proc update_PARAM_VALUE.pulses_per_photon_return { PARAM_VALUE.pulses_per_photon_return } {
	# Procedure called to update pulses_per_photon_return when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pulses_per_photon_return { PARAM_VALUE.pulses_per_photon_return } {
	# Procedure called to validate pulses_per_photon_return
	return true
}

proc update_PARAM_VALUE.return_counter_clocks { PARAM_VALUE.return_counter_clocks } {
	# Procedure called to update return_counter_clocks when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.return_counter_clocks { PARAM_VALUE.return_counter_clocks } {
	# Procedure called to validate return_counter_clocks
	return true
}

proc update_PARAM_VALUE.warmup_pulses { PARAM_VALUE.warmup_pulses } {
	# Procedure called to update warmup_pulses when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.warmup_pulses { PARAM_VALUE.warmup_pulses } {
	# Procedure called to validate warmup_pulses
	return true
}


proc update_MODELPARAM_VALUE.return_counter_clocks { MODELPARAM_VALUE.return_counter_clocks PARAM_VALUE.return_counter_clocks } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.return_counter_clocks}] ${MODELPARAM_VALUE.return_counter_clocks}
}

proc update_MODELPARAM_VALUE.pulses_per_photon { MODELPARAM_VALUE.pulses_per_photon PARAM_VALUE.pulses_per_photon } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pulses_per_photon}] ${MODELPARAM_VALUE.pulses_per_photon}
}

proc update_MODELPARAM_VALUE.pulses_per_photon_return { MODELPARAM_VALUE.pulses_per_photon_return PARAM_VALUE.pulses_per_photon_return } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pulses_per_photon_return}] ${MODELPARAM_VALUE.pulses_per_photon_return}
}

proc update_MODELPARAM_VALUE.warmup_pulses { MODELPARAM_VALUE.warmup_pulses PARAM_VALUE.warmup_pulses } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.warmup_pulses}] ${MODELPARAM_VALUE.warmup_pulses}
}

proc update_MODELPARAM_VALUE.addr_width { MODELPARAM_VALUE.addr_width PARAM_VALUE.addr_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.addr_width}] ${MODELPARAM_VALUE.addr_width}
}

