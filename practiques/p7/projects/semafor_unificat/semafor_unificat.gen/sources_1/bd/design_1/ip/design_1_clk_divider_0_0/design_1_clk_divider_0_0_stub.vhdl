-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Dec 14 11:37:18 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_clk_divider_0_0 -prefix
--               design_1_clk_divider_0_0_ design_1_clk_divider_0_1_stub.vhdl
-- Design      : design_1_clk_divider_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clk_divider_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );

end design_1_clk_divider_0_0;

architecture stub of design_1_clk_divider_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,clk_div";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "clk_divider,Vivado 2022.1";
begin
end;
