set moduleName fftStage
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
set C_modelName {fftStage}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_fftInData_reOrdered int 128 regular {fifo 0 volatile }  }
	{ p_fftOutData_0_0_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_0_0_0_01 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_1_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_1_0_0_02 int 27 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_fftInData_reOrdered", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftOutData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_0_0_0_01", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_1_0_0_02", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ p_fftInData_reOrdered_dout sc_in sc_lv 128 signal 0 } 
	{ p_fftInData_reOrdered_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_fftInData_reOrdered_read sc_out sc_logic 1 signal 0 } 
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
	{ "name": "p_fftInData_reOrdered_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "dout" }} , 
 	{ "name": "p_fftInData_reOrdered_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "empty_n" }} , 
 	{ "name": "p_fftInData_reOrdered_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_reOrdered", "role": "read" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "11", "80", "81"],
		"CDFG" : "fftStage",
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
			{"ID" : "1", "Name" : "fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "fftStage_1_U0"}],
		"Port" : [
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V"}]},
			{"Name" : "control_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_count_V"}]},
			{"Name" : "control_bits_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_bits_V"}]},
			{"Name" : "pf_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "pf_count_V"}]},
			{"Name" : "sample_in_read_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "sample_in_read_count_V"}]},
			{"Name" : "delay_line_stall", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delay_line_stall"}]},
			{"Name" : "delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delayline_Array_6"}]},
			{"Name" : "control_delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_delayline_Array"}]},
			{"Name" : "delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delayline_Array"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_fftInData_reOrdered_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "80", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U59", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U60", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U61", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U62", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Parent" : "0", "Child" : ["8", "9", "10"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_s",
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "80", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "81", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.delayline_Array_6_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.control_delayline_Array_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.delayline_Array_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0", "Parent" : "0", "Child" : ["12", "18", "22", "78", "79"],
		"CDFG" : "fftStage_1",
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
			{"ID" : "12", "Name" : "fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "fftStage_2_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "81", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Parent" : "11", "Child" : ["13", "14", "15", "16", "17"],
		"CDFG" : "fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "81", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "78", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_1_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U70", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U71", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U72", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U73", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Parent" : "11", "Child" : ["19", "20", "21"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "78", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "79", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.delayline_Array_1_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.control_delayline_Array_5_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.delayline_Array_19_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0", "Parent" : "11", "Child" : ["23", "29", "33", "76", "77"],
		"CDFG" : "fftStage_2",
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
			{"ID" : "23", "Name" : "fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "33", "Name" : "fftStage_3_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "79", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Parent" : "22", "Child" : ["24", "25", "26", "27", "28"],
		"CDFG" : "fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "79", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "76", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_2_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U80", "Parent" : "23"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U81", "Parent" : "23"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U82", "Parent" : "23"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U83", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Parent" : "22", "Child" : ["30", "31", "32"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "76", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "77", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.delayline_Array_13_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.control_delayline_Array_7_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.delayline_Array_5_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0", "Parent" : "22", "Child" : ["34", "40", "44", "74", "75"],
		"CDFG" : "fftStage_3",
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
			{"ID" : "34", "Name" : "fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "44", "Name" : "fftStage_4_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "77", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fftStage_4_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Parent" : "33", "Child" : ["35", "36", "37", "38", "39"],
		"CDFG" : "fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "77", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "74", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_3_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U90", "Parent" : "34"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U91", "Parent" : "34"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U92", "Parent" : "34"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U93", "Parent" : "34"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Parent" : "33", "Child" : ["41", "42", "43"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "74", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "45", "DependentChan" : "75", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.delayline_Array_10_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.control_delayline_Array_9_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.delayline_Array_9_U", "Parent" : "40"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0", "Parent" : "33", "Child" : ["45", "50", "54", "72", "73"],
		"CDFG" : "fftStage_4",
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
			{"ID" : "45", "Name" : "fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "54", "Name" : "fftStage_5_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "75", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0", "Parent" : "44", "Child" : ["46", "47", "48", "49"],
		"CDFG" : "fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "75", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "72", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state7"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U100", "Parent" : "45"},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U101", "Parent" : "45"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U102", "Parent" : "45"},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U103", "Parent" : "45"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Parent" : "44", "Child" : ["51", "52", "53"],
		"CDFG" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "45", "DependentChan" : "72", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "73", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "51", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.delayline_Array_14_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.control_delayline_Array_2_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.delayline_Array_2_U", "Parent" : "50"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0", "Parent" : "44", "Child" : ["55", "56", "58", "65", "66", "67", "68", "69", "70", "71"],
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
			{"ID" : "55", "Name" : "fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "58", "Name" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "73", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_0_0_0_03"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_1_0_0_04"}]}]},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Parent" : "54",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "73", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "65", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "56", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0", "Parent" : "54", "Child" : ["57"],
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
		"StartSource" : "55",
		"StartFifo" : "start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC_U",
		"Port" : [
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "65", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "66", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "67", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "68", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "69", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_02_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_222_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0.flow_control_loop_pipe_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Parent" : "54", "Child" : ["59", "60", "61", "62", "63", "64"],
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
		"StartSource" : "56",
		"StartFifo" : "start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM_U",
		"Port" : [
			{"Name" : "p_inData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "66", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "67", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_01", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "68", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "69", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_02", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_outData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_03", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_04", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "59", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_real_V_0_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_real_V_1_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_imag_V_0_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_imag_V_1_U", "Parent" : "58"},
	{"ID" : "63", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Parent" : "58",
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
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Parent" : "58",
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
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local_U", "Parent" : "54"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_real_V_0_U", "Parent" : "54"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_real_V_1_U", "Parent" : "54"},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_imag_V_0_U", "Parent" : "54"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_imag_V_1_U", "Parent" : "54"},
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC_U", "Parent" : "54"},
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM_U", "Parent" : "54"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftOutData_local_U", "Parent" : "44"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftOutData_local2_1_U", "Parent" : "44"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftOutData_local_U", "Parent" : "33"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftOutData_local2_2_U", "Parent" : "33"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftOutData_local_U", "Parent" : "22"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftStage_2_U0.fftOutData_local2_2_U", "Parent" : "22"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftOutData_local_U", "Parent" : "11"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_1_U0.fftOutData_local2_1_U", "Parent" : "11"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftOutData_local_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftOutData_local2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fftStage {
		p_fftInData_reOrdered {Type I LastRead 1 FirstWrite -1}
		p_fftOutData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_0_0_0_01 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_02 {Type O LastRead -1 FirstWrite 2}
		twiddleObj_twiddleTable_M_imag_V {Type I LastRead -1 FirstWrite -1}
		control_count_V {Type IO LastRead -1 FirstWrite -1}
		control_bits_V {Type IO LastRead -1 FirstWrite -1}
		pf_count_V {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_6 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array {Type X LastRead -1 FirstWrite -1}
		delayline_Array {Type X LastRead -1 FirstWrite -1}
		twiddleObj_twiddleTable_M_imag_V_1 {Type I LastRead -1 FirstWrite -1}
		control_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_5 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_5 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_5 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_19 {Type X LastRead -1 FirstWrite -1}
		twiddleObj_twiddleTable_M_imag_V_2 {Type I LastRead -1 FirstWrite -1}
		control_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_7 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_7 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_13 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_7 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_5 {Type X LastRead -1 FirstWrite -1}
		twiddleObj_twiddleTable_M_imag_V_3 {Type I LastRead -1 FirstWrite -1}
		control_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_9 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_9 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_10 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		control_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_2 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_14 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_2 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_2 {Type X LastRead -1 FirstWrite -1}}
	fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_s {
		p_fftInData_reOrdered {Type I LastRead 1 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 5}
		twiddleObj_twiddleTable_M_imag_V {Type I LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		fftOutData_local2 {Type O LastRead -1 FirstWrite 3}
		control_count_V {Type IO LastRead -1 FirstWrite -1}
		control_bits_V {Type IO LastRead -1 FirstWrite -1}
		pf_count_V {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_6 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array {Type X LastRead -1 FirstWrite -1}
		delayline_Array {Type X LastRead -1 FirstWrite -1}}
	fftStage_1 {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		p_fftOutData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_0_0_0_01 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_02 {Type O LastRead -1 FirstWrite 2}
		twiddleObj_twiddleTable_M_imag_V_1 {Type I LastRead -1 FirstWrite -1}
		control_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_5 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_5 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_5 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_19 {Type X LastRead -1 FirstWrite -1}
		twiddleObj_twiddleTable_M_imag_V_2 {Type I LastRead -1 FirstWrite -1}
		control_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_7 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_7 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_13 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_7 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_5 {Type X LastRead -1 FirstWrite -1}
		twiddleObj_twiddleTable_M_imag_V_3 {Type I LastRead -1 FirstWrite -1}
		control_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_9 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_9 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_10 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		control_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_2 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_14 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_2 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_2 {Type X LastRead -1 FirstWrite -1}}
	fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_s {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 6}
		twiddleObj_twiddleTable_M_imag_V_1 {Type I LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		fftOutData_local2 {Type O LastRead -1 FirstWrite 3}
		control_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_5 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_3 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_5 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_1 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_5 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_19 {Type X LastRead -1 FirstWrite -1}}
	fftStage_2 {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		p_fftOutData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_0_0_0_01 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_02 {Type O LastRead -1 FirstWrite 2}
		twiddleObj_twiddleTable_M_imag_V_2 {Type I LastRead -1 FirstWrite -1}
		control_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_7 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_7 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_13 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_7 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_5 {Type X LastRead -1 FirstWrite -1}
		twiddleObj_twiddleTable_M_imag_V_3 {Type I LastRead -1 FirstWrite -1}
		control_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_9 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_9 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_10 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		control_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_2 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_14 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_2 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_2 {Type X LastRead -1 FirstWrite -1}}
	fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 6}
		twiddleObj_twiddleTable_M_imag_V_2 {Type I LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		fftOutData_local2 {Type O LastRead -1 FirstWrite 3}
		control_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_7 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_5 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_7 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_13 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_7 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_5 {Type X LastRead -1 FirstWrite -1}}
	fftStage_3 {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		p_fftOutData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_0_0_0_01 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_02 {Type O LastRead -1 FirstWrite 2}
		twiddleObj_twiddleTable_M_imag_V_3 {Type I LastRead -1 FirstWrite -1}
		control_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_9 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_9 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_10 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		control_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_2 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_14 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_2 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_2 {Type X LastRead -1 FirstWrite -1}}
	fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 6}
		twiddleObj_twiddleTable_M_imag_V_3 {Type I LastRead -1 FirstWrite -1}}
	streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		fftOutData_local2 {Type O LastRead -1 FirstWrite 3}
		control_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_9 {Type IO LastRead -1 FirstWrite -1}
		pf_count_V_7 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_9 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_9 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_10 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_9 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_9 {Type X LastRead -1 FirstWrite -1}}
	fftStage_4 {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		p_fftOutData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_0_0_0_01 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_02 {Type O LastRead -1 FirstWrite 2}
		control_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_2 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_14 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_2 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_2 {Type X LastRead -1 FirstWrite -1}}
	fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_s {
		fftOutData_local2 {Type I LastRead 2 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 5}}
	streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		fftOutData_local2 {Type O LastRead -1 FirstWrite 3}
		control_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		control_bits_V_2 {Type IO LastRead -1 FirstWrite -1}
		sample_in_read_count_V_2 {Type IO LastRead -1 FirstWrite -1}
		delay_line_stall_2 {Type IO LastRead -1 FirstWrite -1}
		delayline_Array_14 {Type X LastRead -1 FirstWrite -1}
		control_delayline_Array_2 {Type X LastRead -1 FirstWrite -1}
		delayline_Array_2 {Type X LastRead -1 FirstWrite -1}}
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
	p_fftInData_reOrdered { ap_fifo {  { p_fftInData_reOrdered_dout fifo_data 0 128 }  { p_fftInData_reOrdered_empty_n fifo_status 0 1 }  { p_fftInData_reOrdered_read fifo_update 1 1 } } }
	p_fftOutData_0_0_0_0_0 { ap_fifo {  { p_fftOutData_0_0_0_0_0_din fifo_data 1 27 }  { p_fftOutData_0_0_0_0_0_full_n fifo_status 0 1 }  { p_fftOutData_0_0_0_0_0_write fifo_update 1 1 } } }
	p_fftOutData_0_0_0_0_01 { ap_fifo {  { p_fftOutData_0_0_0_0_01_din fifo_data 1 27 }  { p_fftOutData_0_0_0_0_01_full_n fifo_status 0 1 }  { p_fftOutData_0_0_0_0_01_write fifo_update 1 1 } } }
	p_fftOutData_0_1_0_0_0 { ap_fifo {  { p_fftOutData_0_1_0_0_0_din fifo_data 1 27 }  { p_fftOutData_0_1_0_0_0_full_n fifo_status 0 1 }  { p_fftOutData_0_1_0_0_0_write fifo_update 1 1 } } }
	p_fftOutData_0_1_0_0_02 { ap_fifo {  { p_fftOutData_0_1_0_0_02_din fifo_data 1 27 }  { p_fftOutData_0_1_0_0_02_full_n fifo_status 0 1 }  { p_fftOutData_0_1_0_0_02_write fifo_update 1 1 } } }
}
