set moduleName cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s
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
set C_modelName {cacheDataDR<64, 2, ap_fixed<27, 8, 5, 3, 0>, ap_fixed<27, 8, 5, 3, 0> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_inData_0_0_0_0_0 int 27 regular {fifo 0 volatile }  }
	{ p_inData_0_0_0_0_01 int 27 regular {fifo 0 volatile }  }
	{ p_inData_0_1_0_0_0 int 27 regular {fifo 0 volatile }  }
	{ p_inData_0_1_0_0_02 int 27 regular {fifo 0 volatile }  }
	{ p_digitReseversedOutputBuff_M_real int 27 regular {array 32 { 0 3 } 0 1 }  }
	{ p_digitReseversedOutputBuff_M_real3 int 27 regular {array 32 { 0 3 } 0 1 }  }
	{ p_digitReseversedOutputBuff_M_imag int 27 regular {array 32 { 0 3 } 0 1 }  }
	{ p_digitReseversedOutputBuff_M_imag4 int 27 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_inData_0_0_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_inData_0_0_0_0_01", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_inData_0_1_0_0_0", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_inData_0_1_0_0_02", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_digitReseversedOutputBuff_M_real", "interface" : "memory", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_digitReseversedOutputBuff_M_real3", "interface" : "memory", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_digitReseversedOutputBuff_M_imag", "interface" : "memory", "bitwidth" : 27, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_digitReseversedOutputBuff_M_imag4", "interface" : "memory", "bitwidth" : 27, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_inData_0_0_0_0_0_dout sc_in sc_lv 27 signal 0 } 
	{ p_inData_0_0_0_0_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_inData_0_0_0_0_0_read sc_out sc_logic 1 signal 0 } 
	{ p_inData_0_0_0_0_01_dout sc_in sc_lv 27 signal 1 } 
	{ p_inData_0_0_0_0_01_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_inData_0_0_0_0_01_read sc_out sc_logic 1 signal 1 } 
	{ p_inData_0_1_0_0_0_dout sc_in sc_lv 27 signal 2 } 
	{ p_inData_0_1_0_0_0_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_inData_0_1_0_0_0_read sc_out sc_logic 1 signal 2 } 
	{ p_inData_0_1_0_0_02_dout sc_in sc_lv 27 signal 3 } 
	{ p_inData_0_1_0_0_02_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_inData_0_1_0_0_02_read sc_out sc_logic 1 signal 3 } 
	{ p_digitReseversedOutputBuff_M_real_address0 sc_out sc_lv 5 signal 4 } 
	{ p_digitReseversedOutputBuff_M_real_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_digitReseversedOutputBuff_M_real_we0 sc_out sc_logic 1 signal 4 } 
	{ p_digitReseversedOutputBuff_M_real_d0 sc_out sc_lv 27 signal 4 } 
	{ p_digitReseversedOutputBuff_M_real3_address0 sc_out sc_lv 5 signal 5 } 
	{ p_digitReseversedOutputBuff_M_real3_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_digitReseversedOutputBuff_M_real3_we0 sc_out sc_logic 1 signal 5 } 
	{ p_digitReseversedOutputBuff_M_real3_d0 sc_out sc_lv 27 signal 5 } 
	{ p_digitReseversedOutputBuff_M_imag_address0 sc_out sc_lv 5 signal 6 } 
	{ p_digitReseversedOutputBuff_M_imag_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_digitReseversedOutputBuff_M_imag_we0 sc_out sc_logic 1 signal 6 } 
	{ p_digitReseversedOutputBuff_M_imag_d0 sc_out sc_lv 27 signal 6 } 
	{ p_digitReseversedOutputBuff_M_imag4_address0 sc_out sc_lv 5 signal 7 } 
	{ p_digitReseversedOutputBuff_M_imag4_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_digitReseversedOutputBuff_M_imag4_we0 sc_out sc_logic 1 signal 7 } 
	{ p_digitReseversedOutputBuff_M_imag4_d0 sc_out sc_lv 27 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_inData_0_0_0_0_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_0", "role": "dout" }} , 
 	{ "name": "p_inData_0_0_0_0_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_0", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_0_0_0_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_0", "role": "read" }} , 
 	{ "name": "p_inData_0_0_0_0_01_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_01", "role": "dout" }} , 
 	{ "name": "p_inData_0_0_0_0_01_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_01", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_0_0_0_01_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_0_0_0_01", "role": "read" }} , 
 	{ "name": "p_inData_0_1_0_0_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_0", "role": "dout" }} , 
 	{ "name": "p_inData_0_1_0_0_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_0", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_1_0_0_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_0", "role": "read" }} , 
 	{ "name": "p_inData_0_1_0_0_02_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_02", "role": "dout" }} , 
 	{ "name": "p_inData_0_1_0_0_02_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_02", "role": "empty_n" }} , 
 	{ "name": "p_inData_0_1_0_0_02_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inData_0_1_0_0_02", "role": "read" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real", "role": "we0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real", "role": "d0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real3", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real3", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real3", "role": "we0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_real3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_real3", "role": "d0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag", "role": "we0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag", "role": "d0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag4", "role": "address0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag4", "role": "ce0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag4", "role": "we0" }} , 
 	{ "name": "p_digitReseversedOutputBuff_M_imag4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_digitReseversedOutputBuff_M_imag4", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]}]}


