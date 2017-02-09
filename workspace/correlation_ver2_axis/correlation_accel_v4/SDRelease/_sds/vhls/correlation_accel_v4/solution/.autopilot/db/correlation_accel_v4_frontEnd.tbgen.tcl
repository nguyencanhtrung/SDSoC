set moduleName correlation_accel_v4_frontEnd
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName correlation_accel_v4_frontEnd
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
	{ ln_returnA_out_c1_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnSquareA_out_c1_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnA_out_c1_V float 32 regular {fifo 1 volatile }  }
	{ ln_returnA_out_c2_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnSquareA_out_c2_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnA_out_c2_V float 32 regular {fifo 1 volatile }  }
	{ sum_weight_out_c1_V float 32 regular {fifo 1 volatile }  }
	{ ln_returnB_out_c1_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnSquareB_out_c1_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnB_out_c1_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnA_returnB_out_c1_s float 32 regular {fifo 1 volatile }  }
	{ sum_weight_out_c2_V float 32 regular {fifo 1 volatile }  }
	{ ln_returnB_out_c2_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnSquareB_out_c2_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnB_out_c2_V float 32 regular {fifo 1 volatile }  }
	{ weight_returnA_returnB_out_c2_s float 32 regular {fifo 1 volatile }  }
	{ NUMBER_OF_DAYS_out int 32 regular {fifo 1}  }
	{ NUMBER_OF_DAYS_out1 int 32 regular {fifo 1}  }
	{ NUMBER_OF_INDICES_out int 32 regular {fifo 1}  }
	{ NUMBER_OF_INDICES_out2 int 32 regular {fifo 1}  }
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
 	{ "Name" : "ln_returnA_out_c1_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnSquareA_out_c1_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnA_out_c1_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "ln_returnA_out_c2_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnSquareA_out_c2_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnA_out_c2_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_out_c1_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "ln_returnB_out_c1_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnSquareB_out_c1_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnB_out_c1_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnA_returnB_out_c1_s", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "sum_weight_out_c2_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "ln_returnB_out_c2_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnSquareB_out_c2_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnB_out_c2_V", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "weight_returnA_returnB_out_c2_s", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_DAYS_out", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_DAYS_out1", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_INDICES_out", "interface" : "fifo", "bitwidth" : 32} , 
 	{ "Name" : "NUMBER_OF_INDICES_out2", "interface" : "fifo", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 78
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
	{ ln_returnA_out_c1_V_din sc_out sc_lv 32 signal 9 } 
	{ ln_returnA_out_c1_V_full_n sc_in sc_logic 1 signal 9 } 
	{ ln_returnA_out_c1_V_write sc_out sc_logic 1 signal 9 } 
	{ weight_returnSquareA_out_c1_V_din sc_out sc_lv 32 signal 10 } 
	{ weight_returnSquareA_out_c1_V_full_n sc_in sc_logic 1 signal 10 } 
	{ weight_returnSquareA_out_c1_V_write sc_out sc_logic 1 signal 10 } 
	{ weight_returnA_out_c1_V_din sc_out sc_lv 32 signal 11 } 
	{ weight_returnA_out_c1_V_full_n sc_in sc_logic 1 signal 11 } 
	{ weight_returnA_out_c1_V_write sc_out sc_logic 1 signal 11 } 
	{ ln_returnA_out_c2_V_din sc_out sc_lv 32 signal 12 } 
	{ ln_returnA_out_c2_V_full_n sc_in sc_logic 1 signal 12 } 
	{ ln_returnA_out_c2_V_write sc_out sc_logic 1 signal 12 } 
	{ weight_returnSquareA_out_c2_V_din sc_out sc_lv 32 signal 13 } 
	{ weight_returnSquareA_out_c2_V_full_n sc_in sc_logic 1 signal 13 } 
	{ weight_returnSquareA_out_c2_V_write sc_out sc_logic 1 signal 13 } 
	{ weight_returnA_out_c2_V_din sc_out sc_lv 32 signal 14 } 
	{ weight_returnA_out_c2_V_full_n sc_in sc_logic 1 signal 14 } 
	{ weight_returnA_out_c2_V_write sc_out sc_logic 1 signal 14 } 
	{ sum_weight_out_c1_V_din sc_out sc_lv 32 signal 15 } 
	{ sum_weight_out_c1_V_full_n sc_in sc_logic 1 signal 15 } 
	{ sum_weight_out_c1_V_write sc_out sc_logic 1 signal 15 } 
	{ ln_returnB_out_c1_V_din sc_out sc_lv 32 signal 16 } 
	{ ln_returnB_out_c1_V_full_n sc_in sc_logic 1 signal 16 } 
	{ ln_returnB_out_c1_V_write sc_out sc_logic 1 signal 16 } 
	{ weight_returnSquareB_out_c1_V_din sc_out sc_lv 32 signal 17 } 
	{ weight_returnSquareB_out_c1_V_full_n sc_in sc_logic 1 signal 17 } 
	{ weight_returnSquareB_out_c1_V_write sc_out sc_logic 1 signal 17 } 
	{ weight_returnB_out_c1_V_din sc_out sc_lv 32 signal 18 } 
	{ weight_returnB_out_c1_V_full_n sc_in sc_logic 1 signal 18 } 
	{ weight_returnB_out_c1_V_write sc_out sc_logic 1 signal 18 } 
	{ weight_returnA_returnB_out_c1_s_din sc_out sc_lv 32 signal 19 } 
	{ weight_returnA_returnB_out_c1_s_full_n sc_in sc_logic 1 signal 19 } 
	{ weight_returnA_returnB_out_c1_s_write sc_out sc_logic 1 signal 19 } 
	{ sum_weight_out_c2_V_din sc_out sc_lv 32 signal 20 } 
	{ sum_weight_out_c2_V_full_n sc_in sc_logic 1 signal 20 } 
	{ sum_weight_out_c2_V_write sc_out sc_logic 1 signal 20 } 
	{ ln_returnB_out_c2_V_din sc_out sc_lv 32 signal 21 } 
	{ ln_returnB_out_c2_V_full_n sc_in sc_logic 1 signal 21 } 
	{ ln_returnB_out_c2_V_write sc_out sc_logic 1 signal 21 } 
	{ weight_returnSquareB_out_c2_V_din sc_out sc_lv 32 signal 22 } 
	{ weight_returnSquareB_out_c2_V_full_n sc_in sc_logic 1 signal 22 } 
	{ weight_returnSquareB_out_c2_V_write sc_out sc_logic 1 signal 22 } 
	{ weight_returnB_out_c2_V_din sc_out sc_lv 32 signal 23 } 
	{ weight_returnB_out_c2_V_full_n sc_in sc_logic 1 signal 23 } 
	{ weight_returnB_out_c2_V_write sc_out sc_logic 1 signal 23 } 
	{ weight_returnA_returnB_out_c2_s_din sc_out sc_lv 32 signal 24 } 
	{ weight_returnA_returnB_out_c2_s_full_n sc_in sc_logic 1 signal 24 } 
	{ weight_returnA_returnB_out_c2_s_write sc_out sc_logic 1 signal 24 } 
	{ NUMBER_OF_DAYS_out_din sc_out sc_lv 32 signal 25 } 
	{ NUMBER_OF_DAYS_out_full_n sc_in sc_logic 1 signal 25 } 
	{ NUMBER_OF_DAYS_out_write sc_out sc_logic 1 signal 25 } 
	{ NUMBER_OF_DAYS_out1_din sc_out sc_lv 32 signal 26 } 
	{ NUMBER_OF_DAYS_out1_full_n sc_in sc_logic 1 signal 26 } 
	{ NUMBER_OF_DAYS_out1_write sc_out sc_logic 1 signal 26 } 
	{ NUMBER_OF_INDICES_out_din sc_out sc_lv 32 signal 27 } 
	{ NUMBER_OF_INDICES_out_full_n sc_in sc_logic 1 signal 27 } 
	{ NUMBER_OF_INDICES_out_write sc_out sc_logic 1 signal 27 } 
	{ NUMBER_OF_INDICES_out2_din sc_out sc_lv 32 signal 28 } 
	{ NUMBER_OF_INDICES_out2_full_n sc_in sc_logic 1 signal 28 } 
	{ NUMBER_OF_INDICES_out2_write sc_out sc_logic 1 signal 28 } 
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
 	{ "name": "ln_returnA_out_c1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_returnA_out_c1_V", "role": "din" }} , 
 	{ "name": "ln_returnA_out_c1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnA_out_c1_V", "role": "full_n" }} , 
 	{ "name": "ln_returnA_out_c1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnA_out_c1_V", "role": "write" }} , 
 	{ "name": "weight_returnSquareA_out_c1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnSquareA_out_c1_V", "role": "din" }} , 
 	{ "name": "weight_returnSquareA_out_c1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareA_out_c1_V", "role": "full_n" }} , 
 	{ "name": "weight_returnSquareA_out_c1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareA_out_c1_V", "role": "write" }} , 
 	{ "name": "weight_returnA_out_c1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnA_out_c1_V", "role": "din" }} , 
 	{ "name": "weight_returnA_out_c1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_out_c1_V", "role": "full_n" }} , 
 	{ "name": "weight_returnA_out_c1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_out_c1_V", "role": "write" }} , 
 	{ "name": "ln_returnA_out_c2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_returnA_out_c2_V", "role": "din" }} , 
 	{ "name": "ln_returnA_out_c2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnA_out_c2_V", "role": "full_n" }} , 
 	{ "name": "ln_returnA_out_c2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnA_out_c2_V", "role": "write" }} , 
 	{ "name": "weight_returnSquareA_out_c2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnSquareA_out_c2_V", "role": "din" }} , 
 	{ "name": "weight_returnSquareA_out_c2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareA_out_c2_V", "role": "full_n" }} , 
 	{ "name": "weight_returnSquareA_out_c2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareA_out_c2_V", "role": "write" }} , 
 	{ "name": "weight_returnA_out_c2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnA_out_c2_V", "role": "din" }} , 
 	{ "name": "weight_returnA_out_c2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_out_c2_V", "role": "full_n" }} , 
 	{ "name": "weight_returnA_out_c2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_out_c2_V", "role": "write" }} , 
 	{ "name": "sum_weight_out_c1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_out_c1_V", "role": "din" }} , 
 	{ "name": "sum_weight_out_c1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_out_c1_V", "role": "full_n" }} , 
 	{ "name": "sum_weight_out_c1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_out_c1_V", "role": "write" }} , 
 	{ "name": "ln_returnB_out_c1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_returnB_out_c1_V", "role": "din" }} , 
 	{ "name": "ln_returnB_out_c1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnB_out_c1_V", "role": "full_n" }} , 
 	{ "name": "ln_returnB_out_c1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnB_out_c1_V", "role": "write" }} , 
 	{ "name": "weight_returnSquareB_out_c1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnSquareB_out_c1_V", "role": "din" }} , 
 	{ "name": "weight_returnSquareB_out_c1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareB_out_c1_V", "role": "full_n" }} , 
 	{ "name": "weight_returnSquareB_out_c1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareB_out_c1_V", "role": "write" }} , 
 	{ "name": "weight_returnB_out_c1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnB_out_c1_V", "role": "din" }} , 
 	{ "name": "weight_returnB_out_c1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnB_out_c1_V", "role": "full_n" }} , 
 	{ "name": "weight_returnB_out_c1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnB_out_c1_V", "role": "write" }} , 
 	{ "name": "weight_returnA_returnB_out_c1_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnA_returnB_out_c1_s", "role": "din" }} , 
 	{ "name": "weight_returnA_returnB_out_c1_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_returnB_out_c1_s", "role": "full_n" }} , 
 	{ "name": "weight_returnA_returnB_out_c1_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_returnB_out_c1_s", "role": "write" }} , 
 	{ "name": "sum_weight_out_c2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_weight_out_c2_V", "role": "din" }} , 
 	{ "name": "sum_weight_out_c2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_out_c2_V", "role": "full_n" }} , 
 	{ "name": "sum_weight_out_c2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_weight_out_c2_V", "role": "write" }} , 
 	{ "name": "ln_returnB_out_c2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_returnB_out_c2_V", "role": "din" }} , 
 	{ "name": "ln_returnB_out_c2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnB_out_c2_V", "role": "full_n" }} , 
 	{ "name": "ln_returnB_out_c2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_returnB_out_c2_V", "role": "write" }} , 
 	{ "name": "weight_returnSquareB_out_c2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnSquareB_out_c2_V", "role": "din" }} , 
 	{ "name": "weight_returnSquareB_out_c2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareB_out_c2_V", "role": "full_n" }} , 
 	{ "name": "weight_returnSquareB_out_c2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnSquareB_out_c2_V", "role": "write" }} , 
 	{ "name": "weight_returnB_out_c2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnB_out_c2_V", "role": "din" }} , 
 	{ "name": "weight_returnB_out_c2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnB_out_c2_V", "role": "full_n" }} , 
 	{ "name": "weight_returnB_out_c2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnB_out_c2_V", "role": "write" }} , 
 	{ "name": "weight_returnA_returnB_out_c2_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_returnA_returnB_out_c2_s", "role": "din" }} , 
 	{ "name": "weight_returnA_returnB_out_c2_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_returnB_out_c2_s", "role": "full_n" }} , 
 	{ "name": "weight_returnA_returnB_out_c2_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_returnA_returnB_out_c2_s", "role": "write" }} , 
 	{ "name": "NUMBER_OF_DAYS_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out", "role": "din" }} , 
 	{ "name": "NUMBER_OF_DAYS_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out", "role": "full_n" }} , 
 	{ "name": "NUMBER_OF_DAYS_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out", "role": "write" }} , 
 	{ "name": "NUMBER_OF_DAYS_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out1", "role": "din" }} , 
 	{ "name": "NUMBER_OF_DAYS_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out1", "role": "full_n" }} , 
 	{ "name": "NUMBER_OF_DAYS_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_DAYS_out1", "role": "write" }} , 
 	{ "name": "NUMBER_OF_INDICES_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out", "role": "din" }} , 
 	{ "name": "NUMBER_OF_INDICES_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out", "role": "full_n" }} , 
 	{ "name": "NUMBER_OF_INDICES_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out", "role": "write" }} , 
 	{ "name": "NUMBER_OF_INDICES_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out2", "role": "din" }} , 
 	{ "name": "NUMBER_OF_INDICES_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out2", "role": "full_n" }} , 
 	{ "name": "NUMBER_OF_INDICES_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "NUMBER_OF_INDICES_out2", "role": "write" }}  ]}
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
	ln_returnA_out_c1_V { ap_fifo {  { ln_returnA_out_c1_V_din fifo_data 1 32 }  { ln_returnA_out_c1_V_full_n fifo_status 0 1 }  { ln_returnA_out_c1_V_write fifo_update 1 1 } } }
	weight_returnSquareA_out_c1_V { ap_fifo {  { weight_returnSquareA_out_c1_V_din fifo_data 1 32 }  { weight_returnSquareA_out_c1_V_full_n fifo_status 0 1 }  { weight_returnSquareA_out_c1_V_write fifo_update 1 1 } } }
	weight_returnA_out_c1_V { ap_fifo {  { weight_returnA_out_c1_V_din fifo_data 1 32 }  { weight_returnA_out_c1_V_full_n fifo_status 0 1 }  { weight_returnA_out_c1_V_write fifo_update 1 1 } } }
	ln_returnA_out_c2_V { ap_fifo {  { ln_returnA_out_c2_V_din fifo_data 1 32 }  { ln_returnA_out_c2_V_full_n fifo_status 0 1 }  { ln_returnA_out_c2_V_write fifo_update 1 1 } } }
	weight_returnSquareA_out_c2_V { ap_fifo {  { weight_returnSquareA_out_c2_V_din fifo_data 1 32 }  { weight_returnSquareA_out_c2_V_full_n fifo_status 0 1 }  { weight_returnSquareA_out_c2_V_write fifo_update 1 1 } } }
	weight_returnA_out_c2_V { ap_fifo {  { weight_returnA_out_c2_V_din fifo_data 1 32 }  { weight_returnA_out_c2_V_full_n fifo_status 0 1 }  { weight_returnA_out_c2_V_write fifo_update 1 1 } } }
	sum_weight_out_c1_V { ap_fifo {  { sum_weight_out_c1_V_din fifo_data 1 32 }  { sum_weight_out_c1_V_full_n fifo_status 0 1 }  { sum_weight_out_c1_V_write fifo_update 1 1 } } }
	ln_returnB_out_c1_V { ap_fifo {  { ln_returnB_out_c1_V_din fifo_data 1 32 }  { ln_returnB_out_c1_V_full_n fifo_status 0 1 }  { ln_returnB_out_c1_V_write fifo_update 1 1 } } }
	weight_returnSquareB_out_c1_V { ap_fifo {  { weight_returnSquareB_out_c1_V_din fifo_data 1 32 }  { weight_returnSquareB_out_c1_V_full_n fifo_status 0 1 }  { weight_returnSquareB_out_c1_V_write fifo_update 1 1 } } }
	weight_returnB_out_c1_V { ap_fifo {  { weight_returnB_out_c1_V_din fifo_data 1 32 }  { weight_returnB_out_c1_V_full_n fifo_status 0 1 }  { weight_returnB_out_c1_V_write fifo_update 1 1 } } }
	weight_returnA_returnB_out_c1_s { ap_fifo {  { weight_returnA_returnB_out_c1_s_din fifo_data 1 32 }  { weight_returnA_returnB_out_c1_s_full_n fifo_status 0 1 }  { weight_returnA_returnB_out_c1_s_write fifo_update 1 1 } } }
	sum_weight_out_c2_V { ap_fifo {  { sum_weight_out_c2_V_din fifo_data 1 32 }  { sum_weight_out_c2_V_full_n fifo_status 0 1 }  { sum_weight_out_c2_V_write fifo_update 1 1 } } }
	ln_returnB_out_c2_V { ap_fifo {  { ln_returnB_out_c2_V_din fifo_data 1 32 }  { ln_returnB_out_c2_V_full_n fifo_status 0 1 }  { ln_returnB_out_c2_V_write fifo_update 1 1 } } }
	weight_returnSquareB_out_c2_V { ap_fifo {  { weight_returnSquareB_out_c2_V_din fifo_data 1 32 }  { weight_returnSquareB_out_c2_V_full_n fifo_status 0 1 }  { weight_returnSquareB_out_c2_V_write fifo_update 1 1 } } }
	weight_returnB_out_c2_V { ap_fifo {  { weight_returnB_out_c2_V_din fifo_data 1 32 }  { weight_returnB_out_c2_V_full_n fifo_status 0 1 }  { weight_returnB_out_c2_V_write fifo_update 1 1 } } }
	weight_returnA_returnB_out_c2_s { ap_fifo {  { weight_returnA_returnB_out_c2_s_din fifo_data 1 32 }  { weight_returnA_returnB_out_c2_s_full_n fifo_status 0 1 }  { weight_returnA_returnB_out_c2_s_write fifo_update 1 1 } } }
	NUMBER_OF_DAYS_out { ap_fifo {  { NUMBER_OF_DAYS_out_din fifo_data 1 32 }  { NUMBER_OF_DAYS_out_full_n fifo_status 0 1 }  { NUMBER_OF_DAYS_out_write fifo_update 1 1 } } }
	NUMBER_OF_DAYS_out1 { ap_fifo {  { NUMBER_OF_DAYS_out1_din fifo_data 1 32 }  { NUMBER_OF_DAYS_out1_full_n fifo_status 0 1 }  { NUMBER_OF_DAYS_out1_write fifo_update 1 1 } } }
	NUMBER_OF_INDICES_out { ap_fifo {  { NUMBER_OF_INDICES_out_din fifo_data 1 32 }  { NUMBER_OF_INDICES_out_full_n fifo_status 0 1 }  { NUMBER_OF_INDICES_out_write fifo_update 1 1 } } }
	NUMBER_OF_INDICES_out2 { ap_fifo {  { NUMBER_OF_INDICES_out2_din fifo_data 1 32 }  { NUMBER_OF_INDICES_out2_full_n fifo_status 0 1 }  { NUMBER_OF_INDICES_out2_write fifo_update 1 1 } } }
}
