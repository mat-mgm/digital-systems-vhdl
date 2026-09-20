-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Dec 14 11:34:46 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_semafor_0_2/design_1_semafor_0_2_sim_netlist.vhdl
-- Design      : design_1_semafor_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_semafor_0_2_semafor is
  port (
    enable_out : out STD_LOGIC;
    enable_out_b : out STD_LOGIC;
    vermell_c : out STD_LOGIC;
    ambar_c : out STD_LOGIC;
    verd_c : out STD_LOGIC;
    verd_v : out STD_LOGIC;
    vermell_v : out STD_LOGIC;
    conta : out STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    div_clk : in STD_LOGIC;
    p : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_semafor_0_2_semafor : entity is "semafor";
end design_1_semafor_0_2_semafor;

architecture STRUCTURE of design_1_semafor_0_2_semafor is
  signal \FSM_sequential_act_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_act_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_act_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal act_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ambar_c_reg_i_1_n_0 : STD_LOGIC;
  signal ambar_c_reg_i_2_n_0 : STD_LOGIC;
  signal ambar_c_reg_i_3_n_0 : STD_LOGIC;
  signal \^conta\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal enable_out_b_reg_i_1_n_0 : STD_LOGIC;
  signal enable_out_b_reg_i_2_n_0 : STD_LOGIC;
  signal enable_out_reg_i_1_n_0 : STD_LOGIC;
  signal enable_out_reg_i_2_n_0 : STD_LOGIC;
  signal enable_out_reg_i_3_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal temps : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal verd_c_reg_i_1_n_0 : STD_LOGIC;
  signal vermell_c_reg_i_1_n_0 : STD_LOGIC;
  signal vermell_c_reg_i_2_n_0 : STD_LOGIC;
  signal vermell_c_reg_i_3_n_0 : STD_LOGIC;
  signal vermell_v_reg_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_act_state[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_act_state[2]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_act_state_reg[0]\ : label is "walk_req:001,all_stop_1:010,walk:011,end_walk:100,no_walk:000,all_stop_2:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_act_state_reg[1]\ : label is "walk_req:001,all_stop_1:010,walk:011,end_walk:100,no_walk:000,all_stop_2:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_act_state_reg[2]\ : label is "walk_req:001,all_stop_1:010,walk:011,end_walk:100,no_walk:000,all_stop_2:101";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_sequential_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[0]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[0]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[0]_i_7\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_sequential_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_sequential_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[2]_i_7\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of ambar_c_reg : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of ambar_c_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM of ambar_c_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ambar_c_reg_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \conta[1]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \conta[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \conta[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \conta[4]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \conta[5]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of enable_out_reg_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \temps[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temps[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temps[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temps[4]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of verd_v_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of verd_v_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of vermell_c_reg : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of vermell_c_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM of vermell_c_reg_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of vermell_c_reg_i_2 : label is "soft_lutpair6";
begin
  conta(5 downto 0) <= \^conta\(5 downto 0);
\FSM_sequential_act_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_state(0),
      I1 => reset,
      O => \FSM_sequential_act_state[0]_i_1_n_0\
    );
\FSM_sequential_act_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_state(1),
      I1 => reset,
      O => \FSM_sequential_act_state[1]_i_1_n_0\
    );
\FSM_sequential_act_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_state(2),
      I1 => reset,
      O => \FSM_sequential_act_state[2]_i_1_n_0\
    );
\FSM_sequential_act_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_act_state[0]_i_1_n_0\,
      Q => act_state(0),
      R => '0'
    );
\FSM_sequential_act_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_act_state[1]_i_1_n_0\,
      Q => act_state(1),
      R => '0'
    );
\FSM_sequential_act_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_act_state[2]_i_1_n_0\,
      Q => act_state(2),
      R => '0'
    );
\FSM_sequential_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state__0\(0),
      G => \FSM_sequential_next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => next_state(0)
    );
