set moduleName decoder_bit_Block_split148_proc3
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
set C_modelName {decoder_bit_Block_.split148_proc3}
set C_modelType { int 32 }
set C_modelArgList {
	{ temp_trellis_survivor_V int 33 regular {array 64 { 0 3 } 0 1 }  }
	{ y0300 int 1 regular {fifo 0 volatile }  }
	{ y1301 int 1 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp_trellis_survivor_V", "interface" : "memory", "bitwidth" : 33, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y0300", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "y1301", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp_trellis_survivor_V_address0 sc_out sc_lv 6 signal 0 } 
	{ temp_trellis_survivor_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ temp_trellis_survivor_V_we0 sc_out sc_logic 1 signal 0 } 
	{ temp_trellis_survivor_V_d0 sc_out sc_lv 33 signal 0 } 
	{ y0300_dout sc_in sc_lv 1 signal 1 } 
	{ y0300_empty_n sc_in sc_logic 1 signal 1 } 
	{ y0300_read sc_out sc_logic 1 signal 1 } 
	{ y1301_dout sc_in sc_lv 1 signal 2 } 
	{ y1301_empty_n sc_in sc_logic 1 signal 2 } 
	{ y1301_read sc_out sc_logic 1 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "temp_trellis_survivor_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_trellis_survivor_V", "role": "address0" }} , 
 	{ "name": "temp_trellis_survivor_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_trellis_survivor_V", "role": "ce0" }} , 
 	{ "name": "temp_trellis_survivor_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_trellis_survivor_V", "role": "we0" }} , 
 	{ "name": "temp_trellis_survivor_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "temp_trellis_survivor_V", "role": "d0" }} , 
 	{ "name": "y0300_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y0300", "role": "dout" }} , 
 	{ "name": "y0300_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y0300", "role": "empty_n" }} , 
 	{ "name": "y0300_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y0300", "role": "read" }} , 
 	{ "name": "y1301_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y1301", "role": "dout" }} , 
 	{ "name": "y1301_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1301", "role": "empty_n" }} , 
 	{ "name": "y1301_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1301", "role": "read" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "11"],
		"CDFG" : "decoder_bit_Block_split148_proc3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "521", "EstimateLatencyMax" : "585",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_trellis_survivor_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "y0300", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y0300_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y1301", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y1301_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "t", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_table_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trellis_table_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trellis_table_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trellis_table_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trellis_metric", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758", "Port" : "trellis_metric", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "11", "SubInstance" : "grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765", "Port" : "trellis_metric", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "trellis_survivor_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "trellis_survivor_V_63", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_166_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trellis_table_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trellis_table_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trellis_table_1_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trellis_table_1_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trellis_metric_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_trellis_metric_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3_fu_751", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "best_metric", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_trellis_metric", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "best_branch_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3_fu_751.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_trellis_metric", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trellis_metric", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_221_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_trellis_metric", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trellis_metric", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_216_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	decoder_bit_Block_split148_proc3 {
		temp_trellis_survivor_V {Type O LastRead -1 FirstWrite 0}
		y0300 {Type I LastRead 1 FirstWrite -1}
		y1301 {Type I LastRead 1 FirstWrite -1}
		t {Type IO LastRead -1 FirstWrite -1}
		trellis_table_0_0 {Type IO LastRead -1 FirstWrite -1}
		trellis_table_0_1 {Type IO LastRead -1 FirstWrite -1}
		trellis_table_1_0 {Type IO LastRead -1 FirstWrite -1}
		trellis_table_1_1 {Type IO LastRead -1 FirstWrite -1}
		trellis_metric {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_0 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_1 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_2 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_3 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_4 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_5 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_6 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_7 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_8 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_9 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_10 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_11 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_12 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_13 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_14 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_15 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_16 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_17 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_18 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_19 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_20 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_21 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_22 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_23 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_24 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_25 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_26 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_27 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_28 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_29 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_30 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_31 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_32 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_33 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_34 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_35 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_36 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_37 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_38 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_39 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_40 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_41 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_42 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_43 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_44 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_45 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_46 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_47 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_48 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_49 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_50 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_51 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_52 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_53 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_54 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_55 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_56 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_57 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_58 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_59 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_60 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_61 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_62 {Type IO LastRead -1 FirstWrite -1}
		trellis_survivor_V_63 {Type IO LastRead -1 FirstWrite -1}}
	decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3 {
		best_metric {Type I LastRead 0 FirstWrite -1}
		temp_trellis_metric {Type I LastRead 1 FirstWrite -1}
		best_branch_out {Type O LastRead -1 FirstWrite 1}}
	decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5 {
		temp_trellis_metric {Type I LastRead 0 FirstWrite -1}
		trellis_metric {Type O LastRead -1 FirstWrite 1}}
	decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4 {
		temp_trellis_metric {Type I LastRead 0 FirstWrite -1}
		trellis_metric {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "521", "Max" : "585"}
	, {"Name" : "Interval", "Min" : "521", "Max" : "585"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	temp_trellis_survivor_V { ap_memory {  { temp_trellis_survivor_V_address0 mem_address 1 6 }  { temp_trellis_survivor_V_ce0 mem_ce 1 1 }  { temp_trellis_survivor_V_we0 mem_we 1 1 }  { temp_trellis_survivor_V_d0 mem_din 1 33 } } }
	y0300 { ap_fifo {  { y0300_dout fifo_data 0 1 }  { y0300_empty_n fifo_status 0 1 }  { y0300_read fifo_update 1 1 } } }
	y1301 { ap_fifo {  { y1301_dout fifo_data 0 1 }  { y1301_empty_n fifo_status 0 1 }  { y1301_read fifo_update 1 1 } } }
}
