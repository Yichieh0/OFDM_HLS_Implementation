set moduleName rand
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {rand}
set C_modelType { void 0 }
set C_modelArgList {
	{ random_num3774 int 22 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "random_num3774", "interface" : "fifo", "bitwidth" : 22, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ random_num3774_din sc_out sc_lv 22 signal 0 } 
	{ random_num3774_full_n sc_in sc_logic 1 signal 0 } 
	{ random_num3774_write sc_out sc_logic 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "random_num3774_din", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "random_num3774", "role": "din" }} , 
 	{ "name": "random_num3774_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "random_num3774", "role": "full_n" }} , 
 	{ "name": "random_num3774_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "random_num3774", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "rand",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "674",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "random_num3774", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "random_num3774_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "t", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_addr_head_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_addr_head_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_uniformRNG_mt_even_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_uniformRNG_mt_odd_0_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_375", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "seedInitialization",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "629", "EstimateLatencyMax" : "629",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_addr_head_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_375.rngMT19937ICN_uniformRNG_mt_even_1_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Parent" : "3", "Child" : ["6", "7", "8"],
		"CDFG" : "seedInitialization_Pipeline_SEED_INIT_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "625", "EstimateLatencyMax" : "625",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "SEED_INIT_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65.rngMT19937ICN_uniformRNG_mt_odd_1_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65.mul_32s_32ns_32_1_1_U37", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_2_no_dsp_1_U50", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_full_dsp_1_U51", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U52", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_6_no_dsp_1_U53", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U54", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_1_no_dsp_1_U55", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_6_no_dsp_1_U56", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flog_32ns_32ns_32_5_full_dsp_1_U57", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rand {
		random_num3774 {Type O LastRead -1 FirstWrite 45}
		t {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_1_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_2_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_m_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_addr_head_V {Type IO LastRead -1 FirstWrite -1}}
	seedInitialization {
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type IO LastRead 4 FirstWrite 0}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type IO LastRead 4 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_0_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_x_k_p_1_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_x_k_p_2_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_x_k_p_m_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_addr_head_V {Type O LastRead -1 FirstWrite 4}}
	seedInitialization_Pipeline_SEED_INIT_LOOP {
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "674"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "674"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	random_num3774 { ap_fifo {  { random_num3774_din fifo_data 1 22 }  { random_num3774_full_n fifo_status 0 1 }  { random_num3774_write fifo_update 1 1 } } }
}