\FSM_sequential_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0004"
    )
        port map (
      I0 => \FSM_sequential_next_state_reg[0]_i_2_n_0\,
      I1 => act_state(2),
      I2 => act_state(0),
      I3 => \FSM_sequential_next_state_reg[0]_i_3_n_0\,
      I4 => \FSM_sequential_next_state_reg[0]_i_4_n_0\,
      I5 => \FSM_sequential_next_state_reg[0]_i_5_n_0\,
      O => \next_state__0\(0)
    );
\FSM_sequential_next_state_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => temps(0),
      I1 => temps(1),
      O => \FSM_sequential_next_state_reg[0]_i_2_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => temps(3),
      I1 => temps(2),
      I2 => temps(4),
      O => \FSM_sequential_next_state_reg[0]_i_3_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => act_state(0),
      I1 => p,
      I2 => act_state(2),
      I3 => act_state(1),
      O => \FSM_sequential_next_state_reg[0]_i_4_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \FSM_sequential_next_state_reg[0]_i_6_n_0\,
      I1 => \FSM_sequential_next_state_reg[0]_i_7_n_0\,
      I2 => temps(4),
      I3 => act_state(0),
      I4 => temps(1),
      I5 => temps(0),
      O => \FSM_sequential_next_state_reg[0]_i_5_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temps(2),
      I1 => temps(3),
      O => \FSM_sequential_next_state_reg[0]_i_6_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => act_state(2),
      I1 => act_state(1),
      O => \FSM_sequential_next_state_reg[0]_i_7_n_0\
    );
\FSM_sequential_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state__0\(1),
      G => \FSM_sequential_next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => next_state(1)
    );
\FSM_sequential_next_state_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => act_state(2),
      I1 => temps(4),
      I2 => \FSM_sequential_next_state_reg[2]_i_5_n_0\,
      O => \next_state__0\(1)
    );
\FSM_sequential_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state__0\(2),
      G => \FSM_sequential_next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => next_state(2)
    );
\FSM_sequential_next_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAEA"
    )
        port map (
      I0 => \FSM_sequential_next_state_reg[2]_i_3_n_0\,
      I1 => \FSM_sequential_next_state_reg[2]_i_4_n_0\,
      I2 => act_state(0),
      I3 => act_state(2),
      I4 => temps(2),
      I5 => temps(4),
      O => \next_state__0\(2)
    );
\FSM_sequential_next_state_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF40"
    )
        port map (
      I0 => act_state(2),
      I1 => temps(4),
      I2 => \FSM_sequential_next_state_reg[2]_i_5_n_0\,
      I3 => \next_state__0\(2),
      I4 => reset,
      I5 => \FSM_sequential_next_state_reg[2]_i_6_n_0\,
      O => \FSM_sequential_next_state_reg[2]_i_2_n_0\
    );
\FSM_sequential_next_state_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => temps(0),
      I1 => temps(1),
      I2 => act_state(2),
      I3 => act_state(0),
      I4 => temps(3),
      I5 => temps(2),
      O => \FSM_sequential_next_state_reg[2]_i_3_n_0\
    );
\FSM_sequential_next_state_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => act_state(1),
      I1 => temps(3),
      I2 => temps(1),
      I3 => temps(0),
      O => \FSM_sequential_next_state_reg[2]_i_4_n_0\
    );
\FSM_sequential_next_state_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000200000"
    )
        port map (
      I0 => temps(2),
      I1 => temps(3),
      I2 => temps(0),
      I3 => temps(1),
      I4 => act_state(0),
      I5 => act_state(1),
      O => \FSM_sequential_next_state_reg[2]_i_5_n_0\
    );
\FSM_sequential_next_state_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000440F000044"
    )
        port map (
      I0 => act_state(1),
      I1 => p,
      I2 => \FSM_sequential_next_state_reg[0]_i_3_n_0\,
      I3 => act_state(2),
      I4 => act_state(0),
      I5 => \FSM_sequential_next_state_reg[2]_i_7_n_0\,
      O => \FSM_sequential_next_state_reg[2]_i_6_n_0\
    );
