-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 23:27:18 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_startstop_0_0/chronoip_startstop_0_0_stub.vhdl
-- Design      : chronoip_startstop_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity chronoip_startstop_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    stst : in STD_LOGIC;
    crono_on : out STD_LOGIC;
    reset : in STD_LOGIC
  );

end chronoip_startstop_0_0;

architecture stub of chronoip_startstop_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,stst,crono_on,reset";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "startstop,Vivado 2022.1";
begin
end;
