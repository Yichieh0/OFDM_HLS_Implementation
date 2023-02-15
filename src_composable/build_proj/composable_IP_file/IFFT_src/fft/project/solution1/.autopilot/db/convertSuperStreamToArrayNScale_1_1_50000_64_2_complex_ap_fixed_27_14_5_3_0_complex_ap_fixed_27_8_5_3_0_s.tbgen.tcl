set moduleName convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s
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
set C_modelName {convertSuperStreamToArrayNScale<1, 1, 50000, 64, 2, complex<ap_fixed<27, 14, 5, 3, 0> >, complex<ap_fixed<27, 8, 5, 3, 0> > >}
set C_modelType { void 0 }
set C_modelArgList {
	{ fftOutData_local int 128 regular {fifo 0 volatile }  }
	{ p_outDataArray_0_0_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_outDataArray_0_0_0_0_01 int 27 regular {fifo 1 volatile }  }
	{ p_outDataArray_0_1_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_outDataArray_0_1_0_0_02 int 27 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fftOutData_local", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_outDataArray_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outDataArray_0_0_0_0_01", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outDataArray_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outDataArray_0_1_0_0_02", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fftOutData_local_dout sc_in sc_lv 128 signal 0 } 
	{ fftOutData_local_empty_n sc_in sc_logic 1 signal 0 } 
	{ fftOutData_local_read sc_out sc_logic 1 signal 0 } 
	{ p_outDataArray_0_0_0_0_0_din sc_out sc_lv 27 signal 1 } 
	{ p_outDataArray_0_0_0_0_0_full_n sc_in sc_logic 1 signal 1 } 
	{ p_outDataArray_0_0_0_0_0_write sc_out sc_logic 1 signal 1 } 
	{ p_outDataArray_0_1_0_0_0_din sc_out sc_lv 27 signal 3 } 
	{ p_outDataArray_0_1_0_0_0_full_n sc_in sc_logic 1 signal 3 } 
	{ p_outDataArray_0_1_0_0_0_write sc_out sc_logic 1 signal 3 } 
	{ p_outDataArray_0_0_0_0_01_din sc_out sc_lv 27 signal 2 } 
	{ p_outDataArray_0_0_0_0_01_full_n sc_in sc_logic 1 signal 2 } 
	{ p_outDataArray_0_0_0_0_01_write sc_out sc_logic 1 signal 2 } 
	{ p_outDataArray_0_1_0_0_02_din sc_out sc_lv 27 signal 4 } 
	{ p_outDataArray_0_1_0_0_02_full_n sc_in sc_logic 1 signal 4 } 
	{ p_outDataArray_0_1_0_0_02_write sc_out sc_logic 1 signal 4 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fftOutData_local_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fftOutData_local", "role": "dout" }} , 
 	{ "name": "fftOutData_local_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local", "role": "empty_n" }} , 
 	{ "name": "fftOutData_local_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local", "role": "read" }} , 
 	{ "name": "p_outDataArray_0_0_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outDataArray_0_0_0_0_0", "role": "din" }} , 
 	{ "name": "p_outDataArray_0_0_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_0_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_outDataArray_0_0_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_0_0_0_0", "role": "write" }} , 
 	{ "name": "p_outDataArray_0_1_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outDataArray_0_1_0_0_0", "role": "din" }} , 
 	{ "name": "p_outDataArray_0_1_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_1_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_outDataArray_0_1_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_1_0_0_0", "role": "write" }} , 
 	{ "name": "p_outDataArray_0_0_0_0_01_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outDataArray_0_0_0_0_01", "role": "din" }} , 
 	{ "name": "p_outDataArray_0_0_0_0_01_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_0_0_0_01", "role": "full_n" }} , 
 	{ "name": "p_outDataArray_0_0_0_0_01_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_0_0_0_01", "role": "write" }} , 
 	{ "name": "p_outDataArray_0_1_0_0_02_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outDataArray_0_1_0_0_02", "role": "din" }} , 
 	{ "name": "p_outDataArray_0_1_0_0_02_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_1_0_0_02", "role": "full_n" }} , 
 	{ "name": "p_outDataArray_0_1_0_0_02_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outDataArray_0_1_0_0_02", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_02_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_222_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		p_outDataArray_0_0_0_0_0 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_0_0_0_01 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_1_0_0_0 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_1_0_0_02 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fftOutData_local { ap_fifo {  { fftOutData_local_dout fifo_data 0 128 }  { fftOutData_local_empty_n fifo_status 0 1 }  { fftOutData_local_read fifo_update 1 1 } } }
	p_outDataArray_0_0_0_0_0 { ap_fifo {  { p_outDataArray_0_0_0_0_0_din fifo_data 1 27 }  { p_outDataArray_0_0_0_0_0_full_n fifo_status 0 1 }  { p_outDataArray_0_0_0_0_0_write fifo_update 1 1 } } }
	p_outDataArray_0_0_0_0_01 { ap_fifo {  { p_outDataArray_0_0_0_0_01_din fifo_data 1 27 }  { p_outDataArray_0_0_0_0_01_full_n fifo_status 0 1 }  { p_outDataArray_0_0_0_0_01_write fifo_update 1 1 } } }
	p_outDataArray_0_1_0_0_0 { ap_fifo {  { p_outDataArray_0_1_0_0_0_din fifo_data 1 27 }  { p_outDataArray_0_1_0_0_0_full_n fifo_status 0 1 }  { p_outDataArray_0_1_0_0_0_write fifo_update 1 1 } } }
	p_outDataArray_0_1_0_0_02 { ap_fifo {  { p_outDataArray_0_1_0_0_02_din fifo_data 1 27 }  { p_outDataArray_0_1_0_0_02_full_n fifo_status 0 1 }  { p_outDataArray_0_1_0_0_02_write fifo_update 1 1 } } }
}