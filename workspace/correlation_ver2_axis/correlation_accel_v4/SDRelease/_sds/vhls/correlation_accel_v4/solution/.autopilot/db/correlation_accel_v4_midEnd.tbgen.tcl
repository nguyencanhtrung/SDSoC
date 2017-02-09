set moduleName correlation_accel_v4_midEnd
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName correlation_accel_v4_midEnd
set C_modelType { void 0 }
set C_modelArgList { 
	{ NUMBER_OF_DAYS int 32 regular {fifo 0}  }
	{ NUMBER_OF_INDICES int 32 regular {fifo 0}  }
	{ ln_returnA_in_V float 32 regular {fifo 0 volatile }  }
	{ weight_returnSquareA_in_V float 32 regular {fifo 0 volatile }  }
	{ weight_returnA_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_weight_in_V float 32 regular {fifo 0 volatile }  }
	{ ln_returnB_in_V float 32 regular {fifo 0 volatile }  }
	{ weight_returnSquareB_in_V float 32 regular {fifo 0 volatile }  }
	{ weight_returnB_in_V float 32 regular {fifo 0 volatile }  }
	{ weight_returnA_returnB_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_weight_out_V float 32 regular {fifo 1 volatile }  }
	{ sum_return_out_V float 32 regular {fifo 1 volatile }  }
	{ sum_weight_returnSquare_out_V float 32 regular {fifo 1 volatile }  }
	{ sum_weight_return_out_V float 32 regular {fifo 1 volatile }  }
	{ sum_weight_returnA_returnB_out float 32 regular {fifo 1 volatile }  }
	{ sum_returnA_out_V float 32 regular {fifo 1 volatile }  }
	{ sum_weight_returnSquareA_out_V float 32 regular {fifo 1 volatile }  }
	{ sum_weight_returnA_out_V float 32 regular {fifo 1 volatile }  }
	{ NUMBER_OF_DAYS_out int 32 regular {fifo 1}  }
	{ NUMBER_OF_INDICES_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "NUMBER_OF_DAYS", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_INDICES", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "ln_returnA_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnSquareA_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnA_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "ln_returnB_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnSquareB_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnB_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnA_returnB_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_out_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_return_out_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnSquare_out_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_return_out_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnA_returnB_out", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_returnA_out_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnSquareA_out_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnA_out_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_DAYS_out", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_INDICES_out", "interface" : "fifo", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ NUMBER_OF_DAYS_dout sc_in sc_lv 32 signal 0 } 
	{ NUMBER_OF_DAYS_empty_n sc_in sc_logic 1 signal 0 } 
	{ NUMBER_OF_DAYS_read sc_out sc_logic 1 signal 0 } 
	{ NUMBER_OF_INDICES_dout sc_in sc_lv 32 signal 1 } 
	{ NUMBER_OF_INDICES_empty_n sc_in sc_logic 1 signal 1 } 
	{ NUMBER_OF_INDICES_read sc_out sc_logic 1 signal 1 } 
	{ ln_returnA_in_V_dout sc_in sc_lv 32 signal 2 } 
	{ ln_returnA_in_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ ln_returnA_in_V_read sc_out sc_logic 1 signal 2 } 
	{ weight_returnSquareA_in_V_dout sc_in sc_lv 32 signal 3 } 
	{ weight_returnSquareA_in_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ weight_returnSquareA_in_V_read sc_out sc_logic 1 signal 3 } 
	{ weight_returnA_in_V_dout sc_in sc_lv 32 signal 4 } 
	{ weight_returnA_in_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ weight_returnA_in_V_read sc_out sc_logic 1 signal 4 } 
	{ sum_weight_in_V_dout sc_in sc_lv 32 signal 5 } 
	{ sum_weight_in_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ sum_weight_in_V_read sc_out sc_logic 1 signal 5 } 
	{ ln_returnB_in_V_dout sc_in sc_lv 32 signal 6 } 
	{ ln_returnB_in_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ ln_returnB_in_V_read sc_out sc_logic 1 signal 6 } 
	{ weight_returnSquareB_in_V_dout sc_in sc_lv 32 signal 7 } 
	{ weight_returnSquareB_in_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ weight_returnSquareB_in_V_read sc_out sc_logic 1 signal 7 } 
	{ weight_returnB_in_V_dout sc_in sc_lv 32 signal 8 } 
	{ weight_returnB_in_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ weight_returnB_in_V_read sc_out sc_logic 1 signal 8 } 
	{ weight_returnA_returnB_in_V_dout sc_in sc_lv 32 signal 9 } 
	{ weight_returnA_returnB_in_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ weight_returnA_returnB_in_V_read sc_out sc_logic 1 signal 9 } 
	{ sum_weight_out_V_din sc_out sc_lv 32 signal 10 } 
	{ sum_weight_out_V_full_n sc_in sc_logic 1 signal 10 } 
	{ sum_weight_out_V_write sc_out sc_logic 1 signal 10 } 
	{ sum_return_out_V_din sc_out sc_lv 32 signal 11 } 
	{ sum_return_out_V_full_n sc_in sc_logic 1 signal 11 } 
	{ sum_return_out_V_write sc_out sc_logic 1 signal 11 } 
	{ sum_weight_returnSquare_out_V_din sc_out sc_lv 32 signal 12 } 
	{ sum_weight_returnSquare_out_V_full_n sc_in sc_logic 1 signal 12 } 
	{ sum_weight_returnSquare_out_V_write sc_out sc_logic 1 signal 12 } 
	{ sum_weight_return_out_V_din sc_out sc_lv 32 signal 13 } 
	{ sum_weight_return_out_V_full_n sc_in sc_logic 1 signal 13 } 
	{ sum_weight_return_out_V_write sc_out sc_logic 1 signal 13 } 
	{ sum_weight_returnA_returnB_out_din sc_out sc_lv 32 signal 14 } 
	{ sum_weight_returnA_returnB_out_full_n sc_in sc_logic 1 signal 14 } 
	{ sum_weight_returnA_returnB_out_write sc_out sc_logic 1 signal 14 } 
	{ sum_returnA_out_V_din sc_out sc_lv 32 signal 15 } 
	{ sum_returnA_out_V_full_n sc_in sc_logic 1 signal 15 } 
	{ sum_returnA_out_V_write sc_out sc_logic 1 signal 15 } 
	{ sum_weight_returnSquareA_out_V_din sc_out sc_lv 32 signal 16 } 
	{ sum_weight_returnSquareA_out_V_full_n sc_in sc_logic 1 signal 16 } 
	{ sum_weight_returnSquareA_out_V_write sc_out sc_logic 1 signal 16 } 
	{ sum_weight_returnA_out_V_din sc_out sc_lv 32 signal 17 } 
	{ sum_weight_returnA_out_V_full_n sc_in sc_logic 1 signal 17 } 
	{ sum_weight_returnA_out_V_write sc_out sc_logic 1 signal 17 } 
	{ NUMBER_OF_DAYS_out_din sc_out sc_lv 32 signal 18 } 
	{ NUMBER_OF_DAYS_out_full_n sc_in sc_logic 1 signal 18 } 
	{ NUMBER_OF_DAYS_out_write sc_out sc_logic 1 signal 18 } 
	{ NUMBER_OF_INDICES_out_din sc_out sc_lv 32 signal 19 } 
	{ NUMBER_OF_INDICES_out_full_n sc_in sc_logic 1 signal 19 } 
	{ NUMBER_OF_INDICES_out_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "NUMBER_OF_DAYS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS", "role": "dout" }} , 
 	{ "name": "NUMBER_OF_DAYS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS", "role": "empty_n" }} , 
 	{ "name": "NUMBER_OF_DAYS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS", "role": "read" }} , 
 	{ "name": "NUMBER_OF_INDICES_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES", "role": "dout" }} , 
 	{ "name": "NUMBER_OF_INDICES_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES", "role": "empty_n" }} , 
 	{ "name": "NUMBER_OF_INDICES_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES", "role": "read" }} , 
 	{ "name": "ln_returnA_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_returnA_in_V", "role": "dout" }} , 
 	{ "name": "ln_returnA_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnA_in_V", "role": "empty_n" }} , 
 	{ "name": "ln_returnA_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnA_in_V", "role": "read" }} , 
 	{ "name": "weight_returnSquareA_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnSquareA_in_V", "role": "dout" }} , 
 	{ "name": "weight_returnSquareA_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareA_in_V", "role": "empty_n" }} , 
 	{ "name": "weight_returnSquareA_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareA_in_V", "role": "read" }} , 
 	{ "name": "weight_returnA_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnA_in_V", "role": "dout" }} , 
 	{ "name": "weight_returnA_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_in_V", "role": "empty_n" }} , 
 	{ "name": "weight_returnA_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_in_V", "role": "read" }} , 
 	{ "name": "sum_weight_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_in_V", "role": "dout" }} , 
 	{ "name": "sum_weight_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_weight_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_in_V", "role": "read" }} , 
 	{ "name": "ln_returnB_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_returnB_in_V", "role": "dout" }} , 
 	{ "name": "ln_returnB_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnB_in_V", "role": "empty_n" }} , 
 	{ "name": "ln_returnB_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnB_in_V", "role": "read" }} , 
 	{ "name": "weight_returnSquareB_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnSquareB_in_V", "role": "dout" }} , 
 	{ "name": "weight_returnSquareB_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareB_in_V", "role": "empty_n" }} , 
 	{ "name": "weight_returnSquareB_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareB_in_V", "role": "read" }} , 
 	{ "name": "weight_returnB_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnB_in_V", "role": "dout" }} , 
 	{ "name": "weight_returnB_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnB_in_V", "role": "empty_n" }} , 
 	{ "name": "weight_returnB_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnB_in_V", "role": "read" }} , 
 	{ "name": "weight_returnA_returnB_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnA_returnB_in_V", "role": "dout" }} , 
 	{ "name": "weight_returnA_returnB_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_returnB_in_V", "role": "empty_n" }} , 
 	{ "name": "weight_returnA_returnB_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_returnB_in_V", "role": "read" }} , 
 	{ "name": "sum_weight_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_out_V", "role": "din" }} , 
 	{ "name": "sum_weight_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_out_V", "role": "full_n" }} , 
 	{ "name": "sum_weight_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_out_V", "role": "write" }} , 
 	{ "name": "sum_return_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_return_out_V", "role": "din" }} , 
 	{ "name": "sum_return_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_return_out_V", "role": "full_n" }} , 
 	{ "name": "sum_return_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_return_out_V", "role": "write" }} , 
 	{ "name": "sum_weight_returnSquare_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnSquare_out_V", "role": "din" }} , 
 	{ "name": "sum_weight_returnSquare_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquare_out_V", "role": "full_n" }} , 
 	{ "name": "sum_weight_returnSquare_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquare_out_V", "role": "write" }} , 
 	{ "name": "sum_weight_return_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_return_out_V", "role": "din" }} , 
 	{ "name": "sum_weight_return_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_return_out_V", "role": "full_n" }} , 
 	{ "name": "sum_weight_return_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_return_out_V", "role": "write" }} , 
 	{ "name": "sum_weight_returnA_returnB_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnA_returnB_out", "role": "din" }} , 
 	{ "name": "sum_weight_returnA_returnB_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_returnB_out", "role": "full_n" }} , 
 	{ "name": "sum_weight_returnA_returnB_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_returnB_out", "role": "write" }} , 
 	{ "name": "sum_returnA_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_returnA_out_V", "role": "din" }} , 
 	{ "name": "sum_returnA_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_returnA_out_V", "role": "full_n" }} , 
 	{ "name": "sum_returnA_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_returnA_out_V", "role": "write" }} , 
 	{ "name": "sum_weight_returnSquareA_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnSquareA_out_V", "role": "din" }} , 
 	{ "name": "sum_weight_returnSquareA_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquareA_out_V", "role": "full_n" }} , 
 	{ "name": "sum_weight_returnSquareA_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquareA_out_V", "role": "write" }} , 
 	{ "name": "sum_weight_returnA_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnA_out_V", "role": "din" }} , 
 	{ "name": "sum_weight_returnA_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_out_V", "role": "full_n" }} , 
 	{ "name": "sum_weight_returnA_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_out_V", "role": "write" }} , 
 	{ "name": "NUMBER_OF_DAYS_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out", "role": "din" }} , 
 	{ "name": "NUMBER_OF_DAYS_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out", "role": "full_n" }} , 
 	{ "name": "NUMBER_OF_DAYS_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out", "role": "write" }} , 
 	{ "name": "NUMBER_OF_INDICES_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out", "role": "din" }} , 
 	{ "name": "NUMBER_OF_INDICES_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out", "role": "full_n" }} , 
 	{ "name": "NUMBER_OF_INDICES_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out", "role": "write" }}  ]}
