// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Nov 23 11:44:47 2023
// Host        : ARGUS-IT-WS1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top hdmi_out_system_ila_0_0 -prefix
//               hdmi_out_system_ila_0_0_ hdmi_out_system_ila_0_0_stub.v
// Design      : hdmi_out_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_8245,Vivado 2023.2" *)
module hdmi_out_system_ila_0_0(clk, SLOT_0_AXIS_tdata, SLOT_0_AXIS_tkeep, 
  SLOT_0_AXIS_tlast, SLOT_0_AXIS_tuser, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, resetn, 
  SLOT_0_AXIS_tdest, SLOT_0_AXIS_tid, SLOT_0_AXIS_tstrb)
/* synthesis syn_black_box black_box_pad_pin="SLOT_0_AXIS_tdata[23:0],SLOT_0_AXIS_tkeep[2:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tuser[0:0],SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,resetn,SLOT_0_AXIS_tdest[0:0],SLOT_0_AXIS_tid[0:0],SLOT_0_AXIS_tstrb[2:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [23:0]SLOT_0_AXIS_tdata;
  input [2:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input resetn;
  input [0:0]SLOT_0_AXIS_tdest;
  input [0:0]SLOT_0_AXIS_tid;
  input [2:0]SLOT_0_AXIS_tstrb;
endmodule
