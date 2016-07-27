set IpModel [Sim::IpModelInit]
$IpModel SetVersion 2
if {[info procs translate_Component_Name] ne {}} { rename translate_Component_Name ""}
set Component_Name [$IpModel AddParam STRING Component_Name fmc_imageon_hdmi_in_v1_0]

set C_DATA_WIDTH [$IpModel AddParam INT C_DATA_WIDTH 16 -2147483648 2147483647]

set PORT_clk [$IpModel AddPin PIN "clk" LEFT IN NET "NONE" false true]
set PORT_io_hdmii_spdif [$IpModel AddPin PIN "io_hdmii_spdif" LEFT IN NET "NONE" false true]
set PORT_io_hdmii_video [$IpModel AddPin PIN "io_hdmii_video" LEFT IN BUS  15 0 "NONE" false true]
set PORT_audio_spdif [$IpModel AddPin PIN "audio_spdif" RIGHT OUT NET "NONE" false true]
set PORT_debug_o [$IpModel AddPin PIN "debug_o" RIGHT OUT BUS  23 0 "NONE" false true]
set PORT_xsvi_active_video_o [$IpModel AddPin PIN "xsvi_active_video_o" RIGHT OUT NET "NONE" false true]
set PORT_xsvi_hblank_o [$IpModel AddPin PIN "xsvi_hblank_o" RIGHT OUT NET "NONE" false true]
set PORT_xsvi_vblank_o [$IpModel AddPin PIN "xsvi_vblank_o" RIGHT OUT NET "NONE" false true]
set PORT_xsvi_video_data_o [$IpModel AddPin PIN "xsvi_video_data_o" RIGHT OUT BUS  0 0 "NONE" false true]

#
# Following procs are parameter-specific
#
proc update_C_DATA_WIDTH {} {
	# Procedure called to update the C_DATA_WIDTH
	global C_DATA_WIDTH

}

proc validate_C_DATA_WIDTH {} {
	# Procedure called to check for error conditions on the  C_DATA_WIDTH
	return TRUE
}

proc finalize_C_DATA_WIDTH {} {
	# Procedure called to update labels or descriptions on the C_DATA_WIDTH
	return TRUE
}

proc translate_C_DATA_WIDTH {paramValue} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	lappend hdlParamList "C_DATA_WIDTH $paramValue"
	return $hdlParamList
}


#
# Following procs are called after the parameter-specific procs are called
#
proc validate_IpModel {} {
	return TRUE
}

proc update_pins {} {
	# Procedure that updates IP GUI schematic
	global C_DATA_WIDTH
	global PORT_xsvi_video_data_o
	$PORT_xsvi_video_data_o SetIndices [expr ([$C_DATA_WIDTH GetValue] - 1)] 0

	return TRUE
}


