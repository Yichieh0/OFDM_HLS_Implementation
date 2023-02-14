set moduleName digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s
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
set C_modelName {digitReversedDataReOrder<64, 2, ap_fixed<27, 14, 5, 3, 0>, ap_fixed<27, 14, 5, 3, 0> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_inData_0_0_0_0_0 int 27 regular {fifo 0 volatile }  }
	{ p_inData_0_0_0_0_01 int 27 regular {fifo 0 volatile }  }
	{ p_inData_0_1_0_0_0 int 27 regular {fifo 0 volatile }  }
	{ p_inData_0_1_0_0_02 int 27 regular {fifo 0 volatile }  }
	{ p_outData_0_0_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_outData_0_0_0_0_03 int 27 regular {fifo 1 volatile }  }
	{ p_outData_0_1_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_outData_0_1_0_0_04 int 27 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_inData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_inData_0_0_0_0_01", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_inData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_inData_0_1_0_0_02", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_outData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outData_0_0_0_0_03", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outData_0_1_0_0_04", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_inData_0_0_0_0_0_dout sc_in sc_lv 27 signal 0 } 
	{ p_inData_0_0_0_0_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_inData_0_0_0_0_0_read sc_out sc_logic 1 signal 0 } 
	{ p_inData_0_0_0_0_01_dout sc_in sc_lv 27 signal 1 } 
	{ p_inData_0_0_0_0_01_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_inData_0_0_0_0_01_read sc_out sc_logic 1 signal 1 } 
	{ p_inData_0_1_0_0_0_dout sc_in sc_lv 27 signal 2 } 
	{ p_inData_0_1_0_0_0_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_inData_0_1_0_0_0_read sc_out sc_logic 1 signal 2 } 
	{ p_inData_0_1_0_0_02_dout sc_in sc_lv 27 signal 3 } 
	{ p_inData_0_1_0_0_02_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_inData_0_1_0_0_02_read sc_out sc_logic 1 signal 3 } 
	{ p_outData_0_0_0_0_0_din sc_out sc_lv 27 signal 4 } 
	{ p_outData_0_0_0_0_0_full_n sc_in sc_logic 1 signal 4 } 
	{ p_outData_0_0_0_0_0_write sc_out sc_logic 1 signal 4 } 
	{ p_outData_0_0_0_0_03_din sc_out sc_lv 27 signal 5 } 
	{ p_outData_0_0_0_0_03_full_n sc_in sc_logic 1 signal 5 } 
	{ p_outData_0_0_0_0_03_write sc_out sc_logic 1 signal 5 } 
	{ p_outData_0_1_0_0_0_din sc_out sc_lv 27 signal 6 } 
	{ p_outData_0_1_0_0_0_full_n sc_in sc_logic 1 signal 6 } 
	{ p_outData_0_1_0_0_0_write sc_out sc_logic 1 signal 6 } 
	{ p_outData_0_1_0_0_04_din sc_out sc_lv 27 signal 7 } 
	{ p_outData_0_1_0_0_04_full_n sc_in sc_logic 1 signal 7 } 
	{ p_outData_0_1_0_0_04_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_inData_0_0_0_0_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_0", "role": "dout" }} , 
 	{ "name": "p_inData_0_0_0_0_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_0", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_0_0_0_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_0", "role": "read" }} , 
 	{ "name": "p_inData_0_0_0_0_01_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_01", "role": "dout" }} , 
 	{ "name": "p_inData_0_0_0_0_01_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_01", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_0_0_0_01_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_01", "role": "read" }} , 
 	{ "name": "p_inData_0_1_0_0_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_0", "role": "dout" }} , 
 	{ "name": "p_inData_0_1_0_0_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_0", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_1_0_0_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_0", "role": "read" }} , 
 	{ "name": "p_inData_0_1_0_0_02_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_02", "role": "dout" }} , 
 	{ "name": "p_inData_0_1_0_0_02_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_02", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_1_0_0_02_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_02", "role": "read" }} , 
 	{ "name": "p_outData_0_0_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_0", "role": "din" }} , 
 	{ "name": "p_outData_0_0_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_outData_0_0_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_0", "role": "write" }} , 
 	{ "name": "p_outData_0_0_0_0_03_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_03", "role": "din" }} , 
 	{ "name": "p_outData_0_0_0_0_03_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_03", "role": "full_n" }} , 
 	{ "name": "p_outData_0_0_0_0_03_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_03", "role": "write" }} , 
 	{ "name": "p_outData_0_1_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_0", "role": "din" }} , 
 	{ "name": "p_outData_0_1_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_outData_0_1_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_0", "role": "write" }} , 
 	{ "name": "p_outData_0_1_0_0_04_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_04", "role": "din" }} , 
 	{ "name": "p_outData_0_1_0_0_04_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_04", "role": "full_n" }} , 
 	{ "name": "p_outData_0_1_0_0_04_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_04", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s",
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
		"Port" : [
			{"Name" : "p_inData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_01", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_02", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_outData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_03", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_04", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitReverseBuff_M_real_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitReverseBuff_M_real_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitReverseBuff_M_imag_V_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitReverseBuff_M_imag_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Parent" : "0",
		"CDFG" : "cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s",
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
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Parent" : "0",
		"CDFG" : "writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s",
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]}]}


