-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Dec 14 11:58:15 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_trafic_light_0_5/design_1_trafic_light_0_5_sim_netlist.vhdl
-- Design      : design_1_trafic_light_0_5
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_trafic_light_0_5_trafic_light is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 1 downto 0 );
    green_v : in STD_LOGIC;
    enable_b : in STD_LOGIC;
    counter : in STD_LOGIC_VECTOR ( 7 downto 0 );
    enable : in STD_LOGIC;
    red_c : in STD_LOGIC;
    red_v : in STD_LOGIC;
    div_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_trafic_light_0_5_trafic_light : entity is "trafic_light";
end design_1_trafic_light_0_5_trafic_light;

architecture STRUCTURE of design_1_trafic_light_0_5_trafic_light is
  signal bcdcount : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bcdcount_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcdcount_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcdcount_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bcdcount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bcdcount_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \bcdcount_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \bcdcount_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \cat[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \cat[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \cat[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal char2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \char2__0\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \char2_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal char3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \char3_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal digit_act : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \digit_act[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_act[1]_i_1_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal to_bcd : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \an[3]_INST_0\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bcdcount_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bcdcount_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bcdcount_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \bcdcount_reg[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bcdcount_reg[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bcdcount_reg[4]_i_4\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \bcdcount_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \bcdcount_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \cat[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cat[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cat[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cat[4]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cat[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cat[7]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cat[7]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cat[7]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cat[7]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cat[7]_INST_0_i_7\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \char2_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \char2_reg[1]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \char2_reg[2]\ : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP of \char2_reg[2]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \digit_act[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \digit_act[1]_i_1\ : label is "soft_lutpair7";
begin
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => digit_act(1),
      I1 => digit_act(0),
      O => an(0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_act(1),
      I1 => digit_act(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_act(0),
      I1 => digit_act(1),
      O => an(2)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit_act(1),
      I1 => digit_act(0),
      O => an(3)
    );
\bcdcount_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter(0),
      G => enable,
      GE => '1',
      Q => bcdcount(0)
    );
\bcdcount_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bcdcount_reg[1]_i_1_n_0\,
      G => enable,
      GE => '1',
      Q => bcdcount(1)
    );
\bcdcount_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0876916E"
    )
        port map (
      I0 => \bcdcount_reg[4]_i_2_n_0\,
      I1 => \bcdcount_reg[4]_i_3_n_0\,
      I2 => counter(2),
      I3 => counter(1),
      I4 => \bcdcount_reg[4]_i_4_n_0\,
      O => \bcdcount_reg[1]_i_1_n_0\
    );
\bcdcount_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bcdcount_reg[2]_i_1_n_0\,
      G => enable,
      GE => '1',
      Q => bcdcount(2)
    );
\bcdcount_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C4A3C52"
    )
        port map (
      I0 => \bcdcount_reg[4]_i_2_n_0\,
      I1 => \bcdcount_reg[4]_i_3_n_0\,
      I2 => counter(2),
      I3 => counter(1),
      I4 => \bcdcount_reg[4]_i_4_n_0\,
      O => \bcdcount_reg[2]_i_1_n_0\
    );
\bcdcount_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bcdcount_reg[3]_i_1_n_0\,
      G => enable,
      GE => '1',
      Q => bcdcount(3)
    );
\bcdcount_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04C76220"
    )
        port map (
      I0 => \bcdcount_reg[4]_i_2_n_0\,
      I1 => \bcdcount_reg[4]_i_3_n_0\,
      I2 => counter(2),
      I3 => counter(1),
      I4 => \bcdcount_reg[4]_i_4_n_0\,
      O => \bcdcount_reg[3]_i_1_n_0\
    );
\bcdcount_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bcdcount_reg[4]_i_1_n_0\,
      G => enable,
      GE => '1',
      Q => bcdcount(4)
    );
\bcdcount_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95566666"
    )
        port map (
      I0 => \bcdcount_reg[4]_i_2_n_0\,
      I1 => \bcdcount_reg[4]_i_3_n_0\,
      I2 => counter(2),
      I3 => counter(1),
      I4 => \bcdcount_reg[4]_i_4_n_0\,
      O => \bcdcount_reg[4]_i_1_n_0\
    );
\bcdcount_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"249A45A2"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => counter(7),
      I3 => counter(6),
      I4 => counter(3),
      O => \bcdcount_reg[4]_i_2_n_0\
    );
\bcdcount_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3973CE9C31638C18"
    )
        port map (
      I0 => counter(3),
      I1 => counter(4),
      I2 => counter(5),
      I3 => counter(7),
      I4 => counter(6),
      I5 => counter(2),
      O => \bcdcount_reg[4]_i_3_n_0\
    );
\bcdcount_reg[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3611C86"
    )
        port map (
      I0 => counter(6),
      I1 => counter(7),
      I2 => counter(5),
      I3 => counter(4),
      I4 => counter(3),
      O => \bcdcount_reg[4]_i_4_n_0\
    );
\bcdcount_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => to_bcd(5),
      G => enable,
      GE => '1',
      Q => bcdcount(5)
    );
\bcdcount_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C8800EFF0307F0"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(6),
      I3 => counter(7),
      I4 => counter(5),
      I5 => counter(4),
      O => to_bcd(5)
    );
\bcdcount_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => to_bcd(6),
      G => enable,
      GE => '1',
      Q => bcdcount(6)
    );
\bcdcount_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F10F0F000F0C08F0"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(6),
      I3 => counter(7),
      I4 => counter(5),
      I5 => counter(4),
      O => to_bcd(6)
    );
\bcdcount_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => to_bcd(7),
      G => enable,
      GE => '1',
      Q => bcdcount(7)
    );
