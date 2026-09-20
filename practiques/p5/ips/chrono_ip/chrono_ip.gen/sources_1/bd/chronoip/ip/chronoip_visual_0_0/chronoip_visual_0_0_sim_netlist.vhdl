-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 23:46:06 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_visual_0_0/chronoip_visual_0_0_sim_netlist.vhdl
-- Design      : chronoip_visual_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_visual_0_0_visual is
  port (
    disp0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mssc : in STD_LOGIC;
    centiseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    deciseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    decaseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    min : in STD_LOGIC_VECTOR ( 3 downto 0 );
    decamin : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of chronoip_visual_0_0_visual : entity is "visual";
end chronoip_visual_0_0_visual;

architecture STRUCTURE of chronoip_visual_0_0_visual is
  signal pressed : STD_LOGIC;
  signal pressed_reg_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disp0[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \disp0[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \disp0[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \disp0[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \disp1[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \disp1[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \disp1[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \disp1[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \disp2[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \disp2[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \disp2[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \disp2[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \disp3[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \disp3[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \disp3[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \disp3[3]_INST_0\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of pressed_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of pressed_reg : label is "VCC:GE GND:CLR";
begin
\disp0[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => centiseg(0),
      I2 => pressed,
      I3 => seg(0),
      O => disp0(0)
    );
\disp0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => centiseg(1),
      I2 => pressed,
      I3 => seg(1),
      O => disp0(1)
    );
\disp0[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => centiseg(2),
      I2 => pressed,
      I3 => seg(2),
      O => disp0(2)
    );
\disp0[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => centiseg(3),
      I2 => pressed,
      I3 => seg(3),
      O => disp0(3)
    );
\disp1[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => deciseg(0),
      I2 => pressed,
      I3 => decaseg(0),
      O => disp1(0)
    );
\disp1[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => deciseg(1),
      I2 => pressed,
      I3 => decaseg(1),
      O => disp1(1)
    );
\disp1[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => deciseg(2),
      I2 => pressed,
      I3 => decaseg(2),
      O => disp1(2)
    );
\disp1[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => deciseg(3),
      I2 => pressed,
      I3 => decaseg(3),
      O => disp1(3)
    );
\disp2[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => seg(0),
      I2 => pressed,
      I3 => min(0),
      O => disp2(0)
    );
\disp2[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => seg(1),
      I2 => pressed,
      I3 => min(1),
      O => disp2(1)
    );
\disp2[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => seg(2),
      I2 => pressed,
      I3 => min(2),
      O => disp2(2)
    );
\disp2[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => seg(3),
      I2 => pressed,
      I3 => min(3),
      O => disp2(3)
    );
\disp3[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => decaseg(0),
      I2 => pressed,
      I3 => decamin(0),
      O => disp3(0)
    );
\disp3[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => decaseg(1),
      I2 => pressed,
      I3 => decamin(1),
      O => disp3(1)
    );
\disp3[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => decaseg(2),
      I2 => pressed,
      I3 => decamin(2),
      O => disp3(2)
    );
\disp3[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => mssc,
      I1 => decaseg(3),
      I2 => pressed,
      I3 => decamin(3),
      O => disp3(3)
    );
pressed_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pressed_reg_i_1_n_0,
      G => mssc,
      GE => '1',
      Q => pressed
    );
pressed_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pressed,
      O => pressed_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_visual_0_0 is
  port (
    btnr : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    mssc : in STD_LOGIC;
    st : in STD_LOGIC;
    lap : in STD_LOGIC;
    centiseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    deciseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    decaseg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    min : in STD_LOGIC_VECTOR ( 3 downto 0 );
    decamin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    disp0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    disp3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    crono_enable : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of chronoip_visual_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of chronoip_visual_0_0 : entity is "chronoip_visual_0_0,visual,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of chronoip_visual_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of chronoip_visual_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of chronoip_visual_0_0 : entity is "visual,Vivado 2022.1";
end chronoip_visual_0_0;

architecture STRUCTURE of chronoip_visual_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  crono_enable <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.chronoip_visual_0_0_visual
     port map (
      centiseg(3 downto 0) => centiseg(3 downto 0),
      decamin(3 downto 0) => decamin(3 downto 0),
      decaseg(3 downto 0) => decaseg(3 downto 0),
      deciseg(3 downto 0) => deciseg(3 downto 0),
      disp0(3 downto 0) => disp0(3 downto 0),
      disp1(3 downto 0) => disp1(3 downto 0),
      disp2(3 downto 0) => disp2(3 downto 0),
      disp3(3 downto 0) => disp3(3 downto 0),
      min(3 downto 0) => min(3 downto 0),
      mssc => mssc,
      seg(3 downto 0) => seg(3 downto 0)
    );
end STRUCTURE;
