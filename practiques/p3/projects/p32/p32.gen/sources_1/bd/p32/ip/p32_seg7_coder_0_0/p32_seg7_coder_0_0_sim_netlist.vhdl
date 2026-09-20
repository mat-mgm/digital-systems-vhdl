-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Oct 27 11:52:14 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p3/p32/p32.gen/sources_1/bd/p32/ip/p32_seg7_coder_0_0/p32_seg7_coder_0_0_sim_netlist.vhdl
-- Design      : p32_seg7_coder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity p32_seg7_coder_0_0_seg7_coder is
  port (
    cat : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_div : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    char1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of p32_seg7_coder_0_0_seg7_coder : entity is "seg7_coder";
end p32_seg7_coder_0_0_seg7_coder;

architecture STRUCTURE of p32_seg7_coder_0_0_seg7_coder is
  signal digit_act : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \digit_act[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_act[1]_i_1_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cat[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cat[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cat[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cat[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cat[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cat[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \digit_act[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \digit_act[1]_i_1\ : label is "soft_lutpair1";
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
\cat[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(3),
      O => cat(0)
    );
\cat[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5398"
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
      INIT => X"5710"
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
      INIT => X"C034"
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
      INIT => X"A210"
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
      INIT => X"AC48"
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
      INIT => X"209C"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => cat(6)
    );
\cat[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => char1(3),
      I1 => char0(3),
      I2 => char3(3),
      I3 => digit_act(1),
      I4 => digit_act(0),
      I5 => char2(3),
      O => sel0(3)
    );
\cat[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => char1(2),
      I1 => char0(2),
      I2 => char3(2),
      I3 => digit_act(1),
      I4 => digit_act(0),
      I5 => char2(2),
      O => sel0(2)
    );
\cat[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => char1(0),
      I1 => char0(0),
      I2 => char3(0),
      I3 => digit_act(1),
      I4 => digit_act(0),
      I5 => char2(0),
      O => sel0(0)
    );
\cat[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => char1(1),
      I1 => char0(1),
      I2 => char3(1),
      I3 => digit_act(1),
      I4 => digit_act(0),
      I5 => char2(1),
      O => sel0(1)
    );
\digit_act[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => digit_act(0),
      I1 => clk_div,
      I2 => reset,
      O => \digit_act[0]_i_1_n_0\
    );
\digit_act[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => digit_act(1),
      I1 => clk_div,
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
entity p32_seg7_coder_0_0 is
  port (
    char0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    char3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div : in STD_LOGIC;
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of p32_seg7_coder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of p32_seg7_coder_0_0 : entity is "p32_seg7_coder_0_0,seg7_coder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of p32_seg7_coder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of p32_seg7_coder_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of p32_seg7_coder_0_0 : entity is "seg7_coder,Vivado 2022.1";
end p32_seg7_coder_0_0;

architecture STRUCTURE of p32_seg7_coder_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^cat\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN p32_clk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  cat(7 downto 1) <= \^cat\(7 downto 1);
  cat(0) <= \<const1>\;
U0: entity work.p32_seg7_coder_0_0_seg7_coder
     port map (
      an(3 downto 0) => an(3 downto 0),
      cat(6 downto 0) => \^cat\(7 downto 1),
      char0(3 downto 0) => char0(3 downto 0),
      char1(3 downto 0) => char1(3 downto 0),
      char2(3 downto 0) => char2(3 downto 0),
      char3(3 downto 0) => char3(3 downto 0),
      clk => clk,
      clk_div => clk_div,
      reset => reset
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
