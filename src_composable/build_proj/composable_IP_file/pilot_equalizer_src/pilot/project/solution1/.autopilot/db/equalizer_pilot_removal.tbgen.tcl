set moduleName equalizer_pilot_removal
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
set C_modelName {equalizer_pilot_removal}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "equalizer_pilot_removal",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
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
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_in_V_data_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_in_V_keep_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_in_V_strb_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_in_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_in_V_user_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_in_V_last_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_in_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_in_V_id_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_in_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_in_V_dest_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_out_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_out_V_data_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_out_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_out_V_keep_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_out_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_out_V_strb_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_out_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_out_V_user_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_out_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_out_V_last_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_out_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_out_V_id_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "data_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Port" : "data_out_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Port" : "data_out_V_dest_V", "Inst_start_state" : "52", "Inst_end_state" : "53"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1",
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
			{"Name" : "sym_num_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DATA_LEN_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pilot_width_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3",
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
			{"Name" : "data_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "pilot_width_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "sub62", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i575", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_2_VITIS_LOOP_76_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter171", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter171", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.srem_32ns_32ns_32_36_1_U18", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.srem_32ns_32ns_32_36_1_U19", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.srem_32ns_32ns_32_36_1_U20", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.sdiv_37ns_22s_22_41_1_U21", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.sdiv_37ns_22s_22_41_1_U22", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.sdiv_32ns_32ns_7_36_1_U23", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_23s_22s_37_1_1_U24", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_23s_22s_37_1_1_U25", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_37_1_1_U26", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_37_1_1_U27", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_37_1_1_U28", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_37_1_1_U29", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_44_1_1_U30", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_44_1_1_U31", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_45s_18ns_61_1_1_U32", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_44_1_1_U33", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_44_1_1_U34", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.sdiv_91ns_45s_91_95_1_U35", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_44_1_1_U36", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_22s_22s_44_1_1_U37", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.mul_44s_18ns_61_1_1_U38", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.sdiv_91ns_45s_91_95_1_U39", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3_fu_119.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_9ns_32ns_8_13_seq_1_U71", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U72", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_9s_32_36_seq_1_U73", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U74", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_user_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_id_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_dest_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	equalizer_pilot_removal {
		data_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_user_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_id_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1 {
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
		sym_num_2_out {Type O LastRead -1 FirstWrite 1}
		DATA_LEN_1_out {Type O LastRead -1 FirstWrite 1}
		pilot_width_4_out {Type O LastRead -1 FirstWrite 1}}
	equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3 {
		data_V_1 {Type IO LastRead 37 FirstWrite 36}
		data_V_0 {Type IO LastRead 37 FirstWrite 36}
		add {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		pilot_width_4_reload {Type I LastRead 0 FirstWrite -1}
		data_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		sub62 {Type I LastRead 0 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 171}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 171}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 171}
		data_out_V_user_V {Type O LastRead -1 FirstWrite 171}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 171}
		data_out_V_id_V {Type O LastRead -1 FirstWrite 171}
		data_out_V_dest_V {Type O LastRead -1 FirstWrite 171}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		conv_i575 {Type I LastRead 0 FirstWrite -1}}}

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
