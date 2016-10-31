# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM32_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM32_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM32_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM32_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM32_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM32_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM32_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM32_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM32_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM32_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM32_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM32_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM32_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM32_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM32_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM32_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM32_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM32_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM32_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM32_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM32_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM32_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM32_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM32_CACHE_VALUE
	return true
}


proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM32_CACHE_VALUE}
}

