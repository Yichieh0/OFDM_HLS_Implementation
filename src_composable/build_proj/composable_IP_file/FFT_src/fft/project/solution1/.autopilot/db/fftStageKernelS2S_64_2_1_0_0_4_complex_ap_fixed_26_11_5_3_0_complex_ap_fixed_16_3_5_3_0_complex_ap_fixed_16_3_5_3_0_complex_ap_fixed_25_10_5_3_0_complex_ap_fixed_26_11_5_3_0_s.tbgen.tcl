set moduleName fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s
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
set C_modelName {fftStageKernelS2S<64, 2, 1, 0, 0, 4, complex<ap_fixed<26, 11, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<25, 10, 5, 3, 0> >, complex<ap_fixed<26, 11, 5, 3, 0> > >}
set C_modelType { void 0 }
set C_modelArgList {
	{ fftOutData_local2 int 128 regular {fifo 0 volatile }  }
	{ fftOutData_local int 128 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fftOutData_local2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fftOutData_local", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
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
	{ fftOutData_local2_dout sc_in sc_lv 128 signal 0 } 
	{ fftOutData_local2_empty_n sc_in sc_logic 1 signal 0 } 
	{ fftOutData_local2_read sc_out sc_logic 1 signal 0 } 
	{ fftOutData_local_din sc_out sc_lv 128 signal 1 } 
	{ fftOutData_local_full_n sc_in sc_logic 1 signal 1 } 
	{ fftOutData_local_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fftOutData_local2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fftOutData_local2", "role": "dout" }} , 
 	{ "name": "fftOutData_local2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local2", "role": "empty_n" }} , 
 	{ "name": "fftOutData_local2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local2", "role": "read" }} , 
 	{ "name": "fftOutData_local_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fftOutData_local", "role": "din" }} , 
 	{ "name": "fftOutData_local_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local", "role": "full_n" }} , 
 	{ "name": "fftOutData_local_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.twiddleObj_twiddleTable_M_imag_V_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_25s_15s_39_4_1_U80", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_25s_15s_39_4_1_U81", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_25s_15s_39_4_1_U82", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_25s_15s_39_4_1_U83", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 6}
		twiddleObj_twiddleTable_M_imag_V_2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fftOutData_local2 { ap_fifo {  { fftOutData_local2_dout fifo_data 0 128 }  { fftOutData_local2_empty_n fifo_status 0 1 }  { fftOutData_local2_read fifo_update 1 1 } } }
	fftOutData_local { ap_fifo {  { fftOutData_local_din fifo_data 1 128 }  { fftOutData_local_full_n fifo_status 0 1 }  { fftOutData_local_write fifo_update 1 1 } } }
}
