--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Oct 27 11:39:41 2022
--Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
--Command     : generate_target p32_wrapper.bd
--Design      : p32_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity p32_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end p32_wrapper;

architecture STRUCTURE of p32_wrapper is
  component p32 is
  port (
    clk : in STD_LOGIC;
    bin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component p32;
begin
p32_i: component p32
     port map (
      an(3 downto 0) => an(3 downto 0),
      bin_in(15 downto 0) => bin_in(15 downto 0),
      cat(7 downto 0) => cat(7 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
