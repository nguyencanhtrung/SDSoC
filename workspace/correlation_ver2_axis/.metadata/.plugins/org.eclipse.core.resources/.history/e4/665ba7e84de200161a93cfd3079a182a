set moduleName correlation_accel_v3_backEnd
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName correlation_accel_v3_backEnd
set C_modelType { void 0 }
set C_modelArgList { 
	{ NUMBER_OF_DAYS int 32 regular {fifo 0}  }
	{ NUMBER_OF_INDICES int 32 regular {fifo 0}  }
	{ sum_weight_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_return_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_weight_returnSquare_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_weight_return_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_weight_returnA_returnB_in_s float 32 regular {fifo 0 volatile }  }
	{ sum_returnA_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_weight_returnSquareA_in_V float 32 regular {fifo 0 volatile }  }
	{ sum_weight_returnA_in_V float 32 regular {fifo 0 volatile }  }
	{ out_correlation_data_V int 32 regular {axi_s 1 volatile  { out_correlation data } }  }
	{ out_correlation_keep_V int 4 regular {axi_s 1 volatile  { out_correlation keep } }  }
	{ out_correlation_strb_V int 4 regular {axi_s 1 volatile  { out_correlation strb } }  }
	{ out_correlation_user_V int 1 regular {axi_s 1 volatile  { out_correlation user } }  }
	{ out_correlation_last_V int 1 regular {axi_s 1 volatile  { out_correlation last } }  }
	{ out_correlation_id_V int 1 regular {axi_s 1 volatile  { out_correlation id } }  }
	{ out_correlation_dest_V int 1 regular {axi_s 1 volatile  { out_correlation dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "NUMBER_OF_DAYS", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_INDICES", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_return_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnSquare_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_return_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnA_returnB_in_s", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_returnA_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnSquareA_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_returnA_in_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "out_correlation_data_V", "interface" : "axis", "bitwidth" : 32} , 
 	{ "Name" : "out_correlation_keep_V", "interface" : "axis", "bitwidth" : 4} , 
 	{ "Name" : "out_correlation_strb_V", "interface" : "axis", "bitwidth" : 4} , 
 	{ "Name" : "out_correlation_user_V", "interface" : "axis", "bitwidth" : 1} , 
 	{ "Name" : "out_correlation_last_V", "interface" : "axis", "bitwidth" : 1} , 
 	{ "Name" : "out_correlation_id_V", "interface" : "axis", "bitwidth" : 1} , 
 	{ "Name" : "out_correlation_dest_V", "interface" : "axis", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 46
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
	{ sum_weight_in_V_dout sc_in sc_lv 32 signal 2 } 
	{ sum_weight_in_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ sum_weight_in_V_read sc_out sc_logic 1 signal 2 } 
	{ sum_return_in_V_dout sc_in sc_lv 32 signal 3 } 
	{ sum_return_in_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ sum_return_in_V_read sc_out sc_logic 1 signal 3 } 
	{ sum_weight_returnSquare_in_V_dout sc_in sc_lv 32 signal 4 } 
	{ sum_weight_returnSquare_in_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ sum_weight_returnSquare_in_V_read sc_out sc_logic 1 signal 4 } 
	{ sum_weight_return_in_V_dout sc_in sc_lv 32 signal 5 } 
	{ sum_weight_return_in_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ sum_weight_return_in_V_read sc_out sc_logic 1 signal 5 } 
	{ sum_weight_returnA_returnB_in_s_dout sc_in sc_lv 32 signal 6 } 
	{ sum_weight_returnA_returnB_in_s_empty_n sc_in sc_logic 1 signal 6 } 
	{ sum_weight_returnA_returnB_in_s_read sc_out sc_logic 1 signal 6 } 
	{ sum_returnA_in_V_dout sc_in sc_lv 32 signal 7 } 
	{ sum_returnA_in_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ sum_returnA_in_V_read sc_out sc_logic 1 signal 7 } 
	{ sum_weight_returnSquareA_in_V_dout sc_in sc_lv 32 signal 8 } 
	{ sum_weight_returnSquareA_in_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ sum_weight_returnSquareA_in_V_read sc_out sc_logic 1 signal 8 } 
	{ sum_weight_returnA_in_V_dout sc_in sc_lv 32 signal 9 } 
	{ sum_weight_returnA_in_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ sum_weight_returnA_in_V_read sc_out sc_logic 1 signal 9 } 
	{ out_correlation_TDATA sc_out sc_lv 32 signal 10 } 
	{ out_correlation_TVALID sc_out sc_logic 1 outvld 16 } 
	{ out_correlation_TREADY sc_in sc_logic 1 outacc 16 } 
	{ out_correlation_TKEEP sc_out sc_lv 4 signal 11 } 
	{ out_correlation_TSTRB sc_out sc_lv 4 signal 12 } 
	{ out_correlation_TUSER sc_out sc_lv 1 signal 13 } 
	{ out_correlation_TLAST sc_out sc_lv 1 signal 14 } 
	{ out_correlation_TID sc_out sc_lv 1 signal 15 } 
	{ out_correlation_TDEST sc_out sc_lv 1 signal 16 } 
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
 	{ "name": "sum_weight_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_in_V", "role": "dout" }} , 
 	{ "name": "sum_weight_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_weight_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_in_V", "role": "read" }} , 
 	{ "name": "sum_return_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_return_in_V", "role": "dout" }} , 
 	{ "name": "sum_return_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_return_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_return_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_return_in_V", "role": "read" }} , 
 	{ "name": "sum_weight_returnSquare_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnSquare_in_V", "role": "dout" }} , 
 	{ "name": "sum_weight_returnSquare_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquare_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_weight_returnSquare_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquare_in_V", "role": "read" }} , 
 	{ "name": "sum_weight_return_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_return_in_V", "role": "dout" }} , 
 	{ "name": "sum_weight_return_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_return_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_weight_return_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_return_in_V", "role": "read" }} , 
 	{ "name": "sum_weight_returnA_returnB_in_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnA_returnB_in_s", "role": "dout" }} , 
 	{ "name": "sum_weight_returnA_returnB_in_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_returnB_in_s", "role": "empty_n" }} , 
 	{ "name": "sum_weight_returnA_returnB_in_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_returnB_in_s", "role": "read" }} , 
 	{ "name": "sum_returnA_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_returnA_in_V", "role": "dout" }} , 
 	{ "name": "sum_returnA_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_returnA_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_returnA_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_returnA_in_V", "role": "read" }} , 
 	{ "name": "sum_weight_returnSquareA_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnSquareA_in_V", "role": "dout" }} , 
 	{ "name": "sum_weight_returnSquareA_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquareA_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_weight_returnSquareA_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnSquareA_in_V", "role": "read" }} , 
 	{ "name": "sum_weight_returnA_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_returnA_in_V", "role": "dout" }} , 
 	{ "name": "sum_weight_returnA_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_in_V", "role": "empty_n" }} , 
 	{ "name": "sum_weight_returnA_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_returnA_in_V", "role": "read" }} , 
 	{ "name": "out_correlation_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_correlation_data_V", "role": "default" }} , 
 	{ "name": "out_correlation_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_correlation_dest_V", "role": "default" }} , 
 	{ "name": "out_correlation_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_correlation_dest_V", "role": "default" }} , 
 	{ "name": "out_correlation_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_correlation_keep_V", "role": "default" }} , 
 	{ "name": "out_correlation_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_correlation_strb_V", "role": "default" }} , 
 	{ "name": "out_correlation_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_user_V", "role": "default" }} , 
 	{ "name": "out_correlation_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_last_V", "role": "default" }} , 
 	{ "name": "out_correlation_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_id_V", "role": "default" }} , 
 	{ "name": "out_correlation_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_correlation_dest_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	NUMBER_OF_DAYS { ap_fifo {  { NUMBER_OF_DAYS_dout fifo_data 0 32 }  { NUMBER_OF_DAYS_empty_n fifo_status 0 1 }  { NUMBER_OF_DAYS_read fifo_update 1 1 } } }
	NUMBER_OF_INDICES { ap_fifo {  { NUMBER_OF_INDICES_dout fifo_data 0 32 }  { NUMBER_OF_INDICES_empty_n fifo_status 0 1 }  { NUMBER_OF_INDICES_read fifo_update 1 1 } } }
	sum_weight_in_V { ap_fifo {  { sum_weight_in_V_dout fifo_data 0 32 }  { sum_weight_in_V_empty_n fifo_status 0 1 }  { sum_weight_in_V_read fifo_update 1 1 } } }
	sum_return_in_V { ap_fifo {  { sum_return_in_V_dout fifo_data 0 32 }  { sum_return_in_V_empty_n fifo_status 0 1 }  { sum_return_in_V_read fifo_update 1 1 } } }
	sum_weight_returnSquare_in_V { ap_fifo {  { sum_weight_returnSquare_in_V_dout fifo_data 0 32 }  { sum_weight_returnSquare_in_V_empty_n fifo_status 0 1 }  { sum_weight_returnSquare_in_V_read fifo_update 1 1 } } }
	sum_weight_return_in_V { ap_fifo {  { sum_weight_return_in_V_dout fifo_data 0 32 }  { sum_weight_return_in_V_empty_n fifo_status 0 1 }  { sum_weight_return_in_V_read fifo_update 1 1 } } }
	sum_weight_returnA_returnB_in_s { ap_fifo {  { sum_weight_returnA_returnB_in_s_dout fifo_data 0 32 }  { sum_weight_returnA_returnB_in_s_empty_n fifo_status 0 1 }  { sum_weight_returnA_returnB_in_s_read fifo_update 1 1 } } }
	sum_returnA_in_V { ap_fifo {  { sum_returnA_in_V_dout fifo_data 0 32 }  { sum_returnA_in_V_empty_n fifo_status 0 1 }  { sum_returnA_in_V_read fifo_update 1 1 } } }
	sum_weight_returnSquareA_in_V { ap_fifo {  { sum_weight_returnSquareA_in_V_dout fifo_data 0 32 }  { sum_weight_returnSquareA_in_V_empty_n fifo_status 0 1 }  { sum_weight_returnSquareA_in_V_read fifo_update 1 1 } } }
	sum_weight_returnA_in_V { ap_fifo {  { sum_weight_returnA_in_V_dout fifo_data 0 32 }  { sum_weight_returnA_in_V_empty_n fifo_status 0 1 }  { sum_weight_returnA_in_V_read fifo_update 1 1 } } }
	out_correlation_data_V { axis {  { out_correlation_TDATA out_data 1 32 } } }
	out_correlation_keep_V { axis {  { out_correlation_TKEEP out_data 1 4 } } }
	out_correlation_strb_V { axis {  { out_correlation_TSTRB out_data 1 4 } } }
	out_correlation_user_V { axis {  { out_correlation_TUSER out_data 1 1 } } }
	out_correlation_last_V { axis {  { out_correlation_TLAST out_data 1 1 } } }
	out_correlation_id_V { axis {  { out_correlation_TID out_data 1 1 } } }
	out_correlation_dest_V { axis {  { out_correlation_TVALID out_vld 1 1 }  { out_correlation_TREADY out_acc 0 1 }  { out_correlation_TDEST out_data 1 1 } } }
}
