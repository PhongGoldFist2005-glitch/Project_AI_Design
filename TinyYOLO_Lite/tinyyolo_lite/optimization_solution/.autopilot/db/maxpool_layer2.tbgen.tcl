set moduleName maxpool_layer2
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {maxpool_layer2}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_0 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_1 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_2 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_3 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_4 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_5 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_6 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_7 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_8 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_9 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_10 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_11 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_12 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_13 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_14 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ output_15 int 31 regular {array 196 { 0 3 } 0 1 }  }
	{ buf_conv2_0 int 31 regular {array 6960 { 1 1 } 1 1 } {global 0}  }
	{ buf_conv2_1 int 31 regular {array 6496 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_9", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_10", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_11", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_12", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_13", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_14", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_15", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_conv2_0", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_conv2_1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_0_address0 sc_out sc_lv 8 signal 0 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_0_we0 sc_out sc_logic 1 signal 0 } 
	{ output_0_d0 sc_out sc_lv 31 signal 0 } 
	{ output_1_address0 sc_out sc_lv 8 signal 1 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_1_we0 sc_out sc_logic 1 signal 1 } 
	{ output_1_d0 sc_out sc_lv 31 signal 1 } 
	{ output_2_address0 sc_out sc_lv 8 signal 2 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_2_we0 sc_out sc_logic 1 signal 2 } 
	{ output_2_d0 sc_out sc_lv 31 signal 2 } 
	{ output_3_address0 sc_out sc_lv 8 signal 3 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_3_we0 sc_out sc_logic 1 signal 3 } 
	{ output_3_d0 sc_out sc_lv 31 signal 3 } 
	{ output_4_address0 sc_out sc_lv 8 signal 4 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_4_we0 sc_out sc_logic 1 signal 4 } 
	{ output_4_d0 sc_out sc_lv 31 signal 4 } 
	{ output_5_address0 sc_out sc_lv 8 signal 5 } 
	{ output_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_5_we0 sc_out sc_logic 1 signal 5 } 
	{ output_5_d0 sc_out sc_lv 31 signal 5 } 
	{ output_6_address0 sc_out sc_lv 8 signal 6 } 
	{ output_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_6_we0 sc_out sc_logic 1 signal 6 } 
	{ output_6_d0 sc_out sc_lv 31 signal 6 } 
	{ output_7_address0 sc_out sc_lv 8 signal 7 } 
	{ output_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ output_7_we0 sc_out sc_logic 1 signal 7 } 
	{ output_7_d0 sc_out sc_lv 31 signal 7 } 
	{ output_8_address0 sc_out sc_lv 8 signal 8 } 
	{ output_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ output_8_we0 sc_out sc_logic 1 signal 8 } 
	{ output_8_d0 sc_out sc_lv 31 signal 8 } 
	{ output_9_address0 sc_out sc_lv 8 signal 9 } 
	{ output_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ output_9_we0 sc_out sc_logic 1 signal 9 } 
	{ output_9_d0 sc_out sc_lv 31 signal 9 } 
	{ output_10_address0 sc_out sc_lv 8 signal 10 } 
	{ output_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ output_10_we0 sc_out sc_logic 1 signal 10 } 
	{ output_10_d0 sc_out sc_lv 31 signal 10 } 
	{ output_11_address0 sc_out sc_lv 8 signal 11 } 
	{ output_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_11_we0 sc_out sc_logic 1 signal 11 } 
	{ output_11_d0 sc_out sc_lv 31 signal 11 } 
	{ output_12_address0 sc_out sc_lv 8 signal 12 } 
	{ output_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ output_12_we0 sc_out sc_logic 1 signal 12 } 
	{ output_12_d0 sc_out sc_lv 31 signal 12 } 
	{ output_13_address0 sc_out sc_lv 8 signal 13 } 
	{ output_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ output_13_we0 sc_out sc_logic 1 signal 13 } 
	{ output_13_d0 sc_out sc_lv 31 signal 13 } 
	{ output_14_address0 sc_out sc_lv 8 signal 14 } 
	{ output_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ output_14_we0 sc_out sc_logic 1 signal 14 } 
	{ output_14_d0 sc_out sc_lv 31 signal 14 } 
	{ output_15_address0 sc_out sc_lv 8 signal 15 } 
	{ output_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ output_15_we0 sc_out sc_logic 1 signal 15 } 
	{ output_15_d0 sc_out sc_lv 31 signal 15 } 
	{ buf_conv2_0_address0 sc_out sc_lv 13 signal 16 } 
	{ buf_conv2_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ buf_conv2_0_q0 sc_in sc_lv 31 signal 16 } 
	{ buf_conv2_0_address1 sc_out sc_lv 13 signal 16 } 
	{ buf_conv2_0_ce1 sc_out sc_logic 1 signal 16 } 
	{ buf_conv2_0_q1 sc_in sc_lv 31 signal 16 } 
	{ buf_conv2_1_address0 sc_out sc_lv 13 signal 17 } 
	{ buf_conv2_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ buf_conv2_1_q0 sc_in sc_lv 31 signal 17 } 
	{ buf_conv2_1_address1 sc_out sc_lv 13 signal 17 } 
	{ buf_conv2_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ buf_conv2_1_q1 sc_in sc_lv 31 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "output_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_5", "role": "address0" }} , 
 	{ "name": "output_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "ce0" }} , 
 	{ "name": "output_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "we0" }} , 
 	{ "name": "output_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_5", "role": "d0" }} , 
 	{ "name": "output_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_6", "role": "address0" }} , 
 	{ "name": "output_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "ce0" }} , 
 	{ "name": "output_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "we0" }} , 
 	{ "name": "output_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_6", "role": "d0" }} , 
 	{ "name": "output_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_7", "role": "address0" }} , 
 	{ "name": "output_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "ce0" }} , 
 	{ "name": "output_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "we0" }} , 
 	{ "name": "output_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_7", "role": "d0" }} , 
 	{ "name": "output_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_8", "role": "address0" }} , 
 	{ "name": "output_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "ce0" }} , 
 	{ "name": "output_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "we0" }} , 
 	{ "name": "output_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_8", "role": "d0" }} , 
 	{ "name": "output_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_9", "role": "address0" }} , 
 	{ "name": "output_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "ce0" }} , 
 	{ "name": "output_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "we0" }} , 
 	{ "name": "output_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_9", "role": "d0" }} , 
 	{ "name": "output_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_10", "role": "address0" }} , 
 	{ "name": "output_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "ce0" }} , 
 	{ "name": "output_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "we0" }} , 
 	{ "name": "output_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_10", "role": "d0" }} , 
 	{ "name": "output_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_11", "role": "address0" }} , 
 	{ "name": "output_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "ce0" }} , 
 	{ "name": "output_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "we0" }} , 
 	{ "name": "output_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_11", "role": "d0" }} , 
 	{ "name": "output_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_12", "role": "address0" }} , 
 	{ "name": "output_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "ce0" }} , 
 	{ "name": "output_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "we0" }} , 
 	{ "name": "output_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_12", "role": "d0" }} , 
 	{ "name": "output_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_13", "role": "address0" }} , 
 	{ "name": "output_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "ce0" }} , 
 	{ "name": "output_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "we0" }} , 
 	{ "name": "output_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_13", "role": "d0" }} , 
 	{ "name": "output_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_14", "role": "address0" }} , 
 	{ "name": "output_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_14", "role": "ce0" }} , 
 	{ "name": "output_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_14", "role": "we0" }} , 
 	{ "name": "output_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_14", "role": "d0" }} , 
 	{ "name": "output_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_15", "role": "address0" }} , 
 	{ "name": "output_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_15", "role": "ce0" }} , 
 	{ "name": "output_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_15", "role": "we0" }} , 
 	{ "name": "output_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_15", "role": "d0" }} , 
 	{ "name": "buf_conv2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buf_conv2_0", "role": "address0" }} , 
 	{ "name": "buf_conv2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv2_0", "role": "ce0" }} , 
 	{ "name": "buf_conv2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv2_0", "role": "q0" }} , 
 	{ "name": "buf_conv2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buf_conv2_0", "role": "address1" }} , 
 	{ "name": "buf_conv2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv2_0", "role": "ce1" }} , 
 	{ "name": "buf_conv2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv2_0", "role": "q1" }} , 
 	{ "name": "buf_conv2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buf_conv2_1", "role": "address0" }} , 
 	{ "name": "buf_conv2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv2_1", "role": "ce0" }} , 
 	{ "name": "buf_conv2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv2_1", "role": "q0" }} , 
 	{ "name": "buf_conv2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buf_conv2_1", "role": "address1" }} , 
 	{ "name": "buf_conv2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv2_1", "role": "ce1" }} , 
 	{ "name": "buf_conv2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv2_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "maxpool_layer2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3141", "EstimateLatencyMax" : "3141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_conv2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_conv2_1", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	maxpool_layer2 {
		output_0 {Type O LastRead -1 FirstWrite 5}
		output_1 {Type O LastRead -1 FirstWrite 5}
		output_2 {Type O LastRead -1 FirstWrite 5}
		output_3 {Type O LastRead -1 FirstWrite 5}
		output_4 {Type O LastRead -1 FirstWrite 5}
		output_5 {Type O LastRead -1 FirstWrite 5}
		output_6 {Type O LastRead -1 FirstWrite 5}
		output_7 {Type O LastRead -1 FirstWrite 5}
		output_8 {Type O LastRead -1 FirstWrite 5}
		output_9 {Type O LastRead -1 FirstWrite 5}
		output_10 {Type O LastRead -1 FirstWrite 5}
		output_11 {Type O LastRead -1 FirstWrite 5}
		output_12 {Type O LastRead -1 FirstWrite 5}
		output_13 {Type O LastRead -1 FirstWrite 5}
		output_14 {Type O LastRead -1 FirstWrite 5}
		output_15 {Type O LastRead -1 FirstWrite 5}
		buf_conv2_0 {Type I LastRead 4 FirstWrite -1}
		buf_conv2_1 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3141", "Max" : "3141"}
	, {"Name" : "Interval", "Min" : "3141", "Max" : "3141"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_0 { ap_memory {  { output_0_address0 mem_address 1 8 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 31 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 8 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 31 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 8 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 31 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 8 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 31 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 8 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 31 } } }
	output_5 { ap_memory {  { output_5_address0 mem_address 1 8 }  { output_5_ce0 mem_ce 1 1 }  { output_5_we0 mem_we 1 1 }  { output_5_d0 mem_din 1 31 } } }
	output_6 { ap_memory {  { output_6_address0 mem_address 1 8 }  { output_6_ce0 mem_ce 1 1 }  { output_6_we0 mem_we 1 1 }  { output_6_d0 mem_din 1 31 } } }
	output_7 { ap_memory {  { output_7_address0 mem_address 1 8 }  { output_7_ce0 mem_ce 1 1 }  { output_7_we0 mem_we 1 1 }  { output_7_d0 mem_din 1 31 } } }
	output_8 { ap_memory {  { output_8_address0 mem_address 1 8 }  { output_8_ce0 mem_ce 1 1 }  { output_8_we0 mem_we 1 1 }  { output_8_d0 mem_din 1 31 } } }
	output_9 { ap_memory {  { output_9_address0 mem_address 1 8 }  { output_9_ce0 mem_ce 1 1 }  { output_9_we0 mem_we 1 1 }  { output_9_d0 mem_din 1 31 } } }
	output_10 { ap_memory {  { output_10_address0 mem_address 1 8 }  { output_10_ce0 mem_ce 1 1 }  { output_10_we0 mem_we 1 1 }  { output_10_d0 mem_din 1 31 } } }
	output_11 { ap_memory {  { output_11_address0 mem_address 1 8 }  { output_11_ce0 mem_ce 1 1 }  { output_11_we0 mem_we 1 1 }  { output_11_d0 mem_din 1 31 } } }
	output_12 { ap_memory {  { output_12_address0 mem_address 1 8 }  { output_12_ce0 mem_ce 1 1 }  { output_12_we0 mem_we 1 1 }  { output_12_d0 mem_din 1 31 } } }
	output_13 { ap_memory {  { output_13_address0 mem_address 1 8 }  { output_13_ce0 mem_ce 1 1 }  { output_13_we0 mem_we 1 1 }  { output_13_d0 mem_din 1 31 } } }
	output_14 { ap_memory {  { output_14_address0 mem_address 1 8 }  { output_14_ce0 mem_ce 1 1 }  { output_14_we0 mem_we 1 1 }  { output_14_d0 mem_din 1 31 } } }
	output_15 { ap_memory {  { output_15_address0 mem_address 1 8 }  { output_15_ce0 mem_ce 1 1 }  { output_15_we0 mem_we 1 1 }  { output_15_d0 mem_din 1 31 } } }
	buf_conv2_0 { ap_memory {  { buf_conv2_0_address0 mem_address 1 13 }  { buf_conv2_0_ce0 mem_ce 1 1 }  { buf_conv2_0_q0 mem_dout 0 31 }  { buf_conv2_0_address1 MemPortADDR2 1 13 }  { buf_conv2_0_ce1 MemPortCE2 1 1 }  { buf_conv2_0_q1 MemPortDOUT2 0 31 } } }
	buf_conv2_1 { ap_memory {  { buf_conv2_1_address0 mem_address 1 13 }  { buf_conv2_1_ce0 mem_ce 1 1 }  { buf_conv2_1_q0 mem_dout 0 31 }  { buf_conv2_1_address1 MemPortADDR2 1 13 }  { buf_conv2_1_ce1 MemPortCE2 1 1 }  { buf_conv2_1_q1 MemPortDOUT2 0 31 } } }
}
