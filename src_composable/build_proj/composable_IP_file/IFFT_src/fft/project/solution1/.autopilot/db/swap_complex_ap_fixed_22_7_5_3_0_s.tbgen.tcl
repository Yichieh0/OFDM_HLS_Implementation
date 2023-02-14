set moduleName swap_complex_ap_fixed_22_7_5_3_0_s
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
set C_modelName {swap<complex<ap_fixed<22, 7, 5, 3, 0> > >}
set C_modelType { void 0 }
set C_modelArgList {
	{ casted_output int 128 regular {fifo 0 volatile }  }
	{ p_fftInData_reOrdered int 128 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "casted_output", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftInData_reOrdered", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ casted_output_dout sc_in sc_lv 128 signal 0 } 
	{ casted_output_empty_n sc_in sc_logic 1 signal 0 } 
	{ casted_output_read sc_out sc_logic 1 signal 0 } 
	{ p_fftInData_reOrdered_din sc_out sc_lv 128 signal 1 } 
	{ p_fftInData_reOrdered_full_n sc_in sc_logic 1 signal 1 } 
	{ p_fftInData_reOrdered_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "casted_output_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "casted_output", "role": "dout" }} , 
 	{ "name": "casted_output_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "casted_output", "role": "empty_n" }} , 
 	{ "name": "casted_output_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "casted_output", "role": "read" }} , 
 	{ "name": "p_fftInData_reOrdered_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "din" }} , 
 	{ "name": "p_fftInData_reOrdered_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "full_n" }} , 
 	{ "name": "p_fftInData_reOrdered_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "30", "31"],
		"CDFG" : "swap_complex_ap_fixed_22_7_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "77", "EstimateLatencyMax" : "78",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0"}],
		"Port" : [
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "casted_output"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_4"}]},
			{"Name" : "control_bits_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_4"}]},
			{"Name" : "sample_in_read_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_4"}]},
			{"Name" : "delay_line_stall_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_4"}]},
			{"Name" : "delayline_Array_18", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_18"}]},
			{"Name" : "control_delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_4"}]},
			{"Name" : "delayline_Array_17", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_17"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "casted_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "30", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_18", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_17", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.delayline_Array_18_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.control_delayline_Array_4_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.delayline_Array_17_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Parent" : "0", "Child" : ["6", "10", "28", "29"],
		"CDFG" : "swap_complex_ap_fixed_22_7_5_3_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "74", "EstimateLatencyMax" : "75",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U",
		"InputProcess" : [
			{"ID" : "6", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "30", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Parent" : "5", "Child" : ["7", "8", "9"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "30", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "28", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.delayline_Array_4_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.control_delayline_Array_6_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.delayline_Array_3_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Parent" : "5", "Child" : ["11", "15", "26", "27"],
		"CDFG" : "swap_complex_ap_fixed_22_7_5_3_0_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "6",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U",
		"InputProcess" : [
			{"ID" : "11", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0"}],
		"OutputProcess" : [
			{"ID" : "15", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "28", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Parent" : "10", "Child" : ["12", "13", "14"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "42",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "28", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "26", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.delayline_Array_8_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.control_delayline_Array_8_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.delayline_Array_7_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Parent" : "10", "Child" : ["16", "20", "24", "25"],
		"CDFG" : "swap_complex_ap_fixed_22_7_5_3_0_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U",
		"InputProcess" : [
			{"ID" : "16", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "26", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Parent" : "15", "Child" : ["17", "18", "19"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "26", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "24", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.delayline_Array_12_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.control_delayline_Array_1_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.delayline_Array_11_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Parent" : "15", "Child" : ["21", "22", "23"],
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
		"StartSource" : "16",
		"StartFifo" : "start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U",
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "24", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.delayline_Array_16_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.control_delayline_Array_3_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.delayline_Array_15_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.temp_1_U", "Parent" : "15"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.temp_2_U", "Parent" : "10"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U", "Parent" : "10"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.temp_1_U", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_1_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U", "Parent" : "5"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	swap_complex_ap_fixed_22_7_5_3_0_s {
		casted_output {Type I LastRead 1 FirstWrite -1}
		p_fftInData_reOrdered {Type O LastRead -1 FirstWrite 3}
		control_count_V_4 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_4 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_4 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_4 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_18 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_4 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_17 {Type X LastRead -1 FirstWrite -1}
		control_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_6 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_4 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_6 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_4 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_6 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_3 {Type X LastRead -1 FirstWrite -1}
		control_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_8 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_8 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_7 {Type X LastRead -1 FirstWrite -1}
		control_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_1 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_1 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_12 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_11 {Type X LastRead -1 FirstWrite -1}
		control_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_3 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_3 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_16 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_3 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_15 {Type X LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s {
		casted_output {Type I LastRead 1 FirstWrite -1}
		temp {Type O LastRead -1 FirstWrite 3}
		control_count_V_4 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_4 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_4 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_4 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_18 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_4 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_17 {Type X LastRead -1 FirstWrite -1}}
	swap_complex_ap_fixed_22_7_5_3_0_1 {
		temp {Type I LastRead 1 FirstWrite -1}
		p_fftInData_reOrdered {Type O LastRead -1 FirstWrite 3}
		control_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_6 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_4 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_6 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_4 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_6 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_3 {Type X LastRead -1 FirstWrite -1}
		control_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_8 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_8 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_7 {Type X LastRead -1 FirstWrite -1}
		control_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_1 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_1 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_12 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_11 {Type X LastRead -1 FirstWrite -1}
		control_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_3 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_3 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_16 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_3 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_15 {Type X LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1 {
		temp {Type I LastRead 1 FirstWrite -1}
		temp1 {Type O LastRead -1 FirstWrite 3}
		control_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_6 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_4 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_6 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_4 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_6 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_3 {Type X LastRead -1 FirstWrite -1}}
	swap_complex_ap_fixed_22_7_5_3_0_2 {
		temp {Type I LastRead 1 FirstWrite -1}
		p_fftInData_reOrdered {Type O LastRead -1 FirstWrite 3}
		control_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_8 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_8 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_7 {Type X LastRead -1 FirstWrite -1}
		control_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_1 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_1 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_12 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_11 {Type X LastRead -1 FirstWrite -1}
		control_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_3 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_3 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_16 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_3 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_15 {Type X LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2 {
		temp {Type I LastRead 1 FirstWrite -1}
		temp1 {Type O LastRead -1 FirstWrite 3}
		control_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_8 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_6 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_8 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_8 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_8 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_7 {Type X LastRead -1 FirstWrite -1}}
	swap_complex_ap_fixed_22_7_5_3_0_3 {
		temp {Type I LastRead 1 FirstWrite -1}
		p_fftInData_reOrdered {Type O LastRead -1 FirstWrite 3}
		control_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_1 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_1 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_12 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_11 {Type X LastRead -1 FirstWrite -1}
		control_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_3 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_3 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_16 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_3 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_15 {Type X LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3 {
		temp {Type I LastRead 1 FirstWrite -1}
		temp1 {Type O LastRead -1 FirstWrite 3}
		control_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_1 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_1 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_1 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_12 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_11 {Type X LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "77", "Max" : "78"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	casted_output { ap_fifo {  { casted_output_dout fifo_data 0 128 }  { casted_output_empty_n fifo_status 0 1 }  { casted_output_read fifo_update 1 1 } } }
	p_fftInData_reOrdered { ap_fifo {  { p_fftInData_reOrdered_din fifo_data 1 128 }  { p_fftInData_reOrdered_full_n fifo_status 0 1 }  { p_fftInData_reOrdered_write fifo_update 1 1 } } }
}
