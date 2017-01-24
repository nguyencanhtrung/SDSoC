set moduleName correlation_accel_v3_frontEnd
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName correlation_accel_v3_frontEnd
set C_modelType { void 0 }
set C_modelArgList { 
	{ NUMBER_OF_DAYS int 32 regular  }
	{ NUMBER_OF_INDICES int 32 regular  }
	{ in_indices_data_V int 32 regular {axi_s 0 volatile  { in_indices data } }  }
	{ in_indices_keep_V int 4 regular {axi_s 0 volatile  { in_indices keep } }  }
	{ in_indices_strb_V int 4 regular {axi_s 0 volatile  { in_indices strb } }  }
	{ in_indices_user_V int 1 regular {axi_s 0 volatile  { in_indices user } }  }
	{ in_indices_last_V int 1 regular {axi_s 0 volatile  { in_indices last } }  }
	{ in_indices_id_V int 1 regular {axi_s 0 volatile  { in_indices id } }  }
	{ in_indices_dest_V int 1 regular {axi_s 0 volatile  { in_indices dest } }  }
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
	{ "Name" : "NUMBER_OF_DAYS", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_INDICES", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "in_indices_data_V", "interface" : "axis", "bitwidth" : 32} , 
 	{ "Name" : "in_indices_keep_V", "interface" : "axis", "bitwidth" : 4} , 
 	{ "Name" : "in_indices_strb_V", "interface" : "axis", "bitwidth" : 4} , 
 	{ "Name" : "in_indices_user_V", "interface" : "axis", "bitwidth" : 1} , 
 	{ "Name" : "in_indices_last_V", "interface" : "axis", "bitwidth" : 1} , 
 	{ "Name" : "in_indices_id_V", "interface" : "axis", "bitwidth" : 1} , 
 	{ "Name" : "in_indices_dest_V", "interface" : "axis", "bitwidth" : 1} , 
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
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ NUMBER_OF_DAYS sc_in sc_lv 32 signal 0 } 
	{ NUMBER_OF_INDICES sc_in sc_lv 32 signal 1 } 
	{ in_indices_TDATA sc_in sc_lv 32 signal 2 } 
	{ in_indices_TVALID sc_in sc_logic 1 invld 8 } 
	{ in_indices_TREADY sc_out sc_logic 1 inacc 8 } 
	{ in_indices_TKEEP sc_in sc_lv 4 signal 3 } 
	{ in_indices_TSTRB sc_in sc_lv 4 signal 4 } 
	{ in_indices_TUSER sc_in sc_lv 1 signal 5 } 
	{ in_indices_TLAST sc_in sc_lv 1 signal 6 } 
	{ in_indices_TID sc_in sc_lv 1 signal 7 } 
	{ in_indices_TDEST sc_in sc_lv 1 signal 8 } 
	{ sum_weight_out_V_din sc_out sc_lv 32 signal 9 } 
	{ sum_weight_out_V_full_n sc_in sc_logic 1 signal 9 } 
	{ sum_weight_out_V_write sc_out sc_logic 1 signal 9 } 
	{ sum_return_out_V_din sc_out sc_lv 32 signal 10 } 
	{ sum_return_out_V_full_n sc_in sc_logic 1 signal 10 } 
	{ sum_return_out_V_write sc_out sc_logic 1 signal 10 } 
	{ sum_weight_returnSquare_out_V_din sc_out sc_lv 32 signal 11 } 
	{ sum_weight_returnSquare_out_V_full_n sc_in sc_logic 1 signal 11 } 
	{ sum_weight_returnSquare_out_V_write sc_out sc_logic 1 signal 11 } 
	{ sum_weight_return_out_V_din sc_out sc_lv 32 signal 12 } 
	{ sum_weight_return_out_V_full_n sc_in sc_logic 1 signal 12 } 
	{ sum_weight_return_out_V_write sc_out sc_logic 1 signal 12 } 
	{ sum_weight_returnA_returnB_out_din sc_out sc_lv 32 signal 13 } 
	{ sum_weight_returnA_returnB_out_full_n sc_in sc_logic 1 signal 13 } 
	{ sum_weight_returnA_returnB_out_write sc_out sc_logic 1 signal 13 } 
	{ sum_returnA_out_V_din sc_out sc_lv 32 signal 14 } 
	{ sum_returnA_out_V_full_n sc_in sc_logic 1 signal 14 } 
	{ sum_returnA_out_V_write sc_out sc_logic 1 signal 14 } 
	{ sum_weight_returnSquareA_out_V_din sc_out sc_lv 32 signal 15 } 
	{ sum_weight_returnSquareA_out_V_full_n sc_in sc_logic 1 signal 15 } 
	{ sum_weight_returnSquareA_out_V_write sc_out sc_logic 1 signal 15 } 
	{ sum_weight_returnA_out_V_din sc_out sc_lv 32 signal 16 } 
	{ sum_weight_returnA_out_V_full_n sc_in sc_logic 1 signal 16 } 
	{ sum_weight_returnA_out_V_write sc_out sc_logic 1 signal 16 } 
	{ NUMBER_OF_DAYS_out_din sc_out sc_lv 32 signal 17 } 
	{ NUMBER_OF_DAYS_out_full_n sc_in sc_logic 1 signal 17 } 
	{ NUMBER_OF_DAYS_out_write sc_out sc_logic 1 signal 17 } 
	{ NUMBER_OF_INDICES_out_din sc_out sc_lv 32 signal 18 } 
	{ NUMBER_OF_INDICES_out_full_n sc_in sc_logic 1 signal 18 } 
	{ NUMBER_OF_INDICES_out_write sc_out sc_logic 1 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "NUMBER_OF_DAYS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS", "role": "default" }} , 
 	{ "name": "NUMBER_OF_INDICES", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES", "role": "default" }} , 
 	{ "name": "in_indices_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_indices_data_V", "role": "default" }} , 
 	{ "name": "in_indices_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_indices_dest_V", "role": "default" }} , 
 	{ "name": "in_indices_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_indices_dest_V", "role": "default" }} , 
 	{ "name": "in_indices_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_indices_keep_V", "role": "default" }} , 
 	{ "name": "in_indices_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_indices_strb_V", "role": "default" }} , 
 	{ "name": "in_indices_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_user_V", "role": "default" }} , 
 	{ "name": "in_indices_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_last_V", "role": "default" }} , 
 	{ "name": "in_indices_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_id_V", "role": "default" }} , 
 	{ "name": "in_indices_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_indices_dest_V", "role": "default" }} , 
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
	NUMBER_OF_DAYS { ap_none {  { NUMBER_OF_DAYS in_data 0 32 } } }
	NUMBER_OF_INDICES { ap_none {  { NUMBER_OF_INDICES in_data 0 32 } } }
	in_indices_data_V { axis {  { in_indices_TDATA in_data 0 32 } } }
	in_indices_keep_V { axis {  { in_indices_TKEEP in_data 0 4 } } }
	in_indices_strb_V { axis {  { in_indices_TSTRB in_data 0 4 } } }
	in_indices_user_V { axis {  { in_indices_TUSER in_data 0 1 } } }
	in_indices_last_V { axis {  { in_indices_TLAST in_data 0 1 } } }
	in_indices_id_V { axis {  { in_indices_TID in_data 0 1 } } }
	in_indices_dest_V { axis {  { in_indices_TVALID in_vld 0 1 }  { in_indices_TREADY in_acc 1 1 }  { in_indices_TDEST in_data 0 1 } } }
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
