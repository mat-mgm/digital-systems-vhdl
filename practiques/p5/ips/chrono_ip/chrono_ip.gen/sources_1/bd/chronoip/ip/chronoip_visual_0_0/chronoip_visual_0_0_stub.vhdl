-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 23:46:06 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_visual_0_0/chronoip_visual_0_0_stub.vhdl
-- Design      : chronoip_visual_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity chronoip_visual_0_0 is
  Port ( 
    btnr : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    mssc : in STD_LOGIC;
    st : in STD_LOGIC;
    lap : in STD_LOGIC;
    centiseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    deciseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    decaseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    min : in STD_LOGIC_VECTOR ( 3 downto 0 );
    decamin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    disp0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    crono_enable : out STD_LOGIC
  );

end chronoip_visual_0_0;

architecture stub of chronoip_visual_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "btnr,reset,clk,mssc,st,lap,centiseg[3:0],deciseg[3:0],seg[3:0],decaseg[3:0],min[3:0],decamin[3:0],disp0[3:0],disp1[3:0],disp2[3:0],disp3[3:0],crono_enable";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "visual,Vivado 2022.1";
begin
end;
