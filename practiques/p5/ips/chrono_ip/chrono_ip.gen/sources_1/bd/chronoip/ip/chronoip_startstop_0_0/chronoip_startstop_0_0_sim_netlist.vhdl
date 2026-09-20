-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 23:27:18 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_startstop_0_0/chronoip_startstop_0_0_sim_netlist.vhdl
-- Design      : chronoip_startstop_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_startstop_0_0_startstop is
  port (
    crono_on : out STD_LOGIC;
    clk : in STD_LOGIC;
    stst : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of chronoip_startstop_0_0_startstop : entity is "startstop";
end chronoip_startstop_0_0_startstop;

architecture STRUCTURE of chronoip_startstop_0_0_startstop is
  signal crono_on_i_1_n_0 : STD_LOGIC;
begin
crono_on_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stst,
      I1 => reset,
      O => crono_on_i_1_n_0
    );
crono_on_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => crono_on_i_1_n_0,
      Q => crono_on,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_startstop_0_0 is
  port (
    clk : in STD_LOGIC;
    stst : in STD_LOGIC;
    crono_on : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of chronoip_startstop_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of chronoip_startstop_0_0 : entity is "chronoip_startstop_0_0,startstop,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of chronoip_startstop_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of chronoip_startstop_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of chronoip_startstop_0_0 : entity is "startstop,Vivado 2022.1";
end chronoip_startstop_0_0;

architecture STRUCTURE of chronoip_startstop_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.chronoip_startstop_0_0_startstop
     port map (
      clk => clk,
      crono_on => crono_on,
      reset => reset,
      stst => stst
    );
end STRUCTURE;
