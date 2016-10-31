set moduleName correlation_accel_v1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName correlation_accel_v1
set C_modelType { int 32 }
set C_modelArgList { 
	{ gmem32 float 32 regular {axi_master 2}  }
	{ number_of_days int 32 regular  }
	{ number_of_indices int 32 regular  }
	{ in_indices int 32 regular  }
	{ out_correlation int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem32", "interface" : "axi_master", "bitwidth" : 32 ,"direction" : "READWRITE" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_indices","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "in_indices"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 2519999,"step" : 1}]},{"cName": "out_correlation","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "out_correlation"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 49994999,"step" : 1}]}]}]} , 
 	{ "Name" : "number_of_days", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "number_of_days","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "number_of_indices", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "number_of_indices","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "in_indices", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "out_correlation", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem32_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem32_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem32_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem32_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem32_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem32_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem32_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem32_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem32_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem32_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem32_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem32_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem32_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem32_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem32_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem32_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem32_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem32_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem32_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem32_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem32_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem32_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem32_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem32_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem32_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem32_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem32_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem32_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem32_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem32_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem32_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem32_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem32_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem32_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem32_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem32_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem32_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem32_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem32_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem32_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem32_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem32_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem32_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem32_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem32_BUSER sc_in sc_lv 1 signal 0 } 
	{ number_of_days sc_in sc_lv 32 signal 1 } 
	{ number_of_indices sc_in sc_lv 32 signal 2 } 
	{ in_indices sc_in sc_lv 32 signal 3 } 
	{ out_correlation sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem32_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem32_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem32_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem32", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem32_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem32_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem32", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem32_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem32", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem32_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem32", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem32_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem32", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem32_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem32", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem32_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem32", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem32_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem32", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem32_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem32", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem32_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem32_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem32_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem32_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem32", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem32_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem32", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem32_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem32_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "WID" }} , 
 	{ "name": "m_axi_gmem32_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem32_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem32_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem32_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem32", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem32_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem32_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem32", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem32_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem32", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem32_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem32", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem32_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem32", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem32_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem32", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem32_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem32", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem32_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem32", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem32_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem32", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem32_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem32_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem32_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem32_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem32", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem32_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem32_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "RID" }} , 
 	{ "name": "m_axi_gmem32_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem32_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem32", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem32_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem32_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem32_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem32", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem32_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "BID" }} , 
 	{ "name": "m_axi_gmem32_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem32", "role": "BUSER" }} , 
 	{ "name": "number_of_days", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "number_of_days", "role": "default" }} , 
 	{ "name": "number_of_indices", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "number_of_indices", "role": "default" }} , 
 	{ "name": "in_indices", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_indices", "role": "default" }} , 
 	{ "name": "out_correlation", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_correlation", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	gmem32 { m_axi {  { m_axi_gmem32_AWVALID VALID 1 1 }  { m_axi_gmem32_AWREADY READY 0 1 }  { m_axi_gmem32_AWADDR ADDR 1 32 }  { m_axi_gmem32_AWID ID 1 1 }  { m_axi_gmem32_AWLEN LEN 1 8 }  { m_axi_gmem32_AWSIZE SIZE 1 3 }  { m_axi_gmem32_AWBURST BURST 1 2 }  { m_axi_gmem32_AWLOCK LOCK 1 2 }  { m_axi_gmem32_AWCACHE CACHE 1 4 }  { m_axi_gmem32_AWPROT PROT 1 3 }  { m_axi_gmem32_AWQOS QOS 1 4 }  { m_axi_gmem32_AWREGION REGION 1 4 }  { m_axi_gmem32_AWUSER USER 1 1 }  { m_axi_gmem32_WVALID VALID 1 1 }  { m_axi_gmem32_WREADY READY 0 1 }  { m_axi_gmem32_WDATA DATA 1 32 }  { m_axi_gmem32_WSTRB STRB 1 4 }  { m_axi_gmem32_WLAST LAST 1 1 }  { m_axi_gmem32_WID ID 1 1 }  { m_axi_gmem32_WUSER USER 1 1 }  { m_axi_gmem32_ARVALID VALID 1 1 }  { m_axi_gmem32_ARREADY READY 0 1 }  { m_axi_gmem32_ARADDR ADDR 1 32 }  { m_axi_gmem32_ARID ID 1 1 }  { m_axi_gmem32_ARLEN LEN 1 8 }  { m_axi_gmem32_ARSIZE SIZE 1 3 }  { m_axi_gmem32_ARBURST BURST 1 2 }  { m_axi_gmem32_ARLOCK LOCK 1 2 }  { m_axi_gmem32_ARCACHE CACHE 1 4 }  { m_axi_gmem32_ARPROT PROT 1 3 }  { m_axi_gmem32_ARQOS QOS 1 4 }  { m_axi_gmem32_ARREGION REGION 1 4 }  { m_axi_gmem32_ARUSER USER 1 1 }  { m_axi_gmem32_RVALID VALID 0 1 }  { m_axi_gmem32_RREADY READY 1 1 }  { m_axi_gmem32_RDATA DATA 0 32 }  { m_axi_gmem32_RLAST LAST 0 1 }  { m_axi_gmem32_RID ID 0 1 }  { m_axi_gmem32_RUSER USER 0 1 }  { m_axi_gmem32_RRESP RESP 0 2 }  { m_axi_gmem32_BVALID VALID 0 1 }  { m_axi_gmem32_BREADY READY 1 1 }  { m_axi_gmem32_BRESP RESP 0 2 }  { m_axi_gmem32_BID ID 0 1 }  { m_axi_gmem32_BUSER USER 0 1 } } }
	number_of_days { ap_none {  { number_of_days in_data 0 32 } } }
	number_of_indices { ap_none {  { number_of_indices in_data 0 32 } } }
	in_indices { ap_none {  { in_indices in_data 0 32 } } }
	out_correlation { ap_none {  { out_correlation in_data 0 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem32 5 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem32 5 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
