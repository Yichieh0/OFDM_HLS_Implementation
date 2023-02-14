set moduleName innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s
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
set C_modelName {innerFFT<64, 2, 1, 1, 0, 0, 0, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<22, 7, 5, 3, 0> >, complex<ap_fixed<27, 14, 5, 3, 0> > >}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_fftInData_0_0_0_0_0 int 22 regular {fifo 0 volatile }  }
	{ p_fftInData_0_0_0_0_01 int 22 regular {fifo 0 volatile }  }
	{ p_fftInData_0_1_0_0_0 int 22 regular {fifo 0 volatile }  }
	{ p_fftInData_0_1_0_0_02 int 22 regular {fifo 0 volatile }  }
	{ p_fftOutData_0_0_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_0_0_0_03 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_1_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_fftOutData_0_1_0_0_04 int 27 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_fftInData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftInData_0_0_0_0_01", "interface" : "fifo", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftInData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftInData_0_1_0_0_02", "interface" : "fifo", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "p_fftOutData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_0_0_0_03", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_fftOutData_0_1_0_0_04", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ p_fftInData_0_0_0_0_0_dout sc_in sc_lv 22 signal 0 } 
	{ p_fftInData_0_0_0_0_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_fftInData_0_0_0_0_0_read sc_out sc_logic 1 signal 0 } 
	{ p_fftInData_0_0_0_0_01_dout sc_in sc_lv 22 signal 1 } 
	{ p_fftInData_0_0_0_0_01_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_fftInData_0_0_0_0_01_read sc_out sc_logic 1 signal 1 } 
	{ p_fftInData_0_1_0_0_0_dout sc_in sc_lv 22 signal 2 } 
	{ p_fftInData_0_1_0_0_0_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_fftInData_0_1_0_0_0_read sc_out sc_logic 1 signal 2 } 
	{ p_fftInData_0_1_0_0_02_dout sc_in sc_lv 22 signal 3 } 
	{ p_fftInData_0_1_0_0_02_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_fftInData_0_1_0_0_02_read sc_out sc_logic 1 signal 3 } 
	{ p_fftOutData_0_0_0_0_0_din sc_out sc_lv 27 signal 4 } 
	{ p_fftOutData_0_0_0_0_0_full_n sc_in sc_logic 1 signal 4 } 
	{ p_fftOutData_0_0_0_0_0_write sc_out sc_logic 1 signal 4 } 
	{ p_fftOutData_0_0_0_0_03_din sc_out sc_lv 27 signal 5 } 
	{ p_fftOutData_0_0_0_0_03_full_n sc_in sc_logic 1 signal 5 } 
	{ p_fftOutData_0_0_0_0_03_write sc_out sc_logic 1 signal 5 } 
	{ p_fftOutData_0_1_0_0_0_din sc_out sc_lv 27 signal 6 } 
	{ p_fftOutData_0_1_0_0_0_full_n sc_in sc_logic 1 signal 6 } 
	{ p_fftOutData_0_1_0_0_0_write sc_out sc_logic 1 signal 6 } 
	{ p_fftOutData_0_1_0_0_04_din sc_out sc_lv 27 signal 7 } 
	{ p_fftOutData_0_1_0_0_04_full_n sc_in sc_logic 1 signal 7 } 
	{ p_fftOutData_0_1_0_0_04_write sc_out sc_logic 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "p_fftInData_0_0_0_0_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "p_fftInData_0_0_0_0_0", "role": "dout" }} , 
 	{ "name": "p_fftInData_0_0_0_0_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_0_0_0_0", "role": "empty_n" }} , 
 	{ "name": "p_fftInData_0_0_0_0_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_0_0_0_0", "role": "read" }} , 
 	{ "name": "p_fftInData_0_0_0_0_01_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "p_fftInData_0_0_0_0_01", "role": "dout" }} , 
 	{ "name": "p_fftInData_0_0_0_0_01_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_0_0_0_01", "role": "empty_n" }} , 
 	{ "name": "p_fftInData_0_0_0_0_01_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_0_0_0_01", "role": "read" }} , 
 	{ "name": "p_fftInData_0_1_0_0_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "p_fftInData_0_1_0_0_0", "role": "dout" }} , 
 	{ "name": "p_fftInData_0_1_0_0_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_1_0_0_0", "role": "empty_n" }} , 
 	{ "name": "p_fftInData_0_1_0_0_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_1_0_0_0", "role": "read" }} , 
 	{ "name": "p_fftInData_0_1_0_0_02_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "p_fftInData_0_1_0_0_02", "role": "dout" }} , 
 	{ "name": "p_fftInData_0_1_0_0_02_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_1_0_0_02", "role": "empty_n" }} , 
 	{ "name": "p_fftInData_0_1_0_0_02_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftInData_0_1_0_0_02", "role": "read" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_0", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_0", "role": "write" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_03_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_03", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_03_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_03", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_0_0_0_03_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_0_0_0_03", "role": "write" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_0", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_0", "role": "write" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_04_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_04", "role": "din" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_04_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_04", "role": "full_n" }} , 
 	{ "name": "p_fftOutData_0_1_0_0_04_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fftOutData_0_1_0_0_04", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "34", "116", "117"],
		"CDFG" : "innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "34", "Name" : "fftStage_U0"}],
		"Port" : [
			{"Name" : "p_fftInData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_0_0_0_0"}]},
			{"Name" : "p_fftInData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_0_0_0_01"}]},
			{"Name" : "p_fftInData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_1_0_0_0"}]},
			{"Name" : "p_fftInData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_1_0_0_02"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "control_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_4"}]},
			{"Name" : "control_bits_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_4"}]},
			{"Name" : "sample_in_read_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_4"}]},
			{"Name" : "delay_line_stall_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_4"}]},
			{"Name" : "delayline_Array_18", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_18"}]},
			{"Name" : "control_delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_4"}]},
			{"Name" : "delayline_Array_17", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_17"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_15"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V"}]},
			{"Name" : "control_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_count_V"}]},
			{"Name" : "control_bits_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V"}]},
			{"Name" : "pf_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V"}]},
			{"Name" : "sample_in_read_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V"}]},
			{"Name" : "delay_line_stall", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall"}]},
			{"Name" : "delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_6"}]},
			{"Name" : "control_delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array"}]},
			{"Name" : "delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Parent" : "0",
		"CDFG" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
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
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "116", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "casted_output_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "CONVERT_ARRAY_TO_STREAM_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0", "Parent" : "0", "Child" : ["3", "7", "32", "33"],
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
			{"ID" : "3", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0"}],
		"Port" : [
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "116", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "casted_output"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_4"}]},
			{"Name" : "control_bits_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_4"}]},
			{"Name" : "sample_in_read_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_4"}]},
			{"Name" : "delay_line_stall_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_4"}]},
			{"Name" : "delayline_Array_18", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_18"}]},
			{"Name" : "control_delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_4"}]},
			{"Name" : "delayline_Array_17", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_17"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Parent" : "2", "Child" : ["4", "5", "6"],
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
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "116", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "casted_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "32", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.delayline_Array_18_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.control_delayline_Array_4_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.delayline_Array_17_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Parent" : "2", "Child" : ["8", "12", "30", "31"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U",
		"InputProcess" : [
			{"ID" : "8", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0"}],
		"OutputProcess" : [
			{"ID" : "12", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "32", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Parent" : "7", "Child" : ["9", "10", "11"],
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
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "32", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "30", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.delayline_Array_4_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.control_delayline_Array_6_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.delayline_Array_3_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Parent" : "7", "Child" : ["13", "17", "28", "29"],
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
		"StartSource" : "8",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U",
		"InputProcess" : [
			{"ID" : "13", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0"}],
		"OutputProcess" : [
			{"ID" : "17", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "30", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Parent" : "12", "Child" : ["14", "15", "16"],
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
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "30", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "28", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.delayline_Array_8_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.control_delayline_Array_8_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.delayline_Array_7_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Parent" : "12", "Child" : ["18", "22", "26", "27"],
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
		"StartSource" : "13",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U",
		"InputProcess" : [
			{"ID" : "18", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "28", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Parent" : "17", "Child" : ["19", "20", "21"],
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
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "28", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "26", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "19", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.delayline_Array_12_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.control_delayline_Array_1_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.delayline_Array_11_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Parent" : "17", "Child" : ["23", "24", "25"],
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
		"StartSource" : "18",
		"StartFifo" : "start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U",
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "26", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.delayline_Array_16_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.control_delayline_Array_3_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.delayline_Array_15_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.temp_1_U", "Parent" : "17"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U", "Parent" : "17"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.temp_2_U", "Parent" : "12"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U", "Parent" : "12"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.temp_1_U", "Parent" : "7"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U", "Parent" : "7"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.temp_U", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.swap_complex_ap_fixed_22_7_5_3_0_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U", "Parent" : "2"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fftStage_U0", "Parent" : "0", "Child" : ["35", "41", "45", "114", "115"],
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
			{"ID" : "35", "Name" : "fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "45", "Name" : "fftStage_1_U0"}],
		"Port" : [
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V"}]},
			{"Name" : "control_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_count_V"}]},
			{"Name" : "control_bits_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_bits_V"}]},
			{"Name" : "pf_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "pf_count_V"}]},
			{"Name" : "sample_in_read_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "sample_in_read_count_V"}]},
			{"Name" : "delay_line_stall", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delay_line_stall"}]},
			{"Name" : "delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delayline_Array_6"}]},
			{"Name" : "control_delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_delayline_Array"}]},
			{"Name" : "delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delayline_Array"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Parent" : "34", "Child" : ["36", "37", "38", "39", "40"],
		"CDFG" : "fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_s",
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
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_fftInData_reOrdered_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "114", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U59", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U60", "Parent" : "35"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U61", "Parent" : "35"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U62", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Parent" : "34", "Child" : ["42", "43", "44"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "114", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "115", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.delayline_Array_6_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.control_delayline_Array_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.delayline_Array_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0", "Parent" : "34", "Child" : ["46", "52", "56", "112", "113"],
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
			{"ID" : "46", "Name" : "fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "56", "Name" : "fftStage_2_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "115", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Parent" : "45", "Child" : ["47", "48", "49", "50", "51"],
		"CDFG" : "fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "115", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "112", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_1_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U70", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U71", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U72", "Parent" : "46"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U73", "Parent" : "46"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Parent" : "45", "Child" : ["53", "54", "55"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "112", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "113", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.delayline_Array_1_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.control_delayline_Array_5_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.delayline_Array_19_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0", "Parent" : "45", "Child" : ["57", "63", "67", "110", "111"],
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
			{"ID" : "57", "Name" : "fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "67", "Name" : "fftStage_3_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "113", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Parent" : "56", "Child" : ["58", "59", "60", "61", "62"],
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "113", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "110", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_2_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U80", "Parent" : "57"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U81", "Parent" : "57"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U82", "Parent" : "57"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U83", "Parent" : "57"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Parent" : "56", "Child" : ["64", "65", "66"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "110", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "111", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.delayline_Array_13_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.control_delayline_Array_7_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.delayline_Array_5_U", "Parent" : "63"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0", "Parent" : "56", "Child" : ["68", "74", "78", "108", "109"],
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
			{"ID" : "68", "Name" : "fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "78", "Name" : "fftStage_4_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "111", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fftStage_4_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Parent" : "67", "Child" : ["69", "70", "71", "72", "73"],
		"CDFG" : "fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "111", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "108", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_3_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U90", "Parent" : "68"},
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U91", "Parent" : "68"},
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U92", "Parent" : "68"},
	{"ID" : "73", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U93", "Parent" : "68"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Parent" : "67", "Child" : ["75", "76", "77"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "108", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "109", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.delayline_Array_10_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.control_delayline_Array_9_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.delayline_Array_9_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0", "Parent" : "67", "Child" : ["79", "84", "88", "106", "107"],
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
			{"ID" : "79", "Name" : "fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "88", "Name" : "fftStage_5_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "109", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0", "Parent" : "78", "Child" : ["80", "81", "82", "83"],
		"CDFG" : "fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "109", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "106", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state7"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "80", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U100", "Parent" : "79"},
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U101", "Parent" : "79"},
	{"ID" : "82", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U102", "Parent" : "79"},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U103", "Parent" : "79"},
	{"ID" : "84", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Parent" : "78", "Child" : ["85", "86", "87"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "106", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "107", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "85", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.delayline_Array_14_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.control_delayline_Array_2_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.delayline_Array_2_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0", "Parent" : "78", "Child" : ["89", "90", "92", "99", "100", "101", "102", "103", "104", "105"],
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
			{"ID" : "89", "Name" : "fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "92", "Name" : "digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "107", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0", "Port" : "p_outData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0", "Port" : "p_outData_0_0_0_0_03"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0", "Port" : "p_outData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0", "Port" : "p_outData_0_1_0_0_04"}]}]},
	{"ID" : "89", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Parent" : "88",
		"CDFG" : "fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "107", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "99", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Parent" : "88", "Child" : ["91"],
		"CDFG" : "convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_s",
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
		"StartSource" : "89",
		"StartFifo" : "start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC_U",
		"Port" : [
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "99", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "100", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "101", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "102", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "103", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_02_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_222_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "91", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.flow_control_loop_pipe_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0", "Parent" : "88", "Child" : ["93", "94", "95", "96", "97", "98"],
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
		"StartSource" : "90",
		"StartFifo" : "start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM_U",
		"Port" : [
			{"Name" : "p_inData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "100", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "101", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_01", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "102", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "103", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_02", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_outData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_03", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_04", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "93", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.digitReverseBuff_M_real_V_0_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.digitReverseBuff_M_real_V_1_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.digitReverseBuff_M_imag_V_0_U", "Parent" : "92"},
	{"ID" : "96", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.digitReverseBuff_M_imag_V_1_U", "Parent" : "92"},
	{"ID" : "97", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58", "Parent" : "92",
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
	{"ID" : "98", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78", "Parent" : "92",
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "99", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local_U", "Parent" : "88"},
	{"ID" : "100", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_real_V_0_U", "Parent" : "88"},
	{"ID" : "101", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_real_V_1_U", "Parent" : "88"},
	{"ID" : "102", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_imag_V_0_U", "Parent" : "88"},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_imag_V_1_U", "Parent" : "88"},
	{"ID" : "104", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC_U", "Parent" : "88"},
	{"ID" : "105", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM_U", "Parent" : "88"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftOutData_local_U", "Parent" : "78"},
	{"ID" : "107", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftOutData_local2_1_U", "Parent" : "78"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftOutData_local_U", "Parent" : "67"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftOutData_local2_2_U", "Parent" : "67"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftOutData_local_U", "Parent" : "56"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftOutData_local2_2_U", "Parent" : "56"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftOutData_local_U", "Parent" : "45"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftStage_1_U0.fftOutData_local2_1_U", "Parent" : "45"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftOutData_local_U", "Parent" : "34"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fftStage_U0.fftOutData_local2_U", "Parent" : "34"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.casted_output_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_fftInData_reOrdered_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s {
		p_fftInData_0_0_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_fftInData_0_0_0_0_01 {Type I LastRead 1 FirstWrite -1}
		p_fftInData_0_1_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_fftInData_0_1_0_0_02 {Type I LastRead 1 FirstWrite -1}
		p_fftOutData_0_0_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_0_0_0_03 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_0 {Type O LastRead -1 FirstWrite 2}
		p_fftOutData_0_1_0_0_04 {Type O LastRead -1 FirstWrite 2}
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
		delayline_Array_15 {Type X LastRead -1 FirstWrite -1}
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
	castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_s {
		p_inData_0_0_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_0_0_0_01 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_02 {Type I LastRead 1 FirstWrite -1}
		casted_output {Type O LastRead -1 FirstWrite 1}}
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
		delayline_Array_15 {Type X LastRead -1 FirstWrite -1}}
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
	fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_s {
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
	fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_s {
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
	fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s {
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
	fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s {
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
	fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_s {
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
	fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s {
		fftOutData_local2 {Type I LastRead 1 FirstWrite -1}
		fftOutData_local {Type O LastRead -1 FirstWrite 2}}
	convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_s {
		fftOutData_local {Type I LastRead 1 FirstWrite -1}
		p_outDataArray_0_0_0_0_0 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_0_0_0_01 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_1_0_0_0 {Type O LastRead -1 FirstWrite 1}
		p_outDataArray_0_1_0_0_02 {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_fftInData_0_0_0_0_0 { ap_fifo {  { p_fftInData_0_0_0_0_0_dout fifo_data 0 22 }  { p_fftInData_0_0_0_0_0_empty_n fifo_status 0 1 }  { p_fftInData_0_0_0_0_0_read fifo_update 1 1 } } }
	p_fftInData_0_0_0_0_01 { ap_fifo {  { p_fftInData_0_0_0_0_01_dout fifo_data 0 22 }  { p_fftInData_0_0_0_0_01_empty_n fifo_status 0 1 }  { p_fftInData_0_0_0_0_01_read fifo_update 1 1 } } }
	p_fftInData_0_1_0_0_0 { ap_fifo {  { p_fftInData_0_1_0_0_0_dout fifo_data 0 22 }  { p_fftInData_0_1_0_0_0_empty_n fifo_status 0 1 }  { p_fftInData_0_1_0_0_0_read fifo_update 1 1 } } }
	p_fftInData_0_1_0_0_02 { ap_fifo {  { p_fftInData_0_1_0_0_02_dout fifo_data 0 22 }  { p_fftInData_0_1_0_0_02_empty_n fifo_status 0 1 }  { p_fftInData_0_1_0_0_02_read fifo_update 1 1 } } }
	p_fftOutData_0_0_0_0_0 { ap_fifo {  { p_fftOutData_0_0_0_0_0_din fifo_data 1 27 }  { p_fftOutData_0_0_0_0_0_full_n fifo_status 0 1 }  { p_fftOutData_0_0_0_0_0_write fifo_update 1 1 } } }
	p_fftOutData_0_0_0_0_03 { ap_fifo {  { p_fftOutData_0_0_0_0_03_din fifo_data 1 27 }  { p_fftOutData_0_0_0_0_03_full_n fifo_status 0 1 }  { p_fftOutData_0_0_0_0_03_write fifo_update 1 1 } } }
	p_fftOutData_0_1_0_0_0 { ap_fifo {  { p_fftOutData_0_1_0_0_0_din fifo_data 1 27 }  { p_fftOutData_0_1_0_0_0_full_n fifo_status 0 1 }  { p_fftOutData_0_1_0_0_0_write fifo_update 1 1 } } }
	p_fftOutData_0_1_0_0_04 { ap_fifo {  { p_fftOutData_0_1_0_0_04_din fifo_data 1 27 }  { p_fftOutData_0_1_0_0_04_full_n fifo_status 0 1 }  { p_fftOutData_0_1_0_0_04_write fifo_update 1 1 } } }
}
