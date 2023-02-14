set moduleName deQAM
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
set C_modelName {deQAM}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "7", "11", "13", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
		"CDFG" : "deQAM",
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
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_in_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_in_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_in_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_out_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_out_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_out_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_out_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_out_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_out_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Port" : "data_out_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "deQAM_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "qam_num_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DATA_LEN_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sym_num_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_33_1_fu_206.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_77_3_fu_241", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "deQAM_Pipeline_VITIS_LOOP_77_3",
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
			{"Name" : "select_ln70_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln1827_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "read_in_real_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln77", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_V_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_77_3_fu_241.dcmp_64ns_64ns_1_1_no_dsp_1_U18", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_77_3_fu_241.uitodp_32ns_64_2_no_dsp_1_U19", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_77_3_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_95_4_fu_251", "Parent" : "0", "Child" : ["8", "9", "10"],
		"CDFG" : "deQAM_Pipeline_VITIS_LOOP_95_4",
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
			{"Name" : "select_ln70_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln1827_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "read_in_imag_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln95", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_95_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_95_4_fu_251.dcmp_64ns_64ns_1_1_no_dsp_1_U28", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_95_4_fu_251.uitodp_32ns_64_2_no_dsp_1_U29", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_95_4_fu_251.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_129_6_fu_261", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "deQAM_Pipeline_VITIS_LOOP_129_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v_V_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_V_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_out_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_129_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_129_6_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_105_5_fu_268", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "deQAM_Pipeline_VITIS_LOOP_105_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v_V_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_V_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_out_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deQAM_Pipeline_VITIS_LOOP_105_5_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_2_no_dsp_1_U42", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_10_no_dsp_1_U43", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U44", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_user_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_id_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_dest_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	deQAM {
		data_in_V_data_V {Type I LastRead 16 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 16 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 16 FirstWrite -1}
		data_in_V_user_V {Type I LastRead 16 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 16 FirstWrite -1}
		data_in_V_id_V {Type I LastRead 16 FirstWrite -1}
		data_in_V_dest_V {Type I LastRead 16 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_user_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_id_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	deQAM_Pipeline_VITIS_LOOP_33_1 {
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
		qam_num_2_out {Type O LastRead -1 FirstWrite 1}
		DATA_LEN_1_out {Type O LastRead -1 FirstWrite 1}
		sym_num_3_out {Type O LastRead -1 FirstWrite 1}}
	deQAM_Pipeline_VITIS_LOOP_77_3 {
		select_ln70_cast {Type I LastRead 0 FirstWrite -1}
		or_ln1827_1 {Type I LastRead 0 FirstWrite -1}
		op2_assign {Type I LastRead 0 FirstWrite -1}
		read_in_real_V_2 {Type I LastRead 0 FirstWrite -1}
		select_ln77 {Type I LastRead 0 FirstWrite -1}
		v_V_0_out {Type O LastRead -1 FirstWrite 2}}
	deQAM_Pipeline_VITIS_LOOP_95_4 {
		select_ln70_1_cast {Type I LastRead 0 FirstWrite -1}
		or_ln1827_1 {Type I LastRead 0 FirstWrite -1}
		op2_assign {Type I LastRead 0 FirstWrite -1}
		read_in_imag_V_2 {Type I LastRead 0 FirstWrite -1}
		select_ln95 {Type I LastRead 0 FirstWrite -1}
		v_V_1_out {Type O LastRead -1 FirstWrite 2}}
	deQAM_Pipeline_VITIS_LOOP_129_6 {
		v_V_1_reload {Type I LastRead 0 FirstWrite -1}
		v_V_0_reload {Type I LastRead 0 FirstWrite -1}
		v_out_V_1_out {Type O LastRead -1 FirstWrite 0}}
	deQAM_Pipeline_VITIS_LOOP_105_5 {
		v_V_1_reload {Type I LastRead 0 FirstWrite -1}
		v_V_0_reload {Type I LastRead 0 FirstWrite -1}
		v_out_V_out {Type O LastRead -1 FirstWrite 0}}}

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
