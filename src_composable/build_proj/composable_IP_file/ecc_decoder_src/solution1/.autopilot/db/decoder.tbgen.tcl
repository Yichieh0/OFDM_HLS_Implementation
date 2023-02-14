set moduleName decoder
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
set C_modelName {decoder}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_strb_V int 8 regular {axi_s 0 volatile  { data_in Strb } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_strb_V int 8 regular {axi_s 1 volatile  { data_out Strb } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ data_in_TSTRB sc_in sc_lv 8 signal 2 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 4 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 7 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 5 } 
	{ data_out_TSTRB sc_out sc_lv 8 signal 6 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_strb_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_strb_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "decoder",
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
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_out_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_out_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_out_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Port" : "data_out_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "t", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "t", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_table_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_table_0_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_table_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_table_0_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_table_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_table_1_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_table_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_table_1_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_metric", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_metric", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_2", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_3", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_4", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_5", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_6", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_7", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_8", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_9", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_10", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_11", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_12", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_13", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_14", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_15", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_16", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_17", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_18", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_19", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_20", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_21", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_22", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_23", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_24", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_25", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_26", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_27", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_28", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_29", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_30", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_31", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_32", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_33", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_34", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_35", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_36", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_37", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_38", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_39", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_40", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_41", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_42", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_43", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_44", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_45", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_46", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_47", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_48", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_49", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_50", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_51", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_52", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_53", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_54", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_55", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_56", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_57", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_58", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_59", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_60", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_61", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_62", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "trellis_survivor_V_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_decoder_bit_fu_316", "Port" : "trellis_survivor_V_63", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "output_pixl_temp_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "count", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "18", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "decoder_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DATA_LEN_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316", "Parent" : "0", "Child" : ["4", "5", "18", "20", "21", "22"],
		"CDFG" : "decoder_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "556", "EstimateLatencyMax" : "620",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "decoder_bit_Block_split148_proc3_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "decoder_bit_Block_split223_proc_U0"}],
		"Port" : [
			{"Name" : "y0300", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "y0300"}]},
			{"Name" : "y1301", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "y1301"}]},
			{"Name" : "output302", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "decoder_bit_Block_split223_proc_U0", "Port" : "output302"}]},
			{"Name" : "t", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "t"}]},
			{"Name" : "trellis_table_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_0_0"}]},
			{"Name" : "trellis_table_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_0_1"}]},
			{"Name" : "trellis_table_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_1_0"}]},
			{"Name" : "trellis_table_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_1_1"}]},
			{"Name" : "trellis_metric", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_metric"}]},
			{"Name" : "trellis_survivor_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_0"}]},
			{"Name" : "trellis_survivor_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_1"}]},
			{"Name" : "trellis_survivor_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_2"}]},
			{"Name" : "trellis_survivor_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_3"}]},
			{"Name" : "trellis_survivor_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_4"}]},
			{"Name" : "trellis_survivor_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_5"}]},
			{"Name" : "trellis_survivor_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_6"}]},
			{"Name" : "trellis_survivor_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_7"}]},
			{"Name" : "trellis_survivor_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_8"}]},
			{"Name" : "trellis_survivor_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_9"}]},
			{"Name" : "trellis_survivor_V_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_10"}]},
			{"Name" : "trellis_survivor_V_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_11"}]},
			{"Name" : "trellis_survivor_V_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_12"}]},
			{"Name" : "trellis_survivor_V_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_13"}]},
			{"Name" : "trellis_survivor_V_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_14"}]},
			{"Name" : "trellis_survivor_V_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_15"}]},
			{"Name" : "trellis_survivor_V_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_16"}]},
			{"Name" : "trellis_survivor_V_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_17"}]},
			{"Name" : "trellis_survivor_V_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_18"}]},
			{"Name" : "trellis_survivor_V_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_19"}]},
			{"Name" : "trellis_survivor_V_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_20"}]},
			{"Name" : "trellis_survivor_V_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_21"}]},
			{"Name" : "trellis_survivor_V_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_22"}]},
			{"Name" : "trellis_survivor_V_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_23"}]},
			{"Name" : "trellis_survivor_V_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_24"}]},
			{"Name" : "trellis_survivor_V_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_25"}]},
			{"Name" : "trellis_survivor_V_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_26"}]},
			{"Name" : "trellis_survivor_V_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_27"}]},
			{"Name" : "trellis_survivor_V_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_28"}]},
			{"Name" : "trellis_survivor_V_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_29"}]},
			{"Name" : "trellis_survivor_V_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_30"}]},
			{"Name" : "trellis_survivor_V_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_31"}]},
			{"Name" : "trellis_survivor_V_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_32"}]},
			{"Name" : "trellis_survivor_V_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_33"}]},
			{"Name" : "trellis_survivor_V_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_34"}]},
			{"Name" : "trellis_survivor_V_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_35"}]},
			{"Name" : "trellis_survivor_V_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_36"}]},
			{"Name" : "trellis_survivor_V_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_37"}]},
			{"Name" : "trellis_survivor_V_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_38"}]},
			{"Name" : "trellis_survivor_V_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_39"}]},
			{"Name" : "trellis_survivor_V_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_40"}]},
			{"Name" : "trellis_survivor_V_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_41"}]},
			{"Name" : "trellis_survivor_V_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_42"}]},
			{"Name" : "trellis_survivor_V_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_43"}]},
			{"Name" : "trellis_survivor_V_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_44"}]},
			{"Name" : "trellis_survivor_V_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_45"}]},
			{"Name" : "trellis_survivor_V_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_46"}]},
			{"Name" : "trellis_survivor_V_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_47"}]},
			{"Name" : "trellis_survivor_V_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_48"}]},
			{"Name" : "trellis_survivor_V_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_49"}]},
			{"Name" : "trellis_survivor_V_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_50"}]},
			{"Name" : "trellis_survivor_V_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_51"}]},
			{"Name" : "trellis_survivor_V_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_52"}]},
			{"Name" : "trellis_survivor_V_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_53"}]},
			{"Name" : "trellis_survivor_V_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_54"}]},
			{"Name" : "trellis_survivor_V_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_55"}]},
			{"Name" : "trellis_survivor_V_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_56"}]},
			{"Name" : "trellis_survivor_V_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_57"}]},
			{"Name" : "trellis_survivor_V_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_58"}]},
			{"Name" : "trellis_survivor_V_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_59"}]},
			{"Name" : "trellis_survivor_V_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_60"}]},
			{"Name" : "trellis_survivor_V_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_61"}]},
			{"Name" : "trellis_survivor_V_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_62"}]},
			{"Name" : "trellis_survivor_V_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_63"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.temp_trellis_survivor_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0", "Parent" : "3", "Child" : ["6", "7", "8", "9", "10", "11", "12", "14", "16"],
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
			{"Name" : "temp_trellis_survivor_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "4"},
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
					{"ID" : "14", "SubInstance" : "grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758", "Port" : "trellis_metric", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "16", "SubInstance" : "grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765", "Port" : "trellis_metric", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.trellis_table_0_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.trellis_table_0_1_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.trellis_table_1_0_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.trellis_table_1_1_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.trellis_metric_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.temp_trellis_metric_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3_fu_751", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3_fu_751.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758", "Parent" : "5", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765", "Parent" : "5", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0", "Parent" : "3", "Child" : ["19"],
		"CDFG" : "decoder_bit_Loop_VITIS_LOOP_227_6_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "temp_trellis_survivor_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "4"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_227_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0.flow_control_loop_pipe_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.decoder_bit_Block_split223_proc_U0", "Parent" : "3",
		"CDFG" : "decoder_bit_Block_split223_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "output302", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output302_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.best_branch_loc_channel_U", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decoder_bit_fu_316.best_branch_3_cast_loc_channel_U", "Parent" : "3"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y0_fifo_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y1_fifo_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_fifo_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decoder {
		data_in_V_data_V {Type I LastRead 4 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 4 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 4 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 4 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
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
		trellis_survivor_V_63 {Type IO LastRead -1 FirstWrite -1}
		output_pixl_temp_V {Type IO LastRead -1 FirstWrite -1}
		count {Type IO LastRead -1 FirstWrite -1}}
	decoder_Pipeline_VITIS_LOOP_27_1 {
		data_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		DATA_LEN_1_out {Type O LastRead -1 FirstWrite 1}}
	decoder_bit {
		y0300 {Type I LastRead 1 FirstWrite -1}
		y1301 {Type I LastRead 1 FirstWrite -1}
		output302 {Type O LastRead -1 FirstWrite 0}
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
		trellis_metric {Type O LastRead -1 FirstWrite 1}}
	decoder_bit_Loop_VITIS_LOOP_227_6_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		temp_trellis_survivor_V {Type I LastRead 0 FirstWrite -1}}
	decoder_bit_Block_split223_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		output302 {Type O LastRead -1 FirstWrite 0}}}

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
	data_in_V_last_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 }  { data_in_TLAST in_data 0 1 } } }
	data_out_V_data_V { axis {  { data_out_TDATA out_data 1 64 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_strb_V { axis {  { data_out_TSTRB out_data 1 8 } } }
	data_out_V_last_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TREADY out_acc 0 1 }  { data_out_TLAST out_data 1 1 } } }
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