\FSM_sequential_next_state_reg[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temps(0),
      I1 => temps(1),
      O => \FSM_sequential_next_state_reg[2]_i_7_n_0\
    );
ambar_c_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => ambar_c_reg_i_3_n_0,
      D => ambar_c_reg_i_1_n_0,
      G => ambar_c_reg_i_2_n_0,
      GE => '1',
      Q => ambar_c
    );
ambar_c_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => act_state(2),
      I1 => act_state(1),
      I2 => act_state(0),
      O => ambar_c_reg_i_1_n_0
    );
ambar_c_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => act_state(0),
      I1 => act_state(1),
      I2 => act_state(2),
      O => ambar_c_reg_i_2_n_0
    );
ambar_c_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => act_state(2),
      I1 => act_state(1),
      I2 => act_state(0),
      O => ambar_c_reg_i_3_n_0
    );
\conta[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temps(0),
      O => \^conta\(0)
    );
\conta[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temps(0),
      I1 => temps(1),
      O => \^conta\(1)
    );
\conta[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => temps(0),
      I1 => temps(1),
      I2 => temps(2),
      O => \^conta\(2)
    );
\conta[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F807"
    )
        port map (
      I0 => temps(0),
      I1 => temps(1),
      I2 => temps(2),
      I3 => temps(3),
      O => \^conta\(3)
    );
\conta[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E1E1E1"
    )
        port map (
      I0 => temps(3),
      I1 => temps(2),
      I2 => temps(4),
      I3 => temps(0),
      I4 => temps(1),
      O => \^conta\(4)
    );
\conta[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => temps(1),
      I1 => temps(0),
      I2 => temps(4),
      I3 => temps(2),
      I4 => temps(3),
      O => \^conta\(5)
    );
enable_out_b_reg: unisim.vcomponents.LDCP
     port map (
      CLR => enable_out_b_reg_i_1_n_0,
      D => '0',
      G => enable_out_reg_i_1_n_0,
      PRE => enable_out_b_reg_i_2_n_0,
      Q => enable_out_b
    );
enable_out_b_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => act_state(2),
      O => enable_out_b_reg_i_1_n_0
    );
enable_out_b_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => act_state(2),
      I1 => act_state(1),
      I2 => act_state(0),
      O => enable_out_b_reg_i_2_n_0
    );
enable_out_reg: unisim.vcomponents.LDCP
     port map (
      CLR => enable_out_reg_i_2_n_0,
      D => '0',
      G => enable_out_reg_i_1_n_0,
      PRE => enable_out_reg_i_3_n_0,
      Q => enable_out
    );
enable_out_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => act_state(0),
      I1 => act_state(2),
      I2 => act_state(1),
      O => enable_out_reg_i_1_n_0
    );
enable_out_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => act_state(0),
      I1 => act_state(2),
      I2 => act_state(1),
      O => enable_out_reg_i_2_n_0
    );
enable_out_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => act_state(2),
      I1 => act_state(1),
      I2 => act_state(0),
      O => enable_out_reg_i_3_n_0
    );
\temps[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0000FE"
    )
        port map (
      I0 => temps(3),
      I1 => temps(2),
      I2 => temps(4),
      I3 => temps(1),
      I4 => temps(0),
      O => p_1_in(1)
    );
\temps[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F00E"
    )
        port map (
      I0 => temps(4),
      I1 => temps(3),
      I2 => temps(2),
      I3 => temps(0),
      I4 => temps(1),
      O => p_1_in(2)
    );
\temps[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC9"
    )
        port map (
      I0 => temps(2),
      I1 => temps(3),
      I2 => temps(0),
      I3 => temps(1),
      O => p_1_in(3)
    );
