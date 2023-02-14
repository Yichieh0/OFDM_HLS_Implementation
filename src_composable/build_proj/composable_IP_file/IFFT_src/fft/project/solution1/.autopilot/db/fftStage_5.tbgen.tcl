set moduleName fftStage_5
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fftStage.5}
set C_modelType { void 0 }
set C_modelArgList {
	{ fftOutData_local2 int 128 regular {fifo 0 volatile }  }
	{ p_fftOutData_0_0_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_0_0_0_01 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_1_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_1_0_0_02 int 27 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fftOutData_local2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftOutData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_0_0_0_01", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_1_0_0_02", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ fftOutData_local2_dout sc_in sc_lv 128 signal 0 } 
	{ fftOutData_local2_empty_n sc_in sc_logic 1 signal 0 } 
	{ fftOutData_local2_read sc_out sc_logic 1 signal 0 } 
	{ p_fftOutData_0_0_0_0_0_din sc_out sc_lv 27 signal 1 } 
	{ p_fftOutData_0_0_0_0_0_full_n sc_in sc_logic 1 signal 1 } 
	{ p_fftOutData_0_0_0_0_0_write sc_out sc_logic 1 signal 1 } 
	{ p_fftOutData_0_0_0_0_01_din sc_out sc_lv 27 signal 2 } 
	{ p_fftOutData_0_0_0_0_01_full_n sc_in sc_logic 1 signal 2 } 
	{ p_fftOutData_0_0_0_0_01_write sc_out sc_logic 1 signal 2 } 
	{ p_fftOutData_0_1_0_0_0_din sc_out sc_lv 27 signal 3 } 
	{ p_fftOutData_0_1_0_0_0_full_n sc_in sc_logic 1 signal 3 } 
	{ p_fftOutData_0_1_0_0_0_write sc_out sc_logic 1 signal 3 } 
	{ p_fftOutData_0_1_0_0_02_din sc_out sc_lv 27 signal 4 } 
	{ p_fftOutData_0_1_0_0_02_full_n sc_in sc_logic 1 signal 4 } 
	{ p_fftOutData_0_1_0_0_02_write sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "fftOutData_local2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fftOutData_local2", "role": "dout" }} , 
 	{ "name": "fftOutData_local2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local2", "role": "empty_n" }} , 
 	{ "name": "fftOutData_local2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fftOutData_local2", "role": "read" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_0", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_0", "role": "write" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_01_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_01", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_01_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_01", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_01_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_01", "role": "write" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_0", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_0", "role": "write" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_02_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_02", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_02_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_02", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_02_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_02", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "fftStage_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_0_0_0_03"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_1_0_0_04"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Parent" : "0",
		"CDFG" : "fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "11", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0", "Parent" : "0", "Child" : ["3"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC_U",
		"Port" : [
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "11", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "12", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "13", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "14", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "15", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_02_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_222_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10"],
		"CDFG" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM_U",
		"Port" : [
			{"Name" : "p_inData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_01", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_02", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_outData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_03", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_04", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_real_V_0_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_real_V_1_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_imag_V_0_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_imag_V_1_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Parent" : "4",
		"CDFG" : "cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_inData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_inData_0_0_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_inData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_inData_0_0_0_0_01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_inData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_inData_0_1_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_inData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_inData_0_1_0_0_02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_digitReseversedOutputBuff_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_digitReseversedOutputBuff_M_real3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_digitReseversedOutputBuff_M_imag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_digitReseversedOutputBuff_M_imag4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "cacheDataDR_LOverRLooP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Parent" : "4",
		"CDFG" : "writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_digitReseversedOutputBuff_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_digitReseversedOutputBuff_M_real1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_digitReseversedOutputBuff_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_digitReseversedOutputBuff_M_imag2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_outData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_outData_0_0_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_outData_0_0_0_0_03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_outData_0_1_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_outData_0_1_0_0_04_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "writeBackCacheDataDR_LOverRLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftOutData_local_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftOutData_local2_V_M_real_V_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftOutData_local2_V_M_real_V_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftOutData_local2_V_M_imag_V_0_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftOutData_local2_V_M_imag_V_1_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fftStage_5 {
		fftOutData_local2 {Type I LastRead 1 FirstWrite -1}
		p_fftOutData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_0_0_0_01 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_02 {Type O LastRead -1 FirstWrite 2}}
	fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s {
		fftOutData_local2 {Type I LastRead 1 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 2}}
	convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		p_outDataArray_0_0_0_0_0 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_0_0_0_01 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_1_0_0_0 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_1_0_0_02 {Type O LastRead -1 FirstWrite 1}}
	digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s {
		p_inData_0_0_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_0_0_0_01 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_02 {Type I LastRead 1 FirstWrite -1}
		p_outData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_0_0_0_03 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_1_0_0_04 {Type O LastRead -1 FirstWrite 2}}
	cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s {
		p_inData_0_0_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_0_0_0_01 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_02 {Type I LastRead 1 FirstWrite -1}
		p_digitReseversedOutputBuff_M_real {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_real3 {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_imag {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_imag4 {Type O LastRead -1 FirstWrite 1}}
	writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s {
		p_digitReseversedOutputBuff_M_real {Type I LastRead 1 FirstWrite -1}
		p_digitReseversedOutputBuff_M_real1 {Type I LastRead 1 FirstWrite -1}
		p_digitReseversedOutputBuff_M_imag {Type I LastRead 1 FirstWrite -1}
		p_digitReseversedOutputBuff_M_imag2 {Type I LastRead 1 FirstWrite -1}
		p_outData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_0_0_0_03 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_1_0_0_04 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fftOutData_local2 { ap_fifo {  { fftOutData_local2_dout fifo_data 0 128 }  { fftOutData_local2_empty_n fifo_status 0 1 }  { fftOutData_local2_read fifo_update 1 1 } } }
	p_fftOutData_0_0_0_0_0 { ap_fifo {  { p_fftOutData_0_0_0_0_0_din fifo_data 1 27 }  { p_fftOutData_0_0_0_0_0_full_n fifo_status 0 1 }  { p_fftOutData_0_0_0_0_0_write fifo_update 1 1 } } }
	p_fftOutData_0_0_0_0_01 { ap_fifo {  { p_fftOutData_0_0_0_0_01_din fifo_data 1 27 }  { p_fftOutData_0_0_0_0_01_full_n fifo_status 0 1 }  { p_fftOutData_0_0_0_0_01_write fifo_update 1 1 } } }
	p_fftOutData_0_1_0_0_0 { ap_fifo {  { p_fftOutData_0_1_0_0_0_din fifo_data 1 27 }  { p_fftOutData_0_1_0_0_0_full_n fifo_status 0 1 }  { p_fftOutData_0_1_0_0_0_write fifo_update 1 1 } } }
	p_fftOutData_0_1_0_0_02 { ap_fifo {  { p_fftOutData_0_1_0_0_02_din fifo_data 1 27 }  { p_fftOutData_0_1_0_0_02_full_n fifo_status 0 1 }  { p_fftOutData_0_1_0_0_02_write fifo_update 1 1 } } }
}
