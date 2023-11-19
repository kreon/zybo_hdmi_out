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
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module rgb_doubler(
  vid_active_video,
  vid_vsync,
  vid_hsync,
  vid_data,
  
  vid_pData_0,
  vid_pVDE_0,
  vid_pHSync_0,
  vid_pVSync_0,

  vid_pData_1,
  vid_pVDE_1,
  vid_pHSync_1,
  vid_pVSync_1
 );
    
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN ACTIVE_VIDEO" *)
input wire vid_active_video;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN VSYNC" *)
input wire vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN HSYNC" *)
input wire vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB_IN DATA" *)
input wire [23 : 0] vid_data;
    
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

assign vid_pVDE_0 = vid_active_video;
assign vid_pVDE_1 = vid_active_video;
assign vid_pVSync_0 = vid_vsync;
assign vid_pVSync_1 = vid_vsync;
assign vid_pHSync_0 = vid_hsync;
assign vid_pHSync_1 = vid_hsync;
assign vid_pData_0 = vid_data;
assign vid_pData_1 = vid_data;

endmodule
