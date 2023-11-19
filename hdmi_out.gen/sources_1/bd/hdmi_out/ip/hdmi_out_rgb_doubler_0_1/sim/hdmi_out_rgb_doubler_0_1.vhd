-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:rgb_doubler:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY hdmi_out_rgb_doubler_0_1 IS
  PORT (
    vid_active_video : IN STD_LOGIC;
    vid_vsync : IN STD_LOGIC;
    vid_hsync : IN STD_LOGIC;
    vid_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    vid_pData_0 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    vid_pVDE_0 : OUT STD_LOGIC;
    vid_pHSync_0 : OUT STD_LOGIC;
    vid_pVSync_0 : OUT STD_LOGIC;
    vid_pData_1 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    vid_pVDE_1 : OUT STD_LOGIC;
    vid_pHSync_1 : OUT STD_LOGIC;
    vid_pVSync_1 : OUT STD_LOGIC
  );
END hdmi_out_rgb_doubler_0_1;

ARCHITECTURE hdmi_out_rgb_doubler_0_1_arch OF hdmi_out_rgb_doubler_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF hdmi_out_rgb_doubler_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT rgb_doubler IS
    PORT (
      vid_active_video : IN STD_LOGIC;
      vid_vsync : IN STD_LOGIC;
      vid_hsync : IN STD_LOGIC;
      vid_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      vid_pData_0 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      vid_pVDE_0 : OUT STD_LOGIC;
      vid_pHSync_0 : OUT STD_LOGIC;
      vid_pVSync_0 : OUT STD_LOGIC;
      vid_pData_1 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      vid_pVDE_1 : OUT STD_LOGIC;
      vid_pHSync_1 : OUT STD_LOGIC;
      vid_pVSync_1 : OUT STD_LOGIC
    );
  END COMPONENT rgb_doubler;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF vid_active_video: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_IN ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_INFO OF vid_data: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_IN DATA";
  ATTRIBUTE X_INTERFACE_INFO OF vid_hsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_IN HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pData_0: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT0 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pData_1: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT1 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pHSync_0: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT0 HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pHSync_1: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT1 HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pVDE_0: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT0 ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pVDE_1: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT1 ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pVSync_0: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT0 VSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pVSync_1: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_OUT1 VSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vid_vsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB_IN VSYNC";
BEGIN
  U0 : rgb_doubler
    PORT MAP (
      vid_active_video => vid_active_video,
      vid_vsync => vid_vsync,
      vid_hsync => vid_hsync,
      vid_data => vid_data,
      vid_pData_0 => vid_pData_0,
      vid_pVDE_0 => vid_pVDE_0,
      vid_pHSync_0 => vid_pHSync_0,
      vid_pVSync_0 => vid_pVSync_0,
      vid_pData_1 => vid_pData_1,
      vid_pVDE_1 => vid_pVDE_1,
      vid_pHSync_1 => vid_pHSync_1,
      vid_pVSync_1 => vid_pVSync_1
    );
END hdmi_out_rgb_doubler_0_1_arch;
