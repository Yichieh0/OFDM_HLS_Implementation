set moduleName channel_gen_Pipeline_VITIS_LOOP_181_12
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
set C_modelName {channel_gen_Pipeline_VITIS_LOOP_181_12}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv_i_i_i131_le3933 int 22 regular  }
	{ conv_i_i_i205_le3926 int 22 regular  }
	{ n_6taps_V int 22 regular {array 6 { 1 3 } 1 1 }  }
	{ x_real_6taps_V int 22 regular {array 6 { 1 3 } 1 1 }  }
	{ x_imag_6taps_V int 22 regular {array 6 { 1 3 } 1 1 }  }
	{ lhs_V_18_out int 22 regular {pointer 1}  }
	{ lhs_V_16_out int 22 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv_i_i_i131_le3933", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "conv_i_i_i205_le3926", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "n_6taps_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "x_real_6taps_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "x_imag_6taps_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "lhs_V_18_out", "interface" : "wire", "bitwidth" : 22, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lhs_V_16_out", "interface" : "wire", "bitwidth" : 22, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv_i_i_i131_le3933 sc_in sc_lv 22 signal 0 } 
	{ conv_i_i_i205_le3926 sc_in sc_lv 22 signal 1 } 
	{ n_6taps_V_address0 sc_out sc_lv 3 signal 2 } 
	{ n_6taps_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ n_6taps_V_q0 sc_in sc_lv 22 signal 2 } 
	{ x_real_6taps_V_address0 sc_out sc_lv 3 signal 3 } 
	{ x_real_6taps_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_real_6taps_V_q0 sc_in sc_lv 22 signal 3 } 
	{ x_imag_6taps_V_address0 sc_out sc_lv 3 signal 4 } 
	{ x_imag_6taps_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_imag_6taps_V_q0 sc_in sc_lv 22 signal 4 } 
	{ lhs_V_18_out sc_out sc_lv 22 signal 5 } 
	{ lhs_V_18_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ lhs_V_16_out sc_out sc_lv 22 signal 6 } 
	{ lhs_V_16_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv_i_i_i131_le3933", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "conv_i_i_i131_le3933", "role": "default" }} , 
 	{ "name": "conv_i_i_i205_le3926", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "conv_i_i_i205_le3926", "role": "default" }} , 
 	{ "name": "n_6taps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "n_6taps_V", "role": "address0" }} , 
 	{ "name": "n_6taps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_6taps_V", "role": "ce0" }} , 
 	{ "name": "n_6taps_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "n_6taps_V", "role": "q0" }} , 
 	{ "name": "x_real_6taps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_real_6taps_V", "role": "address0" }} , 
 	{ "name": "x_real_6taps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_real_6taps_V", "role": "ce0" }} , 
 	{ "name": "x_real_6taps_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_real_6taps_V", "role": "q0" }} , 
 	{ "name": "x_imag_6taps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_imag_6taps_V", "role": "address0" }} , 
 	{ "name": "x_imag_6taps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_imag_6taps_V", "role": "ce0" }} , 
 	{ "name": "x_imag_6taps_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "x_imag_6taps_V", "role": "q0" }} , 
 	{ "name": "lhs_V_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "lhs_V_18_out", "role": "default" }} , 
 	{ "name": "lhs_V_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lhs_V_18_out", "role": "ap_vld" }} , 
 	{ "name": "lhs_V_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "lhs_V_16_out", "role": "default" }} , 
 	{ "name": "lhs_V_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lhs_V_16_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_181_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_i_i_i131_le3933", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i205_le3926", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_6taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_real_6taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_imag_6taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_6taps", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_6taps_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_37_1_1_U71", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_37_1_1_U72", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_22s_15ns_37_4_1_U73", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	channel_gen_Pipeline_VITIS_LOOP_181_12 {
		conv_i_i_i131_le3933 {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i205_le3926 {Type I LastRead 0 FirstWrite -1}
		n_6taps_V {Type I LastRead 0 FirstWrite -1}
		x_real_6taps_V {Type I LastRead 3 FirstWrite -1}
		x_imag_6taps_V {Type I LastRead 3 FirstWrite -1}
		lhs_V_18_out {Type O LastRead -1 FirstWrite 3}
		lhs_V_16_out {Type O LastRead -1 FirstWrite 3}
		weight_6taps {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv_i_i_i131_le3933 { ap_none {  { conv_i_i_i131_le3933 in_data 0 22 } } }
	conv_i_i_i205_le3926 { ap_none {  { conv_i_i_i205_le3926 in_data 0 22 } } }
	n_6taps_V { ap_memory {  { n_6taps_V_address0 mem_address 1 3 }  { n_6taps_V_ce0 mem_ce 1 1 }  { n_6taps_V_q0 mem_dout 0 22 } } }
	x_real_6taps_V { ap_memory {  { x_real_6taps_V_address0 mem_address 1 3 }  { x_real_6taps_V_ce0 mem_ce 1 1 }  { x_real_6taps_V_q0 mem_dout 0 22 } } }
	x_imag_6taps_V { ap_memory {  { x_imag_6taps_V_address0 mem_address 1 3 }  { x_imag_6taps_V_ce0 mem_ce 1 1 }  { x_imag_6taps_V_q0 mem_dout 0 22 } } }
	lhs_V_18_out { ap_vld {  { lhs_V_18_out out_data 1 22 }  { lhs_V_18_out_ap_vld out_vld 1 1 } } }
	lhs_V_16_out { ap_vld {  { lhs_V_16_out out_data 1 22 }  { lhs_V_16_out_ap_vld out_vld 1 1 } } }
}
