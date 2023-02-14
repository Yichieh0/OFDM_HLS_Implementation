set moduleName decoder_bit
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
set C_modelName {decoder_bit}
set C_modelType { void 0 }
set C_modelArgList {
	{ y0300 int 1 regular {fifo 0 volatile }  }
	{ y1301 int 1 regular {fifo 0 volatile }  }
	{ output302 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y0300", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "y1301", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output302", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ y0300_dout sc_in sc_lv 1 signal 0 } 
	{ y0300_empty_n sc_in sc_logic 1 signal 0 } 
	{ y0300_read sc_out sc_logic 1 signal 0 } 
	{ y1301_dout sc_in sc_lv 1 signal 1 } 
	{ y1301_empty_n sc_in sc_logic 1 signal 1 } 
	{ y1301_read sc_out sc_logic 1 signal 1 } 
	{ output302_din sc_out sc_lv 1 signal 2 } 
	{ output302_full_n sc_in sc_logic 1 signal 2 } 
	{ output302_write sc_out sc_logic 1 signal 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "y0300_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y0300", "role": "dout" }} , 
 	{ "name": "y0300_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y0300", "role": "empty_n" }} , 
 	{ "name": "y0300_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y0300", "role": "read" }} , 
 	{ "name": "y1301_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y1301", "role": "dout" }} , 
 	{ "name": "y1301_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1301", "role": "empty_n" }} , 
 	{ "name": "y1301_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1301", "role": "read" }} , 
 	{ "name": "output302_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output302", "role": "din" }} , 
 	{ "name": "output302_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output302", "role": "full_n" }} , 
 	{ "name": "output302_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output302", "role": "write" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "15", "17", "18", "19"],
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
			{"ID" : "2", "Name" : "decoder_bit_Block_split148_proc3_U0"}],
		"OutputProcess" : [
			{"ID" : "17", "Name" : "decoder_bit_Block_split223_proc_U0"}],
		"Port" : [
			{"Name" : "y0300", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "y0300"}]},
			{"Name" : "y1301", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "y1301"}]},
			{"Name" : "output302", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "decoder_bit_Block_split223_proc_U0", "Port" : "output302"}]},
			{"Name" : "t", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "t"}]},
			{"Name" : "trellis_table_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_0_0"}]},
			{"Name" : "trellis_table_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_0_1"}]},
			{"Name" : "trellis_table_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_1_0"}]},
			{"Name" : "trellis_table_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_table_1_1"}]},
			{"Name" : "trellis_metric", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_metric"}]},
			{"Name" : "trellis_survivor_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_0"}]},
			{"Name" : "trellis_survivor_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_1"}]},
			{"Name" : "trellis_survivor_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_2"}]},
			{"Name" : "trellis_survivor_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_3"}]},
			{"Name" : "trellis_survivor_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_4"}]},
			{"Name" : "trellis_survivor_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_5"}]},
			{"Name" : "trellis_survivor_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_6"}]},
			{"Name" : "trellis_survivor_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_7"}]},
			{"Name" : "trellis_survivor_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_8"}]},
			{"Name" : "trellis_survivor_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_9"}]},
			{"Name" : "trellis_survivor_V_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_10"}]},
			{"Name" : "trellis_survivor_V_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_11"}]},
			{"Name" : "trellis_survivor_V_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_12"}]},
			{"Name" : "trellis_survivor_V_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_13"}]},
			{"Name" : "trellis_survivor_V_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_14"}]},
			{"Name" : "trellis_survivor_V_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_15"}]},
			{"Name" : "trellis_survivor_V_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_16"}]},
			{"Name" : "trellis_survivor_V_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_17"}]},
			{"Name" : "trellis_survivor_V_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_18"}]},
			{"Name" : "trellis_survivor_V_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_19"}]},
			{"Name" : "trellis_survivor_V_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_20"}]},
			{"Name" : "trellis_survivor_V_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_21"}]},
			{"Name" : "trellis_survivor_V_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_22"}]},
			{"Name" : "trellis_survivor_V_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_23"}]},
			{"Name" : "trellis_survivor_V_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_24"}]},
			{"Name" : "trellis_survivor_V_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_25"}]},
			{"Name" : "trellis_survivor_V_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_26"}]},
			{"Name" : "trellis_survivor_V_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_27"}]},
			{"Name" : "trellis_survivor_V_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_28"}]},
			{"Name" : "trellis_survivor_V_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_29"}]},
			{"Name" : "trellis_survivor_V_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_30"}]},
			{"Name" : "trellis_survivor_V_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_31"}]},
			{"Name" : "trellis_survivor_V_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_32"}]},
			{"Name" : "trellis_survivor_V_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_33"}]},
			{"Name" : "trellis_survivor_V_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_34"}]},
			{"Name" : "trellis_survivor_V_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_35"}]},
			{"Name" : "trellis_survivor_V_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_36"}]},
			{"Name" : "trellis_survivor_V_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_37"}]},
			{"Name" : "trellis_survivor_V_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_38"}]},
			{"Name" : "trellis_survivor_V_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_39"}]},
			{"Name" : "trellis_survivor_V_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_40"}]},
			{"Name" : "trellis_survivor_V_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_41"}]},
			{"Name" : "trellis_survivor_V_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_42"}]},
			{"Name" : "trellis_survivor_V_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_43"}]},
			{"Name" : "trellis_survivor_V_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_44"}]},
			{"Name" : "trellis_survivor_V_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_45"}]},
			{"Name" : "trellis_survivor_V_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_46"}]},
			{"Name" : "trellis_survivor_V_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_47"}]},
			{"Name" : "trellis_survivor_V_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_48"}]},
			{"Name" : "trellis_survivor_V_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_49"}]},
			{"Name" : "trellis_survivor_V_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_50"}]},
			{"Name" : "trellis_survivor_V_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_51"}]},
			{"Name" : "trellis_survivor_V_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_52"}]},
			{"Name" : "trellis_survivor_V_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_53"}]},
			{"Name" : "trellis_survivor_V_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_54"}]},
			{"Name" : "trellis_survivor_V_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_55"}]},
			{"Name" : "trellis_survivor_V_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_56"}]},
			{"Name" : "trellis_survivor_V_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_57"}]},
			{"Name" : "trellis_survivor_V_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_58"}]},
			{"Name" : "trellis_survivor_V_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_59"}]},
			{"Name" : "trellis_survivor_V_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_60"}]},
			{"Name" : "trellis_survivor_V_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_61"}]},
			{"Name" : "trellis_survivor_V_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_62"}]},
			{"Name" : "trellis_survivor_V_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "decoder_bit_Block_split148_proc3_U0", "Port" : "trellis_survivor_V_63"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_trellis_survivor_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "11", "13"],
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
			{"Name" : "temp_trellis_survivor_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "1"},
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
					{"ID" : "11", "SubInstance" : "grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758", "Port" : "trellis_metric", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "13", "SubInstance" : "grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765", "Port" : "trellis_metric", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.trellis_table_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.trellis_table_0_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.trellis_table_1_0_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.trellis_table_1_1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.trellis_metric_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.temp_trellis_metric_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3_fu_751", "Parent" : "2", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3_fu_751.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758", "Parent" : "2", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5_fu_758.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765", "Parent" : "2", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split148_proc3_U0.grp_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4_fu_765.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0", "Parent" : "0", "Child" : ["16"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "temp_trellis_survivor_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_227_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0.flow_control_loop_pipe_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decoder_bit_Block_split223_proc_U0", "Parent" : "0",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "output302", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output302_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.best_branch_loc_channel_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.best_branch_3_cast_loc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "556", "Max" : "620"}
	, {"Name" : "Interval", "Min" : "522", "Max" : "586"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y0300 { ap_fifo {  { y0300_dout fifo_data 0 1 }  { y0300_empty_n fifo_status 0 1 }  { y0300_read fifo_update 1 1 } } }
	y1301 { ap_fifo {  { y1301_dout fifo_data 0 1 }  { y1301_empty_n fifo_status 0 1 }  { y1301_read fifo_update 1 1 } } }
	output302 { ap_fifo {  { output302_din fifo_data 1 1 }  { output302_full_n fifo_status 0 1 }  { output302_write fifo_update 1 1 } } }
}
