set moduleName conv_layer3
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
set C_modelName {conv_layer3}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_0 int 31 regular {array 1152 { 0 3 } 0 1 }  }
	{ output_1 int 31 regular {array 1152 { 0 3 } 0 1 }  }
	{ output_2 int 31 regular {array 768 { 0 3 } 0 1 }  }
	{ output_3 int 31 regular {array 768 { 0 3 } 0 1 }  }
	{ output_4 int 31 regular {array 768 { 0 3 } 0 1 }  }
	{ buf_pool2_0 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_1 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_2 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_3 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_4 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_5 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_6 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_7 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_8 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_9 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_10 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_11 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_12 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_13 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_14 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool2_15 int 31 regular {array 196 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_pool2_0", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_5", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_6", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_7", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_8", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_9", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_10", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_11", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_12", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_13", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_14", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool2_15", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_0_address0 sc_out sc_lv 11 signal 0 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_0_we0 sc_out sc_logic 1 signal 0 } 
	{ output_0_d0 sc_out sc_lv 31 signal 0 } 
	{ output_1_address0 sc_out sc_lv 11 signal 1 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_1_we0 sc_out sc_logic 1 signal 1 } 
	{ output_1_d0 sc_out sc_lv 31 signal 1 } 
	{ output_2_address0 sc_out sc_lv 10 signal 2 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_2_we0 sc_out sc_logic 1 signal 2 } 
	{ output_2_d0 sc_out sc_lv 31 signal 2 } 
	{ output_3_address0 sc_out sc_lv 10 signal 3 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_3_we0 sc_out sc_logic 1 signal 3 } 
	{ output_3_d0 sc_out sc_lv 31 signal 3 } 
	{ output_4_address0 sc_out sc_lv 10 signal 4 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_4_we0 sc_out sc_logic 1 signal 4 } 
	{ output_4_d0 sc_out sc_lv 31 signal 4 } 
	{ buf_pool2_0_address0 sc_out sc_lv 8 signal 5 } 
	{ buf_pool2_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_pool2_0_q0 sc_in sc_lv 31 signal 5 } 
	{ buf_pool2_1_address0 sc_out sc_lv 8 signal 6 } 
	{ buf_pool2_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf_pool2_1_q0 sc_in sc_lv 31 signal 6 } 
	{ buf_pool2_2_address0 sc_out sc_lv 8 signal 7 } 
	{ buf_pool2_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_pool2_2_q0 sc_in sc_lv 31 signal 7 } 
	{ buf_pool2_3_address0 sc_out sc_lv 8 signal 8 } 
	{ buf_pool2_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf_pool2_3_q0 sc_in sc_lv 31 signal 8 } 
	{ buf_pool2_4_address0 sc_out sc_lv 8 signal 9 } 
	{ buf_pool2_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf_pool2_4_q0 sc_in sc_lv 31 signal 9 } 
	{ buf_pool2_5_address0 sc_out sc_lv 8 signal 10 } 
	{ buf_pool2_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ buf_pool2_5_q0 sc_in sc_lv 31 signal 10 } 
	{ buf_pool2_6_address0 sc_out sc_lv 8 signal 11 } 
	{ buf_pool2_6_ce0 sc_out sc_logic 1 signal 11 } 
	{ buf_pool2_6_q0 sc_in sc_lv 31 signal 11 } 
	{ buf_pool2_7_address0 sc_out sc_lv 8 signal 12 } 
	{ buf_pool2_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ buf_pool2_7_q0 sc_in sc_lv 31 signal 12 } 
	{ buf_pool2_8_address0 sc_out sc_lv 8 signal 13 } 
	{ buf_pool2_8_ce0 sc_out sc_logic 1 signal 13 } 
	{ buf_pool2_8_q0 sc_in sc_lv 31 signal 13 } 
	{ buf_pool2_9_address0 sc_out sc_lv 8 signal 14 } 
	{ buf_pool2_9_ce0 sc_out sc_logic 1 signal 14 } 
	{ buf_pool2_9_q0 sc_in sc_lv 31 signal 14 } 
	{ buf_pool2_10_address0 sc_out sc_lv 8 signal 15 } 
	{ buf_pool2_10_ce0 sc_out sc_logic 1 signal 15 } 
	{ buf_pool2_10_q0 sc_in sc_lv 31 signal 15 } 
	{ buf_pool2_11_address0 sc_out sc_lv 8 signal 16 } 
	{ buf_pool2_11_ce0 sc_out sc_logic 1 signal 16 } 
	{ buf_pool2_11_q0 sc_in sc_lv 31 signal 16 } 
	{ buf_pool2_12_address0 sc_out sc_lv 8 signal 17 } 
	{ buf_pool2_12_ce0 sc_out sc_logic 1 signal 17 } 
	{ buf_pool2_12_q0 sc_in sc_lv 31 signal 17 } 
	{ buf_pool2_13_address0 sc_out sc_lv 8 signal 18 } 
	{ buf_pool2_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ buf_pool2_13_q0 sc_in sc_lv 31 signal 18 } 
	{ buf_pool2_14_address0 sc_out sc_lv 8 signal 19 } 
	{ buf_pool2_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ buf_pool2_14_q0 sc_in sc_lv 31 signal 19 } 
	{ buf_pool2_15_address0 sc_out sc_lv 8 signal 20 } 
	{ buf_pool2_15_ce0 sc_out sc_logic 1 signal 20 } 
	{ buf_pool2_15_q0 sc_in sc_lv 31 signal 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "buf_pool2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_0", "role": "address0" }} , 
 	{ "name": "buf_pool2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_0", "role": "ce0" }} , 
 	{ "name": "buf_pool2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_0", "role": "q0" }} , 
 	{ "name": "buf_pool2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_1", "role": "address0" }} , 
 	{ "name": "buf_pool2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_1", "role": "ce0" }} , 
 	{ "name": "buf_pool2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_1", "role": "q0" }} , 
 	{ "name": "buf_pool2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_2", "role": "address0" }} , 
 	{ "name": "buf_pool2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_2", "role": "ce0" }} , 
 	{ "name": "buf_pool2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_2", "role": "q0" }} , 
 	{ "name": "buf_pool2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_3", "role": "address0" }} , 
 	{ "name": "buf_pool2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_3", "role": "ce0" }} , 
 	{ "name": "buf_pool2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_3", "role": "q0" }} , 
 	{ "name": "buf_pool2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_4", "role": "address0" }} , 
 	{ "name": "buf_pool2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_4", "role": "ce0" }} , 
 	{ "name": "buf_pool2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_4", "role": "q0" }} , 
 	{ "name": "buf_pool2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_5", "role": "address0" }} , 
 	{ "name": "buf_pool2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_5", "role": "ce0" }} , 
 	{ "name": "buf_pool2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_5", "role": "q0" }} , 
 	{ "name": "buf_pool2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_6", "role": "address0" }} , 
 	{ "name": "buf_pool2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_6", "role": "ce0" }} , 
 	{ "name": "buf_pool2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_6", "role": "q0" }} , 
 	{ "name": "buf_pool2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_7", "role": "address0" }} , 
 	{ "name": "buf_pool2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_7", "role": "ce0" }} , 
 	{ "name": "buf_pool2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_7", "role": "q0" }} , 
 	{ "name": "buf_pool2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_8", "role": "address0" }} , 
 	{ "name": "buf_pool2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_8", "role": "ce0" }} , 
 	{ "name": "buf_pool2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_8", "role": "q0" }} , 
 	{ "name": "buf_pool2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_9", "role": "address0" }} , 
 	{ "name": "buf_pool2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_9", "role": "ce0" }} , 
 	{ "name": "buf_pool2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_9", "role": "q0" }} , 
 	{ "name": "buf_pool2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_10", "role": "address0" }} , 
 	{ "name": "buf_pool2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_10", "role": "ce0" }} , 
 	{ "name": "buf_pool2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_10", "role": "q0" }} , 
 	{ "name": "buf_pool2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_11", "role": "address0" }} , 
 	{ "name": "buf_pool2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_11", "role": "ce0" }} , 
 	{ "name": "buf_pool2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_11", "role": "q0" }} , 
 	{ "name": "buf_pool2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_12", "role": "address0" }} , 
 	{ "name": "buf_pool2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_12", "role": "ce0" }} , 
 	{ "name": "buf_pool2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_12", "role": "q0" }} , 
 	{ "name": "buf_pool2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_13", "role": "address0" }} , 
 	{ "name": "buf_pool2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_13", "role": "ce0" }} , 
 	{ "name": "buf_pool2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_13", "role": "q0" }} , 
 	{ "name": "buf_pool2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_14", "role": "address0" }} , 
 	{ "name": "buf_pool2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_14", "role": "ce0" }} , 
 	{ "name": "buf_pool2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_14", "role": "q0" }} , 
 	{ "name": "buf_pool2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_pool2_15", "role": "address0" }} , 
 	{ "name": "buf_pool2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool2_15", "role": "ce0" }} , 
 	{ "name": "buf_pool2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool2_15", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "conv_layer3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138248", "EstimateLatencyMax" : "138248",
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
			{"Name" : "buf_pool2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv3_15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv3_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tinyyolo_lite_ureCeG_U48", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tinyyolo_lite_ureCeG_U49", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_layer3 {
		output_0 {Type O LastRead -1 FirstWrite 17}
		output_1 {Type O LastRead -1 FirstWrite 17}
		output_2 {Type O LastRead -1 FirstWrite 17}
		output_3 {Type O LastRead -1 FirstWrite 17}
		output_4 {Type O LastRead -1 FirstWrite 17}
		buf_pool2_0 {Type I LastRead 17 FirstWrite -1}
		w_conv3_0 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_1 {Type I LastRead 17 FirstWrite -1}
		w_conv3_1 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_2 {Type I LastRead 17 FirstWrite -1}
		w_conv3_2 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_3 {Type I LastRead 17 FirstWrite -1}
		w_conv3_3 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_4 {Type I LastRead 17 FirstWrite -1}
		w_conv3_4 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_5 {Type I LastRead 17 FirstWrite -1}
		w_conv3_5 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_6 {Type I LastRead 17 FirstWrite -1}
		w_conv3_6 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_7 {Type I LastRead 17 FirstWrite -1}
		w_conv3_7 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_8 {Type I LastRead 17 FirstWrite -1}
		w_conv3_8 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_9 {Type I LastRead 17 FirstWrite -1}
		w_conv3_9 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_10 {Type I LastRead 17 FirstWrite -1}
		w_conv3_10 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_11 {Type I LastRead 17 FirstWrite -1}
		w_conv3_11 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_12 {Type I LastRead 17 FirstWrite -1}
		w_conv3_12 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_13 {Type I LastRead 17 FirstWrite -1}
		w_conv3_13 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_14 {Type I LastRead 17 FirstWrite -1}
		w_conv3_14 {Type I LastRead -1 FirstWrite -1}
		buf_pool2_15 {Type I LastRead 17 FirstWrite -1}
		w_conv3_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "138248", "Max" : "138248"}
	, {"Name" : "Interval", "Min" : "138248", "Max" : "138248"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_0 { ap_memory {  { output_0_address0 mem_address 1 11 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 31 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 11 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 31 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 10 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 31 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 10 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 31 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 10 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 31 } } }
	buf_pool2_0 { ap_memory {  { buf_pool2_0_address0 mem_address 1 8 }  { buf_pool2_0_ce0 mem_ce 1 1 }  { buf_pool2_0_q0 mem_dout 0 31 } } }
	buf_pool2_1 { ap_memory {  { buf_pool2_1_address0 mem_address 1 8 }  { buf_pool2_1_ce0 mem_ce 1 1 }  { buf_pool2_1_q0 mem_dout 0 31 } } }
	buf_pool2_2 { ap_memory {  { buf_pool2_2_address0 mem_address 1 8 }  { buf_pool2_2_ce0 mem_ce 1 1 }  { buf_pool2_2_q0 mem_dout 0 31 } } }
	buf_pool2_3 { ap_memory {  { buf_pool2_3_address0 mem_address 1 8 }  { buf_pool2_3_ce0 mem_ce 1 1 }  { buf_pool2_3_q0 mem_dout 0 31 } } }
	buf_pool2_4 { ap_memory {  { buf_pool2_4_address0 mem_address 1 8 }  { buf_pool2_4_ce0 mem_ce 1 1 }  { buf_pool2_4_q0 mem_dout 0 31 } } }
	buf_pool2_5 { ap_memory {  { buf_pool2_5_address0 mem_address 1 8 }  { buf_pool2_5_ce0 mem_ce 1 1 }  { buf_pool2_5_q0 mem_dout 0 31 } } }
	buf_pool2_6 { ap_memory {  { buf_pool2_6_address0 mem_address 1 8 }  { buf_pool2_6_ce0 mem_ce 1 1 }  { buf_pool2_6_q0 mem_dout 0 31 } } }
	buf_pool2_7 { ap_memory {  { buf_pool2_7_address0 mem_address 1 8 }  { buf_pool2_7_ce0 mem_ce 1 1 }  { buf_pool2_7_q0 mem_dout 0 31 } } }
	buf_pool2_8 { ap_memory {  { buf_pool2_8_address0 mem_address 1 8 }  { buf_pool2_8_ce0 mem_ce 1 1 }  { buf_pool2_8_q0 mem_dout 0 31 } } }
	buf_pool2_9 { ap_memory {  { buf_pool2_9_address0 mem_address 1 8 }  { buf_pool2_9_ce0 mem_ce 1 1 }  { buf_pool2_9_q0 mem_dout 0 31 } } }
	buf_pool2_10 { ap_memory {  { buf_pool2_10_address0 mem_address 1 8 }  { buf_pool2_10_ce0 mem_ce 1 1 }  { buf_pool2_10_q0 mem_dout 0 31 } } }
	buf_pool2_11 { ap_memory {  { buf_pool2_11_address0 mem_address 1 8 }  { buf_pool2_11_ce0 mem_ce 1 1 }  { buf_pool2_11_q0 mem_dout 0 31 } } }
	buf_pool2_12 { ap_memory {  { buf_pool2_12_address0 mem_address 1 8 }  { buf_pool2_12_ce0 mem_ce 1 1 }  { buf_pool2_12_q0 mem_dout 0 31 } } }
	buf_pool2_13 { ap_memory {  { buf_pool2_13_address0 mem_address 1 8 }  { buf_pool2_13_ce0 mem_ce 1 1 }  { buf_pool2_13_q0 mem_dout 0 31 } } }
	buf_pool2_14 { ap_memory {  { buf_pool2_14_address0 mem_address 1 8 }  { buf_pool2_14_ce0 mem_ce 1 1 }  { buf_pool2_14_q0 mem_dout 0 31 } } }
	buf_pool2_15 { ap_memory {  { buf_pool2_15_address0 mem_address 1 8 }  { buf_pool2_15_ce0 mem_ce 1 1 }  { buf_pool2_15_q0 mem_dout 0 31 } } }
}
