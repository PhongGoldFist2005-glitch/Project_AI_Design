set moduleName conv_layer2
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
set C_modelName {conv_layer2}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_0 int 31 regular {array 6960 { 0 3 } 0 1 }  }
	{ output_1 int 31 regular {array 6496 { 0 3 } 0 1 }  }
	{ buf_pool1_0 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool1_1 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool1_2 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool1_3 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool1_4 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool1_5 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool1_6 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
	{ buf_pool1_7 int 31 regular {array 961 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_pool1_0", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool1_1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool1_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool1_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool1_4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool1_5", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool1_6", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_pool1_7", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_0_address0 sc_out sc_lv 13 signal 0 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_0_we0 sc_out sc_logic 1 signal 0 } 
	{ output_0_d0 sc_out sc_lv 31 signal 0 } 
	{ output_1_address0 sc_out sc_lv 13 signal 1 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_1_we0 sc_out sc_logic 1 signal 1 } 
	{ output_1_d0 sc_out sc_lv 31 signal 1 } 
	{ buf_pool1_0_address0 sc_out sc_lv 10 signal 2 } 
	{ buf_pool1_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_pool1_0_q0 sc_in sc_lv 31 signal 2 } 
	{ buf_pool1_1_address0 sc_out sc_lv 10 signal 3 } 
	{ buf_pool1_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_pool1_1_q0 sc_in sc_lv 31 signal 3 } 
	{ buf_pool1_2_address0 sc_out sc_lv 10 signal 4 } 
	{ buf_pool1_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_pool1_2_q0 sc_in sc_lv 31 signal 4 } 
	{ buf_pool1_3_address0 sc_out sc_lv 10 signal 5 } 
	{ buf_pool1_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_pool1_3_q0 sc_in sc_lv 31 signal 5 } 
	{ buf_pool1_4_address0 sc_out sc_lv 10 signal 6 } 
	{ buf_pool1_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf_pool1_4_q0 sc_in sc_lv 31 signal 6 } 
	{ buf_pool1_5_address0 sc_out sc_lv 10 signal 7 } 
	{ buf_pool1_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_pool1_5_q0 sc_in sc_lv 31 signal 7 } 
	{ buf_pool1_6_address0 sc_out sc_lv 10 signal 8 } 
	{ buf_pool1_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf_pool1_6_q0 sc_in sc_lv 31 signal 8 } 
	{ buf_pool1_7_address0 sc_out sc_lv 10 signal 9 } 
	{ buf_pool1_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf_pool1_7_q0 sc_in sc_lv 31 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "buf_pool1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_0", "role": "address0" }} , 
 	{ "name": "buf_pool1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_0", "role": "ce0" }} , 
 	{ "name": "buf_pool1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_0", "role": "q0" }} , 
 	{ "name": "buf_pool1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_1", "role": "address0" }} , 
 	{ "name": "buf_pool1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_1", "role": "ce0" }} , 
 	{ "name": "buf_pool1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_1", "role": "q0" }} , 
 	{ "name": "buf_pool1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_2", "role": "address0" }} , 
 	{ "name": "buf_pool1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_2", "role": "ce0" }} , 
 	{ "name": "buf_pool1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_2", "role": "q0" }} , 
 	{ "name": "buf_pool1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_3", "role": "address0" }} , 
 	{ "name": "buf_pool1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_3", "role": "ce0" }} , 
 	{ "name": "buf_pool1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_3", "role": "q0" }} , 
 	{ "name": "buf_pool1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_4", "role": "address0" }} , 
 	{ "name": "buf_pool1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_4", "role": "ce0" }} , 
 	{ "name": "buf_pool1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_4", "role": "q0" }} , 
 	{ "name": "buf_pool1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_5", "role": "address0" }} , 
 	{ "name": "buf_pool1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_5", "role": "ce0" }} , 
 	{ "name": "buf_pool1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_5", "role": "q0" }} , 
 	{ "name": "buf_pool1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_6", "role": "address0" }} , 
 	{ "name": "buf_pool1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_6", "role": "ce0" }} , 
 	{ "name": "buf_pool1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_6", "role": "q0" }} , 
 	{ "name": "buf_pool1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_pool1_7", "role": "address0" }} , 
 	{ "name": "buf_pool1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_pool1_7", "role": "ce0" }} , 
 	{ "name": "buf_pool1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_pool1_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "conv_layer2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "228753", "EstimateLatencyMax" : "228753",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_pool1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_pool1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_conv2_7", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_7_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_layer2 {
		output_0 {Type O LastRead -1 FirstWrite 4}
		output_1 {Type O LastRead -1 FirstWrite 4}
		buf_pool1_0 {Type I LastRead 4 FirstWrite -1}
		w_conv2_0 {Type I LastRead -1 FirstWrite -1}
		buf_pool1_1 {Type I LastRead 4 FirstWrite -1}
		w_conv2_1 {Type I LastRead -1 FirstWrite -1}
		buf_pool1_2 {Type I LastRead 5 FirstWrite -1}
		w_conv2_2 {Type I LastRead -1 FirstWrite -1}
		buf_pool1_3 {Type I LastRead 5 FirstWrite -1}
		w_conv2_3 {Type I LastRead -1 FirstWrite -1}
		buf_pool1_4 {Type I LastRead 4 FirstWrite -1}
		w_conv2_4 {Type I LastRead -1 FirstWrite -1}
		buf_pool1_5 {Type I LastRead 4 FirstWrite -1}
		w_conv2_5 {Type I LastRead -1 FirstWrite -1}
		buf_pool1_6 {Type I LastRead 5 FirstWrite -1}
		w_conv2_6 {Type I LastRead -1 FirstWrite -1}
		buf_pool1_7 {Type I LastRead 5 FirstWrite -1}
		w_conv2_7 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "228753", "Max" : "228753"}
	, {"Name" : "Interval", "Min" : "228753", "Max" : "228753"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_0 { ap_memory {  { output_0_address0 mem_address 1 13 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 31 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 13 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 31 } } }
	buf_pool1_0 { ap_memory {  { buf_pool1_0_address0 mem_address 1 10 }  { buf_pool1_0_ce0 mem_ce 1 1 }  { buf_pool1_0_q0 mem_dout 0 31 } } }
	buf_pool1_1 { ap_memory {  { buf_pool1_1_address0 mem_address 1 10 }  { buf_pool1_1_ce0 mem_ce 1 1 }  { buf_pool1_1_q0 mem_dout 0 31 } } }
	buf_pool1_2 { ap_memory {  { buf_pool1_2_address0 mem_address 1 10 }  { buf_pool1_2_ce0 mem_ce 1 1 }  { buf_pool1_2_q0 mem_dout 0 31 } } }
	buf_pool1_3 { ap_memory {  { buf_pool1_3_address0 mem_address 1 10 }  { buf_pool1_3_ce0 mem_ce 1 1 }  { buf_pool1_3_q0 mem_dout 0 31 } } }
	buf_pool1_4 { ap_memory {  { buf_pool1_4_address0 mem_address 1 10 }  { buf_pool1_4_ce0 mem_ce 1 1 }  { buf_pool1_4_q0 mem_dout 0 31 } } }
	buf_pool1_5 { ap_memory {  { buf_pool1_5_address0 mem_address 1 10 }  { buf_pool1_5_ce0 mem_ce 1 1 }  { buf_pool1_5_q0 mem_dout 0 31 } } }
	buf_pool1_6 { ap_memory {  { buf_pool1_6_address0 mem_address 1 10 }  { buf_pool1_6_ce0 mem_ce 1 1 }  { buf_pool1_6_q0 mem_dout 0 31 } } }
	buf_pool1_7 { ap_memory {  { buf_pool1_7_address0 mem_address 1 10 }  { buf_pool1_7_ce0 mem_ce 1 1 }  { buf_pool1_7_q0 mem_dout 0 31 } } }
}
