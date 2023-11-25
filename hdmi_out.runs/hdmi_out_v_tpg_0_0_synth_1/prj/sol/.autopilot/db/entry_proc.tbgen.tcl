set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ field_id_val8 int 16 regular  }
	{ field_id_val8_c int 16 regular {fifo 1}  }
	{ fid_in_val9 int 1 regular {ap_stable 0} }
	{ fid_in_val9_c int 1 regular {fifo 1}  }
	{ ovrlayId_val11 int 8 regular  }
	{ ovrlayId_val11_c int 8 regular {fifo 1}  }
	{ maskId_val12 int 8 regular  }
	{ maskId_val12_c int 8 regular {fifo 1}  }
	{ crossHairX_val18 int 16 regular  }
	{ crossHairX_val18_c int 16 regular {fifo 1}  }
	{ crossHairY_val19 int 16 regular  }
	{ crossHairY_val19_c int 16 regular {fifo 1}  }
	{ boxSize_val24 int 16 regular  }
	{ boxSize_val24_c int 16 regular {fifo 1}  }
	{ boxColorR_val25 int 8 regular  }
	{ boxColorR_val25_c int 8 regular {fifo 1}  }
	{ boxColorG_val26 int 8 regular  }
	{ boxColorG_val26_c int 8 regular {fifo 1}  }
	{ boxColorB_val27 int 8 regular  }
	{ boxColorB_val27_c int 8 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "field_id_val8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "field_id_val8_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fid_in_val9", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fid_in_val9_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ovrlayId_val11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayId_val11_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "maskId_val12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "maskId_val12_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crossHairX_val18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairX_val18_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crossHairY_val19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairY_val19_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxSize_val24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxSize_val24_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxColorR_val25", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorR_val25_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxColorG_val26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorG_val26_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxColorB_val27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorB_val27_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ field_id_val8 sc_in sc_lv 16 signal 0 } 
	{ field_id_val8_c_din sc_out sc_lv 16 signal 1 } 
	{ field_id_val8_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ field_id_val8_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ field_id_val8_c_full_n sc_in sc_logic 1 signal 1 } 
	{ field_id_val8_c_write sc_out sc_logic 1 signal 1 } 
	{ fid_in_val9 sc_in sc_lv 1 signal 2 } 
	{ fid_in_val9_c_din sc_out sc_lv 1 signal 3 } 
	{ fid_in_val9_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ fid_in_val9_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ fid_in_val9_c_full_n sc_in sc_logic 1 signal 3 } 
	{ fid_in_val9_c_write sc_out sc_logic 1 signal 3 } 
	{ ovrlayId_val11 sc_in sc_lv 8 signal 4 } 
	{ ovrlayId_val11_c_din sc_out sc_lv 8 signal 5 } 
	{ ovrlayId_val11_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ ovrlayId_val11_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ ovrlayId_val11_c_full_n sc_in sc_logic 1 signal 5 } 
	{ ovrlayId_val11_c_write sc_out sc_logic 1 signal 5 } 
	{ maskId_val12 sc_in sc_lv 8 signal 6 } 
	{ maskId_val12_c_din sc_out sc_lv 8 signal 7 } 
	{ maskId_val12_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ maskId_val12_c_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ maskId_val12_c_full_n sc_in sc_logic 1 signal 7 } 
	{ maskId_val12_c_write sc_out sc_logic 1 signal 7 } 
	{ crossHairX_val18 sc_in sc_lv 16 signal 8 } 
	{ crossHairX_val18_c_din sc_out sc_lv 16 signal 9 } 
	{ crossHairX_val18_c_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ crossHairX_val18_c_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ crossHairX_val18_c_full_n sc_in sc_logic 1 signal 9 } 
	{ crossHairX_val18_c_write sc_out sc_logic 1 signal 9 } 
	{ crossHairY_val19 sc_in sc_lv 16 signal 10 } 
	{ crossHairY_val19_c_din sc_out sc_lv 16 signal 11 } 
	{ crossHairY_val19_c_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ crossHairY_val19_c_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ crossHairY_val19_c_full_n sc_in sc_logic 1 signal 11 } 
	{ crossHairY_val19_c_write sc_out sc_logic 1 signal 11 } 
	{ boxSize_val24 sc_in sc_lv 16 signal 12 } 
	{ boxSize_val24_c_din sc_out sc_lv 16 signal 13 } 
	{ boxSize_val24_c_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ boxSize_val24_c_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ boxSize_val24_c_full_n sc_in sc_logic 1 signal 13 } 
	{ boxSize_val24_c_write sc_out sc_logic 1 signal 13 } 
	{ boxColorR_val25 sc_in sc_lv 8 signal 14 } 
	{ boxColorR_val25_c_din sc_out sc_lv 8 signal 15 } 
	{ boxColorR_val25_c_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ boxColorR_val25_c_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ boxColorR_val25_c_full_n sc_in sc_logic 1 signal 15 } 
	{ boxColorR_val25_c_write sc_out sc_logic 1 signal 15 } 
	{ boxColorG_val26 sc_in sc_lv 8 signal 16 } 
	{ boxColorG_val26_c_din sc_out sc_lv 8 signal 17 } 
	{ boxColorG_val26_c_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ boxColorG_val26_c_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ boxColorG_val26_c_full_n sc_in sc_logic 1 signal 17 } 
	{ boxColorG_val26_c_write sc_out sc_logic 1 signal 17 } 
	{ boxColorB_val27 sc_in sc_lv 8 signal 18 } 
	{ boxColorB_val27_c_din sc_out sc_lv 8 signal 19 } 
	{ boxColorB_val27_c_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ boxColorB_val27_c_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ boxColorB_val27_c_full_n sc_in sc_logic 1 signal 19 } 
	{ boxColorB_val27_c_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "field_id_val8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "field_id_val8", "role": "default" }} , 
 	{ "name": "field_id_val8_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "field_id_val8_c", "role": "din" }} , 
 	{ "name": "field_id_val8_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "field_id_val8_c", "role": "num_data_valid" }} , 
 	{ "name": "field_id_val8_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "field_id_val8_c", "role": "fifo_cap" }} , 
 	{ "name": "field_id_val8_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "field_id_val8_c", "role": "full_n" }} , 
 	{ "name": "field_id_val8_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "field_id_val8_c", "role": "write" }} , 
 	{ "name": "fid_in_val9", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid_in_val9", "role": "default" }} , 
 	{ "name": "fid_in_val9_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid_in_val9_c", "role": "din" }} , 
 	{ "name": "fid_in_val9_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fid_in_val9_c", "role": "num_data_valid" }} , 
 	{ "name": "fid_in_val9_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fid_in_val9_c", "role": "fifo_cap" }} , 
 	{ "name": "fid_in_val9_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fid_in_val9_c", "role": "full_n" }} , 
 	{ "name": "fid_in_val9_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fid_in_val9_c", "role": "write" }} , 
 	{ "name": "ovrlayId_val11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ovrlayId_val11", "role": "default" }} , 
 	{ "name": "ovrlayId_val11_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ovrlayId_val11_c", "role": "din" }} , 
 	{ "name": "ovrlayId_val11_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ovrlayId_val11_c", "role": "num_data_valid" }} , 
 	{ "name": "ovrlayId_val11_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ovrlayId_val11_c", "role": "fifo_cap" }} , 
 	{ "name": "ovrlayId_val11_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayId_val11_c", "role": "full_n" }} , 
 	{ "name": "ovrlayId_val11_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayId_val11_c", "role": "write" }} , 
 	{ "name": "maskId_val12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maskId_val12", "role": "default" }} , 
 	{ "name": "maskId_val12_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maskId_val12_c", "role": "din" }} , 
 	{ "name": "maskId_val12_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "maskId_val12_c", "role": "num_data_valid" }} , 
 	{ "name": "maskId_val12_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "maskId_val12_c", "role": "fifo_cap" }} , 
 	{ "name": "maskId_val12_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maskId_val12_c", "role": "full_n" }} , 
 	{ "name": "maskId_val12_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maskId_val12_c", "role": "write" }} , 
 	{ "name": "crossHairX_val18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairX_val18", "role": "default" }} , 
 	{ "name": "crossHairX_val18_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairX_val18_c", "role": "din" }} , 
 	{ "name": "crossHairX_val18_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairX_val18_c", "role": "num_data_valid" }} , 
 	{ "name": "crossHairX_val18_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairX_val18_c", "role": "fifo_cap" }} , 
 	{ "name": "crossHairX_val18_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairX_val18_c", "role": "full_n" }} , 
 	{ "name": "crossHairX_val18_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairX_val18_c", "role": "write" }} , 
 	{ "name": "crossHairY_val19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairY_val19", "role": "default" }} , 
 	{ "name": "crossHairY_val19_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairY_val19_c", "role": "din" }} , 
 	{ "name": "crossHairY_val19_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairY_val19_c", "role": "num_data_valid" }} , 
 	{ "name": "crossHairY_val19_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crossHairY_val19_c", "role": "fifo_cap" }} , 
 	{ "name": "crossHairY_val19_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairY_val19_c", "role": "full_n" }} , 
 	{ "name": "crossHairY_val19_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crossHairY_val19_c", "role": "write" }} , 
 	{ "name": "boxSize_val24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxSize_val24", "role": "default" }} , 
 	{ "name": "boxSize_val24_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxSize_val24_c", "role": "din" }} , 
 	{ "name": "boxSize_val24_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxSize_val24_c", "role": "num_data_valid" }} , 
 	{ "name": "boxSize_val24_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxSize_val24_c", "role": "fifo_cap" }} , 
 	{ "name": "boxSize_val24_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxSize_val24_c", "role": "full_n" }} , 
 	{ "name": "boxSize_val24_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxSize_val24_c", "role": "write" }} , 
 	{ "name": "boxColorR_val25", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorR_val25", "role": "default" }} , 
 	{ "name": "boxColorR_val25_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorR_val25_c", "role": "din" }} , 
 	{ "name": "boxColorR_val25_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorR_val25_c", "role": "num_data_valid" }} , 
 	{ "name": "boxColorR_val25_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorR_val25_c", "role": "fifo_cap" }} , 
 	{ "name": "boxColorR_val25_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorR_val25_c", "role": "full_n" }} , 
 	{ "name": "boxColorR_val25_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorR_val25_c", "role": "write" }} , 
 	{ "name": "boxColorG_val26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorG_val26", "role": "default" }} , 
 	{ "name": "boxColorG_val26_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorG_val26_c", "role": "din" }} , 
 	{ "name": "boxColorG_val26_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorG_val26_c", "role": "num_data_valid" }} , 
 	{ "name": "boxColorG_val26_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorG_val26_c", "role": "fifo_cap" }} , 
 	{ "name": "boxColorG_val26_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorG_val26_c", "role": "full_n" }} , 
 	{ "name": "boxColorG_val26_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorG_val26_c", "role": "write" }} , 
 	{ "name": "boxColorB_val27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorB_val27", "role": "default" }} , 
 	{ "name": "boxColorB_val27_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorB_val27_c", "role": "din" }} , 
 	{ "name": "boxColorB_val27_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorB_val27_c", "role": "num_data_valid" }} , 
 	{ "name": "boxColorB_val27_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "boxColorB_val27_c", "role": "fifo_cap" }} , 
 	{ "name": "boxColorB_val27_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorB_val27_c", "role": "full_n" }} , 
 	{ "name": "boxColorB_val27_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boxColorB_val27_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "field_id_val8", "Type" : "None", "Direction" : "I"},
			{"Name" : "field_id_val8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "field_id_val8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fid_in_val9", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "fid_in_val9_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fid_in_val9_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovrlayId_val11", "Type" : "None", "Direction" : "I"},
			{"Name" : "ovrlayId_val11_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ovrlayId_val11_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "maskId_val12", "Type" : "None", "Direction" : "I"},
			{"Name" : "maskId_val12_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "maskId_val12_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crossHairX_val18", "Type" : "None", "Direction" : "I"},
			{"Name" : "crossHairX_val18_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "crossHairX_val18_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crossHairY_val19", "Type" : "None", "Direction" : "I"},
			{"Name" : "crossHairY_val19_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "crossHairY_val19_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxSize_val24", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxSize_val24_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxSize_val24_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxColorR_val25", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxColorR_val25_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxColorR_val25_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxColorG_val26", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxColorG_val26_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxColorG_val26_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boxColorB_val27", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxColorB_val27_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "boxColorB_val27_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		field_id_val8 {Type I LastRead 0 FirstWrite -1}
		field_id_val8_c {Type O LastRead -1 FirstWrite 0}
		fid_in_val9 {Type I LastRead 0 FirstWrite -1}
		fid_in_val9_c {Type O LastRead -1 FirstWrite 0}
		ovrlayId_val11 {Type I LastRead 0 FirstWrite -1}
		ovrlayId_val11_c {Type O LastRead -1 FirstWrite 0}
		maskId_val12 {Type I LastRead 0 FirstWrite -1}
		maskId_val12_c {Type O LastRead -1 FirstWrite 0}
		crossHairX_val18 {Type I LastRead 0 FirstWrite -1}
		crossHairX_val18_c {Type O LastRead -1 FirstWrite 0}
		crossHairY_val19 {Type I LastRead 0 FirstWrite -1}
		crossHairY_val19_c {Type O LastRead -1 FirstWrite 0}
		boxSize_val24 {Type I LastRead 0 FirstWrite -1}
		boxSize_val24_c {Type O LastRead -1 FirstWrite 0}
		boxColorR_val25 {Type I LastRead 0 FirstWrite -1}
		boxColorR_val25_c {Type O LastRead -1 FirstWrite 0}
		boxColorG_val26 {Type I LastRead 0 FirstWrite -1}
		boxColorG_val26_c {Type O LastRead -1 FirstWrite 0}
		boxColorB_val27 {Type I LastRead 0 FirstWrite -1}
		boxColorB_val27_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	field_id_val8 { ap_none {  { field_id_val8 in_data 0 16 } } }
	field_id_val8_c { ap_fifo {  { field_id_val8_c_din fifo_data_in 1 16 }  { field_id_val8_c_num_data_valid fifo_status_num_data_valid 0 3 }  { field_id_val8_c_fifo_cap fifo_update 0 3 }  { field_id_val8_c_full_n fifo_status 0 1 }  { field_id_val8_c_write fifo_port_we 1 1 } } }
	fid_in_val9 { ap_stable {  { fid_in_val9 in_data 0 1 } } }
	fid_in_val9_c { ap_fifo {  { fid_in_val9_c_din fifo_data_in 1 1 }  { fid_in_val9_c_num_data_valid fifo_status_num_data_valid 0 3 }  { fid_in_val9_c_fifo_cap fifo_update 0 3 }  { fid_in_val9_c_full_n fifo_status 0 1 }  { fid_in_val9_c_write fifo_port_we 1 1 } } }
	ovrlayId_val11 { ap_none {  { ovrlayId_val11 in_data 0 8 } } }
	ovrlayId_val11_c { ap_fifo {  { ovrlayId_val11_c_din fifo_data_in 1 8 }  { ovrlayId_val11_c_num_data_valid fifo_status_num_data_valid 0 3 }  { ovrlayId_val11_c_fifo_cap fifo_update 0 3 }  { ovrlayId_val11_c_full_n fifo_status 0 1 }  { ovrlayId_val11_c_write fifo_port_we 1 1 } } }
	maskId_val12 { ap_none {  { maskId_val12 in_data 0 8 } } }
	maskId_val12_c { ap_fifo {  { maskId_val12_c_din fifo_data_in 1 8 }  { maskId_val12_c_num_data_valid fifo_status_num_data_valid 0 3 }  { maskId_val12_c_fifo_cap fifo_update 0 3 }  { maskId_val12_c_full_n fifo_status 0 1 }  { maskId_val12_c_write fifo_port_we 1 1 } } }
	crossHairX_val18 { ap_none {  { crossHairX_val18 in_data 0 16 } } }
	crossHairX_val18_c { ap_fifo {  { crossHairX_val18_c_din fifo_data_in 1 16 }  { crossHairX_val18_c_num_data_valid fifo_status_num_data_valid 0 3 }  { crossHairX_val18_c_fifo_cap fifo_update 0 3 }  { crossHairX_val18_c_full_n fifo_status 0 1 }  { crossHairX_val18_c_write fifo_port_we 1 1 } } }
	crossHairY_val19 { ap_none {  { crossHairY_val19 in_data 0 16 } } }
	crossHairY_val19_c { ap_fifo {  { crossHairY_val19_c_din fifo_data_in 1 16 }  { crossHairY_val19_c_num_data_valid fifo_status_num_data_valid 0 3 }  { crossHairY_val19_c_fifo_cap fifo_update 0 3 }  { crossHairY_val19_c_full_n fifo_status 0 1 }  { crossHairY_val19_c_write fifo_port_we 1 1 } } }
	boxSize_val24 { ap_none {  { boxSize_val24 in_data 0 16 } } }
	boxSize_val24_c { ap_fifo {  { boxSize_val24_c_din fifo_data_in 1 16 }  { boxSize_val24_c_num_data_valid fifo_status_num_data_valid 0 3 }  { boxSize_val24_c_fifo_cap fifo_update 0 3 }  { boxSize_val24_c_full_n fifo_status 0 1 }  { boxSize_val24_c_write fifo_port_we 1 1 } } }
	boxColorR_val25 { ap_none {  { boxColorR_val25 in_data 0 8 } } }
	boxColorR_val25_c { ap_fifo {  { boxColorR_val25_c_din fifo_data_in 1 8 }  { boxColorR_val25_c_num_data_valid fifo_status_num_data_valid 0 3 }  { boxColorR_val25_c_fifo_cap fifo_update 0 3 }  { boxColorR_val25_c_full_n fifo_status 0 1 }  { boxColorR_val25_c_write fifo_port_we 1 1 } } }
	boxColorG_val26 { ap_none {  { boxColorG_val26 in_data 0 8 } } }
	boxColorG_val26_c { ap_fifo {  { boxColorG_val26_c_din fifo_data_in 1 8 }  { boxColorG_val26_c_num_data_valid fifo_status_num_data_valid 0 3 }  { boxColorG_val26_c_fifo_cap fifo_update 0 3 }  { boxColorG_val26_c_full_n fifo_status 0 1 }  { boxColorG_val26_c_write fifo_port_we 1 1 } } }
	boxColorB_val27 { ap_none {  { boxColorB_val27 in_data 0 8 } } }
	boxColorB_val27_c { ap_fifo {  { boxColorB_val27_c_din fifo_data_in 1 8 }  { boxColorB_val27_c_num_data_valid fifo_status_num_data_valid 0 3 }  { boxColorB_val27_c_fifo_cap fifo_update 0 3 }  { boxColorB_val27_c_full_n fifo_status 0 1 }  { boxColorB_val27_c_write fifo_port_we 1 1 } } }
}
