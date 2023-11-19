// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Nov 19 11:48:25 2023
// Host        : ta4ka running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_rgb_doubler_0_1/hdmi_out_rgb_doubler_0_1_stub.v
// Design      : hdmi_out_rgb_doubler_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rgb_doubler,Vivado 2023.2" *)
module hdmi_out_rgb_doubler_0_1(vid_active_video, vid_vsync, vid_hsync, 
  vid_data, vid_pData_0, vid_pVDE_0, vid_pHSync_0, vid_pVSync_0, vid_pData_1, vid_pVDE_1, 
  vid_pHSync_1, vid_pVSync_1)
/* synthesis syn_black_box black_box_pad_pin="vid_active_video,vid_vsync,vid_hsync,vid_data[23:0],vid_pData_0[23:0],vid_pVDE_0,vid_pHSync_0,vid_pVSync_0,vid_pData_1[23:0],vid_pVDE_1,vid_pHSync_1,vid_pVSync_1" */;
  input vid_active_video;
  input vid_vsync;
  input vid_hsync;
  input [23:0]vid_data;
  output [23:0]vid_pData_0;
  output vid_pVDE_0;
  output vid_pHSync_0;
  output vid_pVSync_0;
  output [23:0]vid_pData_1;
  output vid_pVDE_1;
  output vid_pHSync_1;
  output vid_pVSync_1;
endmodule
