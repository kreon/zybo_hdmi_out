-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Nov 19 11:48:25 2023
-- Host        : ta4ka running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_rgb_doubler_0_1/hdmi_out_rgb_doubler_0_1_stub.vhdl
-- Design      : hdmi_out_rgb_doubler_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_out_rgb_doubler_0_1 is
  Port ( 
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

end hdmi_out_rgb_doubler_0_1;

architecture stub of hdmi_out_rgb_doubler_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vid_active_video,vid_vsync,vid_hsync,vid_data[23:0],vid_pData_0[23:0],vid_pVDE_0,vid_pHSync_0,vid_pVSync_0,vid_pData_1[23:0],vid_pVDE_1,vid_pHSync_1,vid_pVSync_1";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rgb_doubler,Vivado 2023.2";
begin
end;
