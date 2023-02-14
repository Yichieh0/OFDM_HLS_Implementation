set moduleName CP_removal_Pipeline_VITIS_LOOP_53_2_VITIS_LOOP_54_3
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
set C_modelName {CP_removal_Pipeline_VITIS_LOOP_53_2_VITIS_LOOP_54_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ add int 32 regular  }
	{ bound int 64 regular  }
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_strb_V int 8 regular {axi_s 0 volatile  { data_in Strb } }  }
	{ data_in_V_user_V int 1 regular {axi_s 0 volatile  { data_in User } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_in_V_id_V int 1 regular {axi_s 0 volatile  { data_in ID } }  }
	{ data_in_V_dest_V int 1 regular {axi_s 0 volatile  { data_in Dest } }  }
	{ CP_length_5_reload int 32 regular  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_strb_V int 8 regular {axi_s 1 volatile  { data_out Strb } }  }
	{ data_out_V_user_V int 1 regular {axi_s 1 volatile  { data_out User } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ data_out_V_id_V int 1 regular {axi_s 1 volatile  { data_out ID } }  }
	{ data_out_V_dest_V int 1 regular {axi_s 1 volatile  { data_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "add", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "CP_length_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 10 } 
	{ add sc_in sc_lv 32 signal 0 } 
	{ bound sc_in sc_lv 64 signal 1 } 
	{ data_in_TDATA sc_in sc_lv 64 signal 2 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 8 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 3 } 
	{ data_in_TSTRB sc_in sc_lv 8 signal 4 } 
	{ data_in_TUSER sc_in sc_lv 1 signal 5 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 6 } 
	{ data_in_TID sc_in sc_lv 1 signal 7 } 
	{ data_in_TDEST sc_in sc_lv 1 signal 8 } 
	{ CP_length_5_reload sc_in sc_lv 32 signal 9 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 10 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 16 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 11 } 
	{ data_out_TSTRB sc_out sc_lv 8 signal 12 } 
	{ data_out_TUSER sc_out sc_lv 1 signal 13 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 14 } 
	{ data_out_TID sc_out sc_lv 1 signal 15 } 
	{ data_out_TDEST sc_out sc_lv 1 signal 16 } 
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
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_dest_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_strb_V", "role": "default" }} , 
 	{ "name": "data_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_user_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_id_V", "role": "default" }} , 
 	{ "name": "data_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_dest_V", "role": "default" }} , 
 	{ "name": "CP_length_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CP_length_5_reload", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_dest_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_strb_V", "role": "default" }} , 
 	{ "name": "data_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_user_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_id_V", "role": "default" }} , 
 	{ "name": "data_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "CP_removal_Pipeline_VITIS_LOOP_53_2_VITIS_LOOP_54_3",
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
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "CP_length_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2_VITIS_LOOP_54_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CP_removal_Pipeline_VITIS_LOOP_53_2_VITIS_LOOP_54_3 {
		add {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		data_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		data_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		CP_length_5_reload {Type I LastRead 0 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add { ap_none {  { add in_data 0 32 } } }
	bound { ap_none {  { bound in_data 0 64 } } }
	data_in_V_data_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TDATA in_data 0 64 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 8 } } }
	data_in_V_strb_V { axis {  { data_in_TSTRB in_data 0 8 } } }
	data_in_V_user_V { axis {  { data_in_TUSER in_data 0 1 } } }
	data_in_V_last_V { axis {  { data_in_TLAST in_data 0 1 } } }
	data_in_V_id_V { axis {  { data_in_TID in_data 0 1 } } }
	data_in_V_dest_V { axis {  { data_in_TREADY in_acc 1 1 }  { data_in_TDEST in_data 0 1 } } }
	CP_length_5_reload { ap_none {  { CP_length_5_reload in_data 0 32 } } }
	data_out_V_data_V { axis {  { data_out_TREADY out_acc 0 1 }  { data_out_TDATA out_data 1 64 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_strb_V { axis {  { data_out_TSTRB out_data 1 8 } } }
	data_out_V_user_V { axis {  { data_out_TUSER out_data 1 1 } } }
	data_out_V_last_V { axis {  { data_out_TLAST out_data 1 1 } } }
	data_out_V_id_V { axis {  { data_out_TID out_data 1 1 } } }
	data_out_V_dest_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TDEST out_data 1 1 } } }
}