\bcdcount_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0000F000103000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(6),
      I3 => counter(7),
      I4 => counter(5),
      I5 => counter(4),
      O => to_bcd(7)
    );
\cat[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6885"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => cat(0)
    );
\cat[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D998"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => cat(1)
    );
\cat[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F798"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => cat(2)
    );
\cat[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAB4"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => cat(3)
    );
\cat[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A830"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => cat(4)
    );
\cat[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CC8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => cat(5)
    );
\cat[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"889C"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => cat(6)
    );
\cat[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDDF5"
    )
        port map (
      I0 => enable,
      I1 => bcdcount(7),
      I2 => bcdcount(3),
      I3 => digit_act(0),
      I4 => digit_act(1),
      O => sel0(3)
    );
\cat[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFAEAAA"
    )
        port map (
      I0 => \cat[7]_INST_0_i_5_n_0\,
      I1 => char3(2),
      I2 => digit_act(1),
      I3 => digit_act(0),
      I4 => char2(2),
      O => sel0(2)
    );
\cat[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFAEAAA"
    )
        port map (
      I0 => \cat[7]_INST_0_i_6_n_0\,
      I1 => char3(0),
      I2 => digit_act(1),
      I3 => digit_act(0),
      I4 => char2(0),
      O => sel0(0)
    );
\cat[7]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFAEAAA"
    )
        port map (
      I0 => \cat[7]_INST_0_i_7_n_0\,
      I1 => char3(1),
      I2 => digit_act(1),
      I3 => digit_act(0),
      I4 => char2(1),
      O => sel0(1)
    );
\cat[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E020F0F"
    )
        port map (
      I0 => bcdcount(2),
      I1 => digit_act(0),
      I2 => digit_act(1),
      I3 => bcdcount(6),
      I4 => enable,
      O => \cat[7]_INST_0_i_5_n_0\
    );
\cat[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E020F0F"
    )
        port map (
      I0 => bcdcount(0),
      I1 => digit_act(0),
      I2 => digit_act(1),
      I3 => bcdcount(4),
      I4 => enable,
      O => \cat[7]_INST_0_i_6_n_0\
    );
\cat[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000200"
    )
        port map (
      I0 => bcdcount(1),
      I1 => digit_act(0),
      I2 => digit_act(1),
      I3 => enable,
      I4 => bcdcount(5),
      O => \cat[7]_INST_0_i_7_n_0\
    );
\char2_reg[0]\: unisim.vcomponents.LDCP
     port map (
      CLR => \char2_reg[0]_i_1_n_0\,
      D => '0',
      G => red_v,
      PRE => enable_b,
      Q => char2(0)
    );
\char2_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => green_v,
      I1 => enable_b,
      O => \char2_reg[0]_i_1_n_0\
    );
\char2_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \char2__0\(3),
      D => '1',
      G => red_v,
      GE => '1',
      Q => char2(1)
    );
\char2_reg[2]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => red_v,
      GE => '1',
      PRE => \char2__0\(3),
      Q => char2(2)
    );
\char2_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => green_v,
      I1 => enable_b,
      O => \char2__0\(3)
    );
\char3_reg[0]\: unisim.vcomponents.LDCP
     port map (
      CLR => AS(1),
      D => '0',
      G => red_c,
      PRE => AS(0),
      Q => char3(0)
    );
\char3_reg[1]\: unisim.vcomponents.LDCP
     port map (
      CLR => AS(1),
      D => '1',
      G => red_c,
      PRE => AS(0),
      Q => char3(1)
    );
\char3_reg[2]\: unisim.vcomponents.LDCP
     port map (
      CLR => \char3_reg[2]_i_1_n_0\,
      D => '0',
      G => red_c,
      PRE => AS(1),
      Q => char3(2)
    );
\char3_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => AS(0),
      I1 => AS(1),
      O => \char3_reg[2]_i_1_n_0\
    );
\digit_act[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => digit_act(0),
      I1 => div_clk,
      I2 => reset,
      O => \digit_act[0]_i_1_n_0\
    );
\digit_act[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => digit_act(1),
      I1 => div_clk,
      I2 => digit_act(0),
      I3 => reset,
      O => \digit_act[1]_i_1_n_0\
    );
\digit_act_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \digit_act[0]_i_1_n_0\,
      Q => digit_act(0),
      R => '0'
    );
\digit_act_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \digit_act[1]_i_1_n_0\,
      Q => digit_act(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_trafic_light_0_5 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_trafic_light_0_5 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_trafic_light_0_5 : entity is "design_1_trafic_light_0_5,trafic_light,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_trafic_light_0_5 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_trafic_light_0_5 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_trafic_light_0_5 : entity is "trafic_light,Vivado 2022.1";
end design_1_trafic_light_0_5;

architecture STRUCTURE of design_1_trafic_light_0_5 is
  signal \<const1>\ : STD_LOGIC;
  signal \^cat\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute x_interface_info of div_clk : signal is "xilinx.com:signal:clock:1.0 div_clk CLK";
  attribute x_interface_parameter of div_clk : signal is "XIL_INTERFACENAME div_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  cat(7 downto 1) <= \^cat\(7 downto 1);
  cat(0) <= \<const1>\;
U0: entity work.design_1_trafic_light_0_5_trafic_light
     port map (
      AS(1) => green_c,
      AS(0) => ambar_c,
      an(3 downto 0) => an(3 downto 0),
      cat(6 downto 0) => \^cat\(7 downto 1),
      clk => clk,
      counter(7 downto 0) => counter(7 downto 0),
      div_clk => div_clk,
      enable => enable,
      enable_b => enable_b,
      green_v => green_v,
      red_c => red_c,
      red_v => red_v,
      reset => reset
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
