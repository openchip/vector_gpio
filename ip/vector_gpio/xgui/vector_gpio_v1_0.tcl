# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_VECTOR_LSB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VECTOR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_GPIO_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_GPIO_WIDTH { PARAM_VALUE.C_GPIO_WIDTH } {
	# Procedure called to update C_GPIO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_GPIO_WIDTH { PARAM_VALUE.C_GPIO_WIDTH } {
	# Procedure called to validate C_GPIO_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VECTOR_LSB { PARAM_VALUE.C_VECTOR_LSB } {
	# Procedure called to update C_VECTOR_LSB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VECTOR_LSB { PARAM_VALUE.C_VECTOR_LSB } {
	# Procedure called to validate C_VECTOR_LSB
	return true
}

proc update_PARAM_VALUE.C_VECTOR_WIDTH { PARAM_VALUE.C_VECTOR_WIDTH } {
	# Procedure called to update C_VECTOR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VECTOR_WIDTH { PARAM_VALUE.C_VECTOR_WIDTH } {
	# Procedure called to validate C_VECTOR_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_VECTOR_LSB { MODELPARAM_VALUE.C_VECTOR_LSB PARAM_VALUE.C_VECTOR_LSB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VECTOR_LSB}] ${MODELPARAM_VALUE.C_VECTOR_LSB}
}

proc update_MODELPARAM_VALUE.C_VECTOR_WIDTH { MODELPARAM_VALUE.C_VECTOR_WIDTH PARAM_VALUE.C_VECTOR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VECTOR_WIDTH}] ${MODELPARAM_VALUE.C_VECTOR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_GPIO_WIDTH { MODELPARAM_VALUE.C_GPIO_WIDTH PARAM_VALUE.C_GPIO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_GPIO_WIDTH}] ${MODELPARAM_VALUE.C_GPIO_WIDTH}
}

