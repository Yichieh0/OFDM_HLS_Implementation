set moduleName seedInitialization_Pipeline_SEED_INIT_LOOP
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
set C_modelName {seedInitialization_Pipeline_SEED_INIT_LOOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ rngMT19937ICN_uniformRNG_mt_even_0_V int 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ rngMT19937ICN_uniformRNG_mt_even_1_V int 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V int 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_address0 sc_out sc_lv 9 signal 0 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_we0 sc_out sc_logic 1 signal 0 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_d0 sc_out sc_lv 32 signal 0 } 
	{ rngMT19937ICN_uniformRNG_mt_even_1_V_address0 sc_out sc_lv 9 signal 1 } 
	{ rngMT19937ICN_uniformRNG_mt_even_1_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ rngMT19937ICN_uniformRNG_mt_even_1_V_we0 sc_out sc_logic 1 signal 1 } 
	{ rngMT19937ICN_uniformRNG_mt_even_1_V_d0 sc_out sc_lv 32 signal 1 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 sc_out sc_lv 9 signal 2 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_we0 sc_out sc_logic 1 signal 2 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "address0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "ce0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "we0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "d0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_1_V", "role": "address0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_1_V", "role": "ce0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_1_V", "role": "we0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_1_V", "role": "d0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "address0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "ce0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "we0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_uniformRNG_mt_odd_1_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32ns_32_1_1_U37", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seedInitialization_Pipeline_SEED_INIT_LOOP {
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "625", "Max" : "625"}
	, {"Name" : "Interval", "Min" : "625", "Max" : "625"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rngMT19937ICN_uniformRNG_mt_even_0_V { ap_memory {  { rngMT19937ICN_uniformRNG_mt_even_0_V_address0 mem_address 1 9 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 mem_ce 1 1 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_we0 mem_we 1 1 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_d0 mem_din 1 32 } } }
	rngMT19937ICN_uniformRNG_mt_even_1_V { ap_memory {  { rngMT19937ICN_uniformRNG_mt_even_1_V_address0 mem_address 1 9 }  { rngMT19937ICN_uniformRNG_mt_even_1_V_ce0 mem_ce 1 1 }  { rngMT19937ICN_uniformRNG_mt_even_1_V_we0 mem_we 1 1 }  { rngMT19937ICN_uniformRNG_mt_even_1_V_d0 mem_din 1 32 } } }
	rngMT19937ICN_uniformRNG_mt_odd_0_V { ap_memory {  { rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 mem_address 1 9 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 mem_ce 1 1 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_we0 mem_we 1 1 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_d0 mem_din 1 32 } } }
}
