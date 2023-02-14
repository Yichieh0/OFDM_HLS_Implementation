set moduleName equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3
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
set C_modelName {equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_1 int 22 regular {array 16 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ data_V_0 int 22 regular {array 16 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ add int 32 regular  }
	{ bound int 64 regular  }
	{ pilot_width_4_reload int 32 regular  }
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_strb_V int 8 regular {axi_s 0 volatile  { data_in Strb } }  }
	{ data_in_V_user_V int 1 regular {axi_s 0 volatile  { data_in User } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_in_V_id_V int 1 regular {axi_s 0 volatile  { data_in ID } }  }
	{ data_in_V_dest_V int 1 regular {axi_s 0 volatile  { data_in Dest } }  }
	{ sub62 int 32 regular  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_strb_V int 8 regular {axi_s 1 volatile  { data_out Strb } }  }
	{ data_out_V_user_V int 1 regular {axi_s 1 volatile  { data_out User } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ data_out_V_id_V int 1 regular {axi_s 1 volatile  { data_out ID } }  }
	{ data_out_V_dest_V int 1 regular {axi_s 1 volatile  { data_out Dest } }  }
	{ trunc_ln int 7 regular  }
	{ conv_i575 int 22 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_1", "interface" : "memory", "bitwidth" : 22, "direction" : "READWRITE"} , 
 	{ "Name" : "data_V_0", "interface" : "memory", "bitwidth" : 22, "direction" : "READWRITE"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pilot_width_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "conv_i575", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 5 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 13 } 
	{ data_V_1_address0 sc_out sc_lv 4 signal 0 } 
	{ data_V_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_1_we0 sc_out sc_logic 1 signal 0 } 
	{ data_V_1_d0 sc_out sc_lv 22 signal 0 } 
	{ data_V_1_address1 sc_out sc_lv 4 signal 0 } 
	{ data_V_1_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_V_1_q1 sc_in sc_lv 22 signal 0 } 
	{ data_V_0_address0 sc_out sc_lv 4 signal 1 } 
	{ data_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_V_0_we0 sc_out sc_logic 1 signal 1 } 
	{ data_V_0_d0 sc_out sc_lv 22 signal 1 } 
	{ data_V_0_address1 sc_out sc_lv 4 signal 1 } 
	{ data_V_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_V_0_q1 sc_in sc_lv 22 signal 1 } 
	{ add sc_in sc_lv 32 signal 2 } 
	{ bound sc_in sc_lv 64 signal 3 } 
	{ pilot_width_4_reload sc_in sc_lv 32 signal 4 } 
	{ data_in_TDATA sc_in sc_lv 64 signal 5 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 11 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 6 } 
	{ data_in_TSTRB sc_in sc_lv 8 signal 7 } 
	{ data_in_TUSER sc_in sc_lv 1 signal 8 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 9 } 
	{ data_in_TID sc_in sc_lv 1 signal 10 } 
	{ data_in_TDEST sc_in sc_lv 1 signal 11 } 
	{ sub62 sc_in sc_lv 32 signal 12 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 13 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 19 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 14 } 
	{ data_out_TSTRB sc_out sc_lv 8 signal 15 } 
	{ data_out_TUSER sc_out sc_lv 1 signal 16 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 17 } 
	{ data_out_TID sc_out sc_lv 1 signal 18 } 
	{ data_out_TDEST sc_out sc_lv 1 signal 19 } 
	{ trunc_ln sc_in sc_lv 7 signal 20 } 
	{ conv_i575 sc_in sc_lv 22 signal 21 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V_1", "role": "address0" }} , 
 	{ "name": "data_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_1", "role": "ce0" }} , 
 	{ "name": "data_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_1", "role": "we0" }} , 
 	{ "name": "data_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "data_V_1", "role": "d0" }} , 
 	{ "name": "data_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V_1", "role": "address1" }} , 
 	{ "name": "data_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_1", "role": "ce1" }} , 
 	{ "name": "data_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "data_V_1", "role": "q1" }} , 
 	{ "name": "data_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V_0", "role": "address0" }} , 
 	{ "name": "data_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_0", "role": "ce0" }} , 
 	{ "name": "data_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_0", "role": "we0" }} , 
 	{ "name": "data_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "data_V_0", "role": "d0" }} , 
 	{ "name": "data_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V_0", "role": "address1" }} , 
 	{ "name": "data_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_0", "role": "ce1" }} , 
 	{ "name": "data_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "data_V_0", "role": "q1" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "pilot_width_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pilot_width_4_reload", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_dest_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_strb_V", "role": "default" }} , 
 	{ "name": "data_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_user_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_id_V", "role": "default" }} , 
 	{ "name": "data_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_dest_V", "role": "default" }} , 
 	{ "name": "sub62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub62", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_dest_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_strb_V", "role": "default" }} , 
 	{ "name": "data_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_user_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_id_V", "role": "default" }} , 
 	{ "name": "data_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_dest_V", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "conv_i575", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "conv_i575", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_32ns_32_36_1_U18", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_32ns_32_36_1_U19", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_32ns_32_36_1_U20", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_37ns_22s_22_41_1_U21", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_37ns_22s_22_41_1_U22", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_7_36_1_U23", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_23s_22s_37_1_1_U24", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_23s_22s_37_1_1_U25", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_37_1_1_U26", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_37_1_1_U27", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_37_1_1_U28", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_37_1_1_U29", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U30", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U31", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_45s_18ns_61_1_1_U32", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U33", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U34", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_91ns_45s_91_95_1_U35", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U36", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_22s_44_1_1_U37", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_44s_18ns_61_1_1_U38", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_91ns_45s_91_95_1_U39", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_1 { ap_memory {  { data_V_1_address0 mem_address 1 4 }  { data_V_1_ce0 mem_ce 1 1 }  { data_V_1_we0 mem_we 1 1 }  { data_V_1_d0 mem_din 1 22 }  { data_V_1_address1 MemPortADDR2 1 4 }  { data_V_1_ce1 MemPortCE2 1 1 }  { data_V_1_q1 MemPortDOUT2 0 22 } } }
	data_V_0 { ap_memory {  { data_V_0_address0 mem_address 1 4 }  { data_V_0_ce0 mem_ce 1 1 }  { data_V_0_we0 mem_we 1 1 }  { data_V_0_d0 mem_din 1 22 }  { data_V_0_address1 MemPortADDR2 1 4 }  { data_V_0_ce1 MemPortCE2 1 1 }  { data_V_0_q1 MemPortDOUT2 0 22 } } }
	add { ap_none {  { add in_data 0 32 } } }
	bound { ap_none {  { bound in_data 0 64 } } }
	pilot_width_4_reload { ap_none {  { pilot_width_4_reload in_data 0 32 } } }
	data_in_V_data_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TDATA in_data 0 64 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 8 } } }
	data_in_V_strb_V { axis {  { data_in_TSTRB in_data 0 8 } } }
	data_in_V_user_V { axis {  { data_in_TUSER in_data 0 1 } } }
	data_in_V_last_V { axis {  { data_in_TLAST in_data 0 1 } } }
	data_in_V_id_V { axis {  { data_in_TID in_data 0 1 } } }
	data_in_V_dest_V { axis {  { data_in_TREADY in_acc 1 1 }  { data_in_TDEST in_data 0 1 } } }
	sub62 { ap_none {  { sub62 in_data 0 32 } } }
	data_out_V_data_V { axis {  { data_out_TREADY out_acc 0 1 }  { data_out_TDATA out_data 1 64 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_strb_V { axis {  { data_out_TSTRB out_data 1 8 } } }
	data_out_V_user_V { axis {  { data_out_TUSER out_data 1 1 } } }
	data_out_V_last_V { axis {  { data_out_TLAST out_data 1 1 } } }
	data_out_V_id_V { axis {  { data_out_TID out_data 1 1 } } }
	data_out_V_dest_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TDEST out_data 1 1 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 7 } } }
	conv_i575 { ap_none {  { conv_i575 in_data 0 22 } } }
}