\temps[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => temps(0),
      I1 => temps(1),
      I2 => temps(3),
      I3 => temps(2),
      I4 => temps(4),
      O => p_1_in(4)
    );
\temps_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => div_clk,
      CE => '1',
      D => \^conta\(0),
      PRE => ambar_c_reg_i_3_n_0,
      Q => temps(0)
    );
\temps_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => div_clk,
      CE => '1',
      CLR => ambar_c_reg_i_3_n_0,
      D => p_1_in(1),
      Q => temps(1)
    );
\temps_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => div_clk,
      CE => '1',
      CLR => ambar_c_reg_i_3_n_0,
      D => p_1_in(2),
      Q => temps(2)
    );
\temps_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => div_clk,
      CE => '1',
      D => p_1_in(3),
      PRE => ambar_c_reg_i_3_n_0,
      Q => temps(3)
    );
\temps_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => div_clk,
      CE => '1',
      D => p_1_in(4),
      PRE => ambar_c_reg_i_3_n_0,
      Q => temps(4)
    );
verd_c_reg: unisim.vcomponents.LDCP
     port map (
      CLR => verd_c_reg_i_1_n_0,
      D => '0',
      G => enable_out_reg_i_1_n_0,
      PRE => ambar_c_reg_i_3_n_0,
      Q => verd_c
    );
verd_c_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => act_state(0),
      I1 => act_state(1),
      I2 => act_state(2),
      O => verd_c_reg_i_1_n_0
    );
verd_v_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => enable_out_reg_i_3_n_0,
      G => ambar_c_reg_i_2_n_0,
      GE => '1',
      Q => verd_v
    );
vermell_c_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => vermell_c_reg_i_3_n_0,
      D => vermell_c_reg_i_1_n_0,
      G => vermell_c_reg_i_2_n_0,
      GE => '1',
      Q => vermell_c
    );
vermell_c_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => act_state(0),
      I1 => act_state(1),
      I2 => act_state(2),
      O => vermell_c_reg_i_1_n_0
    );
vermell_c_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => act_state(2),
      I1 => act_state(1),
      O => vermell_c_reg_i_2_n_0
    );
vermell_c_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => act_state(1),
      I1 => act_state(2),
      O => vermell_c_reg_i_3_n_0
    );
vermell_v_reg: unisim.vcomponents.LDCP
     port map (
      CLR => vermell_v_reg_i_1_n_0,
      D => '1',
      G => enable_out_reg_i_1_n_0,
      PRE => enable_out_reg_i_2_n_0,
      Q => vermell_v
    );
vermell_v_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => act_state(1),
      I1 => act_state(2),
      I2 => act_state(0),
      O => vermell_v_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_semafor_0_2 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_semafor_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_semafor_0_2 : entity is "design_1_semafor_0_2,semafor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_semafor_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_semafor_0_2 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_semafor_0_2 : entity is "semafor,Vivado 2022.1";
end design_1_semafor_0_2;

architecture STRUCTURE of design_1_semafor_0_2 is
  signal \^conta\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute x_interface_info of div_clk : signal is "xilinx.com:signal:clock:1.0 div_clk CLK";
  attribute x_interface_parameter of div_clk : signal is "XIL_INTERFACENAME div_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  conta(7) <= \^conta\(5);
  conta(6) <= \^conta\(5);
  conta(5 downto 0) <= \^conta\(5 downto 0);
U0: entity work.design_1_semafor_0_2_semafor
     port map (
      ambar_c => ambar_c,
      clk => clk,
      conta(5 downto 0) => \^conta\(5 downto 0),
      div_clk => div_clk,
      enable_out => enable_out,
      enable_out_b => enable_out_b,
      p => p,
      reset => reset,
      verd_c => verd_c,
      verd_v => verd_v,
      vermell_c => vermell_c,
      vermell_v => vermell_v
    );
end STRUCTURE;
