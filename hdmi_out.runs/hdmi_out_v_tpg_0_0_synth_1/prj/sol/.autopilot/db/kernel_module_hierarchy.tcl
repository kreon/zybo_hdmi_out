set ModuleHierarchy {[{
"Name" : "v_tpg","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_v_tpgHlsDataFlow_fu_443","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "tpgBackground_U0","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_563_1","ID" : "3","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_tpgBackground_Pipeline_VITIS_LOOP_565_2_fu_482","ID" : "4","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_565_2","ID" : "5","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_reg_ap_uint_10_s_fu_1715","ID" : "6","Type" : "pipeline"},
					{"Name" : "grp_reg_int_s_fu_2168","ID" : "7","Type" : "pipeline"},]},]},]},]},
		{"Name" : "entry_proc_U0","ID" : "8","Type" : "sequential"},
		{"Name" : "tpgForeground_U0","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_772_1","ID" : "10","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220","ID" : "11","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_774_2","ID" : "12","Type" : "pipeline"},]},]},]},
		{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_979_1","ID" : "14","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171","ID" : "15","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_981_2","ID" : "16","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_reg_unsigned_short_s_fu_640","ID" : "17","Type" : "pipeline"},]
}]}