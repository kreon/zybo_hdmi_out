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

-- IP VLNV: xilinx.com:ip:v_tpg:8.2
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY v_tpg_v8_2_3;
USE v_tpg_v8_2_3.hdmi_out_v_tpg_0_0_v_tpg;

ENTITY hdmi_out_v_tpg_0_0 IS
  PORT (
    s_axi_CTRL_AWADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_CTRL_AWVALID : IN STD_LOGIC;
    s_axi_CTRL_AWREADY : OUT STD_LOGIC;
    s_axi_CTRL_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_WVALID : IN STD_LOGIC;
    s_axi_CTRL_WREADY : OUT STD_LOGIC;
    s_axi_CTRL_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BVALID : OUT STD_LOGIC;
    s_axi_CTRL_BREADY : IN STD_LOGIC;
    s_axi_CTRL_ARADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_CTRL_ARVALID : IN STD_LOGIC;
    s_axi_CTRL_ARREADY : OUT STD_LOGIC;
    s_axi_CTRL_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_RVALID : OUT STD_LOGIC;
    s_axi_CTRL_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    fid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    fid_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    interrupt : OUT STD_LOGIC;
    m_axis_video_TVALID : OUT STD_LOGIC;
    m_axis_video_TREADY : IN STD_LOGIC;
    m_axis_video_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_video_TKEEP : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axis_video_TSTRB : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axis_video_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_video_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_video_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_video_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END hdmi_out_v_tpg_0_0;

ARCHITECTURE hdmi_out_v_tpg_0_0_arch OF hdmi_out_v_tpg_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF hdmi_out_v_tpg_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT hdmi_out_v_tpg_0_0_v_tpg IS
    GENERIC (
      C_S_AXI_CTRL_ADDR_WIDTH : INTEGER;
      C_S_AXI_CTRL_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_CTRL_AWADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_CTRL_AWVALID : IN STD_LOGIC;
      s_axi_CTRL_AWREADY : OUT STD_LOGIC;
      s_axi_CTRL_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CTRL_WVALID : IN STD_LOGIC;
      s_axi_CTRL_WREADY : OUT STD_LOGIC;
      s_axi_CTRL_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_BVALID : OUT STD_LOGIC;
      s_axi_CTRL_BREADY : IN STD_LOGIC;
      s_axi_CTRL_ARADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_CTRL_ARVALID : IN STD_LOGIC;
      s_axi_CTRL_ARREADY : OUT STD_LOGIC;
      s_axi_CTRL_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_RVALID : OUT STD_LOGIC;
      s_axi_CTRL_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      fid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      fid_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      interrupt : OUT STD_LOGIC;
      m_axis_video_TVALID : OUT STD_LOGIC;
      m_axis_video_TREADY : IN STD_LOGIC;
      m_axis_video_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      m_axis_video_TKEEP : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axis_video_TSTRB : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axis_video_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_video_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_video_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_video_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT hdmi_out_v_tpg_0_0_v_tpg;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF hdmi_out_v_tpg_0_0_arch: ARCHITECTURE IS "hdmi_out_v_tpg_0_0_v_tpg,Vivado 2023.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF hdmi_out_v_tpg_0_0_arch : ARCHITECTURE IS "hdmi_out_v_tpg_0_0,hdmi_out_v_tpg_0_0_v_tpg,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF hdmi_out_v_tpg_0_0_arch: ARCHITECTURE IS "hdmi_out_v_tpg_0_0,hdmi_out_v_tpg_0_0_v_tpg,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_tpg,x_ipVersion=8.2,x_ipCoreRevision=3,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_ADDR_WIDTH=8,C_S_AXI_CTRL_DATA_WIDTH=32}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 108000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_video_TVALID: SIGNAL IS "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 108000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_CTRL_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 108000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREA" & 
"DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID";
BEGIN
  U0 : hdmi_out_v_tpg_0_0_v_tpg
    GENERIC MAP (
      C_S_AXI_CTRL_ADDR_WIDTH => 8,
      C_S_AXI_CTRL_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_CTRL_AWADDR => s_axi_CTRL_AWADDR,
      s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
      s_axi_CTRL_AWREADY => s_axi_CTRL_AWREADY,
      s_axi_CTRL_WDATA => s_axi_CTRL_WDATA,
      s_axi_CTRL_WSTRB => s_axi_CTRL_WSTRB,
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID,
      s_axi_CTRL_WREADY => s_axi_CTRL_WREADY,
      s_axi_CTRL_BRESP => s_axi_CTRL_BRESP,
      s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
      s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
      s_axi_CTRL_ARADDR => s_axi_CTRL_ARADDR,
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_ARREADY => s_axi_CTRL_ARREADY,
      s_axi_CTRL_RDATA => s_axi_CTRL_RDATA,
      s_axi_CTRL_RRESP => s_axi_CTRL_RRESP,
      s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
      s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      fid => fid,
      fid_in => fid_in,
      interrupt => interrupt,
      m_axis_video_TVALID => m_axis_video_TVALID,
      m_axis_video_TREADY => m_axis_video_TREADY,
      m_axis_video_TDATA => m_axis_video_TDATA,
      m_axis_video_TKEEP => m_axis_video_TKEEP,
      m_axis_video_TSTRB => m_axis_video_TSTRB,
      m_axis_video_TUSER => m_axis_video_TUSER,
      m_axis_video_TLAST => m_axis_video_TLAST,
      m_axis_video_TID => m_axis_video_TID,
      m_axis_video_TDEST => m_axis_video_TDEST
    );
END hdmi_out_v_tpg_0_0_arch;
