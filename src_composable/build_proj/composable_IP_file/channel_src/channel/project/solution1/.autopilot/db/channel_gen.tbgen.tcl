set moduleName channel_gen
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
set C_modelName {channel_gen}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "19", "36", "38", "48", "50", "52", "58", "67", "72", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "channel_gen",
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
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_in_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_in_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_in_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_out_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_out_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_out_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_out_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_out_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_out_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Port" : "data_out_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_pow_generic_double_s_fu_682", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Inst_start_state" : "24", "Inst_end_state" : "29"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_pow_generic_double_s_fu_682", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Inst_start_state" : "24", "Inst_end_state" : "29"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_pow_generic_double_s_fu_682", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Inst_start_state" : "24", "Inst_end_state" : "29"}]},
			{"Name" : "t", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "t", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_addr_head_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rand_fu_693", "Port" : "rngMT19937ICN_uniformRNG_addr_head_V", "Inst_start_state" : "79", "Inst_end_state" : "80"}]},
			{"Name" : "weight_6taps", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_181_12_fu_758", "Port" : "weight_6taps", "Inst_start_state" : "60", "Inst_end_state" : "63"}]},
			{"Name" : "weight_9taps", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_channel_gen_Pipeline_VITIS_LOOP_207_15_fu_802", "Port" : "weight_9taps", "Inst_start_state" : "79", "Inst_end_state" : "82"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_123_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "83", "FirstState" : "ap_ST_fsm_state71", "LastState" : ["ap_ST_fsm_state73"], "QuitState" : ["ap_ST_fsm_state71"], "PreState" : ["ap_ST_fsm_state59"], "PostState" : ["ap_ST_fsm_state74", "ap_ST_fsm_state75"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_149_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "83", "FirstState" : "ap_ST_fsm_state66", "LastState" : ["ap_ST_fsm_state68"], "QuitState" : ["ap_ST_fsm_state66"], "PreState" : ["ap_ST_fsm_state59"], "PostState" : ["ap_ST_fsm_state69", "ap_ST_fsm_state70"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_176_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "83", "FirstState" : "ap_ST_fsm_state60", "LastState" : ["ap_ST_fsm_state62"], "QuitState" : ["ap_ST_fsm_state60"], "PreState" : ["ap_ST_fsm_state59"], "PostState" : ["ap_ST_fsm_state63", "ap_ST_fsm_state64"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_14", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "83", "FirstState" : "ap_ST_fsm_state79", "LastState" : ["ap_ST_fsm_state81"], "QuitState" : ["ap_ST_fsm_state79"], "PreState" : ["ap_ST_fsm_state78"], "PostState" : ["ap_ST_fsm_state82"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_95_2_VITIS_LOOP_96_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "83", "FirstState" : "ap_ST_fsm_state52", "LastState" : ["ap_ST_fsm_state65"], "QuitState" : ["ap_ST_fsm_state52"], "PreState" : ["ap_ST_fsm_state51"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_real_6taps_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_imag_6taps_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_6taps_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_real_9taps_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_imag_9taps_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_9taps_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_60_1",
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
			{"Name" : "TAPS_NUM_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CP_length_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pilot_width_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sym_num_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DATA_LEN_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "SNR_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_60_1_fu_644.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "exp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.mul_54s_69ns_122_1_1_U21", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.mul_13s_71s_71_1_1_U22", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.mul_43ns_36ns_79_1_1_U23", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.mul_49ns_44ns_93_1_1_U24", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.mul_50ns_50ns_100_1_1_U25", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_682.mac_muladd_16s_15ns_19s_31_4_1_U26", "Parent" : "9"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693", "Parent" : "0", "Child" : ["20", "21", "22", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "rand",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "674",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "random_num3774", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "random_num3774_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "t", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_addr_head_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_seedInitialization_fu_375", "Port" : "rngMT19937ICN_uniformRNG_addr_head_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.rngMT19937ICN_uniformRNG_mt_even_0_V_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.rngMT19937ICN_uniformRNG_mt_odd_0_V_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.grp_seedInitialization_fu_375", "Parent" : "19", "Child" : ["23", "24"],
		"CDFG" : "seedInitialization",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "629", "EstimateLatencyMax" : "629",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Port" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_addr_head_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.grp_seedInitialization_fu_375.rngMT19937ICN_uniformRNG_mt_even_1_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65", "Parent" : "22", "Child" : ["25", "26", "27"],
		"CDFG" : "seedInitialization_Pipeline_SEED_INIT_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "625", "EstimateLatencyMax" : "625",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_1_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "SEED_INIT_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65.rngMT19937ICN_uniformRNG_mt_odd_1_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65.mul_32s_32ns_32_1_1_U37", "Parent" : "24"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.grp_seedInitialization_fu_375.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.faddfsub_32ns_32ns_32_2_no_dsp_1_U50", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.fmul_32ns_32ns_32_2_full_dsp_1_U51", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.fmul_32ns_32ns_32_2_max_dsp_1_U52", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.fdiv_32ns_32ns_32_6_no_dsp_1_U53", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.fpext_32ns_64_1_no_dsp_1_U54", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.fcmp_32ns_32ns_1_1_no_dsp_1_U55", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.fsqrt_32ns_32ns_32_6_no_dsp_1_U56", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rand_fu_693.flog_32ns_32ns_32_5_full_dsp_1_U57", "Parent" : "19"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_167_10_fu_718", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_167_10",
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
			{"Name" : "i_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_6taps_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_imag_6taps_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_167_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_167_10_fu_718.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_141_7",
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
			{"Name" : "x_imag_3taps_V_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_imag_3taps_V_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_real_3taps_V_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_real_3taps_V_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_32_22_1_1_U84", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_42_22_1_1_U85", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_42_22_1_1_U86", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_42_22_1_1_U87", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_32_22_1_1_U88", "Parent" : "38"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_42_22_1_1_U89", "Parent" : "38"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_42_22_1_1_U90", "Parent" : "38"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.mux_42_22_1_1_U91", "Parent" : "38"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_141_7_fu_725.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_115_4_fu_740", "Parent" : "0", "Child" : ["49"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_115_4",
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
			{"Name" : "x_imag_2taps_V_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_2taps_V_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_2taps_V_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_2taps_V_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_2taps_V_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_real_2taps_V_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_115_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_115_4_fu_740.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_194_13_fu_751", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_194_13",
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
			{"Name" : "i_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_9taps_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_imag_9taps_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_194_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_194_13_fu_751.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_181_12_fu_758", "Parent" : "0", "Child" : ["53", "54", "55", "56", "57"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_181_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_i_i_i131_le3933", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i205_le3926", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_6taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_real_6taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_imag_6taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_6taps", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_181_12_fu_758.weight_6taps_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_181_12_fu_758.mul_22s_22s_37_1_1_U71", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_181_12_fu_758.mul_22s_22s_37_1_1_U72", "Parent" : "52"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_181_12_fu_758.mul_mul_22s_15ns_37_4_1_U73", "Parent" : "52"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_181_12_fu_758.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771", "Parent" : "0", "Child" : ["59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_154_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_i_i_i131_le3933", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i205_le3926", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_3taps_V_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_3taps_V_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_3taps_V_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Result_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_3taps_V_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Result_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_3taps_V_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_V_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_154_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.mux_32_22_1_1_U105", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.mux_32_22_1_1_U106", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.mul_22s_22ns_37_1_1_U107", "Parent" : "58"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.mux_32_22_1_1_U108", "Parent" : "58"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.mul_22s_22s_37_1_1_U109", "Parent" : "58"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.mux_32_22_1_1_U110", "Parent" : "58"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.mul_22s_22s_37_1_1_U111", "Parent" : "58"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_154_9_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_128_6_fu_788", "Parent" : "0", "Child" : ["68", "69", "70", "71"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_128_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_i_i_i131_le3933", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i205_le3926", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_2taps_V_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_2taps_V_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_real_2taps_V_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Result_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_imag_2taps_V_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Result_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_V_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_128_6_fu_788.mul_22s_22s_37_1_1_U133", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_128_6_fu_788.mul_22s_22s_37_1_1_U134", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_128_6_fu_788.mul_mul_16s_22s_37_4_1_U135", "Parent" : "67"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_128_6_fu_788.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_207_15_fu_802", "Parent" : "0", "Child" : ["73", "74", "75", "76"],
		"CDFG" : "channel_gen_Pipeline_VITIS_LOOP_207_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_i_i_i131_le3933", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i205_le3926", "Type" : "None", "Direction" : "I"},
			{"Name" : "TAPS_NUM_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_9taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_real_9taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_imag_9taps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs_V_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_9taps", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_207_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_207_15_fu_802.weight_9taps_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_207_15_fu_802.mul_22s_22s_37_1_1_U150", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_207_15_fu_802.mul_22s_22s_37_1_1_U151", "Parent" : "72"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_gen_Pipeline_VITIS_LOOP_207_15_fu_802.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_11_no_dsp_1_U161", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_2_no_dsp_1_U162", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_10_no_dsp_1_U163", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_9ns_32ns_8_13_seq_1_U164", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U165", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_9s_32_36_seq_1_U166", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_63_1_1_U167", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U168", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_59s_61ns_119_1_1_U169", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U170", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_59s_61ns_119_1_1_U171", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.random_num_fifo_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_user_V_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_id_V_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_dest_V_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	channel_gen {
		data_in_V_data_V {Type I LastRead 58 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 58 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 58 FirstWrite -1}
		data_in_V_user_V {Type I LastRead 58 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 58 FirstWrite -1}
		data_in_V_id_V {Type I LastRead 58 FirstWrite -1}
		data_in_V_dest_V {Type I LastRead 58 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_user_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_id_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_dest_V {Type O LastRead -1 FirstWrite 1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		t {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_1_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_2_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_m_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_addr_head_V {Type IO LastRead -1 FirstWrite -1}
		weight_6taps {Type I LastRead -1 FirstWrite -1}
		weight_9taps {Type I LastRead -1 FirstWrite -1}}
	channel_gen_Pipeline_VITIS_LOOP_60_1 {
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
		TAPS_NUM_5_out {Type O LastRead -1 FirstWrite 1}
		CP_length_4_out {Type O LastRead -1 FirstWrite 1}
		pilot_width_3_out {Type O LastRead -1 FirstWrite 1}
		sym_num_2_out {Type O LastRead -1 FirstWrite 1}
		DATA_LEN_1_out {Type O LastRead -1 FirstWrite 1}
		SNR_7_out {Type O LastRead -1 FirstWrite 1}}
	pow_generic_double_s {
		exp {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	rand {
		random_num3774 {Type O LastRead -1 FirstWrite 45}
		t {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_0_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_1_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_2_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_m_V {Type IO LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_addr_head_V {Type IO LastRead -1 FirstWrite -1}}
	seedInitialization {
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type IO LastRead 4 FirstWrite 0}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type IO LastRead 4 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_0_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_x_k_p_1_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_x_k_p_2_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_x_k_p_m_V {Type O LastRead -1 FirstWrite 4}
		rngMT19937ICN_uniformRNG_addr_head_V {Type O LastRead -1 FirstWrite 4}}
	seedInitialization_Pipeline_SEED_INIT_LOOP {
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_even_1_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type O LastRead -1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_1_V {Type O LastRead -1 FirstWrite -1}}
	channel_gen_Pipeline_VITIS_LOOP_167_10 {
		i_V {Type I LastRead 0 FirstWrite -1}
		x_real_6taps_V {Type IO LastRead 1 FirstWrite 2}
		x_imag_6taps_V {Type IO LastRead 1 FirstWrite 2}}
	channel_gen_Pipeline_VITIS_LOOP_141_7 {
		x_imag_3taps_V_2_1 {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_1_1 {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_0_1 {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_2_1 {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_1_1 {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_0_1 {Type I LastRead 0 FirstWrite -1}
		i_V {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_2_2_out {Type O LastRead -1 FirstWrite 1}
		x_imag_3taps_V_1_2_out {Type O LastRead -1 FirstWrite 1}
		x_real_3taps_V_2_2_out {Type O LastRead -1 FirstWrite 1}
		x_real_3taps_V_1_2_out {Type O LastRead -1 FirstWrite 1}}
	channel_gen_Pipeline_VITIS_LOOP_115_4 {
		x_imag_2taps_V_1_1 {Type I LastRead 0 FirstWrite -1}
		x_imag_2taps_V_0_1 {Type I LastRead 0 FirstWrite -1}
		x_real_2taps_V_1_1 {Type I LastRead 0 FirstWrite -1}
		x_real_2taps_V_0_1 {Type I LastRead 0 FirstWrite -1}
		i_V {Type I LastRead 0 FirstWrite -1}
		x_imag_2taps_V_1_2_out {Type O LastRead -1 FirstWrite 1}
		x_real_2taps_V_1_2_out {Type O LastRead -1 FirstWrite 1}}
	channel_gen_Pipeline_VITIS_LOOP_194_13 {
		i_V {Type I LastRead 0 FirstWrite -1}
		x_real_9taps_V {Type IO LastRead 1 FirstWrite 2}
		x_imag_9taps_V {Type IO LastRead 1 FirstWrite 2}}
	channel_gen_Pipeline_VITIS_LOOP_181_12 {
		conv_i_i_i131_le3933 {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i205_le3926 {Type I LastRead 0 FirstWrite -1}
		n_6taps_V {Type I LastRead 0 FirstWrite -1}
		x_real_6taps_V {Type I LastRead 3 FirstWrite -1}
		x_imag_6taps_V {Type I LastRead 3 FirstWrite -1}
		lhs_V_18_out {Type O LastRead -1 FirstWrite 3}
		lhs_V_16_out {Type O LastRead -1 FirstWrite 3}
		weight_6taps {Type I LastRead -1 FirstWrite -1}}
	channel_gen_Pipeline_VITIS_LOOP_154_9 {
		conv_i_i_i131_le3933 {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i205_le3926 {Type I LastRead 0 FirstWrite -1}
		n_3taps_V_0_5 {Type I LastRead 0 FirstWrite -1}
		n_3taps_V_1_5 {Type I LastRead 0 FirstWrite -1}
		n_3taps_V_2_5 {Type I LastRead 0 FirstWrite -1}
		p_Result_17 {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_1_2_reload {Type I LastRead 0 FirstWrite -1}
		x_real_3taps_V_2_2_reload {Type I LastRead 0 FirstWrite -1}
		p_Result_18 {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_1_2_reload {Type I LastRead 0 FirstWrite -1}
		x_imag_3taps_V_2_2_reload {Type I LastRead 0 FirstWrite -1}
		lhs_V_14_out {Type O LastRead -1 FirstWrite 1}
		lhs_V_12_out {Type O LastRead -1 FirstWrite 1}}
	channel_gen_Pipeline_VITIS_LOOP_128_6 {
		conv_i_i_i131_le3933 {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i205_le3926 {Type I LastRead 0 FirstWrite -1}
		n_2taps_V_1_5 {Type I LastRead 0 FirstWrite -1}
		n_2taps_V_0_5 {Type I LastRead 0 FirstWrite -1}
		x_real_2taps_V_1_2_reload {Type I LastRead 0 FirstWrite -1}
		p_Result_15 {Type I LastRead 0 FirstWrite -1}
		x_imag_2taps_V_1_2_reload {Type I LastRead 0 FirstWrite -1}
		p_Result_16 {Type I LastRead 0 FirstWrite -1}
		lhs_V_10_out {Type O LastRead -1 FirstWrite 2}
		lhs_V_8_out {Type O LastRead -1 FirstWrite 2}}
	channel_gen_Pipeline_VITIS_LOOP_207_15 {
		conv_i_i_i131_le3933 {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i205_le3926 {Type I LastRead 0 FirstWrite -1}
		TAPS_NUM_5_reload {Type I LastRead 0 FirstWrite -1}
		n_9taps_V {Type I LastRead 0 FirstWrite -1}
		x_real_9taps_V {Type I LastRead 0 FirstWrite -1}
		x_imag_9taps_V {Type I LastRead 0 FirstWrite -1}
		lhs_V_6_out {Type O LastRead -1 FirstWrite 0}
		lhs_V_out {Type O LastRead -1 FirstWrite 0}
		weight_9taps {Type I LastRead -1 FirstWrite -1}}}

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
