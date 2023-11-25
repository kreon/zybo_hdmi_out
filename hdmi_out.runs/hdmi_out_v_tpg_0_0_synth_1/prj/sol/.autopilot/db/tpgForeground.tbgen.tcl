set moduleName tpgForeground
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
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {tpgForeground}
set C_modelType { void 0 }
set C_modelArgList {
	{ bckgndYUV int 24 regular {fifo 0 volatile }  }
	{ height_val int 16 regular {fifo 0}  }
	{ width_val int 16 regular {fifo 0}  }
	{ patternId_val int 8 regular {fifo 0}  }
	{ maskId_val int 8 regular {fifo 0}  }
	{ colorFormat_val int 8 regular {fifo 0}  }
	{ crossHairX_val int 16 regular {fifo 0}  }
	{ crossHairY_val int 16 regular {fifo 0}  }
	{ boxSize_val int 16 regular {fifo 0}  }
	{ boxColorR_val int 8 regular {fifo 0}  }
	{ boxColorG_val int 8 regular {fifo 0}  }
	{ boxColorB_val int 8 regular {fifo 0}  }
	{ motionSpeed_val int 8 regular {fifo 0}  }
	{ ovrlayYUV int 24 regular {fifo 1 volatile }  }
	{ height_val4_c int 12 regular {fifo 1}  }
	{ width_val7_c int 13 regular {fifo 1}  }
	{ colorFormat_val17_c int 8 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bckgndYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "height_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "patternId_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "maskId_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "colorFormat_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairX_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairY_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxSize_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorR_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorG_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorB_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "motionSpeed_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val4_c", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_val7_c", "interface" : "fifo", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "colorFormat_val17_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 92
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bckgndYUV_dout sc_in sc_lv 24 signal 0 } 
	{ bckgndYUV_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ bckgndYUV_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ bckgndYUV_empty_n sc_in sc_logic 1 signal 0 } 
	{ bckgndYUV_read sc_out sc_logic 1 signal 0 } 
	{ height_val_dout sc_in sc_lv 16 signal 1 } 
	{ height_val_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ height_val_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ height_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ height_val_read sc_out sc_logic 1 signal 1 } 
	{ width_val_dout sc_in sc_lv 16 signal 2 } 
	{ width_val_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ width_val_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ width_val_empty_n sc_in sc_logic 1 signal 2 } 
	{ width_val_read sc_out sc_logic 1 signal 2 } 
	{ patternId_val_dout sc_in sc_lv 8 signal 3 } 
	{ patternId_val_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ patternId_val_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ patternId_val_empty_n sc_in sc_logic 1 signal 3 } 
	{ patternId_val_read sc_out sc_logic 1 signal 3 } 
	{ maskId_val_dout sc_in sc_lv 8 signal 4 } 
	{ maskId_val_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ maskId_val_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ maskId_val_empty_n sc_in sc_logic 1 signal 4 } 
	{ maskId_val_read sc_out sc_logic 1 signal 4 } 
	{ colorFormat_val_dout sc_in sc_lv 8 signal 5 } 
	{ colorFormat_val_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ colorFormat_val_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ colorFormat_val_empty_n sc_in sc_logic 1 signal 5 } 
	{ colorFormat_val_read sc_out sc_logic 1 signal 5 } 
	{ crossHairX_val_dout sc_in sc_lv 16 signal 6 } 
	{ crossHairX_val_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ crossHairX_val_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ crossHairX_val_empty_n sc_in sc_logic 1 signal 6 } 
	{ crossHairX_val_read sc_out sc_logic 1 signal 6 } 
	{ crossHairY_val_dout sc_in sc_lv 16 signal 7 } 
	{ crossHairY_val_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ crossHairY_val_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ crossHairY_val_empty_n sc_in sc_logic 1 signal 7 } 
	{ crossHairY_val_read sc_out sc_logic 1 signal 7 } 
	{ boxSize_val_dout sc_in sc_lv 16 signal 8 } 
	{ boxSize_val_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ boxSize_val_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ boxSize_val_empty_n sc_in sc_logic 1 signal 8 } 
	{ boxSize_val_read sc_out sc_logic 1 signal 8 } 
	{ boxColorR_val_dout sc_in sc_lv 8 signal 9 } 
	{ boxColorR_val_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ boxColorR_val_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ boxColorR_val_empty_n sc_in sc_logic 1 signal 9 } 
	{ boxColorR_val_read sc_out sc_logic 1 signal 9 } 
	{ boxColorG_val_dout sc_in sc_lv 8 signal 10 } 
	{ boxColorG_val_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ boxColorG_val_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ boxColorG_val_empty_n sc_in sc_logic 1 signal 10 } 
	{ boxColorG_val_read sc_out sc_logic 1 signal 10 } 
	{ boxColorB_val_dout sc_in sc_lv 8 signal 11 } 
	{ boxColorB_val_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ boxColorB_val_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ boxColorB_val_empty_n sc_in sc_logic 1 signal 11 } 
	{ boxColorB_val_read sc_out sc_logic 1 signal 11 } 
	{ motionSpeed_val_dout sc_in sc_lv 8 signal 12 } 
	{ motionSpeed_val_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ motionSpeed_val_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ motionSpeed_val_empty_n sc_in sc_logic 1 signal 12 } 
	{ motionSpeed_val_read sc_out sc_logic 1 signal 12 } 
	{ ovrlayYUV_din sc_out sc_lv 24 signal 13 } 
	{ ovrlayYUV_num_data_valid sc_in sc_lv 5 signal 13 } 
	{ ovrlayYUV_fifo_cap sc_in sc_lv 5 signal 13 } 
	{ ovrlayYUV_full_n sc_in sc_logic 1 signal 13 } 
	{ ovrlayYUV_write sc_out sc_logic 1 signal 13 } 
	{ height_val4_c_din sc_out sc_lv 12 signal 14 } 
	{ height_val4_c_num_data_valid sc_in sc_lv 3 signal 14 } 
	{ height_val4_c_fifo_cap sc_in sc_lv 3 signal 14 } 
	{ height_val4_c_full_n sc_in sc_logic 1 signal 14 } 
	{ height_val4_c_write sc_out sc_logic 1 signal 14 } 
	{ width_val7_c_din sc_out sc_lv 13 signal 15 } 
	{ width_val7_c_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ width_val7_c_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ width_val7_c_full_n sc_in sc_logic 1 signal 15 } 
	{ width_val7_c_write sc_out sc_logic 1 signal 15 } 
	{ colorFormat_val17_c_din sc_out sc_lv 8 signal 16 } 
	{ colorFormat_val17_c_num_data_valid sc_in sc_lv 3 signal 16 } 
	{ colorFormat_val17_c_fifo_cap sc_in sc_lv 3 signal 16 } 
	{ colorFormat_val17_c_full_n sc_in sc_logic 1 signal 16 } 
	{ colorFormat_val17_c_write sc_out sc_logic 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bckgndYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "dout" }} , 
 	{ "name": "bckgndYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "num_data_valid" }} , 
 	{ "name": "bckgndYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "fifo_cap" }} , 
 	{ "name": "bckgndYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "empty_n" }} , 
 	{ "name": "bckgndYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "read" }} , 
 	{ "name": "height_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height_val", "role": "dout" }} , 
 	{ "name": "height_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val", "role": "num_data_valid" }} , 
 	{ "name": "height_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val", "role": "fifo_cap" }} , 
 	{ "name": "height_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val", "role": "empty_n" }} , 
 	{ "name": "height_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val", "role": "read" }} , 
 	{ "name": "width_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width_val", "role": "dout" }} , 
 	{ "name": "width_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val", "role": "num_data_valid" }} , 
 	{ "name": "width_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val", "role": "fifo_cap" }} , 
 	{ "name": "width_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val", "role": "empty_n" }} , 
 	{ "name": "width_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val", "role": "read" }} , 
 	{ "name": "patternId_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patternId_val", "role": "dout" }} , 
 	{ "name": "patternId_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "patternId_val", "role": "num_data_valid" }} , 
 	{ "name": "patternId_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "patternId_val", "role": "fifo_cap" }} , 
 	{ "name": "patternId_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patternId_val", "role": "empty_n" }} , 
 	{ "name": "patternId_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patternId_val", "role": "read" }} , 
 	{ "name": "maskId_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maskId_val", "role": "dout" }} , 
 	{ "name": "maskId_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "maskId_val", "role": "num_data_valid" }} , 
 	{ "name": "maskId_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "maskId_val", "role": "fifo_cap" }} , 
 	{ "name": "maskId_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maskId_val", "role": "empty_n" }} , 
 	{ "name": "maskId_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maskId_val", "role": "read" }} , 
 	{ "name": "colorFormat_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "colorFormat_val", "role": "dout" }} , 
 	{ "name": "colorFormat_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "colorFormat_val", "role": "num_data_valid" }} , 
 	{ "name": "colorFormat_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "colorFormat_val", "role": "fifo_cap" }} , 
 	{ "name": "colorFormat_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colorFormat_val", "role": "empty_n" }} , 
 	{ "name": "colorFormat_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colorFormat_val", "role": "read" }} , 
 	{ "name": "crossHairX_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairX_val", "role": "dout" }} , 
 	{ "name": "crossHairX_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairX_val", "role": "num_data_valid" }} , 
 	{ "name": "crossHairX_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairX_val", "role": "fifo_cap" }} , 
 	{ "name": "crossHairX_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairX_val", "role": "empty_n" }} , 
 	{ "name": "crossHairX_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairX_val", "role": "read" }} , 
 	{ "name": "crossHairY_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairY_val", "role": "dout" }} , 
 	{ "name": "crossHairY_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairY_val", "role": "num_data_valid" }} , 
 	{ "name": "crossHairY_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairY_val", "role": "fifo_cap" }} , 
 	{ "name": "crossHairY_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairY_val", "role": "empty_n" }} , 
 	{ "name": "crossHairY_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairY_val", "role": "read" }} , 
 	{ "name": "boxSize_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxSize_val", "role": "dout" }} , 
 	{ "name": "boxSize_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxSize_val", "role": "num_data_valid" }} , 
 	{ "name": "boxSize_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxSize_val", "role": "fifo_cap" }} , 
 	{ "name": "boxSize_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxSize_val", "role": "empty_n" }} , 
 	{ "name": "boxSize_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxSize_val", "role": "read" }} , 
 	{ "name": "boxColorR_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorR_val", "role": "dout" }} , 
 	{ "name": "boxColorR_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorR_val", "role": "num_data_valid" }} , 
 	{ "name": "boxColorR_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorR_val", "role": "fifo_cap" }} , 
 	{ "name": "boxColorR_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorR_val", "role": "empty_n" }} , 
 	{ "name": "boxColorR_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorR_val", "role": "read" }} , 
 	{ "name": "boxColorG_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorG_val", "role": "dout" }} , 
 	{ "name": "boxColorG_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorG_val", "role": "num_data_valid" }} , 
 	{ "name": "boxColorG_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorG_val", "role": "fifo_cap" }} , 
 	{ "name": "boxColorG_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorG_val", "role": "empty_n" }} , 
 	{ "name": "boxColorG_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorG_val", "role": "read" }} , 
 	{ "name": "boxColorB_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorB_val", "role": "dout" }} , 
 	{ "name": "boxColorB_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorB_val", "role": "num_data_valid" }} , 
 	{ "name": "boxColorB_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorB_val", "role": "fifo_cap" }} , 
 	{ "name": "boxColorB_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorB_val", "role": "empty_n" }} , 
 	{ "name": "boxColorB_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorB_val", "role": "read" }} , 
 	{ "name": "motionSpeed_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "motionSpeed_val", "role": "dout" }} , 
 	{ "name": "motionSpeed_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "motionSpeed_val", "role": "num_data_valid" }} , 
 	{ "name": "motionSpeed_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "motionSpeed_val", "role": "fifo_cap" }} , 
 	{ "name": "motionSpeed_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "motionSpeed_val", "role": "empty_n" }} , 
 	{ "name": "motionSpeed_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "motionSpeed_val", "role": "read" }} , 
 	{ "name": "ovrlayYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "din" }} , 
 	{ "name": "ovrlayYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "num_data_valid" }} , 
 	{ "name": "ovrlayYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "fifo_cap" }} , 
 	{ "name": "ovrlayYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "full_n" }} , 
 	{ "name": "ovrlayYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "write" }} , 
 	{ "name": "height_val4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "height_val4_c", "role": "din" }} , 
 	{ "name": "height_val4_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4_c", "role": "num_data_valid" }} , 
 	{ "name": "height_val4_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4_c", "role": "fifo_cap" }} , 
 	{ "name": "height_val4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4_c", "role": "full_n" }} , 
 	{ "name": "height_val4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4_c", "role": "write" }} , 
 	{ "name": "width_val7_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "width_val7_c", "role": "din" }} , 
 	{ "name": "width_val7_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val7_c", "role": "num_data_valid" }} , 
 	{ "name": "width_val7_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val7_c", "role": "fifo_cap" }} , 
 	{ "name": "width_val7_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val7_c", "role": "full_n" }} , 
 	{ "name": "width_val7_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val7_c", "role": "write" }} , 
 	{ "name": "colorFormat_val17_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "colorFormat_val17_c", "role": "din" }} , 
 	{ "name": "colorFormat_val17_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "colorFormat_val17_c", "role": "num_data_valid" }} , 
 	{ "name": "colorFormat_val17_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "colorFormat_val17_c", "role": "fifo_cap" }} , 
 	{ "name": "colorFormat_val17_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colorFormat_val17_c", "role": "full_n" }} , 
 	{ "name": "colorFormat_val17_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colorFormat_val17_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "tpgForeground",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "4295229436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bckgndYUV", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Port" : "bckgndYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "patternId_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "patternId_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "maskId_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "maskId_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "colorFormat_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "colorFormat_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crossHairX_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "crossHairX_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crossHairY_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "crossHairY_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxSize_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxSize_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxColorR_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxColorR_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxColorG_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxColorG_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxColorB_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxColorB_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "motionSpeed_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "motionSpeed_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovrlayYUV", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Port" : "ovrlayYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val7_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "colorFormat_val17_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "colorFormat_val17_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxHCoord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Port" : "boxHCoord", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "boxVCoord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Port" : "boxVCoord", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "vDir", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Port" : "vDir", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "hDir", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Port" : "hDir", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "whiYuv_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Port" : "whiYuv_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_772_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220.whiYuv_2_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	tpgForeground {
		bckgndYUV {Type I LastRead 2 FirstWrite -1}
		height_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}
		patternId_val {Type I LastRead 0 FirstWrite -1}
		maskId_val {Type I LastRead 0 FirstWrite -1}
		colorFormat_val {Type I LastRead 0 FirstWrite -1}
		crossHairX_val {Type I LastRead 0 FirstWrite -1}
		crossHairY_val {Type I LastRead 0 FirstWrite -1}
		boxSize_val {Type I LastRead 0 FirstWrite -1}
		boxColorR_val {Type I LastRead 0 FirstWrite -1}
		boxColorG_val {Type I LastRead 0 FirstWrite -1}
		boxColorB_val {Type I LastRead 0 FirstWrite -1}
		motionSpeed_val {Type I LastRead 0 FirstWrite -1}
		ovrlayYUV {Type O LastRead -1 FirstWrite 3}
		height_val4_c {Type O LastRead -1 FirstWrite 0}
		width_val7_c {Type O LastRead -1 FirstWrite 0}
		colorFormat_val17_c {Type O LastRead -1 FirstWrite 0}
		boxHCoord {Type IO LastRead -1 FirstWrite -1}
		boxVCoord {Type IO LastRead -1 FirstWrite -1}
		vDir {Type IO LastRead -1 FirstWrite -1}
		hDir {Type IO LastRead -1 FirstWrite -1}
		whiYuv_2 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "4295229436"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "262140"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bckgndYUV { ap_fifo {  { bckgndYUV_dout fifo_data_in 0 24 }  { bckgndYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { bckgndYUV_fifo_cap fifo_update 0 5 }  { bckgndYUV_empty_n fifo_status 0 1 }  { bckgndYUV_read fifo_port_we 1 1 } } }
	height_val { ap_fifo {  { height_val_dout fifo_data_in 0 16 }  { height_val_num_data_valid fifo_status_num_data_valid 0 3 }  { height_val_fifo_cap fifo_update 0 3 }  { height_val_empty_n fifo_status 0 1 }  { height_val_read fifo_port_we 1 1 } } }
	width_val { ap_fifo {  { width_val_dout fifo_data_in 0 16 }  { width_val_num_data_valid fifo_status_num_data_valid 0 3 }  { width_val_fifo_cap fifo_update 0 3 }  { width_val_empty_n fifo_status 0 1 }  { width_val_read fifo_port_we 1 1 } } }
	patternId_val { ap_fifo {  { patternId_val_dout fifo_data_in 0 8 }  { patternId_val_num_data_valid fifo_status_num_data_valid 0 3 }  { patternId_val_fifo_cap fifo_update 0 3 }  { patternId_val_empty_n fifo_status 0 1 }  { patternId_val_read fifo_port_we 1 1 } } }
	maskId_val { ap_fifo {  { maskId_val_dout fifo_data_in 0 8 }  { maskId_val_num_data_valid fifo_status_num_data_valid 0 3 }  { maskId_val_fifo_cap fifo_update 0 3 }  { maskId_val_empty_n fifo_status 0 1 }  { maskId_val_read fifo_port_we 1 1 } } }
	colorFormat_val { ap_fifo {  { colorFormat_val_dout fifo_data_in 0 8 }  { colorFormat_val_num_data_valid fifo_status_num_data_valid 0 3 }  { colorFormat_val_fifo_cap fifo_update 0 3 }  { colorFormat_val_empty_n fifo_status 0 1 }  { colorFormat_val_read fifo_port_we 1 1 } } }
	crossHairX_val { ap_fifo {  { crossHairX_val_dout fifo_data_in 0 16 }  { crossHairX_val_num_data_valid fifo_status_num_data_valid 0 3 }  { crossHairX_val_fifo_cap fifo_update 0 3 }  { crossHairX_val_empty_n fifo_status 0 1 }  { crossHairX_val_read fifo_port_we 1 1 } } }
	crossHairY_val { ap_fifo {  { crossHairY_val_dout fifo_data_in 0 16 }  { crossHairY_val_num_data_valid fifo_status_num_data_valid 0 3 }  { crossHairY_val_fifo_cap fifo_update 0 3 }  { crossHairY_val_empty_n fifo_status 0 1 }  { crossHairY_val_read fifo_port_we 1 1 } } }
	boxSize_val { ap_fifo {  { boxSize_val_dout fifo_data_in 0 16 }  { boxSize_val_num_data_valid fifo_status_num_data_valid 0 3 }  { boxSize_val_fifo_cap fifo_update 0 3 }  { boxSize_val_empty_n fifo_status 0 1 }  { boxSize_val_read fifo_port_we 1 1 } } }
	boxColorR_val { ap_fifo {  { boxColorR_val_dout fifo_data_in 0 8 }  { boxColorR_val_num_data_valid fifo_status_num_data_valid 0 3 }  { boxColorR_val_fifo_cap fifo_update 0 3 }  { boxColorR_val_empty_n fifo_status 0 1 }  { boxColorR_val_read fifo_port_we 1 1 } } }
	boxColorG_val { ap_fifo {  { boxColorG_val_dout fifo_data_in 0 8 }  { boxColorG_val_num_data_valid fifo_status_num_data_valid 0 3 }  { boxColorG_val_fifo_cap fifo_update 0 3 }  { boxColorG_val_empty_n fifo_status 0 1 }  { boxColorG_val_read fifo_port_we 1 1 } } }
	boxColorB_val { ap_fifo {  { boxColorB_val_dout fifo_data_in 0 8 }  { boxColorB_val_num_data_valid fifo_status_num_data_valid 0 3 }  { boxColorB_val_fifo_cap fifo_update 0 3 }  { boxColorB_val_empty_n fifo_status 0 1 }  { boxColorB_val_read fifo_port_we 1 1 } } }
	motionSpeed_val { ap_fifo {  { motionSpeed_val_dout fifo_data_in 0 8 }  { motionSpeed_val_num_data_valid fifo_status_num_data_valid 0 3 }  { motionSpeed_val_fifo_cap fifo_update 0 3 }  { motionSpeed_val_empty_n fifo_status 0 1 }  { motionSpeed_val_read fifo_port_we 1 1 } } }
	ovrlayYUV { ap_fifo {  { ovrlayYUV_din fifo_data_in 1 24 }  { ovrlayYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { ovrlayYUV_fifo_cap fifo_update 0 5 }  { ovrlayYUV_full_n fifo_status 0 1 }  { ovrlayYUV_write fifo_port_we 1 1 } } }
	height_val4_c { ap_fifo {  { height_val4_c_din fifo_data_in 1 12 }  { height_val4_c_num_data_valid fifo_status_num_data_valid 0 3 }  { height_val4_c_fifo_cap fifo_update 0 3 }  { height_val4_c_full_n fifo_status 0 1 }  { height_val4_c_write fifo_port_we 1 1 } } }
	width_val7_c { ap_fifo {  { width_val7_c_din fifo_data_in 1 13 }  { width_val7_c_num_data_valid fifo_status_num_data_valid 0 3 }  { width_val7_c_fifo_cap fifo_update 0 3 }  { width_val7_c_full_n fifo_status 0 1 }  { width_val7_c_write fifo_port_we 1 1 } } }
	colorFormat_val17_c { ap_fifo {  { colorFormat_val17_c_din fifo_data_in 1 8 }  { colorFormat_val17_c_num_data_valid fifo_status_num_data_valid 0 3 }  { colorFormat_val17_c_fifo_cap fifo_update 0 3 }  { colorFormat_val17_c_full_n fifo_status 0 1 }  { colorFormat_val17_c_write fifo_port_we 1 1 } } }
}
