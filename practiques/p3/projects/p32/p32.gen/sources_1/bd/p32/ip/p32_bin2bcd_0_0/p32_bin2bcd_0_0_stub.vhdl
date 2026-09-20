-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Oct 27 11:53:34 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/docs/q5/Sistemes_digitals/p3/p32/p32.gen/sources_1/bd/p32/ip/p32_bin2bcd_0_0/p32_bin2bcd_0_0_stub.vhdl
-- Design      : p32_bin2bcd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity p32_bin2bcd_0_0 is
  Port ( 
    bin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bcd0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd4 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end p32_bin2bcd_0_0;

architecture stub of p32_bin2bcd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bin_in[15:0],clk,reset,bcd0[3:0],bcd1[3:0],bcd2[3:0],bcd3[3:0],bcd4[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bin2bcd,Vivado 2022.1";
begin
end;
