set moduleName tpgForeground_Pipeline_VITIS_LOOP_774_2
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
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {tpgForeground_Pipeline_VITIS_LOOP_774_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ boxHCoord_loc_0 int 16 regular  }
	{ boxVCoord_loc_0 int 16 regular  }
	{ loopWidth int 16 regular  }
	{ boxColorB int 8 regular  }
	{ pixOut int 8 regular  }
	{ boxColorR int 8 regular  }
	{ and4_i int 1 regular  }
	{ and26_i int 1 regular  }
	{ tobool int 1 regular  }
	{ and10_i int 1 regular  }
	{ ovrlayYUV int 24 regular {fifo 1 volatile }  }
	{ bckgndYUV int 24 regular {fifo 0 volatile }  }
	{ patternId_val_load int 8 regular  }
	{ boxSize int 16 regular  }
	{ y int 16 regular  }
	{ zext_ln1914 int 8 regular  }
	{ vMax int 16 regular  }
	{ hMax int 16 regular  }
	{ zext_ln1914_1 int 9 regular  }
	{ icmp int 1 regular  }
	{ boxColorG int 8 regular  }
	{ crossHairX int 16 regular  }
	{ cmp2_i int 1 regular  }
	{ color int 8 regular  }
	{ boxHCoord_loc_1_out int 16 regular {pointer 1}  }
	{ boxVCoord_loc_1_out int 16 regular {pointer 1}  }
	{ boxHCoord int 16 regular {pointer 1} {global 1}  }
	{ boxVCoord int 16 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "boxHCoord_loc_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxVCoord_loc_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorB", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixOut", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorR", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "and4_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "and26_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tobool", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "and10_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bckgndYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "patternId_val_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxSize", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1914", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "vMax", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hMax", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1914_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "icmp", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorG", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairX", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp2_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "color", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxHCoord_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxVCoord_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxHCoord", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "boxVCoord", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bckgndYUV_dout sc_in sc_lv 24 signal 11 } 
	{ bckgndYUV_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ bckgndYUV_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ bckgndYUV_empty_n sc_in sc_logic 1 signal 11 } 
	{ bckgndYUV_read sc_out sc_logic 1 signal 11 } 
	{ ovrlayYUV_din sc_out sc_lv 24 signal 10 } 
	{ ovrlayYUV_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ ovrlayYUV_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ ovrlayYUV_full_n sc_in sc_logic 1 signal 10 } 
	{ ovrlayYUV_write sc_out sc_logic 1 signal 10 } 
	{ boxHCoord_loc_0 sc_in sc_lv 16 signal 0 } 
	{ boxVCoord_loc_0 sc_in sc_lv 16 signal 1 } 
	{ loopWidth sc_in sc_lv 16 signal 2 } 
	{ boxColorB sc_in sc_lv 8 signal 3 } 
	{ pixOut sc_in sc_lv 8 signal 4 } 
	{ boxColorR sc_in sc_lv 8 signal 5 } 
	{ and4_i sc_in sc_lv 1 signal 6 } 
	{ and26_i sc_in sc_lv 1 signal 7 } 
	{ tobool sc_in sc_lv 1 signal 8 } 
	{ and10_i sc_in sc_lv 1 signal 9 } 
	{ patternId_val_load sc_in sc_lv 8 signal 12 } 
	{ boxSize sc_in sc_lv 16 signal 13 } 
	{ y sc_in sc_lv 16 signal 14 } 
	{ zext_ln1914 sc_in sc_lv 8 signal 15 } 
	{ vMax sc_in sc_lv 16 signal 16 } 
	{ hMax sc_in sc_lv 16 signal 17 } 
	{ zext_ln1914_1 sc_in sc_lv 9 signal 18 } 
	{ icmp sc_in sc_lv 1 signal 19 } 
	{ boxColorG sc_in sc_lv 8 signal 20 } 
	{ crossHairX sc_in sc_lv 16 signal 21 } 
	{ cmp2_i sc_in sc_lv 1 signal 22 } 
	{ color sc_in sc_lv 8 signal 23 } 
	{ boxHCoord_loc_1_out sc_out sc_lv 16 signal 24 } 
	{ boxHCoord_loc_1_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ boxVCoord_loc_1_out sc_out sc_lv 16 signal 25 } 
	{ boxVCoord_loc_1_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ boxHCoord sc_out sc_lv 16 signal 26 } 
	{ boxHCoord_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ boxVCoord sc_out sc_lv 16 signal 27 } 
	{ boxVCoord_ap_vld sc_out sc_logic 1 outvld 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bckgndYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "dout" }} , 
 	{ "name": "bckgndYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "num_data_valid" }} , 
 	{ "name": "bckgndYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "fifo_cap" }} , 
 	{ "name": "bckgndYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "empty_n" }} , 
 	{ "name": "bckgndYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "read" }} , 
 	{ "name": "ovrlayYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "din" }} , 
 	{ "name": "ovrlayYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "num_data_valid" }} , 
 	{ "name": "ovrlayYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "fifo_cap" }} , 
 	{ "name": "ovrlayYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "full_n" }} , 
 	{ "name": "ovrlayYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "write" }} , 
 	{ "name": "boxHCoord_loc_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxHCoord_loc_0", "role": "default" }} , 
 	{ "name": "boxVCoord_loc_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxVCoord_loc_0", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "boxColorB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorB", "role": "default" }} , 
 	{ "name": "pixOut", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixOut", "role": "default" }} , 
 	{ "name": "boxColorR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorR", "role": "default" }} , 
 	{ "name": "and4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and4_i", "role": "default" }} , 
 	{ "name": "and26_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and26_i", "role": "default" }} , 
 	{ "name": "tobool", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tobool", "role": "default" }} , 
 	{ "name": "and10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and10_i", "role": "default" }} , 
 	{ "name": "patternId_val_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patternId_val_load", "role": "default" }} , 
 	{ "name": "boxSize", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxSize", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "zext_ln1914", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln1914", "role": "default" }} , 
 	{ "name": "vMax", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vMax", "role": "default" }} , 
 	{ "name": "hMax", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hMax", "role": "default" }} , 
 	{ "name": "zext_ln1914_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln1914_1", "role": "default" }} , 
 	{ "name": "icmp", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp", "role": "default" }} , 
 	{ "name": "boxColorG", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorG", "role": "default" }} , 
 	{ "name": "crossHairX", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairX", "role": "default" }} , 
 	{ "name": "cmp2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp2_i", "role": "default" }} , 
 	{ "name": "color", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color", "role": "default" }} , 
 	{ "name": "boxHCoord_loc_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxHCoord_loc_1_out", "role": "default" }} , 
 	{ "name": "boxHCoord_loc_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxHCoord_loc_1_out", "role": "ap_vld" }} , 
 	{ "name": "boxVCoord_loc_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxVCoord_loc_1_out", "role": "default" }} , 
 	{ "name": "boxVCoord_loc_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxVCoord_loc_1_out", "role": "ap_vld" }} , 
 	{ "name": "boxHCoord", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxHCoord", "role": "default" }} , 
 	{ "name": "boxHCoord_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxHCoord", "role": "ap_vld" }} , 
 	{ "name": "boxVCoord", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxVCoord", "role": "default" }} , 
 	{ "name": "boxVCoord_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxVCoord", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "tpgForeground_Pipeline_VITIS_LOOP_774_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "65538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "boxHCoord_loc_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxVCoord_loc_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxColorB", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxColorR", "Type" : "None", "Direction" : "I"},
			{"Name" : "and4_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "and26_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "tobool", "Type" : "None", "Direction" : "I"},
			{"Name" : "and10_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "ovrlayYUV", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ovrlayYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bckgndYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bckgndYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "patternId_val_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1914", "Type" : "None", "Direction" : "I"},
			{"Name" : "vMax", "Type" : "None", "Direction" : "I"},
			{"Name" : "hMax", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1914_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxColorG", "Type" : "None", "Direction" : "I"},
			{"Name" : "crossHairX", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp2_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "color", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxHCoord_loc_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "boxVCoord_loc_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "boxHCoord", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "boxVCoord", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vDir", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hDir", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "whiYuv_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_774_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whiYuv_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tpgForeground_Pipeline_VITIS_LOOP_774_2 {
		boxHCoord_loc_0 {Type I LastRead 0 FirstWrite -1}
		boxVCoord_loc_0 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		boxColorB {Type I LastRead 0 FirstWrite -1}
		pixOut {Type I LastRead 0 FirstWrite -1}
		boxColorR {Type I LastRead 0 FirstWrite -1}
		and4_i {Type I LastRead 0 FirstWrite -1}
		and26_i {Type I LastRead 0 FirstWrite -1}
		tobool {Type I LastRead 0 FirstWrite -1}
		and10_i {Type I LastRead 0 FirstWrite -1}
		ovrlayYUV {Type O LastRead -1 FirstWrite 3}
		bckgndYUV {Type I LastRead 2 FirstWrite -1}
		patternId_val_load {Type I LastRead 0 FirstWrite -1}
		boxSize {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		zext_ln1914 {Type I LastRead 0 FirstWrite -1}
		vMax {Type I LastRead 0 FirstWrite -1}
		hMax {Type I LastRead 0 FirstWrite -1}
		zext_ln1914_1 {Type I LastRead 0 FirstWrite -1}
		icmp {Type I LastRead 0 FirstWrite -1}
		boxColorG {Type I LastRead 0 FirstWrite -1}
		crossHairX {Type I LastRead 0 FirstWrite -1}
		cmp2_i {Type I LastRead 0 FirstWrite -1}
		color {Type I LastRead 0 FirstWrite -1}
		boxHCoord_loc_1_out {Type O LastRead -1 FirstWrite 2}
		boxVCoord_loc_1_out {Type O LastRead -1 FirstWrite 2}
		boxHCoord {Type O LastRead -1 FirstWrite 1}
		boxVCoord {Type O LastRead -1 FirstWrite 1}
		vDir {Type IO LastRead -1 FirstWrite -1}
		hDir {Type IO LastRead -1 FirstWrite -1}
		whiYuv_2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "65538"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "65538"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	boxHCoord_loc_0 { ap_none {  { boxHCoord_loc_0 in_data 0 16 } } }
	boxVCoord_loc_0 { ap_none {  { boxVCoord_loc_0 in_data 0 16 } } }
	loopWidth { ap_none {  { loopWidth in_data 0 16 } } }
	boxColorB { ap_none {  { boxColorB in_data 0 8 } } }
	pixOut { ap_none {  { pixOut in_data 0 8 } } }
	boxColorR { ap_none {  { boxColorR in_data 0 8 } } }
	and4_i { ap_none {  { and4_i in_data 0 1 } } }
	and26_i { ap_none {  { and26_i in_data 0 1 } } }
	tobool { ap_none {  { tobool in_data 0 1 } } }
	and10_i { ap_none {  { and10_i in_data 0 1 } } }
	ovrlayYUV { ap_fifo {  { ovrlayYUV_din fifo_data_in 1 24 }  { ovrlayYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { ovrlayYUV_fifo_cap fifo_update 0 5 }  { ovrlayYUV_full_n fifo_status 0 1 }  { ovrlayYUV_write fifo_port_we 1 1 } } }
	bckgndYUV { ap_fifo {  { bckgndYUV_dout fifo_data_in 0 24 }  { bckgndYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { bckgndYUV_fifo_cap fifo_update 0 5 }  { bckgndYUV_empty_n fifo_status 0 1 }  { bckgndYUV_read fifo_port_we 1 1 } } }
	patternId_val_load { ap_none {  { patternId_val_load in_data 0 8 } } }
	boxSize { ap_none {  { boxSize in_data 0 16 } } }
	y { ap_none {  { y in_data 0 16 } } }
	zext_ln1914 { ap_none {  { zext_ln1914 in_data 0 8 } } }
	vMax { ap_none {  { vMax in_data 0 16 } } }
	hMax { ap_none {  { hMax in_data 0 16 } } }
	zext_ln1914_1 { ap_none {  { zext_ln1914_1 in_data 0 9 } } }
	icmp { ap_none {  { icmp in_data 0 1 } } }
	boxColorG { ap_none {  { boxColorG in_data 0 8 } } }
	crossHairX { ap_none {  { crossHairX in_data 0 16 } } }
	cmp2_i { ap_none {  { cmp2_i in_data 0 1 } } }
	color { ap_none {  { color in_data 0 8 } } }
	boxHCoord_loc_1_out { ap_vld {  { boxHCoord_loc_1_out out_data 1 16 }  { boxHCoord_loc_1_out_ap_vld out_vld 1 1 } } }
	boxVCoord_loc_1_out { ap_vld {  { boxVCoord_loc_1_out out_data 1 16 }  { boxVCoord_loc_1_out_ap_vld out_vld 1 1 } } }
	boxHCoord { ap_vld {  { boxHCoord out_data 1 16 }  { boxHCoord_ap_vld out_vld 1 1 } } }
	boxVCoord { ap_vld {  { boxVCoord out_data 1 16 }  { boxVCoord_ap_vld out_vld 1 1 } } }
}
