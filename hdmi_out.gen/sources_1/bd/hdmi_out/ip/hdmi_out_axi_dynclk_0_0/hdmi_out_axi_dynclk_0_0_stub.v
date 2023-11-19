// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Nov 19 07:20:06 2023
// Host        : ta4ka running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_axi_dynclk_0_0/hdmi_out_axi_dynclk_0_0_stub.v
// Design      : hdmi_out_axi_dynclk_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_dynclk,Vivado 2023.2" *)
module hdmi_out_axi_dynclk_0_0(REF_CLK_I, PXL_CLK_O, PXL_CLK_5X_O, LOCKED_O, 
  s_axi_lite_awaddr, s_axi_lite_awprot, s_axi_lite_awvalid, s_axi_lite_awready, 
  s_axi_lite_wdata, s_axi_lite_wstrb, s_axi_lite_wvalid, s_axi_lite_wready, 
  s_axi_lite_bresp, s_axi_lite_bvalid, s_axi_lite_bready, s_axi_lite_araddr, 
  s_axi_lite_arprot, s_axi_lite_arvalid, s_axi_lite_arready, s_axi_lite_rdata, 
  s_axi_lite_rresp, s_axi_lite_rvalid, s_axi_lite_rready, s_axi_lite_aclk, 
  s_axi_lite_aresetn)
/* synthesis syn_black_box black_box_pad_pin="PXL_CLK_5X_O,LOCKED_O,s_axi_lite_awaddr[5:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[5:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_lite_aresetn" */
/* synthesis syn_force_seq_prim="REF_CLK_I" */
/* synthesis syn_force_seq_prim="PXL_CLK_O" */
/* synthesis syn_force_seq_prim="s_axi_lite_aclk" */;
  input REF_CLK_I /* synthesis syn_isclock = 1 */;
  output PXL_CLK_O /* synthesis syn_isclock = 1 */;
  output PXL_CLK_5X_O;
  output LOCKED_O;
  input [5:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [5:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  input s_axi_lite_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_lite_aresetn;
endmodule
