-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Dec 14 11:58:15 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_trafic_light_0_5/design_1_trafic_light_0_5_stub.vhdl
-- Design      : design_1_trafic_light_0_5
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_trafic_light_0_5 is
  Port ( 
    counter : in STD_LOGIC_VECTOR ( 7 downto 0 );
    div_clk : in STD_LOGIC;
    div_clk1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    enable_b : in STD_LOGIC;
    red_c : in STD_LOGIC;
    ambar_c : in STD_LOGIC;
    green_c : in STD_LOGIC;
    red_v : in STD_LOGIC;
    green_v : in STD_LOGIC;
    reset : in STD_LOGIC;
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_trafic_light_0_5;

architecture stub of design_1_trafic_light_0_5 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "counter[7:0],div_clk,div_clk1,clk,enable,enable_b,red_c,ambar_c,green_c,red_v,green_v,reset,cat[7:0],an[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "trafic_light,Vivado 2022.1";
begin
end;
