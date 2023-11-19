vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/lib_pkg_v1_0_3
vlib questa_lib/msim/fifo_generator_v13_2_9
vlib questa_lib/msim/lib_fifo_v1_0_18
vlib questa_lib/msim/blk_mem_gen_v8_4_7
vlib questa_lib/msim/lib_bmg_v1_0_16
vlib questa_lib/msim/lib_srl_fifo_v1_0_3
vlib questa_lib/msim/axi_datamover_v5_1_31
vlib questa_lib/msim/axi_vdma_v6_3_17
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_register_slice_v1_1_29
vlib questa_lib/msim/axis_subset_converter_v1_1_29
vlib questa_lib/msim/generic_baseblocks_v2_1_1
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_29
vlib questa_lib/msim/axi_data_fifo_v2_1_28
vlib questa_lib/msim/axi_crossbar_v2_1_30
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_1_13
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_11
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_17
vlib questa_lib/msim/v_tc_v6_2_7
vlib questa_lib/msim/xlconcat_v2_1_5
vlib questa_lib/msim/xlconstant_v1_1_8
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_31
vlib questa_lib/msim/proc_sys_reset_v5_0_14
vlib questa_lib/msim/axi_vip_v1_1_15
vlib questa_lib/msim/processing_system7_vip_v1_0_17
vlib questa_lib/msim/gigantic_mux
vlib questa_lib/msim/axi_protocol_converter_v2_1_29

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_3 questa_lib/msim/lib_pkg_v1_0_3
vmap fifo_generator_v13_2_9 questa_lib/msim/fifo_generator_v13_2_9
vmap lib_fifo_v1_0_18 questa_lib/msim/lib_fifo_v1_0_18
vmap blk_mem_gen_v8_4_7 questa_lib/msim/blk_mem_gen_v8_4_7
vmap lib_bmg_v1_0_16 questa_lib/msim/lib_bmg_v1_0_16
vmap lib_srl_fifo_v1_0_3 questa_lib/msim/lib_srl_fifo_v1_0_3
vmap axi_datamover_v5_1_31 questa_lib/msim/axi_datamover_v5_1_31
vmap axi_vdma_v6_3_17 questa_lib/msim/axi_vdma_v6_3_17
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_29 questa_lib/msim/axis_register_slice_v1_1_29
vmap axis_subset_converter_v1_1_29 questa_lib/msim/axis_subset_converter_v1_1_29
vmap generic_baseblocks_v2_1_1 questa_lib/msim/generic_baseblocks_v2_1_1
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 questa_lib/msim/axi_register_slice_v2_1_29
vmap axi_data_fifo_v2_1_28 questa_lib/msim/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 questa_lib/msim/axi_crossbar_v2_1_30
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 questa_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_11 questa_lib/msim/v_vid_in_axi4s_v4_0_11
vmap v_axi4s_vid_out_v4_0_17 questa_lib/msim/v_axi4s_vid_out_v4_0_17
vmap v_tc_v6_2_7 questa_lib/msim/v_tc_v6_2_7
vmap xlconcat_v2_1_5 questa_lib/msim/xlconcat_v2_1_5
vmap xlconstant_v1_1_8 questa_lib/msim/xlconstant_v1_1_8
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_31 questa_lib/msim/axi_gpio_v2_0_31
vmap proc_sys_reset_v5_0_14 questa_lib/msim/proc_sys_reset_v5_0_14
vmap axi_vip_v1_1_15 questa_lib/msim/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 questa_lib/msim/processing_system7_vip_v1_0_17
vmap gigantic_mux questa_lib/msim/gigantic_mux
vmap axi_protocol_converter_v2_1_29 questa_lib/msim/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/2a7c/src/mmcme2_drp.v" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/2a7c/src/SyncAsync.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/2a7c/src/axi_dynclk_S00_AXI.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/2a7c/src/axi_dynclk.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axi_dynclk_0_0/sim/hdmi_out_axi_dynclk_0_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_3  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_18  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/1531/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_7  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_16  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/5c9c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_3  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/02c4/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_31  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d786/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_17  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_17  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axi_vdma_0_0/sim/hdmi_out_axi_vdma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_1  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_29  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/af18/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/tdata_hdmi_out_axis_subset_converter_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/tuser_hdmi_out_axis_subset_converter_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/tstrb_hdmi_out_axis_subset_converter_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/tkeep_hdmi_out_axis_subset_converter_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/tid_hdmi_out_axis_subset_converter_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/tdest_hdmi_out_axis_subset_converter_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/tlast_hdmi_out_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_29  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0f24/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/hdl/top_hdmi_out_axis_subset_converter_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axis_subset_converter_0_0/sim/hdmi_out_axis_subset_converter_0_0.v" \

vlog -work generic_baseblocks_v2_1_1  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_xbar_0/sim/hdmi_out_xbar_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d57c/src/ClockGen.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_rgb2dvi_0_0/sim/hdmi_out_rgb2dvi_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_11  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/4705/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_17  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/b7a6/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_axi4s_vid_out_0_0/sim/hdmi_out_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_7  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e63/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_0_0/sim/hdmi_out_v_tc_0_0.vhd" \

vlog -work xlconcat_v2_1_5  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_xlconcat_0_0/sim/hdmi_out_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_xlconstant_0_0/sim/hdmi_out_xlconstant_0_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_xlconstant_1_0/sim/hdmi_out_xlconstant_1_0.v" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_31  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6fbe/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axi_gpio_btn_0/sim/hdmi_out_axi_gpio_btn_0.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axi_gpio_hdmi_0/sim/hdmi_out_axi_gpio_hdmi_0.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axi_gpio_led_0/sim/hdmi_out_axi_gpio_led_0.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axi_gpio_sw_0/sim/hdmi_out_axi_gpio_sw_0.vhd" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_proc_sys_reset_0_0/sim/hdmi_out_proc_sys_reset_0_0.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_proc_sys_reset_1_0/sim/hdmi_out_proc_sys_reset_1_0.vhd" \

vlog -work axi_vip_v1_1_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_processing_system7_0_0/sim/hdmi_out_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_system_ila_0_0/bd_0/sim/bd_8245.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_system_ila_0_0/bd_0/ip/ip_0/sim/bd_8245_ila_lib_0.vhd" \

vlog -work gigantic_mux  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_system_ila_0_0/bd_0/ip/ip_1/bd_8245_g_inst_0_gigantic_mux.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_system_ila_0_0/bd_0/ip/ip_1/sim/bd_8245_g_inst_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_system_ila_0_0/sim/hdmi_out_system_ila_0_0.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/69dc/src/rgb2vga.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_rgb2vga_0_0/sim/hdmi_out_rgb2vga_0_0.vhd" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_rgb_doubler_0_1/sim/hdmi_out_rgb_doubler_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_s00_regslice_0/sim/hdmi_out_s00_regslice_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_s00_data_fifo_0/sim/hdmi_out_s00_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/7fb4/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/434f/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ec67/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/6b2b/hdl" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/e2ba/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/a29c/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/ae90/hdl/verilog" "+incdir+../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e59/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_auto_pc_0/sim/hdmi_out_auto_pc_0.v" \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_auto_pc_1/sim/hdmi_out_auto_pc_1.v" \

vcom -work xil_defaultlib  -93  \
"../../../../hdmi_out.gen/sources_1/bd/hdmi_out/sim/hdmi_out.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

