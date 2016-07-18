set C_TypeInfoList {{ 
"mmult" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_A": [[], {"array": [ {"scalar": "float"}, [1024]]}] }, {"in_B": [[], {"array": [ {"scalar": "float"}, [1024]]}] }, {"out_C": [[], {"array": [ {"scalar": "float"}, [1024]]}] }],[],""]
}}
set moduleName mmult
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {mmult}
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_A float 32 regular {fifo 0 volatile }  }
	{ in_B float 32 regular {fifo 0 volatile }  }
	{ out_C float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_A", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_A","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "in_B", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_B","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "out_C", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_C","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_A_dout sc_in sc_lv 32 signal 0 } 
	{ in_A_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_A_read sc_out sc_logic 1 signal 0 } 
	{ in_B_dout sc_in sc_lv 32 signal 1 } 
	{ in_B_empty_n sc_in sc_logic 1 signal 1 } 
	{ in_B_read sc_out sc_logic 1 signal 1 } 
	{ out_C_din sc_out sc_lv 32 signal 2 } 
	{ out_C_full_n sc_in sc_logic 1 signal 2 } 
	{ out_C_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_A_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A", "role": "dout" }} , 
 	{ "name": "in_A_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A", "role": "empty_n" }} , 
 	{ "name": "in_A_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A", "role": "read" }} , 
 	{ "name": "in_B_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_B", "role": "dout" }} , 
 	{ "name": "in_B_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_B", "role": "empty_n" }} , 
 	{ "name": "in_B_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_B", "role": "read" }} , 
 	{ "name": "out_C_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_C", "role": "din" }} , 
 	{ "name": "out_C_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_C", "role": "full_n" }} , 
 	{ "name": "out_C_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_C", "role": "write" }}  ]}
set Spec2ImplPortList { 
	in_A { ap_fifo {  { in_A_dout fifo_data 0 32 }  { in_A_empty_n fifo_status 0 1 }  { in_A_read fifo_update 1 1 } } }
	in_B { ap_fifo {  { in_B_dout fifo_data 0 32 }  { in_B_empty_n fifo_status 0 1 }  { in_B_read fifo_update 1 1 } } }
	out_C { ap_fifo {  { out_C_din fifo_data 1 32 }  { out_C_full_n fifo_status 0 1 }  { out_C_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_A { fifo_read 1024 no_conditional }
	in_B { fifo_read 1024 no_conditional }
	out_C { fifo_write 1024 no_conditional }
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
