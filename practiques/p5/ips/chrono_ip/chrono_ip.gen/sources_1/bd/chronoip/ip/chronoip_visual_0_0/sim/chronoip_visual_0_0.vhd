-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:visual:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY chronoip_visual_0_0 IS
  PORT (
    btnr : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    mssc : IN STD_LOGIC;
    st : IN STD_LOGIC;
    lap : IN STD_LOGIC;
    centiseg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    deciseg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    seg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    decaseg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    min : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    decamin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    disp0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    disp1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    disp2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    disp3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    crono_enable : OUT STD_LOGIC
  );
END chronoip_visual_0_0;

ARCHITECTURE chronoip_visual_0_0_arch OF chronoip_visual_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF chronoip_visual_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT visual IS
    PORT (
      btnr : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      mssc : IN STD_LOGIC;
      st : IN STD_LOGIC;
      lap : IN STD_LOGIC;
      centiseg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      deciseg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      seg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      decaseg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      min : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      decamin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      disp0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      disp1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      disp2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      disp3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      crono_enable : OUT STD_LOGIC
    );
  END COMPONENT visual;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : visual
    PORT MAP (
      btnr => btnr,
      reset => reset,
      clk => clk,
      mssc => mssc,
      st => st,
      lap => lap,
      centiseg => centiseg,
      deciseg => deciseg,
      seg => seg,
      decaseg => decaseg,
      min => min,
      decamin => decamin,
      disp0 => disp0,
      disp1 => disp1,
      disp2 => disp2,
      disp3 => disp3,
      crono_enable => crono_enable
    );
END chronoip_visual_0_0_arch;
