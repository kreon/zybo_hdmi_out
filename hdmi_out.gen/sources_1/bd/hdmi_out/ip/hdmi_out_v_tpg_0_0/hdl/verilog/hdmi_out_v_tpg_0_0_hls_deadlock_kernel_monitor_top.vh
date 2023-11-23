
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [0:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.field_id_val8_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.fid_in_val9_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.ovrlayId_val11_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.maskId_val12_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.crossHairX_val18_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.crossHairY_val19_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.boxSize_val24_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.boxColorR_val25_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.boxColorG_val26_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.entry_proc_U0.boxColorB_val27_c_blk_n;
assign inst_idle_sigs[1] = grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.ap_idle;
assign inst_block_sigs[1] = (grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.grp_tpgBackground_Pipeline_VITIS_LOOP_565_2_fu_482.bckgndYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.height_val4_c12_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.width_val7_c13_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.motionSpeed_val14_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgBackground_U0.colorFormat_val17_c14_blk_n;
assign inst_idle_sigs[2] = grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.ap_idle;
assign inst_block_sigs[2] = (grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220.bckgndYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.height_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.width_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.patternId_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.maskId_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.colorFormat_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.crossHairX_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.crossHairY_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.boxSize_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.boxColorR_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.boxColorG_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.boxColorB_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.motionSpeed_val_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220.ovrlayYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.height_val4_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.width_val7_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.tpgForeground_U0.colorFormat_val17_c_blk_n;
assign inst_idle_sigs[3] = grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[3] = (grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171.ovrlayYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.height_val4_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.width_val7_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.colorFormat_val17_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.fid_in_val9_blk_n | ~grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.field_id_val8_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_v_tpgHlsDataFlow_fu_443.ap_idle;
assign inst_idle_sigs[6] = grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[7] = grp_v_tpgHlsDataFlow_fu_443.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171.ap_idle;

hdmi_out_v_tpg_0_0_hls_deadlock_idx0_monitor hdmi_out_v_tpg_0_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