set ArgLastReadFirstWriteLatency {
	cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s {
		p_inData_0_0_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_0_0_0_01 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_0 {Type I LastRead 1 FirstWrite -1}
		p_inData_0_1_0_0_02 {Type I LastRead 1 FirstWrite -1}
		p_digitReseversedOutputBuff_M_real {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_real3 {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_imag {Type O LastRead -1 FirstWrite 1}
		p_digitReseversedOutputBuff_M_imag4 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31", "Max" : "32"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_inData_0_0_0_0_0 { ap_fifo {  { p_inData_0_0_0_0_0_dout fifo_data 0 27 }  { p_inData_0_0_0_0_0_empty_n fifo_status 0 1 }  { p_inData_0_0_0_0_0_read fifo_update 1 1 } } }
	p_inData_0_0_0_0_01 { ap_fifo {  { p_inData_0_0_0_0_01_dout fifo_data 0 27 }  { p_inData_0_0_0_0_01_empty_n fifo_status 0 1 }  { p_inData_0_0_0_0_01_read fifo_update 1 1 } } }
	p_inData_0_1_0_0_0 { ap_fifo {  { p_inData_0_1_0_0_0_dout fifo_data 0 27 }  { p_inData_0_1_0_0_0_empty_n fifo_status 0 1 }  { p_inData_0_1_0_0_0_read fifo_update 1 1 } } }
	p_inData_0_1_0_0_02 { ap_fifo {  { p_inData_0_1_0_0_02_dout fifo_data 0 27 }  { p_inData_0_1_0_0_02_empty_n fifo_status 0 1 }  { p_inData_0_1_0_0_02_read fifo_update 1 1 } } }
	p_digitReseversedOutputBuff_M_real { ap_memory {  { p_digitReseversedOutputBuff_M_real_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_real_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_real_we0 mem_we 1 1 }  { p_digitReseversedOutputBuff_M_real_d0 mem_din 1 27 } } }
	p_digitReseversedOutputBuff_M_real3 { ap_memory {  { p_digitReseversedOutputBuff_M_real3_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_real3_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_real3_we0 mem_we 1 1 }  { p_digitReseversedOutputBuff_M_real3_d0 mem_din 1 27 } } }
	p_digitReseversedOutputBuff_M_imag { ap_memory {  { p_digitReseversedOutputBuff_M_imag_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_imag_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_imag_we0 mem_we 1 1 }  { p_digitReseversedOutputBuff_M_imag_d0 mem_din 1 27 } } }
	p_digitReseversedOutputBuff_M_imag4 { ap_memory {  { p_digitReseversedOutputBuff_M_imag4_address0 mem_address 1 5 }  { p_digitReseversedOutputBuff_M_imag4_ce0 mem_ce 1 1 }  { p_digitReseversedOutputBuff_M_imag4_we0 mem_we 1 1 }  { p_digitReseversedOutputBuff_M_imag4_d0 mem_din 1 27 } } }
}
