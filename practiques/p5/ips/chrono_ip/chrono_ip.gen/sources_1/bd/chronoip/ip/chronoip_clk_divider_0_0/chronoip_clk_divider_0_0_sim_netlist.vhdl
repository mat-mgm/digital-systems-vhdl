-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 21:11:19 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_clk_divider_0_0/chronoip_clk_divider_0_0_sim_netlist.vhdl
-- Design      : chronoip_clk_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_clk_divider_0_0_clk_divider is
  port (
    clk_div : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of chronoip_clk_divider_0_0_clk_divider : entity is "clk_divider";
end chronoip_clk_divider_0_0_clk_divider;

architecture STRUCTURE of chronoip_clk_divider_0_0_clk_divider is
  signal clk_div_1 : STD_LOGIC;
  signal clk_div_i_2_n_0 : STD_LOGIC;
  signal clk_div_i_3_n_0 : STD_LOGIC;
  signal clk_div_i_4_n_0 : STD_LOGIC;
  signal clk_div_i_5_n_0 : STD_LOGIC;
  signal clk_div_i_6_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal div_cnt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \div_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \div_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \div_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \div_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \div_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \div_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \div_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \div_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \div_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \div_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \div_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \div_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \div_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \div_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal div_cnt0_carry_n_0 : STD_LOGIC;
  signal div_cnt0_carry_n_1 : STD_LOGIC;
  signal div_cnt0_carry_n_2 : STD_LOGIC;
  signal div_cnt0_carry_n_3 : STD_LOGIC;
  signal div_cnt_0 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \NLW_div_cnt0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_div_cnt0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of div_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \div_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \div_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \div_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \div_cnt0_carry__3\ : label is 35;
begin
clk_div_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      O => clk_div_1
    );
clk_div_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => div_cnt(18),
      I1 => div_cnt(12),
      I2 => div_cnt(10),
      I3 => div_cnt(8),
      O => clk_div_i_2_n_0
    );
clk_div_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => div_cnt(4),
      I1 => div_cnt(16),
      I2 => div_cnt(17),
      I3 => div_cnt(5),
      O => clk_div_i_3_n_0
    );
clk_div_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => div_cnt(19),
      I1 => div_cnt(14),
      I2 => div_cnt(11),
      I3 => div_cnt(2),
      O => clk_div_i_4_n_0
    );
clk_div_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => div_cnt(6),
      I1 => div_cnt(0),
      I2 => div_cnt(9),
      I3 => div_cnt(7),
      O => clk_div_i_5_n_0
    );
clk_div_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => div_cnt(13),
      I1 => div_cnt(1),
      I2 => div_cnt(15),
      I3 => div_cnt(3),
      O => clk_div_i_6_n_0
    );
clk_div_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_div_1,
      Q => clk_div,
      R => reset
    );
div_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => div_cnt0_carry_n_0,
      CO(2) => div_cnt0_carry_n_1,
      CO(1) => div_cnt0_carry_n_2,
      CO(0) => div_cnt0_carry_n_3,
      CYINIT => div_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => div_cnt(4 downto 1)
    );
\div_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => div_cnt0_carry_n_0,
      CO(3) => \div_cnt0_carry__0_n_0\,
      CO(2) => \div_cnt0_carry__0_n_1\,
      CO(1) => \div_cnt0_carry__0_n_2\,
      CO(0) => \div_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => div_cnt(8 downto 5)
    );
\div_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_cnt0_carry__0_n_0\,
      CO(3) => \div_cnt0_carry__1_n_0\,
      CO(2) => \div_cnt0_carry__1_n_1\,
      CO(1) => \div_cnt0_carry__1_n_2\,
      CO(0) => \div_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => div_cnt(12 downto 9)
    );
\div_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_cnt0_carry__1_n_0\,
      CO(3) => \div_cnt0_carry__2_n_0\,
      CO(2) => \div_cnt0_carry__2_n_1\,
      CO(1) => \div_cnt0_carry__2_n_2\,
      CO(0) => \div_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => div_cnt(16 downto 13)
    );
