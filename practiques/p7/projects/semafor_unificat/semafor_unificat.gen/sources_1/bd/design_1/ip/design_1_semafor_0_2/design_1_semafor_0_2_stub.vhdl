-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Dec 14 11:34:46 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_semafor_0_2/design_1_semafor_0_2_stub.vhdl
-- Design      : design_1_semafor_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_semafor_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    p : in STD_LOGIC;
    reset : in STD_LOGIC;
    div_clk : in STD_LOGIC;
    enable_out : out STD_LOGIC;
    enable_out_b : out STD_LOGIC;
    conta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vermell_c : out STD_LOGIC;
    ambar_c : out STD_LOGIC;
    verd_c : out STD_LOGIC;
    verd_v : out STD_LOGIC;
    vermell_v : out STD_LOGIC
  );

end design_1_semafor_0_2;

architecture stub of design_1_semafor_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,p,reset,div_clk,enable_out,enable_out_b,conta[7:0],vermell_c,ambar_c,verd_c,verd_v,vermell_v";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "semafor,Vivado 2022.1";
begin
end;