set ArgLastReadFirstWriteLatency {
	digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s {
		p_inData_0_0_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_0_0_0_01 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_02 {Type I LastRead 1 FirstWrite -1}
		p_outData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_0_0_0_03 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_outData_0_1_0_0_04 {Type O LastRead -1 FirstWrite 2}}
	cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s {
		p_inData_0_0_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_0_0_0_01 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_02 {Type I LastRead 1 FirstWrite -1}
		p_digitReseversedOutputBuff_M_real {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_real3 {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_imag {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_imag4 {Type O LastRead -1 FirstWrite 1}}
	writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s {
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
	{"Name" : "Latency", "Min" : "66", "Max" : "68"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "68"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_inData_0_0_0_0_0 { ap_fifo {  { p_inData_0_0_0_0_0_dout fifo_data 0 27 }  { p_inData_0_0_0_0_0_empty_n fifo_status 0 1 }  { p_inData_0_0_0_0_0_read fifo_update 1 1 } } }
	p_inData_0_0_0_0_01 { ap_fifo {  { p_inData_0_0_0_0_01_dout fifo_data 0 27 }  { p_inData_0_0_0_0_01_empty_n fifo_status 0 1 }  { p_inData_0_0_0_0_01_read fifo_update 1 1 } } }
	p_inData_0_1_0_0_0 { ap_fifo {  { p_inData_0_1_0_0_0_dout fifo_data 0 27 }  { p_inData_0_1_0_0_0_empty_n fifo_status 0 1 }  { p_inData_0_1_0_0_0_read fifo_update 1 1 } } }
	p_inData_0_1_0_0_02 { ap_fifo {  { p_inData_0_1_0_0_02_dout fifo_data 0 27 }  { p_inData_0_1_0_0_02_empty_n fifo_status 0 1 }  { p_inData_0_1_0_0_02_read fifo_update 1 1 } } }
	p_outData_0_0_0_0_0 { ap_fifo {  { p_outData_0_0_0_0_0_din fifo_data 1 27 }  { p_outData_0_0_0_0_0_full_n fifo_status 0 1 }  { p_outData_0_0_0_0_0_write fifo_update 1 1 } } }
	p_outData_0_0_0_0_03 { ap_fifo {  { p_outData_0_0_0_0_03_din fifo_data 1 27 }  { p_outData_0_0_0_0_03_full_n fifo_status 0 1 }  { p_outData_0_0_0_0_03_write fifo_update 1 1 } } }
	p_outData_0_1_0_0_0 { ap_fifo {  { p_outData_0_1_0_0_0_din fifo_data 1 27 }  { p_outData_0_1_0_0_0_full_n fifo_status 0 1 }  { p_outData_0_1_0_0_0_write fifo_update 1 1 } } }
	p_outData_0_1_0_0_04 { ap_fifo {  { p_outData_0_1_0_0_04_din fifo_data 1 27 }  { p_outData_0_1_0_0_04_full_n fifo_status 0 1 }  { p_outData_0_1_0_0_04_write fifo_update 1 1 } } }
}
