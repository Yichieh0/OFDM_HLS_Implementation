set moduleName writeBackCacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {writeBackCacheDataDR<64, 2, ap_fixed<27, 8, 5, 3, 0>, ap_fixed<27, 8, 5, 3, 0> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_digitReseversedOutputBuff_M_real int 27 regular {array 32 { 1 3 } 1 1 }  }
	{ p_digitReseversedOutputBuff_M_real1 int 27 regular {array 32 { 1 3 } 1 1 }  }
	{ p_digitReseversedOutputBuff_M_imag int 27 regular {array 32 { 1 3 } 1 1 }  }
	{ p_digitReseversedOutputBuff_M_imag2 int 27 regular {array 32 { 1 3 } 1 1 }  }
	{ p_outData_0_0_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_outData_0_0_0_0_03 int 27 regular {fifo 1 volatile }  }
	{ p_outData_0_1_0_0_0 int 27 regular {fifo 1 volatile }  }
	{ p_outData_0_1_0_0_04 int 27 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_digitReseversedOutputBuff_M_real", "interface" : "memory", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_digitReseversedOutputBuff_M_real1", "interface" : "memory", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_digitReseversedOutputBuff_M_imag", "interface" : "memory", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_digitReseversedOutputBuff_M_imag2", "interface" : "memory", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_outData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outData_0_0_0_0_03", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_outData_0_1_0_0_04", "interface" : "fifo", "bitwidth" : 27, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_outData_0_0_0_0_0_din sc_out sc_lv 27 signal 4 } 
	{ p_outData_0_0_0_0_0_full_n sc_in sc_logic 1 signal 4 } 
	{ p_outData_0_0_0_0_0_write sc_out sc_logic 1 signal 4 } 
	{ p_outData_0_1_0_0_0_din sc_out sc_lv 27 signal 6 } 
	{ p_outData_0_1_0_0_0_full_n sc_in sc_logic 1 signal 6 } 
	{ p_outData_0_1_0_0_0_write sc_out sc_logic 1 signal 6 } 
	{ p_outData_0_0_0_0_03_din sc_out sc_lv 27 signal 5 } 
	{ p_outData_0_0_0_0_03_full_n sc_in sc_logic 1 signal 5 } 
	{ p_outData_0_0_0_0_03_write sc_out sc_logic 1 signal 5 } 
	{ p_outData_0_1_0_0_04_din sc_out sc_lv 27 signal 7 } 
	{ p_outData_0_1_0_0_04_full_n sc_in sc_logic 1 signal 7 } 
	{ p_outData_0_1_0_0_04_write sc_out sc_logic 1 signal 7 } 
	{ p_digitReseversedOutputBuff_M_real_address0 sc_out sc_lv 5 signal 0 } 
	{ p_digitReseversedOutputBuff_M_real_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_digitReseversedOutputBuff_M_real_q0 sc_in sc_lv 27 signal 0 } 
	{ p_digitReseversedOutputBuff_M_real1_address0 sc_out sc_lv 5 signal 1 } 
	{ p_digitReseversedOutputBuff_M_real1_ce0 sc_out sc_logic 1 signal 1 } 
	{ p_digitReseversedOutputBuff_M_real1_q0 sc_in sc_lv 27 signal 1 } 
	{ p_digitReseversedOutputBuff_M_imag_address0 sc_out sc_lv 5 signal 2 } 
	{ p_digitReseversedOutputBuff_M_imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ p_digitReseversedOutputBuff_M_imag_q0 sc_in sc_lv 27 signal 2 } 
	{ p_digitReseversedOutputBuff_M_imag2_address0 sc_out sc_lv 5 signal 3 } 
	{ p_digitReseversedOutputBuff_M_imag2_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_digitReseversedOutputBuff_M_imag2_q0 sc_in sc_lv 27 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_outData_0_0_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_0", "role": "din" }} , 
 	{ "name": "p_outData_0_0_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_outData_0_0_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_0", "role": "write" }} , 
 	{ "name": "p_outData_0_1_0_0_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_0", "role": "din" }} , 
 	{ "name": "p_outData_0_1_0_0_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_0", "role": "full_n" }} , 
 	{ "name": "p_outData_0_1_0_0_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_0", "role": "write" }} , 
 	{ "name": "p_outData_0_0_0_0_03_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_03", "role": "din" }} , 
 	{ "name": "p_outData_0_0_0_0_03_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_03", "role": "full_n" }} , 
 	{ "name": "p_outData_0_0_0_0_03_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_0_0_0_03", "role": "write" }} , 
 	{ "name": "p_outData_0_1_0_0_04_din", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_04", "role": "din" }} , 
 	{ "name": "p_outData_0_1_0_0_04_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_04", "role": "full_n" }} , 
 	{ "name": "p_outData_0_1_0_0_04_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outData_0_1_0_0_04", "role": "write" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real", "role": "q0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real1", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real1", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real1", "role": "q0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag", "role": "q0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag2", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag2", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "32", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_digitReseversedOutputBuff_M_real { ap_memory {  { p_digitReseversedOutputBuff_M_real_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_real_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_real_q0 mem_dout 0 27 } } }
	p_digitReseversedOutputBuff_M_real1 { ap_memory {  { p_digitReseversedOutputBuff_M_real1_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_real1_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_real1_q0 mem_dout 0 27 } } }
	p_digitReseversedOutputBuff_M_imag { ap_memory {  { p_digitReseversedOutputBuff_M_imag_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_imag_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_imag_q0 mem_dout 0 27 } } }
	p_digitReseversedOutputBuff_M_imag2 { ap_memory {  { p_digitReseversedOutputBuff_M_imag2_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_imag2_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_imag2_q0 mem_dout 0 27 } } }
	p_outData_0_0_0_0_0 { ap_fifo {  { p_outData_0_0_0_0_0_din fifo_data 1 27 }  { p_outData_0_0_0_0_0_full_n fifo_status 0 1 }  { p_outData_0_0_0_0_0_write fifo_update 1 1 } } }
	p_outData_0_0_0_0_03 { ap_fifo {  { p_outData_0_0_0_0_03_din fifo_data 1 27 }  { p_outData_0_0_0_0_03_full_n fifo_status 0 1 }  { p_outData_0_0_0_0_03_write fifo_update 1 1 } } }
	p_outData_0_1_0_0_0 { ap_fifo {  { p_outData_0_1_0_0_0_din fifo_data 1 27 }  { p_outData_0_1_0_0_0_full_n fifo_status 0 1 }  { p_outData_0_1_0_0_0_write fifo_update 1 1 } } }
	p_outData_0_1_0_0_04 { ap_fifo {  { p_outData_0_1_0_0_04_din fifo_data 1 27 }  { p_outData_0_1_0_0_04_full_n fifo_status 0 1 }  { p_outData_0_1_0_0_04_write fifo_update 1 1 } } }
}
