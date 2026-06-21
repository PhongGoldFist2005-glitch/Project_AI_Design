set moduleName detection_head
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
set C_modelName {detection_head}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ buf_conv3_4 int 31 regular {array 768 { 1 3 } 1 1 } {global 0}  }
	{ buf_conv3_0 int 31 regular {array 1152 { 1 3 } 1 1 } {global 0}  }
	{ buf_conv3_1 int 31 regular {array 1152 { 1 3 } 1 1 } {global 0}  }
	{ buf_conv3_2 int 31 regular {array 768 { 1 3 } 1 1 } {global 0}  }
	{ buf_conv3_3 int 31 regular {array 768 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_conv3_4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_conv3_0", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_conv3_1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_conv3_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "buf_conv3_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 10 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 32 signal 0 } 
	{ buf_conv3_4_address0 sc_out sc_lv 10 signal 1 } 
	{ buf_conv3_4_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_conv3_4_q0 sc_in sc_lv 31 signal 1 } 
	{ buf_conv3_0_address0 sc_out sc_lv 11 signal 2 } 
	{ buf_conv3_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_conv3_0_q0 sc_in sc_lv 31 signal 2 } 
	{ buf_conv3_1_address0 sc_out sc_lv 11 signal 3 } 
	{ buf_conv3_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_conv3_1_q0 sc_in sc_lv 31 signal 3 } 
	{ buf_conv3_2_address0 sc_out sc_lv 10 signal 4 } 
	{ buf_conv3_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_conv3_2_q0 sc_in sc_lv 31 signal 4 } 
	{ buf_conv3_3_address0 sc_out sc_lv 10 signal 5 } 
	{ buf_conv3_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_conv3_3_q0 sc_in sc_lv 31 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "buf_conv3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_conv3_4", "role": "address0" }} , 
 	{ "name": "buf_conv3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv3_4", "role": "ce0" }} , 
 	{ "name": "buf_conv3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv3_4", "role": "q0" }} , 
 	{ "name": "buf_conv3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_conv3_0", "role": "address0" }} , 
 	{ "name": "buf_conv3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv3_0", "role": "ce0" }} , 
 	{ "name": "buf_conv3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv3_0", "role": "q0" }} , 
 	{ "name": "buf_conv3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_conv3_1", "role": "address0" }} , 
 	{ "name": "buf_conv3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv3_1", "role": "ce0" }} , 
 	{ "name": "buf_conv3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv3_1", "role": "q0" }} , 
 	{ "name": "buf_conv3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_conv3_2", "role": "address0" }} , 
 	{ "name": "buf_conv3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv3_2", "role": "ce0" }} , 
 	{ "name": "buf_conv3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv3_2", "role": "q0" }} , 
 	{ "name": "buf_conv3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_conv3_3", "role": "address0" }} , 
 	{ "name": "buf_conv3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_conv3_3", "role": "ce0" }} , 
 	{ "name": "buf_conv3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "buf_conv3_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "detection_head",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "177153", "EstimateLatencyMax" : "177153",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_det_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_det_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_det_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_det_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_det_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_conv3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_conv3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_conv3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_conv3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_conv3_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_det_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_det_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_det_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_det_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_det_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tinyyolo_lite_ureIfE_U74", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	detection_head {
		output_r {Type O LastRead -1 FirstWrite 10}
		w_det_0 {Type I LastRead -1 FirstWrite -1}
		w_det_1 {Type I LastRead -1 FirstWrite -1}
		w_det_2 {Type I LastRead -1 FirstWrite -1}
		w_det_3 {Type I LastRead -1 FirstWrite -1}
		w_det_4 {Type I LastRead -1 FirstWrite -1}
		buf_conv3_4 {Type I LastRead 11 FirstWrite -1}
		buf_conv3_0 {Type I LastRead 11 FirstWrite -1}
		buf_conv3_1 {Type I LastRead 11 FirstWrite -1}
		buf_conv3_2 {Type I LastRead 11 FirstWrite -1}
		buf_conv3_3 {Type I LastRead 11 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "177153", "Max" : "177153"}
	, {"Name" : "Interval", "Min" : "177153", "Max" : "177153"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 10 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 32 } } }
	buf_conv3_4 { ap_memory {  { buf_conv3_4_address0 mem_address 1 10 }  { buf_conv3_4_ce0 mem_ce 1 1 }  { buf_conv3_4_q0 mem_dout 0 31 } } }
	buf_conv3_0 { ap_memory {  { buf_conv3_0_address0 mem_address 1 11 }  { buf_conv3_0_ce0 mem_ce 1 1 }  { buf_conv3_0_q0 mem_dout 0 31 } } }
	buf_conv3_1 { ap_memory {  { buf_conv3_1_address0 mem_address 1 11 }  { buf_conv3_1_ce0 mem_ce 1 1 }  { buf_conv3_1_q0 mem_dout 0 31 } } }
	buf_conv3_2 { ap_memory {  { buf_conv3_2_address0 mem_address 1 10 }  { buf_conv3_2_ce0 mem_ce 1 1 }  { buf_conv3_2_q0 mem_dout 0 31 } } }
	buf_conv3_3 { ap_memory {  { buf_conv3_3_address0 mem_address 1 10 }  { buf_conv3_3_ce0 mem_ce 1 1 }  { buf_conv3_3_q0 mem_dout 0 31 } } }
}
