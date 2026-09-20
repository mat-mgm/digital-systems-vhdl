--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Wed Nov 30 23:45:10 2022
--Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
--Command     : generate_target chronoip_wrapper.bd
--Design      : chronoip_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btnr : in STD_LOGIC;
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    lapbtn : in STD_LOGIC;
    mssc : in STD_LOGIC;
    reset : in STD_LOGIC;
    stst : in STD_LOGIC
  );
end chronoip_wrapper;

architecture STRUCTURE of chronoip_wrapper is
  component chronoip is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    mssc : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stst : in STD_LOGIC;
    btnr : in STD_LOGIC;
    lapbtn : in STD_LOGIC
  );
  end component chronoip;
begin
chronoip_i: component chronoip
     port map (
      an(3 downto 0) => an(3 downto 0),
      btnr => btnr,
      cat(7 downto 0) => cat(7 downto 0),
      clk => clk,
      lapbtn => lapbtn,
      mssc => mssc,
      reset => reset,
      stst => stst
    );
end STRUCTURE;
