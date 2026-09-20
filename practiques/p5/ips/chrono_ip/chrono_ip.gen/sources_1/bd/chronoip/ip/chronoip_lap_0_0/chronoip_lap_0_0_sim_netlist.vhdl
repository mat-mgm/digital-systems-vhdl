-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 23:28:05 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_lap_0_0/chronoip_lap_0_0_sim_netlist.vhdl
-- Design      : chronoip_lap_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_lap_0_0_lap is
  port (
    lap_on : out STD_LOGIC;
    lapbt : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of chronoip_lap_0_0_lap : entity is "lap";
end chronoip_lap_0_0_lap;

architecture STRUCTURE of chronoip_lap_0_0_lap is
begin
lap_on_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lapbt,
      Q => lap_on,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_lap_0_0 is
  port (
    clk : in STD_LOGIC;
    lapbt : in STD_LOGIC;
    lap_on : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of chronoip_lap_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of chronoip_lap_0_0 : entity is "chronoip_lap_0_0,lap,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of chronoip_lap_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of chronoip_lap_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of chronoip_lap_0_0 : entity is "lap,Vivado 2022.1";
end chronoip_lap_0_0;

architecture STRUCTURE of chronoip_lap_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.chronoip_lap_0_0_lap
     port map (
      clk => clk,
      lap_on => lap_on,
      lapbt => lapbt
    );
end STRUCTURE;
