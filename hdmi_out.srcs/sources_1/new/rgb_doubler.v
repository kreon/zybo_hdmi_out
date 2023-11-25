`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 11:39:28
// Design Name: 
// Module Name: rgb_doubler
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: doubler selected input to all output
// 
//////////////////////////////////////////////////////////////////////////////////
module rgb_doubler(
  vid_active_video_0,
  vid_vsync_0,
  vid_hsync_0,
  vid_data_0,
  
  vid_active_video_1,
  vid_vsync_1,
  vid_hsync_1,
  vid_data_1,
  
  input_sel,
  
  vid_pData_0,
  vid_pVDE_0,
  vid_pHSync_0,
  vid_pVSync_0,

  vid_pData_1,
  vid_pVDE_1,
  vid_pHSync_1,
  vid_pVSync_1
 );
    
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN0 ACTIVE_VIDEO" *)
input wire vid_active_video_0;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN0 VSYNC" *)
input wire vid_vsync_0;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN0 HSYNC" *)
input wire vid_hsync_0;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN0 DATA" *)
input wire [23 : 0] vid_data_0;

(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN1 ACTIVE_VIDEO" *)
input wire vid_active_video_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN1 VSYNC" *)
input wire vid_vsync_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN1 HSYNC" *)
input wire vid_hsync_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN1 DATA" *)
input wire [23 : 0] vid_data_1;

input wire input_sel;

(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 ACTIVE_VIDEO" *)
output wire vid_pVDE_0;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 VSYNC" *)
output wire vid_pVSync_0;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 HSYNC" *)
output wire vid_pHSync_0;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 DATA" *)
output wire [23 : 0] vid_pData_0;

(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 ACTIVE_VIDEO" *)
output wire vid_pVDE_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 VSYNC" *)
output wire vid_pVSync_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 HSYNC" *)
output wire vid_pHSync_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 DATA" *)
output wire [23 : 0] vid_pData_1;

assign vid_pVDE_0 = input_sel ? vid_active_video_1 : vid_active_video_0;
assign vid_pVDE_1 = input_sel ? vid_active_video_1 : vid_active_video_0;

assign vid_pVSync_0 = input_sel ? vid_vsync_1 : vid_vsync_0;
assign vid_pVSync_1 = input_sel ? vid_vsync_1 : vid_vsync_0;

assign vid_pHSync_0 = input_sel ? vid_hsync_1 : vid_hsync_0;
assign vid_pHSync_1 = input_sel ? vid_hsync_1 : vid_hsync_0;

assign vid_pData_0 = input_sel ? vid_data_1 : vid_data_0;
assign vid_pData_1 = input_sel ? vid_data_1 : vid_data_0;

//assign vid_pVDE_0 = vid_active_video_0;
//assign vid_pVDE_1 = vid_active_video_0;
//assign vid_pVSync_0 = vid_vsync_0;
//assign vid_pVSync_1 = vid_vsync_0;
//assign vid_pHSync_0 = vid_hsync_0;
//assign vid_pHSync_1 = vid_hsync_0;
//assign vid_pData_0 = vid_data_0;
//assign vid_pData_1 = vid_data_0;

endmodule
