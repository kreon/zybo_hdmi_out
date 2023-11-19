-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Nov 19 11:48:25 2023
-- Host        : ta4ka running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_rgb_doubler_0_1/hdmi_out_rgb_doubler_0_1_sim_netlist.vhdl
-- Design      : hdmi_out_rgb_doubler_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_out_rgb_doubler_0_1 is
  port (
    vid_active_video : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pData_0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE_0 : out STD_LOGIC;
    vid_pHSync_0 : out STD_LOGIC;
    vid_pVSync_0 : out STD_LOGIC;
    vid_pData_1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE_1 : out STD_LOGIC;
    vid_pHSync_1 : out STD_LOGIC;
    vid_pVSync_1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hdmi_out_rgb_doubler_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hdmi_out_rgb_doubler_0_1 : entity is "hdmi_out_rgb_doubler_0_1,rgb_doubler,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of hdmi_out_rgb_doubler_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of hdmi_out_rgb_doubler_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of hdmi_out_rgb_doubler_0_1 : entity is "rgb_doubler,Vivado 2023.2";
end hdmi_out_rgb_doubler_0_1;

architecture STRUCTURE of hdmi_out_rgb_doubler_0_1 is
  signal \^vid_active_video\ : STD_LOGIC;
  signal \^vid_data\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^vid_hsync\ : STD_LOGIC;
  signal \^vid_vsync\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 RGB_IN ACTIVE_VIDEO";
  attribute x_interface_info of vid_hsync : signal is "xilinx.com:interface:vid_io:1.0 RGB_IN HSYNC";
  attribute x_interface_info of vid_pHSync_0 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT0 HSYNC";
  attribute x_interface_info of vid_pHSync_1 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT1 HSYNC";
  attribute x_interface_info of vid_pVDE_0 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT0 ACTIVE_VIDEO";
  attribute x_interface_info of vid_pVDE_1 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT1 ACTIVE_VIDEO";
  attribute x_interface_info of vid_pVSync_0 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT0 VSYNC";
  attribute x_interface_info of vid_pVSync_1 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT1 VSYNC";
  attribute x_interface_info of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 RGB_IN VSYNC";
  attribute x_interface_info of vid_data : signal is "xilinx.com:interface:vid_io:1.0 RGB_IN DATA";
  attribute x_interface_info of vid_pData_0 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT0 DATA";
  attribute x_interface_info of vid_pData_1 : signal is "xilinx.com:interface:vid_io:1.0 RGB_OUT1 DATA";
begin
  \^vid_active_video\ <= vid_active_video;
  \^vid_data\(23 downto 0) <= vid_data(23 downto 0);
  \^vid_hsync\ <= vid_hsync;
  \^vid_vsync\ <= vid_vsync;
  vid_pData_0(23 downto 0) <= \^vid_data\(23 downto 0);
  vid_pData_1(23 downto 0) <= \^vid_data\(23 downto 0);
  vid_pHSync_0 <= \^vid_hsync\;
  vid_pHSync_1 <= \^vid_hsync\;
  vid_pVDE_0 <= \^vid_active_video\;
  vid_pVDE_1 <= \^vid_active_video\;
  vid_pVSync_0 <= \^vid_vsync\;
  vid_pVSync_1 <= \^vid_vsync\;
end STRUCTURE;
