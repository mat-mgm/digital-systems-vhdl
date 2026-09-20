-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 30 21:14:32 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_div_temp_3_0_0/chronoip_div_temp_3_0_0_sim_netlist.vhdl
-- Design      : chronoip_div_temp_3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_div_temp_3_0_0_div_temp_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC;
    reset : in STD_LOGIC;
    Clck_E : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of chronoip_div_temp_3_0_0_div_temp_3 : entity is "div_temp_3";
end chronoip_div_temp_3_0_0_div_temp_3;

architecture STRUCTURE of chronoip_div_temp_3_0_0_div_temp_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \compta[0]_i_1_n_0\ : STD_LOGIC;
  signal \compta[1]_i_1_n_0\ : STD_LOGIC;
  signal \compta[2]_i_1_n_0\ : STD_LOGIC;
  signal \compta[3]_i_1_n_0\ : STD_LOGIC;
  signal thick_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \compta[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \compta[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \compta[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of thick_i_1 : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\compta[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \compta[0]_i_1_n_0\
    );
\compta[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \compta[1]_i_1_n_0\
    );
\compta[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \compta[2]_i_1_n_0\
    );
\compta[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \compta[3]_i_1_n_0\
    );
\compta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clck_E,
      CE => '1',
      D => \compta[0]_i_1_n_0\,
      Q => \^q\(0),
      R => reset
    );
\compta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clck_E,
      CE => '1',
      D => \compta[1]_i_1_n_0\,
      Q => \^q\(1),
      R => reset
    );
\compta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clck_E,
      CE => '1',
      D => \compta[2]_i_1_n_0\,
      Q => \^q\(2),
      R => reset
    );
\compta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clck_E,
      CE => '1',
      D => \compta[3]_i_1_n_0\,
      Q => \^q\(3),
      R => reset
    );
thick_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => thick_i_1_n_0
    );
thick_reg: unisim.vcomponents.FDRE
     port map (
      C => Clck_E,
      CE => '1',
      D => thick_i_1_n_0,
      Q => thick,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip_div_temp_3_0_0 is
  port (
    Clck_E : in STD_LOGIC;
    reset : in STD_LOGIC;
    compt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of chronoip_div_temp_3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of chronoip_div_temp_3_0_0 : entity is "chronoip_div_temp_3_0_0,div_temp_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of chronoip_div_temp_3_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of chronoip_div_temp_3_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of chronoip_div_temp_3_0_0 : entity is "div_temp_3,Vivado 2022.1";
end chronoip_div_temp_3_0_0;

architecture STRUCTURE of chronoip_div_temp_3_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.chronoip_div_temp_3_0_0_div_temp_3
     port map (
      Clck_E => Clck_E,
      Q(3 downto 0) => compt(3 downto 0),
      reset => reset,
      thick => thick
    );
end STRUCTURE;
