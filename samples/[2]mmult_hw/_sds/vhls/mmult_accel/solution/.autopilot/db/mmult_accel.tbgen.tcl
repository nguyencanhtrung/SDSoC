set moduleName mmult_accel
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName mmult_accel
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_A float 32 regular {bram 1024 { 1 } 1 1 }  }
	{ in_B float 32 regular {bram 1024 { 1 } 1 1 }  }
	{ out_C float 32 regular {bram 1024 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_A", "interface" : "bram", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_A","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "in_B", "interface" : "bram", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_B","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "out_C", "interface" : "bram", "bitwidth" : 32 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_C","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_A_Addr_A sc_out sc_lv 32 signal 0 } 
	{ in_A_EN_A sc_out sc_logic 1 signal 0 } 
	{ in_A_WEN_A sc_out sc_lv 4 signal 0 } 
	{ in_A_Din_A sc_out sc_lv 32 signal 0 } 
	{ in_A_Dout_A sc_in sc_lv 32 signal 0 } 
	{ in_A_Clk_A sc_out sc_logic 1 signal 0 } 
	{ in_A_Rst_A sc_out sc_logic 1 signal 0 } 
	{ in_B_Addr_A sc_out sc_lv 32 signal 1 } 
	{ in_B_EN_A sc_out sc_logic 1 signal 1 } 
	{ in_B_WEN_A sc_out sc_lv 4 signal 1 } 
	{ in_B_Din_A sc_out sc_lv 32 signal 1 } 
	{ in_B_Dout_A sc_in sc_lv 32 signal 1 } 
	{ in_B_Clk_A sc_out sc_logic 1 signal 1 } 
	{ in_B_Rst_A sc_out sc_logic 1 signal 1 } 
	{ out_C_Addr_A sc_out sc_lv 32 signal 2 } 
	{ out_C_EN_A sc_out sc_logic 1 signal 2 } 
	{ out_C_WEN_A sc_out sc_lv 4 signal 2 } 
	{ out_C_Din_A sc_out sc_lv 32 signal 2 } 
	{ out_C_Dout_A sc_in sc_lv 32 signal 2 } 
	{ out_C_Clk_A sc_out sc_logic 1 signal 2 } 
	{ out_C_Rst_A sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_A_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A", "role": "Addr_A" }} , 
 	{ "name": "in_A_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A", "role": "EN_A" }} , 
 	{ "name": "in_A_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_A", "role": "WEN_A" }} , 
 	{ "name": "in_A_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A", "role": "Din_A" }} , 
 	{ "name": "in_A_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A", "role": "Dout_A" }} , 
 	{ "name": "in_A_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A", "role": "Clk_A" }} , 
 	{ "name": "in_A_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A", "role": "Rst_A" }} , 
 	{ "name": "in_B_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_B", "role": "Addr_A" }} , 
 	{ "name": "in_B_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_B", "role": "EN_A" }} , 
 	{ "name": "in_B_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_B", "role": "WEN_A" }} , 
 	{ "name": "in_B_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_B", "role": "Din_A" }} , 
 	{ "name": "in_B_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_B", "role": "Dout_A" }} , 
 	{ "name": "in_B_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_B", "role": "Clk_A" }} , 
 	{ "name": "in_B_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_B", "role": "Rst_A" }} , 
 	{ "name": "out_C_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_C", "role": "Addr_A" }} , 
 	{ "name": "out_C_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_C", "role": "EN_A" }} , 
 	{ "name": "out_C_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_C", "role": "WEN_A" }} , 
 	{ "name": "out_C_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_C", "role": "Din_A" }} , 
 	{ "name": "out_C_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_C", "role": "Dout_A" }} , 
 	{ "name": "out_C_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_C", "role": "Clk_A" }} , 
 	{ "name": "out_C_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_C", "role": "Rst_A" }}  ]}
set Spec2ImplPortList { 
	in_A { bram {  { in_A_Addr_A mem_address 1 32 }  { in_A_EN_A mem_ce 1 1 }  { in_A_WEN_A mem_we 1 4 }  { in_A_Din_A mem_din 1 32 }  { in_A_Dout_A mem_dout 0 32 }  { in_A_Clk_A mem_clk 1 1 }  { in_A_Rst_A mem_rst 1 1 } } }
	in_B { bram {  { in_B_Addr_A mem_address 1 32 }  { in_B_EN_A mem_ce 1 1 }  { in_B_WEN_A mem_we 1 4 }  { in_B_Din_A mem_din 1 32 }  { in_B_Dout_A mem_dout 0 32 }  { in_B_Clk_A mem_clk 1 1 }  { in_B_Rst_A mem_rst 1 1 } } }
	out_C { bram {  { out_C_Addr_A mem_address 1 32 }  { out_C_EN_A mem_ce 1 1 }  { out_C_WEN_A mem_we 1 4 }  { out_C_Din_A mem_din 1 32 }  { out_C_Dout_A mem_dout 0 32 }  { out_C_Clk_A mem_clk 1 1 }  { out_C_Rst_A mem_rst 1 1 } } }
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