\div_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_cnt0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_div_cnt0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \div_cnt0_carry__3_n_2\,
      CO(0) => \div_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_div_cnt0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => div_cnt(19 downto 17)
    );
\div_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFB"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => div_cnt(0),
      O => div_cnt_0(0)
    );
\div_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(10),
      O => div_cnt_0(10)
    );
\div_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(11),
      O => div_cnt_0(11)
    );
\div_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(12),
      O => div_cnt_0(12)
    );
\div_cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(13),
      O => div_cnt_0(13)
    );
\div_cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(14),
      O => div_cnt_0(14)
    );
\div_cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(15),
      O => div_cnt_0(15)
    );
\div_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(16),
      O => div_cnt_0(16)
    );
\div_cnt[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(17),
      O => div_cnt_0(17)
    );
\div_cnt[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(18),
      O => div_cnt_0(18)
    );
\div_cnt[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(19),
      O => div_cnt_0(19)
    );
\div_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(1),
      O => div_cnt_0(1)
    );
\div_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(2),
      O => div_cnt_0(2)
    );
\div_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(3),
      O => div_cnt_0(3)
    );
\div_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(4),
      O => div_cnt_0(4)
    );
\div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(5),
      O => div_cnt_0(5)
    );
\div_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(6),
      O => div_cnt_0(6)
    );
\div_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(7),
      O => div_cnt_0(7)
    );
\div_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(8),
      O => div_cnt_0(8)
    );
\div_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => clk_div_i_2_n_0,
      I1 => clk_div_i_3_n_0,
      I2 => clk_div_i_4_n_0,
      I3 => clk_div_i_5_n_0,
      I4 => clk_div_i_6_n_0,
      I5 => data0(9),
      O => div_cnt_0(9)
    );
\div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(0),
      Q => div_cnt(0),
      R => reset
    );
\div_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(10),
      Q => div_cnt(10),
      R => reset
    );
\div_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(11),
      Q => div_cnt(11),
      R => reset
    );
\div_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(12),
      Q => div_cnt(12),
      R => reset
    );
\div_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(13),
      Q => div_cnt(13),
      R => reset
    );
\div_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(14),
      Q => div_cnt(14),
      R => reset
    );
\div_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(15),
      Q => div_cnt(15),
      R => reset
    );
\div_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(16),
      Q => div_cnt(16),
      R => reset
    );
\div_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(17),
      Q => div_cnt(17),
      R => reset
    );
\div_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(18),
      Q => div_cnt(18),
      R => reset
    );
\div_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(19),
      Q => div_cnt(19),
      R => reset
    );
\div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(1),
      Q => div_cnt(1),
      R => reset
    );
\div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(2),
      Q => div_cnt(2),
      R => reset
    );
\div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(3),
      Q => div_cnt(3),
      R => reset
    );
\div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(4),
      Q => div_cnt(4),
      R => reset
    );
\div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(5),
      Q => div_cnt(5),
      R => reset
    );
\div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(6),
      Q => div_cnt(6),
      R => reset
    );
\div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(7),
      Q => div_cnt(7),
      R => reset
    );
\div_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(8),
      Q => div_cnt(8),
      R => reset
    );
\div_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_cnt_0(9),
      Q => div_cnt(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_clk_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of chronoip_clk_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of chronoip_clk_divider_0_0 : entity is "chronoip_clk_divider_0_0,clk_divider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of chronoip_clk_divider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of chronoip_clk_divider_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of chronoip_clk_divider_0_0 : entity is "clk_divider,Vivado 2022.1";
end chronoip_clk_divider_0_0;

architecture STRUCTURE of chronoip_clk_divider_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.chronoip_clk_divider_0_0_clk_divider
     port map (
      clk => clk,
      clk_div => clk_div,
      reset => reset
    );
end STRUCTURE;
