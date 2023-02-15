set moduleName channel_gen_Pipeline_VITIS_LOOP_141_7
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
set C_modelName {channel_gen_Pipeline_VITIS_LOOP_141_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_imag_3taps_V_2_1 int 22 regular  }
	{ x_imag_3taps_V_1_1 int 22 regular  }
	{ x_imag_3taps_V_0_1 int 22 regular  }
	{ x_real_3taps_V_2_1 int 22 regular  }
	{ x_real_3taps_V_1_1 int 22 regular  }
	{ x_real_3taps_V_0_1 int 22 regular  }
	{ i_V int 4 regular  }
	{ x_imag_3taps_V_2_2_out int 22 regular {pointer 1}  }
	{ x_imag_3taps_V_1_2_out int 22 regular {pointer 1}  }
	{ x_real_3taps_V_2_2_out int 22 regular {pointer 1}  }
	{ x_real_3taps_V_1_2_out int 22 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_imag_3taps_V_2_1", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "x_imag_3taps_V_1_1", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "x_imag_3taps_V_0_1", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "x_real_3taps_V_2_1", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "x_real_3taps_V_1_1", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "x_real_3taps_V_0_1", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "i_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "x_imag_3taps_V_2_2_out", "interface" : "wire", "bitwidth" : 22, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_imag_3taps_V_1_2_out", "interface" : "wire", "bitwidth" : 22, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_real_3taps_V_2_2_out", "interface" : "wire", "bitwidth" : 22, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_real_3taps_V_1_2_out", "interface" : "wire", "bitwidth" : 22, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_imag_3taps_V_2_1 sc_in sc_lv 22 signal 0 } 
	{ x_imag_3taps_V_1_1 sc_in sc_lv 22 signal 1 } 
	{ x_imag_3taps_V_0_1 sc_in sc_lv 22 signal 2 } 
	{ x_real_3taps_V_2_1 sc_in sc_lv 22 signal 3 } 
	{ x_real_3taps_V_1_1 sc_in sc_lv 22 signal 4 } 
	{ x_real_3taps_V_0_1 sc_in sc_lv 22 signal 5 } 
	{ i_V sc_in sc_lv 4 signal 6 } 
	{ x_imag_3taps_V_2_2_out sc_out sc_lv 22 signal 7 } 
	{ x_imag_3taps_V_2_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ x_imag_3taps_V_1_2_out sc_out sc_lv 22 signal 8 } 
	{ x_imag_3taps_V_1_2_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ x_real_3taps_V_2_2_out sc_out sc_lv 22 signal 9 } 
	{ x_real_3taps_V_2_2_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ x_real_3taps_V_1_2_out sc_out sc_lv 22 signal 10 } 
	{ x_real_3taps_V_1_2_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_imag_3taps_V_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_imag_3taps_V_2_1", "role": "default" }} , 
 	{ "name": "x_imag_3taps_V_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_imag_3taps_V_1_1", "role": "default" }} , 
 	{ "name": "x_imag_3taps_V_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_imag_3taps_V_0_1", "role": "default" }} , 
 	{ "name": "x_real_3taps_V_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_real_3taps_V_2_1", "role": "default" }} , 
 	{ "name": "x_real_3taps_V_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_real_3taps_V_1_1", "role": "default" }} , 
 	{ "name": "x_real_3taps_V_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_real_3taps_V_0_1", "role": "default" }} , 
 	{ "name": "i_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "i_V", "role": "default" }} , 
 	{ "name": "x_imag_3taps_V_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_imag_3taps_V_2_2_out", "role": "default" }} , 
 	{ "name": "x_imag_3taps_V_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_imag_3taps_V_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_imag_3taps_V_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_imag_3taps_V_1_2_out", "role": "default" }} , 
 	{ "name": "x_imag_3taps_V_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_imag_3taps_V_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_real_3taps_V_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_real_3taps_V_2_2_out", "role": "default" }} , 
 	{ "name": "x_real_3taps_V_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_real_3taps_V_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_real_3taps_V_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_real_3taps_V_1_2_out", "role": "default" }} , 
 	{ "name": "x_real_3taps_V_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_real_3taps_V_1_2_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_141_7",
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
			{"Name" : "x_imag_3taps_V_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_imag_3taps_V_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_real_3taps_V_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_real_3taps_V_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_22_1_1_U84", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_22_1_1_U85", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_22_1_1_U86", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_22_1_1_U87", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_22_1_1_U88", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_22_1_1_U89", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_22_1_1_U90", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_22_1_1_U91", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	channel_gen_Pipeline_VITIS_LOOP_141_7 {
		x_imag_3taps_V_2_1 {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_1_1 {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_0_1 {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_2_1 {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_1_1 {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_0_1 {Type I LastRead 0 FirstWrite -1}
		i_V {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_2_2_out {Type O LastRead -1 FirstWrite 1}
		x_imag_3taps_V_1_2_out {Type O LastRead -1 FirstWrite 1}
		x_real_3taps_V_2_2_out {Type O LastRead -1 FirstWrite 1}
		x_real_3taps_V_1_2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_imag_3taps_V_2_1 { ap_none {  { x_imag_3taps_V_2_1 in_data 0 22 } } }
	x_imag_3taps_V_1_1 { ap_none {  { x_imag_3taps_V_1_1 in_data 0 22 } } }
	x_imag_3taps_V_0_1 { ap_none {  { x_imag_3taps_V_0_1 in_data 0 22 } } }
	x_real_3taps_V_2_1 { ap_none {  { x_real_3taps_V_2_1 in_data 0 22 } } }
	x_real_3taps_V_1_1 { ap_none {  { x_real_3taps_V_1_1 in_data 0 22 } } }
	x_real_3taps_V_0_1 { ap_none {  { x_real_3taps_V_0_1 in_data 0 22 } } }
	i_V { ap_none {  { i_V in_data 0 4 } } }
	x_imag_3taps_V_2_2_out { ap_vld {  { x_imag_3taps_V_2_2_out out_data 1 22 }  { x_imag_3taps_V_2_2_out_ap_vld out_vld 1 1 } } }
	x_imag_3taps_V_1_2_out { ap_vld {  { x_imag_3taps_V_1_2_out out_data 1 22 }  { x_imag_3taps_V_1_2_out_ap_vld out_vld 1 1 } } }
	x_real_3taps_V_2_2_out { ap_vld {  { x_real_3taps_V_2_2_out out_data 1 22 }  { x_real_3taps_V_2_2_out_ap_vld out_vld 1 1 } } }
	x_real_3taps_V_1_2_out { ap_vld {  { x_real_3taps_V_1_2_out out_data 1 22 }  { x_real_3taps_V_1_2_out_ap_vld out_vld 1 1 } } }
}