set Spec2ImplPortList { 
	NUMBER_OF_DAYS { ap_fifo {  { NUMBER_OF_DAYS_dout fifo_data 0 32 }  { NUMBER_OF_DAYS_empty_n fifo_status 0 1 }  { NUMBER_OF_DAYS_read fifo_update 1 1 } } }
	NUMBER_OF_INDICES { ap_fifo {  { NUMBER_OF_INDICES_dout fifo_data 0 32 }  { NUMBER_OF_INDICES_empty_n fifo_status 0 1 }  { NUMBER_OF_INDICES_read fifo_update 1 1 } } }
	ln_returnA_in_V { ap_fifo {  { ln_returnA_in_V_dout fifo_data 0 32 }  { ln_returnA_in_V_empty_n fifo_status 0 1 }  { ln_returnA_in_V_read fifo_update 1 1 } } }
	weight_returnSquareA_in_V { ap_fifo {  { weight_returnSquareA_in_V_dout fifo_data 0 32 }  { weight_returnSquareA_in_V_empty_n fifo_status 0 1 }  { weight_returnSquareA_in_V_read fifo_update 1 1 } } }
	weight_returnA_in_V { ap_fifo {  { weight_returnA_in_V_dout fifo_data 0 32 }  { weight_returnA_in_V_empty_n fifo_status 0 1 }  { weight_returnA_in_V_read fifo_update 1 1 } } }
	sum_weight_in_V { ap_fifo {  { sum_weight_in_V_dout fifo_data 0 32 }  { sum_weight_in_V_empty_n fifo_status 0 1 }  { sum_weight_in_V_read fifo_update 1 1 } } }
	ln_returnB_in_V { ap_fifo {  { ln_returnB_in_V_dout fifo_data 0 32 }  { ln_returnB_in_V_empty_n fifo_status 0 1 }  { ln_returnB_in_V_read fifo_update 1 1 } } }
	weight_returnSquareB_in_V { ap_fifo {  { weight_returnSquareB_in_V_dout fifo_data 0 32 }  { weight_returnSquareB_in_V_empty_n fifo_status 0 1 }  { weight_returnSquareB_in_V_read fifo_update 1 1 } } }
	weight_returnB_in_V { ap_fifo {  { weight_returnB_in_V_dout fifo_data 0 32 }  { weight_returnB_in_V_empty_n fifo_status 0 1 }  { weight_returnB_in_V_read fifo_update 1 1 } } }
	weight_returnA_returnB_in_V { ap_fifo {  { weight_returnA_returnB_in_V_dout fifo_data 0 32 }  { weight_returnA_returnB_in_V_empty_n fifo_status 0 1 }  { weight_returnA_returnB_in_V_read fifo_update 1 1 } } }
	sum_weight_out_V { ap_fifo {  { sum_weight_out_V_din fifo_data 1 32 }  { sum_weight_out_V_full_n fifo_status 0 1 }  { sum_weight_out_V_write fifo_update 1 1 } } }
	sum_return_out_V { ap_fifo {  { sum_return_out_V_din fifo_data 1 32 }  { sum_return_out_V_full_n fifo_status 0 1 }  { sum_return_out_V_write fifo_update 1 1 } } }
	sum_weight_returnSquare_out_V { ap_fifo {  { sum_weight_returnSquare_out_V_din fifo_data 1 32 }  { sum_weight_returnSquare_out_V_full_n fifo_status 0 1 }  { sum_weight_returnSquare_out_V_write fifo_update 1 1 } } }
	sum_weight_return_out_V { ap_fifo {  { sum_weight_return_out_V_din fifo_data 1 32 }  { sum_weight_return_out_V_full_n fifo_status 0 1 }  { sum_weight_return_out_V_write fifo_update 1 1 } } }
	sum_weight_returnA_returnB_out { ap_fifo {  { sum_weight_returnA_returnB_out_din fifo_data 1 32 }  { sum_weight_returnA_returnB_out_full_n fifo_status 0 1 }  { sum_weight_returnA_returnB_out_write fifo_update 1 1 } } }
	sum_returnA_out_V { ap_fifo {  { sum_returnA_out_V_din fifo_data 1 32 }  { sum_returnA_out_V_full_n fifo_status 0 1 }  { sum_returnA_out_V_write fifo_update 1 1 } } }
	sum_weight_returnSquareA_out_V { ap_fifo {  { sum_weight_returnSquareA_out_V_din fifo_data 1 32 }  { sum_weight_returnSquareA_out_V_full_n fifo_status 0 1 }  { sum_weight_returnSquareA_out_V_write fifo_update 1 1 } } }
	sum_weight_returnA_out_V { ap_fifo {  { sum_weight_returnA_out_V_din fifo_data 1 32 }  { sum_weight_returnA_out_V_full_n fifo_status 0 1 }  { sum_weight_returnA_out_V_write fifo_update 1 1 } } }
	NUMBER_OF_DAYS_out { ap_fifo {  { NUMBER_OF_DAYS_out_din fifo_data 1 32 }  { NUMBER_OF_DAYS_out_full_n fifo_status 0 1 }  { NUMBER_OF_DAYS_out_write fifo_update 1 1 } } }
	NUMBER_OF_INDICES_out { ap_fifo {  { NUMBER_OF_INDICES_out_din fifo_data 1 32 }  { NUMBER_OF_INDICES_out_full_n fifo_status 0 1 }  { NUMBER_OF_INDICES_out_write fifo_update 1 1 } } }
}
