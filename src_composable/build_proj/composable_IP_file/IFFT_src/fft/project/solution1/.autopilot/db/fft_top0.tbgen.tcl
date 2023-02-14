set moduleName fft_top0
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fft_top0}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_strb_V int 8 regular {axi_s 0 volatile  { data_in Strb } }  }
	{ data_in_V_user_V int 1 regular {axi_s 0 volatile  { data_in User } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_in_V_id_V int 1 regular {axi_s 0 volatile  { data_in ID } }  }
	{ data_in_V_dest_V int 1 regular {axi_s 0 volatile  { data_in Dest } }  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_strb_V int 8 regular {axi_s 1 volatile  { data_out Strb } }  }
	{ data_out_V_user_V int 1 regular {axi_s 1 volatile  { data_out User } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ data_out_V_id_V int 1 regular {axi_s 1 volatile  { data_out ID } }  }
	{ data_out_V_dest_V int 1 regular {axi_s 1 volatile  { data_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 6 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 6 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ data_in_TSTRB sc_in sc_lv 8 signal 2 } 
	{ data_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ data_in_TID sc_in sc_lv 1 signal 5 } 
	{ data_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 7 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 13 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 8 } 
	{ data_out_TSTRB sc_out sc_lv 8 signal 9 } 
	{ data_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ data_out_TID sc_out sc_lv 1 signal 12 } 
	{ data_out_TDEST sc_out sc_lv 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_dest_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_dest_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_strb_V", "role": "default" }} , 
 	{ "name": "data_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_user_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_id_V", "role": "default" }} , 
 	{ "name": "data_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_dest_V", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_dest_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_dest_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_strb_V", "role": "default" }} , 
 	{ "name": "data_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_user_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_id_V", "role": "default" }} , 
 	{ "name": "data_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145"],
		"CDFG" : "fft_top0",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_in_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_in_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_in_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_out_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_out_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_out_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_out_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_out_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_out_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Port" : "data_out_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "control_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_4", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_4", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_4", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_4", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_18", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_18", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_4", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_17", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_17", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_6", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_6", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V_4", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_6", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_6", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_4", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_6", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_8", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_8", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V_6", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_8", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_8", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_8", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_8", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_7", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_12", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_11", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_16", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_15", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "twiddleObj_twiddleTable_M_imag_V", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_6", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "twiddleObj_twiddleTable_M_imag_V_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_5", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_5", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_5", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_5", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_1", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_5", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_19", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "twiddleObj_twiddleTable_M_imag_V_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_7", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_7", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V_5", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_7", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_7", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_13", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_7", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_5", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "twiddleObj_twiddleTable_M_imag_V_3", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_9", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_9", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "pf_count_V_7", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_9", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_9", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_10", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_9", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_9", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_count_V_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_bits_V_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "sample_in_read_count_V_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delay_line_stall_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_14", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "control_delayline_Array_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Port" : "delayline_Array_2", "Inst_start_state" : "53", "Inst_end_state" : "55"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "58", "FirstState" : "ap_ST_fsm_state54", "LastState" : ["ap_ST_fsm_state54"], "QuitState" : ["ap_ST_fsm_state54"], "PreState" : ["ap_ST_fsm_state53"], "PostState" : ["ap_ST_fsm_state53"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state54_blk"}},
			{"Name" : "VITIS_LOOP_77_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "58", "FirstState" : "ap_ST_fsm_state53", "LastState" : ["ap_ST_fsm_state54"], "QuitState" : ["ap_ST_fsm_state53"], "PreState" : ["ap_ST_fsm_state52"], "PostState" : ["ap_ST_fsm_state55"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_93_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "58", "FirstState" : "ap_ST_fsm_state57", "LastState" : ["ap_ST_fsm_state58"], "QuitState" : ["ap_ST_fsm_state57"], "PreState" : ["ap_ST_fsm_state56"], "PostState" : ["ap_ST_fsm_state56"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_92_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "58", "FirstState" : "ap_ST_fsm_state56", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state56"], "PreState" : ["ap_ST_fsm_state55"], "PostState" : ["ap_ST_fsm_state52"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "58", "FirstState" : "ap_ST_fsm_state52", "LastState" : ["ap_ST_fsm_state56"], "QuitState" : ["ap_ST_fsm_state52"], "PreState" : ["ap_ST_fsm_state51"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fft_top0_Pipeline_VITIS_LOOP_54_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "pilot_width_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sym_num_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DATA_LEN_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top0_Pipeline_VITIS_LOOP_54_1_fu_515.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550", "Parent" : "0", "Child" : ["4", "5", "37", "119", "120"],
		"CDFG" : "innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s",
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
			{"ID" : "4", "Name" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "37", "Name" : "fftStage_U0"}],
		"Port" : [
			{"Name" : "p_fftInData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_0_0_0_0"}]},
			{"Name" : "p_fftInData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_0_0_0_01"}]},
			{"Name" : "p_fftInData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_1_0_0_0"}]},
			{"Name" : "p_fftInData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "p_inData_0_1_0_0_02"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "control_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_4"}]},
			{"Name" : "control_bits_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_4"}]},
			{"Name" : "sample_in_read_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_4"}]},
			{"Name" : "delay_line_stall_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_4"}]},
			{"Name" : "delayline_Array_18", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_18"}]},
			{"Name" : "control_delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_4"}]},
			{"Name" : "delayline_Array_17", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_17"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_15"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V"}]},
			{"Name" : "control_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_count_V"}]},
			{"Name" : "control_bits_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V"}]},
			{"Name" : "pf_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V"}]},
			{"Name" : "sample_in_read_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V"}]},
			{"Name" : "delay_line_stall", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall"}]},
			{"Name" : "delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_6"}]},
			{"Name" : "control_delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array"}]},
			{"Name" : "delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fftStage_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0", "Parent" : "3",
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
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "119", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "casted_output_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "CONVERT_ARRAY_TO_STREAM_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0", "Parent" : "3", "Child" : ["6", "10", "35", "36"],
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
			{"ID" : "6", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0"}],
		"Port" : [
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "119", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "casted_output"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "120", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_count_V_4"}]},
			{"Name" : "control_bits_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_bits_V_4"}]},
			{"Name" : "sample_in_read_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "sample_in_read_count_V_4"}]},
			{"Name" : "delay_line_stall_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delay_line_stall_4"}]},
			{"Name" : "delayline_Array_18", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_18"}]},
			{"Name" : "control_delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "control_delayline_Array_4"}]},
			{"Name" : "delayline_Array_17", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Port" : "delayline_Array_17"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0", "Parent" : "5", "Child" : ["7", "8", "9"],
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
			{"Name" : "casted_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "119", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "casted_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "35", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.delayline_Array_18_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.control_delayline_Array_4_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.delayline_Array_17_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0", "Parent" : "5", "Child" : ["11", "15", "33", "34"],
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
		"StartSource" : "6",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U",
		"InputProcess" : [
			{"ID" : "11", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0"}],
		"OutputProcess" : [
			{"ID" : "15", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "35", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "120", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_count_V_6"}]},
			{"Name" : "control_bits_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_bits_V_6"}]},
			{"Name" : "pf_count_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "pf_count_V_4"}]},
			{"Name" : "sample_in_read_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "sample_in_read_count_V_6"}]},
			{"Name" : "delay_line_stall_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delay_line_stall_6"}]},
			{"Name" : "delayline_Array_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_4"}]},
			{"Name" : "control_delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "control_delayline_Array_6"}]},
			{"Name" : "delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Port" : "delayline_Array_3"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0", "Parent" : "10", "Child" : ["12", "13", "14"],
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
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "35", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "33", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.delayline_Array_4_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.control_delayline_Array_6_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.delayline_Array_3_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0", "Parent" : "10", "Child" : ["16", "20", "31", "32"],
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
		"StartSource" : "11",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U",
		"InputProcess" : [
			{"ID" : "16", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "33", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "120", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_count_V_8"}]},
			{"Name" : "control_bits_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_bits_V_8"}]},
			{"Name" : "pf_count_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "pf_count_V_6"}]},
			{"Name" : "sample_in_read_count_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "sample_in_read_count_V_8"}]},
			{"Name" : "delay_line_stall_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delay_line_stall_8"}]},
			{"Name" : "delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_8"}]},
			{"Name" : "control_delayline_Array_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "control_delayline_Array_8"}]},
			{"Name" : "delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Port" : "delayline_Array_7"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0", "Parent" : "15", "Child" : ["17", "18", "19"],
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
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "33", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "31", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "17", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.delayline_Array_8_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.control_delayline_Array_8_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.delayline_Array_7_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0", "Parent" : "15", "Child" : ["21", "25", "29", "30"],
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
		"StartSource" : "16",
		"StartFifo" : "start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U",
		"InputProcess" : [
			{"ID" : "21", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0"}],
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "31", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "temp"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "120", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "control_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_count_V_1"}]},
			{"Name" : "control_bits_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_bits_V_1"}]},
			{"Name" : "pf_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "pf_count_V_1"}]},
			{"Name" : "sample_in_read_count_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "sample_in_read_count_V_1"}]},
			{"Name" : "delay_line_stall_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delay_line_stall_1"}]},
			{"Name" : "delayline_Array_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_12"}]},
			{"Name" : "control_delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "control_delayline_Array_1"}]},
			{"Name" : "delayline_Array_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Port" : "delayline_Array_11"}]},
			{"Name" : "control_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_count_V_3"}]},
			{"Name" : "control_bits_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_bits_V_3"}]},
			{"Name" : "pf_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "pf_count_V_2"}]},
			{"Name" : "sample_in_read_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "sample_in_read_count_V_3"}]},
			{"Name" : "delay_line_stall_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delay_line_stall_3"}]},
			{"Name" : "delayline_Array_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delayline_Array_16"}]},
			{"Name" : "control_delayline_Array_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "control_delayline_Array_3"}]},
			{"Name" : "delayline_Array_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Port" : "delayline_Array_15"}]}]},
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0", "Parent" : "20", "Child" : ["22", "23", "24"],
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
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "31", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "29", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "22", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.delayline_Array_12_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.control_delayline_Array_1_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.delayline_Array_11_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0", "Parent" : "20", "Child" : ["26", "27", "28"],
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
		"StartSource" : "21",
		"StartFifo" : "start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U",
		"Port" : [
			{"Name" : "temp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "29", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "temp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "120", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "26", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.delayline_Array_16_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.control_delayline_Array_3_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.delayline_Array_15_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.temp_1_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.temp_2_U", "Parent" : "15"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U", "Parent" : "15"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.temp_1_U", "Parent" : "10"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U", "Parent" : "10"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.temp_U", "Parent" : "5"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.swap_complex_ap_fixed_22_7_5_3_0_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U", "Parent" : "5"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0", "Parent" : "3", "Child" : ["38", "44", "48", "117", "118"],
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
			{"ID" : "38", "Name" : "fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "fftStage_1_U0"}],
		"Port" : [
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "120", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "p_fftInData_reOrdered"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V"}]},
			{"Name" : "control_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_count_V"}]},
			{"Name" : "control_bits_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_bits_V"}]},
			{"Name" : "pf_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "pf_count_V"}]},
			{"Name" : "sample_in_read_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "sample_in_read_count_V"}]},
			{"Name" : "delay_line_stall", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delay_line_stall"}]},
			{"Name" : "delayline_Array_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delayline_Array_6"}]},
			{"Name" : "control_delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "control_delayline_Array"}]},
			{"Name" : "delayline_Array", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Port" : "delayline_Array"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "fftStage_1_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0", "Parent" : "37", "Child" : ["39", "40", "41", "42", "43"],
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
			{"Name" : "p_fftInData_reOrdered", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "120", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_fftInData_reOrdered_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U59", "Parent" : "38"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U60", "Parent" : "38"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U61", "Parent" : "38"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.mul_mul_23s_15s_37_4_1_U62", "Parent" : "38"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0", "Parent" : "37", "Child" : ["45", "46", "47"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "117", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "118", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.delayline_Array_6_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.control_delayline_Array_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.delayline_Array_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0", "Parent" : "37", "Child" : ["49", "55", "59", "115", "116"],
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
			{"ID" : "49", "Name" : "fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "59", "Name" : "fftStage_2_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "118", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_1"}]},
			{"Name" : "control_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_count_V_5"}]},
			{"Name" : "control_bits_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_bits_V_5"}]},
			{"Name" : "pf_count_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "pf_count_V_3"}]},
			{"Name" : "sample_in_read_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "sample_in_read_count_V_5"}]},
			{"Name" : "delay_line_stall_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delay_line_stall_5"}]},
			{"Name" : "delayline_Array_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delayline_Array_1"}]},
			{"Name" : "control_delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "control_delayline_Array_5"}]},
			{"Name" : "delayline_Array_19", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Port" : "delayline_Array_19"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "fftStage_2_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0", "Parent" : "48", "Child" : ["50", "51", "52", "53", "54"],
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "118", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "115", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_1_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U70", "Parent" : "49"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U71", "Parent" : "49"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U72", "Parent" : "49"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_1_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.mul_mul_24s_15s_38_4_1_U73", "Parent" : "49"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0", "Parent" : "48", "Child" : ["56", "57", "58"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "115", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "116", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.delayline_Array_1_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.control_delayline_Array_5_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.delayline_Array_19_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0", "Parent" : "48", "Child" : ["60", "66", "70", "113", "114"],
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
			{"ID" : "60", "Name" : "fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "70", "Name" : "fftStage_3_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "116", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_2"}]},
			{"Name" : "control_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_count_V_7"}]},
			{"Name" : "control_bits_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_bits_V_7"}]},
			{"Name" : "pf_count_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "pf_count_V_5"}]},
			{"Name" : "sample_in_read_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "sample_in_read_count_V_7"}]},
			{"Name" : "delay_line_stall_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delay_line_stall_7"}]},
			{"Name" : "delayline_Array_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delayline_Array_13"}]},
			{"Name" : "control_delayline_Array_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "control_delayline_Array_7"}]},
			{"Name" : "delayline_Array_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Port" : "delayline_Array_5"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "fftStage_3_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0", "Parent" : "59", "Child" : ["61", "62", "63", "64", "65"],
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "116", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "113", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_2_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U80", "Parent" : "60"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U81", "Parent" : "60"},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U82", "Parent" : "60"},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_1_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.mul_mul_25s_15s_39_4_1_U83", "Parent" : "60"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0", "Parent" : "59", "Child" : ["67", "68", "69"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "113", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "114", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.delayline_Array_13_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.control_delayline_Array_7_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.delayline_Array_5_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0", "Parent" : "59", "Child" : ["71", "77", "81", "111", "112"],
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
			{"ID" : "71", "Name" : "fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "81", "Name" : "fftStage_4_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "114", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "twiddleObj_twiddleTable_M_imag_V_3"}]},
			{"Name" : "control_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_count_V_9"}]},
			{"Name" : "control_bits_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_bits_V_9"}]},
			{"Name" : "pf_count_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "pf_count_V_7"}]},
			{"Name" : "sample_in_read_count_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "sample_in_read_count_V_9"}]},
			{"Name" : "delay_line_stall_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delay_line_stall_9"}]},
			{"Name" : "delayline_Array_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delayline_Array_10"}]},
			{"Name" : "control_delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "control_delayline_Array_9"}]},
			{"Name" : "delayline_Array_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Port" : "delayline_Array_9"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "fftStage_4_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0", "Parent" : "70", "Child" : ["72", "73", "74", "75", "76"],
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "114", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "111", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddleObj_twiddleTable_M_imag_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "72", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.twiddleObj_twiddleTable_M_imag_V_3_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U90", "Parent" : "71"},
	{"ID" : "74", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U91", "Parent" : "71"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U92", "Parent" : "71"},
	{"ID" : "76", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.mul_mul_26s_15s_40_4_1_U93", "Parent" : "71"},
	{"ID" : "77", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0", "Parent" : "70", "Child" : ["78", "79", "80"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "111", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "112", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "78", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.delayline_Array_10_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.control_delayline_Array_9_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.delayline_Array_9_U", "Parent" : "77"},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0", "Parent" : "70", "Child" : ["82", "87", "91", "109", "110"],
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
			{"ID" : "82", "Name" : "fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "91", "Name" : "fftStage_5_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "112", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_0_0_0_01"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "fftStage_5_U0", "Port" : "p_fftOutData_0_1_0_0_02"}]},
			{"Name" : "control_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_count_V_2"}]},
			{"Name" : "control_bits_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_bits_V_2"}]},
			{"Name" : "sample_in_read_count_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "sample_in_read_count_V_2"}]},
			{"Name" : "delay_line_stall_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delay_line_stall_2"}]},
			{"Name" : "delayline_Array_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delayline_Array_14"}]},
			{"Name" : "control_delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "control_delayline_Array_2"}]},
			{"Name" : "delayline_Array_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Port" : "delayline_Array_2"}]}]},
	{"ID" : "82", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0", "Parent" : "81", "Child" : ["83", "84", "85", "86"],
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "112", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "109", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L_BFLYs_LOOP", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state7"]}},
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "83", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U100", "Parent" : "82"},
	{"ID" : "84", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U101", "Parent" : "82"},
	{"ID" : "85", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U102", "Parent" : "82"},
	{"ID" : "86", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.mul_mul_26s_15s_40_4_1_U103", "Parent" : "82"},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0", "Parent" : "81", "Child" : ["88", "89", "90"],
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
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "109", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "110", "DependentChanDepth" : "8", "DependentChanType" : "0",
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
	{"ID" : "88", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.delayline_Array_14_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.control_delayline_Array_2_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.delayline_Array_2_U", "Parent" : "87"},
	{"ID" : "91", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0", "Parent" : "81", "Child" : ["92", "93", "95", "102", "103", "104", "105", "106", "107", "108"],
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
			{"ID" : "92", "Name" : "fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0"}],
		"OutputProcess" : [
			{"ID" : "95", "Name" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0"}],
		"Port" : [
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "110", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Port" : "fftOutData_local2"}]},
			{"Name" : "p_fftOutData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_0_0_0_0"}]},
			{"Name" : "p_fftOutData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_0_0_0_03"}]},
			{"Name" : "p_fftOutData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_1_0_0_0"}]},
			{"Name" : "p_fftOutData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Port" : "p_outData_0_1_0_0_04"}]}]},
	{"ID" : "92", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0", "Parent" : "91",
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
			{"Name" : "fftOutData_local2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "110", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "102", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L_FFTs_LOOP", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "93", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0", "Parent" : "91", "Child" : ["94"],
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
		"StartSource" : "92",
		"StartFifo" : "start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC_U",
		"Port" : [
			{"Name" : "fftOutData_local", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "102", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fftOutData_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "103", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_0_0_0_01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "104", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_0_0_0_01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "105", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outDataArray_0_1_0_0_02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "106", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_outDataArray_0_1_0_0_02_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_222_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "94", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0.flow_control_loop_pipe_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0", "Parent" : "91", "Child" : ["96", "97", "98", "99", "100", "101"],
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
		"StartSource" : "93",
		"StartFifo" : "start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM_U",
		"Port" : [
			{"Name" : "p_inData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "103", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_0_0_0_01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "104", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_0_0_0_01", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "105", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_inData_0_1_0_0_02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "106", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Port" : "p_inData_0_1_0_0_02", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_outData_0_0_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_0_0_0_03", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_0_0_0_03", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_outData_0_1_0_0_04", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Port" : "p_outData_0_1_0_0_04", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "96", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_real_V_0_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_real_V_1_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_imag_V_0_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.digitReverseBuff_M_imag_V_1_U", "Parent" : "95"},
	{"ID" : "100", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_58", "Parent" : "95",
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
	{"ID" : "101", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0.grp_writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s_fu_78", "Parent" : "95",
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
	{"ID" : "102", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local_U", "Parent" : "91"},
	{"ID" : "103", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_real_V_0_U", "Parent" : "91"},
	{"ID" : "104", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_real_V_1_U", "Parent" : "91"},
	{"ID" : "105", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_imag_V_0_U", "Parent" : "91"},
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftOutData_local2_V_M_imag_V_1_U", "Parent" : "91"},
	{"ID" : "107", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC_U", "Parent" : "91"},
	{"ID" : "108", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM_U", "Parent" : "91"},
	{"ID" : "109", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftOutData_local_U", "Parent" : "81"},
	{"ID" : "110", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftOutData_local2_1_U", "Parent" : "81"},
	{"ID" : "111", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftOutData_local_U", "Parent" : "70"},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftOutData_local2_2_U", "Parent" : "70"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftOutData_local_U", "Parent" : "59"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftOutData_local2_2_U", "Parent" : "59"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftOutData_local_U", "Parent" : "48"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftStage_1_U0.fftOutData_local2_1_U", "Parent" : "48"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftOutData_local_U", "Parent" : "37"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.fftStage_U0.fftOutData_local2_U", "Parent" : "37"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.casted_output_U", "Parent" : "3"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s_fu_550.p_fftInData_reOrdered_U", "Parent" : "3"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_9ns_32ns_8_13_seq_1_U198", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U199", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_9s_32_36_seq_1_U200", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_inData_V_M_real_V_0_fifo_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_inData_V_M_real_V_1_fifo_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_inData_V_M_imag_V_0_fifo_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_inData_V_M_imag_V_1_fifo_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_outData_V_M_real_V_0_fifo_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_outData_V_M_real_V_1_fifo_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_outData_V_M_imag_V_0_fifo_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_outData_V_M_imag_V_1_fifo_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_user_V_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_id_V_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_dest_V_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_top0 {
		data_in_V_data_V {Type I LastRead 53 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 53 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 53 FirstWrite -1}
		data_in_V_user_V {Type I LastRead 53 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 53 FirstWrite -1}
		data_in_V_id_V {Type I LastRead 53 FirstWrite -1}
		data_in_V_dest_V {Type I LastRead 53 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_user_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_id_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_dest_V {Type O LastRead -1 FirstWrite 1}
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
	fft_top0_Pipeline_VITIS_LOOP_54_1 {
		data_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_user_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_id_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_dest_V {Type I LastRead 0 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_user_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_id_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_dest_V {Type O LastRead -1 FirstWrite 1}
		pilot_width_4_out {Type O LastRead -1 FirstWrite 1}
		sym_num_2_out {Type O LastRead -1 FirstWrite 1}
		DATA_LEN_1_out {Type O LastRead -1 FirstWrite 1}}
	innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s {
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in_V_data_V { axis {  { data_in_TDATA in_data 0 64 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 8 } } }
	data_in_V_strb_V { axis {  { data_in_TSTRB in_data 0 8 } } }
	data_in_V_user_V { axis {  { data_in_TUSER in_data 0 1 } } }
	data_in_V_last_V { axis {  { data_in_TLAST in_data 0 1 } } }
	data_in_V_id_V { axis {  { data_in_TID in_data 0 1 } } }
	data_in_V_dest_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 }  { data_in_TDEST in_data 0 1 } } }
	data_out_V_data_V { axis {  { data_out_TDATA out_data 1 64 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_strb_V { axis {  { data_out_TSTRB out_data 1 8 } } }
	data_out_V_user_V { axis {  { data_out_TUSER out_data 1 1 } } }
	data_out_V_last_V { axis {  { data_out_TLAST out_data 1 1 } } }
	data_out_V_id_V { axis {  { data_out_TID out_data 1 1 } } }
	data_out_V_dest_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TREADY out_acc 0 1 }  { data_out_TDEST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
