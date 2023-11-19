// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Nov 19 11:48:25 2023
// Host        : ta4ka running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_rgb_doubler_0_1/hdmi_out_rgb_doubler_0_1_sim_netlist.v
// Design      : hdmi_out_rgb_doubler_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hdmi_out_rgb_doubler_0_1,rgb_doubler,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "rgb_doubler,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module hdmi_out_rgb_doubler_0_1
   (vid_active_video,
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
    vid_pVSync_1);
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_IN ACTIVE_VIDEO" *) input vid_active_video;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_IN VSYNC" *) input vid_vsync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_IN HSYNC" *) input vid_hsync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_IN DATA" *) input [23:0]vid_data;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 DATA" *) output [23:0]vid_pData_0;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 ACTIVE_VIDEO" *) output vid_pVDE_0;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 HSYNC" *) output vid_pHSync_0;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT0 VSYNC" *) output vid_pVSync_0;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 DATA" *) output [23:0]vid_pData_1;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 ACTIVE_VIDEO" *) output vid_pVDE_1;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 HSYNC" *) output vid_pHSync_1;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB_OUT1 VSYNC" *) output vid_pVSync_1;

  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_hsync;
  wire vid_vsync;

  assign vid_pData_0[23:0] = vid_data;
  assign vid_pData_1[23:0] = vid_data;
  assign vid_pHSync_0 = vid_hsync;
  assign vid_pHSync_1 = vid_hsync;
  assign vid_pVDE_0 = vid_active_video;
  assign vid_pVDE_1 = vid_active_video;
  assign vid_pVSync_0 = vid_vsync;
  assign vid_pVSync_1 = vid_vsync;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
