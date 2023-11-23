set SynModuleInfo {
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME hdmi_out_v_tpg_0_0_reg_unsigned_short_s}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME hdmi_out_v_tpg_0_0_entry_proc}
  {SRCNAME {reg<ap_uint<10> >} MODELNAME reg_ap_uint_10_s RTLNAME hdmi_out_v_tpg_0_0_reg_ap_uint_10_s}
  {SRCNAME reg<int> MODELNAME reg_int_s RTLNAME hdmi_out_v_tpg_0_0_reg_int_s}
  {SRCNAME tpgBackground_Pipeline_VITIS_LOOP_565_2 MODELNAME tpgBackground_Pipeline_VITIS_LOOP_565_2 RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2
    SUBMODULES {
      {MODELNAME hdmi_out_v_tpg_0_0_urem_11ns_4ns_3_15_1 RTLNAME hdmi_out_v_tpg_0_0_urem_11ns_4ns_3_15_1 BINDTYPE op TYPE urem IMPL auto LATENCY 14 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mul_11ns_13ns_23_1_1 RTLNAME hdmi_out_v_tpg_0_0_mul_11ns_13ns_23_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_sparsemux_11_3_9_1_1 RTLNAME hdmi_out_v_tpg_0_0_sparsemux_11_3_9_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME hdmi_out_v_tpg_0_0_mul_20s_9ns_28_1_1 RTLNAME hdmi_out_v_tpg_0_0_mul_20s_9ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_am_addmul_16ns_1s_16ns_17_4_1 RTLNAME hdmi_out_v_tpg_0_0_am_addmul_16ns_1s_16ns_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME hdmi_out_v_tpg_0_0_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_7ns_13ns_15_4_1 RTLNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_7ns_13ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_7s_16s_16_4_1 RTLNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_7s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_8s_16s_16_4_1 RTLNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_8s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_6s_15ns_16_4_1 RTLNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_6s_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_8ns_15ns_16_4_1 RTLNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_5ns_16ns_17_4_1 RTLNAME hdmi_out_v_tpg_0_0_mac_muladd_8ns_5ns_16ns_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_redYuv_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_redYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_grnYuv_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_grnYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_bluYuv_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_bluYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_blkYuv_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_blkYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_whiYuv_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_whiYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_r_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_r_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_y_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_y_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_g_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_g_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_u_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_u_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_v_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_v_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_b_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_b_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgTartanBarArray_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgTartanBarArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_0_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_1_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_2_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_3_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_4_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgCheckerBoardArray_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgCheckerBoardArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarArray_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_r_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_r_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_g_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_g_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_b_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_b_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_y_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_y_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_v_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_v_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_u_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_u_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_y_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_y_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_v_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_v_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_u_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_u_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_out_v_tpg_0_0_frp_fifoout RTLNAME hdmi_out_v_tpg_0_0_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME hdmi_out_v_tpg_0_0_frp_pipeline_valid RTLNAME hdmi_out_v_tpg_0_0_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME hdmi_out_v_tpg_0_0_frp_pipeline_valid_U}
      {MODELNAME hdmi_out_v_tpg_0_0_flow_control_loop_pipe_sequential_init RTLNAME hdmi_out_v_tpg_0_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hdmi_out_v_tpg_0_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME tpgBackground MODELNAME tpgBackground RTLNAME hdmi_out_v_tpg_0_0_tpgBackground}
  {SRCNAME tpgForeground_Pipeline_VITIS_LOOP_774_2 MODELNAME tpgForeground_Pipeline_VITIS_LOOP_774_2 RTLNAME hdmi_out_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2
    SUBMODULES {
      {MODELNAME hdmi_out_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2_whiYuv_2_ROM_AUTO_1R RTLNAME hdmi_out_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2_whiYuv_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tpgForeground MODELNAME tpgForeground RTLNAME hdmi_out_v_tpg_0_0_tpgForeground}
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2 RTLNAME hdmi_out_v_tpg_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2}
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME hdmi_out_v_tpg_0_0_MultiPixStream2AXIvideo}
  {SRCNAME v_tpgHlsDataFlow MODELNAME v_tpgHlsDataFlow RTLNAME hdmi_out_v_tpg_0_0_v_tpgHlsDataFlow
    SUBMODULES {
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w16_d4_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w16_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME field_id_val8_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w1_d4_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fid_in_val9_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ovrlayId_val11_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME maskId_val12_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w16_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crossHairX_val18_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w16_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crossHairY_val19_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w16_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME boxSize_val24_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME boxColorR_val25_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME boxColorG_val26_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME boxColorB_val27_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w24_d16_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bckgndYUV_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w16_d2_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME height_val4_c12_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w16_d2_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME width_val7_c13_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d2_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME motionSpeed_val14_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d2_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME colorFormat_val17_c14_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w24_d16_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ovrlayYUV_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w12_d2_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME height_val4_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w13_d2_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w13_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME width_val7_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_fifo_w8_d2_S RTLNAME hdmi_out_v_tpg_0_0_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME colorFormat_val17_c_U}
      {MODELNAME hdmi_out_v_tpg_0_0_start_for_tpgForeground_U0 RTLNAME hdmi_out_v_tpg_0_0_start_for_tpgForeground_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_tpgForeground_U0_U}
      {MODELNAME hdmi_out_v_tpg_0_0_start_for_MultiPixStream2AXIvideo_U0 RTLNAME hdmi_out_v_tpg_0_0_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MultiPixStream2AXIvideo_U0_U}
    }
  }
  {SRCNAME v_tpg MODELNAME v_tpg RTLNAME hdmi_out_v_tpg_0_0_v_tpg IS_TOP 1
    SUBMODULES {
      {MODELNAME hdmi_out_v_tpg_0_0_CTRL_s_axi RTLNAME hdmi_out_v_tpg_0_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME hdmi_out_v_tpg_0_0_regslice_both RTLNAME hdmi_out_v_tpg_0_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME hdmi_out_v_tpg_0_0_regslice_both_U}
    }
  }
}
