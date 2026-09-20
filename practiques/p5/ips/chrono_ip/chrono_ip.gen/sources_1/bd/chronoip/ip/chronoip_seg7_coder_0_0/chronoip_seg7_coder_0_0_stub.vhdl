-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 21:18:00 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_seg7_coder_0_0/chronoip_seg7_coder_0_0_stub.vhdl
-- Design      : chronoip_seg7_coder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity chronoip_seg7_coder_0_0 is
  Port ( 
    char0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div : in STD_LOGIC;
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end chronoip_seg7_coder_0_0;

architecture stub of chronoip_seg7_coder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "char0[3:0],char1[3:0],char2[3:0],char3[3:0],clk,reset,clk_div,cat[7:0],an[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "seg7_coder,Vivado 2022.1";
begin
end;
