set moduleName correlation_accel_v4
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName correlation_accel_v4
set C_modelType { void 0 }
set C_modelArgList { 
	{ number_of_days int 32 regular  }
	{ number_of_indices int 32 regular  }
	{ in_indices_data_V int 32 regular {axi_s 0 volatile  { in_indices data } }  }
	{ in_indices_keep_V int 4 regular {axi_s 0 volatile  { in_indices keep } }  }
	{ in_indices_strb_V int 4 regular {axi_s 0 volatile  { in_indices strb } }  }
	{ in_indices_user_V int 1 regular {axi_s 0 volatile  { in_indices user } }  }
	{ in_indices_last_V int 1 regular {axi_s 0 volatile  { in_indices last } }  }
	{ in_indices_id_V int 1 regular {axi_s 0 volatile  { in_indices id } }  }
	{ in_indices_dest_V int 1 regular {axi_s 0 volatile  { in_indices dest } }  }
	{ out_correlation_data_V int 32 regular {axi_s 1 volatile  { out_correlation data } }  }
	{ out_correlation_keep_V int 4 regular {axi_s 1 volatile  { out_correlation keep } }  }
	{ out_correlation_strb_V int 4 regular {axi_s 1 volatile  { out_correlation strb } }  }
	{ out_correlation_user_V int 1 regular {axi_s 1 volatile  { out_correlation user } }  }
	{ out_correlation_last_V int 1 regular {axi_s 1 volatile  { out_correlation last } }  }
	{ out_correlation_id_V int 1 regular {axi_s 1 volatile  { out_correlation id } }  }
	{ out_correlation_dest_V int 1 regular {axi_s 1 volatile  { out_correlation dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "number_of_days", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "number_of_days","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "number_of_indices", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "number_of_indices","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "in_indices_data_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_indices.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_indices_keep_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_indices.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_indices_strb_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_indices.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_indices_user_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_indices.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_indices_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_indices.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_indices_id_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_indices.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_indices_dest_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_indices.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]}]}]} , 
 	{ "Name" : "out_correlation_data_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_correlation.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} , 
 	{ "Name" : "out_correlation_keep_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_correlation.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} , 
 	{ "Name" : "out_correlation_strb_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_correlation.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} , 
 	{ "Name" : "out_correlation_user_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_correlation.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} , 
 	{ "Name" : "out_correlation_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_correlation.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} , 
 	{ "Name" : "out_correlation_id_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_correlation.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} , 
 	{ "Name" : "out_correlation_dest_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_correlation.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ number_of_days sc_in sc_lv 32 signal 0 } 
	{ number_of_indices sc_in sc_lv 32 signal 1 } 
	{ in_indices_TDATA sc_in sc_lv 32 signal 2 } 
	{ in_indices_TKEEP sc_in sc_lv 4 signal 3 } 
	{ in_indices_TSTRB sc_in sc_lv 4 signal 4 } 
	{ in_indices_TUSER sc_in sc_lv 1 signal 5 } 
	{ in_indices_TLAST sc_in sc_lv 1 signal 6 } 
	{ in_indices_TID sc_in sc_lv 1 signal 7 } 
	{ in_indices_TDEST sc_in sc_lv 1 signal 8 } 
	{ out_correlation_TDATA sc_out sc_lv 32 signal 9 } 
	{ out_correlation_TKEEP sc_out sc_lv 4 signal 10 } 
	{ out_correlation_TSTRB sc_out sc_lv 4 signal 11 } 
	{ out_correlation_TUSER sc_out sc_lv 1 signal 12 } 
	{ out_correlation_TLAST sc_out sc_lv 1 signal 13 } 
	{ out_correlation_TID sc_out sc_lv 1 signal 14 } 
	{ out_correlation_TDEST sc_out sc_lv 1 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_indices_TVALID sc_in sc_logic 1 invld 8 } 
	{ in_indices_TREADY sc_out sc_logic 1 inacc 8 } 
	{ out_correlation_TVALID sc_out sc_logic 1 outvld 15 } 
	{ out_correlation_TREADY sc_in sc_logic 1 outacc 15 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "number_of_days", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "number_of_days", "role": "default" }} , 
 	{ "name": "number_of_indices", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "number_of_indices", "role": "default" }} , 
 	{ "name": "in_indices_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_indices_data_V", "role": "default" }} , 
 	{ "name": "in_indices_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_indices_keep_V", "role": "default" }} , 
 	{ "name": "in_indices_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_indices_strb_V", "role": "default" }} , 
 	{ "name": "in_indices_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_user_V", "role": "default" }} , 
 	{ "name": "in_indices_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_last_V", "role": "default" }} , 
 	{ "name": "in_indices_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_id_V", "role": "default" }} , 
 	{ "name": "in_indices_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_dest_V", "role": "default" }} , 
 	{ "name": "out_correlation_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_correlation_data_V", "role": "default" }} , 
 	{ "name": "out_correlation_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_correlation_keep_V", "role": "default" }} , 
 	{ "name": "out_correlation_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_correlation_strb_V", "role": "default" }} , 
 	{ "name": "out_correlation_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_user_V", "role": "default" }} , 
 	{ "name": "out_correlation_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_last_V", "role": "default" }} , 
 	{ "name": "out_correlation_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_id_V", "role": "default" }} , 
 	{ "name": "out_correlation_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_indices_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_indices_dest_V", "role": "default" }} , 
 	{ "name": "in_indices_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_indices_dest_V", "role": "default" }} , 
 	{ "name": "out_correlation_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_correlation_dest_V", "role": "default" }} , 
 	{ "name": "out_correlation_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_correlation_dest_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}
set Spec2ImplPortList { 
	number_of_days { ap_none {  { number_of_days in_data 0 32 } } }
	number_of_indices { ap_none {  { number_of_indices in_data 0 32 } } }
	in_indices_data_V { axis {  { in_indices_TDATA in_data 0 32 } } }
	in_indices_keep_V { axis {  { in_indices_TKEEP in_data 0 4 } } }
	in_indices_strb_V { axis {  { in_indices_TSTRB in_data 0 4 } } }
	in_indices_user_V { axis {  { in_indices_TUSER in_data 0 1 } } }
	in_indices_last_V { axis {  { in_indices_TLAST in_data 0 1 } } }
	in_indices_id_V { axis {  { in_indices_TID in_data 0 1 } } }
	in_indices_dest_V { axis {  { in_indices_TDEST in_data 0 1 }  { in_indices_TVALID in_vld 0 1 }  { in_indices_TREADY in_acc 1 1 } } }
	out_correlation_data_V { axis {  { out_correlation_TDATA out_data 1 32 } } }
	out_correlation_keep_V { axis {  { out_correlation_TKEEP out_data 1 4 } } }
	out_correlation_strb_V { axis {  { out_correlation_TSTRB out_data 1 4 } } }
	out_correlation_user_V { axis {  { out_correlation_TUSER out_data 1 1 } } }
	out_correlation_last_V { axis {  { out_correlation_TLAST out_data 1 1 } } }
	out_correlation_id_V { axis {  { out_correlation_TID out_data 1 1 } } }
	out_correlation_dest_V { axis {  { out_correlation_TDEST out_data 1 1 }  { out_correlation_TVALID out_vld 1 1 }  { out_correlation_TREADY out_acc 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
