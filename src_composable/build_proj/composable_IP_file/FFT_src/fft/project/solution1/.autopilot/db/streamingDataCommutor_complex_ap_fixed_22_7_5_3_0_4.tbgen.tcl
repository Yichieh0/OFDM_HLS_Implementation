set moduleName streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {streamingDataCommutor<complex<ap_fixed<22, 7, 5, 3, 0> > >.4}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp int 128 regular {fifo 0 volatile }  }
	{ p_fftInData_reOrdered int 128 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftInData_reOrdered", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp_dout sc_in sc_lv 128 signal 0 } 
	{ temp_empty_n sc_in sc_logic 1 signal 0 } 
	{ temp_read sc_out sc_logic 1 signal 0 } 
	{ p_fftInData_reOrdered_din sc_out sc_lv 128 signal 1 } 
	{ p_fftInData_reOrdered_full_n sc_in sc_logic 1 signal 1 } 
	{ p_fftInData_reOrdered_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "temp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp", "role": "dout" }} , 
 	{ "name": "temp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "empty_n" }} , 
 	{ "name": "temp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "read" }} , 
 	{ "name": "p_fftInData_reOrdered_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "din" }} , 
 	{ "name": "p_fftInData_reOrdered_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "full_n" }} , 
 	{ "name": "p_fftInData_reOrdered_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_fftInData_reOrdered_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delayline_Array_16_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_delayline_Array_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delayline_Array_15_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4 {
		temp {Type I LastRead 1 FirstWrite -1}
		p_fftInData_reOrdered {Type O LastRead -1 FirstWrite 3}
		control_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_3 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_3 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_16 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_3 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_15 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp { ap_fifo {  { temp_dout fifo_data 0 128 }  { temp_empty_n fifo_status 0 1 }  { temp_read fifo_update 1 1 } } }
	p_fftInData_reOrdered { ap_fifo {  { p_fftInData_reOrdered_din fifo_data 1 128 }  { p_fftInData_reOrdered_full_n fifo_status 0 1 }  { p_fftInData_reOrdered_write fifo_update 1 1 } } }
}
