set moduleName deQAM_Pipeline_VITIS_LOOP_95_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {deQAM_Pipeline_VITIS_LOOP_95_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ select_ln70_1_cast int 2 regular  }
	{ or_ln1827_1 int 1 regular  }
	{ op2_assign double 64 regular  }
	{ read_in_imag_V_2 int 22 regular  }
	{ select_ln95 int 3 regular  }
	{ v_V_1_out int 4 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "select_ln70_1_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln1827_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "op2_assign", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "read_in_imag_V_2", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln95", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "v_V_1_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln70_1_cast sc_in sc_lv 2 signal 0 } 
	{ or_ln1827_1 sc_in sc_lv 1 signal 1 } 
	{ op2_assign sc_in sc_lv 64 signal 2 } 
	{ read_in_imag_V_2 sc_in sc_lv 22 signal 3 } 
	{ select_ln95 sc_in sc_lv 3 signal 4 } 
	{ v_V_1_out sc_out sc_lv 4 signal 5 } 
	{ v_V_1_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln70_1_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln70_1_cast", "role": "default" }} , 
 	{ "name": "or_ln1827_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "or_ln1827_1", "role": "default" }} , 
 	{ "name": "op2_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "op2_assign", "role": "default" }} , 
 	{ "name": "read_in_imag_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "read_in_imag_V_2", "role": "default" }} , 
 	{ "name": "select_ln95", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln95", "role": "default" }} , 
 	{ "name": "v_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v_V_1_out", "role": "default" }} , 
 	{ "name": "v_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "v_V_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "deQAM_Pipeline_VITIS_LOOP_95_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "select_ln70_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln1827_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "read_in_imag_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln95", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_95_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U28", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitodp_32ns_64_2_no_dsp_1_U29", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	deQAM_Pipeline_VITIS_LOOP_95_4 {
		select_ln70_1_cast {Type I LastRead 0 FirstWrite -1}
		or_ln1827_1 {Type I LastRead 0 FirstWrite -1}
		op2_assign {Type I LastRead 0 FirstWrite -1}
		read_in_imag_V_2 {Type I LastRead 0 FirstWrite -1}
		select_ln95 {Type I LastRead 0 FirstWrite -1}
		v_V_1_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	select_ln70_1_cast { ap_none {  { select_ln70_1_cast in_data 0 2 } } }
	or_ln1827_1 { ap_none {  { or_ln1827_1 in_data 0 1 } } }
	op2_assign { ap_none {  { op2_assign in_data 0 64 } } }
	read_in_imag_V_2 { ap_none {  { read_in_imag_V_2 in_data 0 22 } } }
	select_ln95 { ap_none {  { select_ln95 in_data 0 3 } } }
	v_V_1_out { ap_vld {  { v_V_1_out out_data 1 4 }  { v_V_1_out_ap_vld out_vld 1 1 } } }
}
