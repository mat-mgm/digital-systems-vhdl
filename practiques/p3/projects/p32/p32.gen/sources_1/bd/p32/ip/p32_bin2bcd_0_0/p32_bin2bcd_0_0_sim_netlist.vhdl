-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Oct 27 11:53:34 2022
-- Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/docs/q5/Sistemes_digitals/p3/p32/p32.gen/sources_1/bd/p32/ip/p32_bin2bcd_0_0/p32_bin2bcd_0_0_sim_netlist.vhdl
-- Design      : p32_bin2bcd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity p32_bin2bcd_0_0 is
  port (
    bin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bcd0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd4 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of p32_bin2bcd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of p32_bin2bcd_0_0 : entity is "p32_bin2bcd_0_0,bin2bcd,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of p32_bin2bcd_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of p32_bin2bcd_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of p32_bin2bcd_0_0 : entity is "bin2bcd,Vivado 2022.1";
end p32_bin2bcd_0_0;

architecture STRUCTURE of p32_bin2bcd_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bcd0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \bcd0[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd0[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bcd0[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal bcd0_out : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \bcd1[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bcd1[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal bcd1_out : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \bcd2[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bcd2[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bcd3[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^bin_in\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd0[3]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bcd0[3]_INST_0_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bcd0[3]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bcd1[3]_INST_0_i_26\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bcd1[3]_INST_0_i_28\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bcd1[3]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bcd2[3]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bcd2[3]_INST_0_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bcd2[3]_INST_0_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bcd2[3]_INST_0_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bcd3[3]_INST_0_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bcd3[3]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bcd3[3]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bcd3[3]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bcd3[3]_INST_0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bcd3[3]_INST_0_i_9\ : label is "soft_lutpair4";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN p32_clk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  \^bin_in\(15 downto 0) <= bin_in(15 downto 0);
  bcd0(3 downto 1) <= \^bcd0\(3 downto 1);
  bcd0(0) <= \^bin_in\(0);
  bcd4(3) <= \<const0>\;
  bcd4(2) <= \<const0>\;
  bcd4(1) <= \<const0>\;
  bcd4(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\bcd0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bcd0[2]_INST_0_i_1_n_0\,
      I1 => \^bin_in\(1),
      O => \^bcd0\(1)
    );
\bcd0[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^bin_in\(1),
      I1 => \bcd0[2]_INST_0_i_1_n_0\,
      I2 => \bcd0[2]_INST_0_i_2_n_0\,
      I3 => \^bin_in\(2),
      O => \^bcd0\(2)
    );
\bcd0[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FA53AFC5B0530EC"
    )
        port map (
      I0 => \^bin_in\(2),
      I1 => \bcd0[3]_INST_0_i_1_n_0\,
      I2 => \^bin_in\(3),
      I3 => \bcd0[3]_INST_0_i_2_n_0\,
      I4 => \bcd0[3]_INST_0_i_3_n_0\,
      I5 => \^bin_in\(1),
      O => \bcd0[2]_INST_0_i_1_n_0\
    );
\bcd0[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7A7ADF5EDF5E7A7A"
    )
        port map (
      I0 => \bcd0[3]_INST_0_i_1_n_0\,
      I1 => \^bin_in\(3),
      I2 => \bcd0[3]_INST_0_i_2_n_0\,
      I3 => \^bin_in\(2),
      I4 => \^bin_in\(4),
      I5 => \bcd0[3]_INST_0_i_5_n_0\,
      O => \bcd0[2]_INST_0_i_2_n_0\
    );
\bcd0[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4101204807A00AD0"
    )
        port map (
      I0 => \^bin_in\(2),
      I1 => \bcd0[3]_INST_0_i_1_n_0\,
      I2 => \^bin_in\(3),
      I3 => \bcd0[3]_INST_0_i_2_n_0\,
      I4 => \bcd0[3]_INST_0_i_3_n_0\,
      I5 => \^bin_in\(1),
      O => \^bcd0\(3)
    );
\bcd0[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"693C"
    )
        port map (
      I0 => \^bin_in\(4),
      I1 => \^bin_in\(5),
      I2 => \bcd0[3]_INST_0_i_4_n_0\,
      I3 => \bcd0[3]_INST_0_i_5_n_0\,
      O => \bcd0[3]_INST_0_i_1_n_0\
    );
\bcd0[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3D7CA7E6256487E2"
    )
        port map (
      I0 => \bcd0[3]_INST_0_i_11_n_0\,
      I1 => \^bin_in\(10),
      I2 => \bcd0[3]_INST_0_i_12_n_0\,
      I3 => \bcd0[3]_INST_0_i_13_n_0\,
      I4 => \^bin_in\(9),
      I5 => \^bin_in\(8),
      O => \bcd0[3]_INST_0_i_10_n_0\
    );
\bcd0[3]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3611C86"
    )
        port map (
      I0 => \^bin_in\(14),
      I1 => \^bin_in\(15),
      I2 => \^bin_in\(13),
      I3 => \^bin_in\(12),
      I4 => \^bin_in\(11),
      O => \bcd0[3]_INST_0_i_11_n_0\
    );
\bcd0[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3973CE9C31638C18"
    )
        port map (
      I0 => \^bin_in\(11),
      I1 => \^bin_in\(12),
      I2 => \^bin_in\(13),
      I3 => \^bin_in\(15),
      I4 => \^bin_in\(14),
      I5 => \^bin_in\(10),
      O => \bcd0[3]_INST_0_i_12_n_0\
    );
\bcd0[3]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"249A45A2"
    )
        port map (
      I0 => \^bin_in\(12),
      I1 => \^bin_in\(13),
      I2 => \^bin_in\(15),
      I3 => \^bin_in\(14),
      I4 => \^bin_in\(11),
      O => \bcd0[3]_INST_0_i_13_n_0\
    );
\bcd0[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E6EFBB9F7766E6E"
    )
        port map (
      I0 => \bcd0[3]_INST_0_i_6_n_0\,
      I1 => \bcd0[3]_INST_0_i_5_n_0\,
      I2 => \^bin_in\(4),
      I3 => \^bin_in\(3),
      I4 => \^bin_in\(5),
      I5 => \bcd0[3]_INST_0_i_4_n_0\,
      O => \bcd0[3]_INST_0_i_2_n_0\
    );
\bcd0[3]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bin_in\(4),
      I1 => \bcd0[3]_INST_0_i_5_n_0\,
      O => \bcd0[3]_INST_0_i_3_n_0\
    );
\bcd0[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3D7CA7E6256487E2"
    )
        port map (
      I0 => \bcd0[3]_INST_0_i_7_n_0\,
      I1 => \^bin_in\(7),
      I2 => \bcd0[3]_INST_0_i_8_n_0\,
      I3 => \bcd0[3]_INST_0_i_9_n_0\,
      I4 => \^bin_in\(6),
      I5 => \^bin_in\(5),
      O => \bcd0[3]_INST_0_i_4_n_0\
    );
\bcd0[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556EF1DA514AA1D8"
    )
        port map (
      I0 => \^bin_in\(6),
      I1 => \bcd1[3]_INST_0_i_13_n_0\,
      I2 => \bcd1[3]_INST_0_i_12_n_0\,
      I3 => \bcd1[3]_INST_0_i_14_n_0\,
      I4 => \^bin_in\(5),
      I5 => \^bin_in\(4),
      O => \bcd0[3]_INST_0_i_5_n_0\
    );
\bcd0[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9656159415949656"
    )
        port map (
      I0 => \^bin_in\(6),
      I1 => \bcd0[3]_INST_0_i_9_n_0\,
      I2 => \bcd0[3]_INST_0_i_8_n_0\,
      I3 => \^bin_in\(7),
      I4 => \^bin_in\(8),
      I5 => \bcd0[3]_INST_0_i_10_n_0\,
      O => \bcd0[3]_INST_0_i_6_n_0\
    );
\bcd0[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A419941A62955686"
    )
        port map (
      I0 => \^bin_in\(8),
      I1 => \bcd0[3]_INST_0_i_11_n_0\,
      I2 => \^bin_in\(10),
      I3 => \bcd0[3]_INST_0_i_12_n_0\,
      I4 => \bcd0[3]_INST_0_i_13_n_0\,
      I5 => \^bin_in\(9),
      O => \bcd0[3]_INST_0_i_7_n_0\
    );
\bcd0[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556EF1DA514AA1D8"
    )
        port map (
      I0 => \^bin_in\(9),
      I1 => \bcd1[3]_INST_0_i_23_n_0\,
      I2 => \bcd1[3]_INST_0_i_24_n_0\,
      I3 => \bcd1[3]_INST_0_i_25_n_0\,
      I4 => \^bin_in\(8),
      I5 => \^bin_in\(7),
      O => \bcd0[3]_INST_0_i_8_n_0\
    );
\bcd0[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"159496564521A85A"
    )
        port map (
      I0 => \^bin_in\(9),
      I1 => \bcd0[3]_INST_0_i_13_n_0\,
      I2 => \bcd0[3]_INST_0_i_12_n_0\,
      I3 => \^bin_in\(10),
      I4 => \bcd0[3]_INST_0_i_11_n_0\,
      I5 => \^bin_in\(8),
      O => \bcd0[3]_INST_0_i_9_n_0\
    );
\bcd1[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DA13A7C4B0130EC"
    )
        port map (
      I0 => \^bin_in\(2),
      I1 => \bcd0[3]_INST_0_i_1_n_0\,
      I2 => \^bin_in\(3),
      I3 => \bcd0[3]_INST_0_i_2_n_0\,
      I4 => \bcd0[3]_INST_0_i_3_n_0\,
      I5 => \^bin_in\(1),
      O => bcd1(0)
    );
\bcd1[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"906009090F9FF6F0"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_1_n_0\,
      I1 => \bcd1[3]_INST_0_i_2_n_0\,
      I2 => \bcd1[3]_INST_0_i_5_n_0\,
      I3 => \bcd1[3]_INST_0_i_4_n_0\,
      I4 => \bcd1[3]_INST_0_i_3_n_0\,
      I5 => \bcd1[3]_INST_0_i_6_n_0\,
      O => bcd1(1)
    );
\bcd1[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF000F6009F0"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_1_n_0\,
      I1 => \bcd1[3]_INST_0_i_2_n_0\,
      I2 => \bcd1[3]_INST_0_i_3_n_0\,
      I3 => \bcd1[3]_INST_0_i_4_n_0\,
      I4 => \bcd1[3]_INST_0_i_5_n_0\,
      I5 => \bcd1[3]_INST_0_i_6_n_0\,
      O => bcd1(2)
    );
\bcd1[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0906909066069066"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_1_n_0\,
      I1 => \bcd1[3]_INST_0_i_2_n_0\,
      I2 => \bcd1[3]_INST_0_i_3_n_0\,
      I3 => \bcd1[3]_INST_0_i_4_n_0\,
      I4 => \bcd1[3]_INST_0_i_5_n_0\,
      I5 => \bcd1[3]_INST_0_i_6_n_0\,
      O => bcd1(3)
    );
\bcd1[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772379EC660371C8"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_7_n_0\,
      I1 => \bcd1[3]_INST_0_i_8_n_0\,
      I2 => \bcd1[3]_INST_0_i_9_n_0\,
      I3 => \bcd1[3]_INST_0_i_10_n_0\,
      I4 => \bcd1[3]_INST_0_i_11_n_0\,
      I5 => \bcd1[3]_INST_0_i_2_n_0\,
      O => \bcd1[3]_INST_0_i_1_n_0\
    );
\bcd1[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA05263111CAD846"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_21_n_0\,
      I1 => \bcd1[3]_INST_0_i_20_n_0\,
      I2 => \bcd1[3]_INST_0_i_19_n_0\,
      I3 => \bcd1[3]_INST_0_i_18_n_0\,
      I4 => \bcd1[3]_INST_0_i_17_n_0\,
      I5 => \bcd1[3]_INST_0_i_22_n_0\,
      O => \bcd1[3]_INST_0_i_10_n_0\
    );
\bcd1[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2299545A449A2592"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_17_n_0\,
      I1 => \bcd1[3]_INST_0_i_18_n_0\,
      I2 => \bcd1[3]_INST_0_i_19_n_0\,
      I3 => \bcd1[3]_INST_0_i_20_n_0\,
      I4 => \bcd1[3]_INST_0_i_21_n_0\,
      I5 => \bcd1[3]_INST_0_i_22_n_0\,
      O => \bcd1[3]_INST_0_i_11_n_0\
    );
\bcd1[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9989924644A95962"
    )
        port map (
      I0 => \^bin_in\(7),
      I1 => \^bin_in\(9),
      I2 => \bcd1[3]_INST_0_i_23_n_0\,
      I3 => \bcd1[3]_INST_0_i_24_n_0\,
      I4 => \bcd1[3]_INST_0_i_25_n_0\,
      I5 => \^bin_in\(8),
      O => \bcd1[3]_INST_0_i_12_n_0\
    );
\bcd1[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0108A05004645042"
    )
        port map (
      I0 => \^bin_in\(9),
      I1 => \bcd1[3]_INST_0_i_23_n_0\,
      I2 => \bcd1[3]_INST_0_i_24_n_0\,
      I3 => \bcd1[3]_INST_0_i_25_n_0\,
      I4 => \^bin_in\(8),
      I5 => \^bin_in\(7),
      O => \bcd1[3]_INST_0_i_13_n_0\
    );
\bcd1[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"191A95864A58251A"
    )
        port map (
      I0 => \^bin_in\(8),
      I1 => \bcd1[3]_INST_0_i_25_n_0\,
      I2 => \bcd1[3]_INST_0_i_24_n_0\,
      I3 => \bcd1[3]_INST_0_i_23_n_0\,
      I4 => \^bin_in\(9),
      I5 => \^bin_in\(7),
      O => \bcd1[3]_INST_0_i_14_n_0\
    );
\bcd1[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2836425195893CA"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_26_n_0\,
      I1 => \bcd1[3]_INST_0_i_27_n_0\,
      I2 => \bcd1[3]_INST_0_i_22_n_0\,
      I3 => \bcd1[3]_INST_0_i_28_n_0\,
      I4 => \bcd1[3]_INST_0_i_8_n_0\,
      I5 => \bcd1[3]_INST_0_i_7_n_0\,
      O => \bcd1[3]_INST_0_i_15_n_0\
    );
\bcd1[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"195495664251A58A"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_8_n_0\,
      I1 => \bcd1[3]_INST_0_i_28_n_0\,
      I2 => \bcd1[3]_INST_0_i_22_n_0\,
      I3 => \bcd1[3]_INST_0_i_27_n_0\,
      I4 => \bcd1[3]_INST_0_i_26_n_0\,
      I5 => \bcd1[3]_INST_0_i_7_n_0\,
      O => \bcd1[3]_INST_0_i_16_n_0\
    );
\bcd1[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"593AC36643628364"
    )
        port map (
      I0 => \^bin_in\(10),
      I1 => \bcd0[3]_INST_0_i_11_n_0\,
      I2 => \bcd0[3]_INST_0_i_12_n_0\,
      I3 => \bcd0[3]_INST_0_i_13_n_0\,
      I4 => \^bin_in\(9),
      I5 => \^bin_in\(8),
      O => \bcd1[3]_INST_0_i_17_n_0\
    );
\bcd1[3]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"875A0F78"
    )
        port map (
      I0 => \bcd0[3]_INST_0_i_11_n_0\,
      I1 => \^bin_in\(10),
      I2 => \bcd0[3]_INST_0_i_13_n_0\,
      I3 => \bcd0[3]_INST_0_i_12_n_0\,
      I4 => \^bin_in\(9),
      O => \bcd1[3]_INST_0_i_18_n_0\
    );
\bcd1[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0000F000103000"
    )
        port map (
      I0 => \^bin_in\(10),
      I1 => \^bin_in\(11),
      I2 => \^bin_in\(14),
      I3 => \^bin_in\(15),
      I4 => \^bin_in\(13),
      I5 => \^bin_in\(12),
      O => \bcd1[3]_INST_0_i_19_n_0\
    );
\bcd1[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F74AB5A0B58A14A"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_12_n_0\,
      I1 => \bcd1[3]_INST_0_i_13_n_0\,
      I2 => \^bin_in\(6),
      I3 => \bcd1[3]_INST_0_i_14_n_0\,
      I4 => \^bin_in\(5),
      I5 => \^bin_in\(4),
      O => \bcd1[3]_INST_0_i_2_n_0\
    );
\bcd1[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C8800EFF0307F0"
    )
        port map (
      I0 => \^bin_in\(10),
      I1 => \^bin_in\(11),
      I2 => \^bin_in\(14),
      I3 => \^bin_in\(15),
      I4 => \^bin_in\(13),
      I5 => \^bin_in\(12),
      O => \bcd1[3]_INST_0_i_20_n_0\
    );
\bcd1[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F10F0F000F0C08F0"
    )
        port map (
      I0 => \^bin_in\(10),
      I1 => \^bin_in\(11),
      I2 => \^bin_in\(14),
      I3 => \^bin_in\(15),
      I4 => \^bin_in\(13),
      I5 => \^bin_in\(12),
      O => \bcd1[3]_INST_0_i_21_n_0\
    );
\bcd1[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F74AB5A0B58A14A"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_24_n_0\,
      I1 => \bcd1[3]_INST_0_i_23_n_0\,
      I2 => \^bin_in\(9),
      I3 => \bcd1[3]_INST_0_i_25_n_0\,
      I4 => \^bin_in\(8),
      I5 => \^bin_in\(7),
      O => \bcd1[3]_INST_0_i_22_n_0\
    );
\bcd1[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4120180420180482"
    )
        port map (
      I0 => \^bin_in\(12),
      I1 => \^bin_in\(13),
      I2 => \^bin_in\(15),
      I3 => \^bin_in\(14),
      I4 => \^bin_in\(11),
      I5 => \^bin_in\(10),
      O => \bcd1[3]_INST_0_i_23_n_0\
    );
\bcd1[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A52994A54A52294A"
    )
        port map (
      I0 => \^bin_in\(10),
      I1 => \^bin_in\(11),
      I2 => \^bin_in\(12),
      I3 => \^bin_in\(13),
      I4 => \^bin_in\(15),
      I5 => \^bin_in\(14),
      O => \bcd1[3]_INST_0_i_24_n_0\
    );
\bcd1[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3611C8686C3381C"
    )
        port map (
      I0 => \^bin_in\(14),
      I1 => \^bin_in\(15),
      I2 => \^bin_in\(13),
      I3 => \^bin_in\(12),
      I4 => \^bin_in\(11),
      I5 => \^bin_in\(10),
      O => \bcd1[3]_INST_0_i_25_n_0\
    );
\bcd1[3]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23895472"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_21_n_0\,
      I1 => \bcd1[3]_INST_0_i_20_n_0\,
      I2 => \bcd1[3]_INST_0_i_19_n_0\,
      I3 => \bcd1[3]_INST_0_i_18_n_0\,
      I4 => \bcd1[3]_INST_0_i_17_n_0\,
      O => \bcd1[3]_INST_0_i_26_n_0\
    );
\bcd1[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772379EC660371C8"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_17_n_0\,
      I1 => \bcd1[3]_INST_0_i_18_n_0\,
      I2 => \bcd1[3]_INST_0_i_19_n_0\,
      I3 => \bcd1[3]_INST_0_i_20_n_0\,
      I4 => \bcd1[3]_INST_0_i_21_n_0\,
      I5 => \bcd1[3]_INST_0_i_22_n_0\,
      O => \bcd1[3]_INST_0_i_27_n_0\
    );
\bcd1[3]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5466518A"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_18_n_0\,
      I1 => \bcd1[3]_INST_0_i_19_n_0\,
      I2 => \bcd1[3]_INST_0_i_20_n_0\,
      I3 => \bcd1[3]_INST_0_i_21_n_0\,
      I4 => \bcd1[3]_INST_0_i_17_n_0\,
      O => \bcd1[3]_INST_0_i_28_n_0\
    );
\bcd1[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_2_n_0\,
      I1 => \bcd1[3]_INST_0_i_1_n_0\,
      I2 => \bcd1[3]_INST_0_i_15_n_0\,
      O => \bcd1[3]_INST_0_i_3_n_0\
    );
\bcd1[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66666AA995566666"
    )
        port map (
      I0 => \bcd0[3]_INST_0_i_6_n_0\,
      I1 => \bcd0[3]_INST_0_i_5_n_0\,
      I2 => \^bin_in\(4),
      I3 => \^bin_in\(3),
      I4 => \^bin_in\(5),
      I5 => \bcd0[3]_INST_0_i_4_n_0\,
      O => \bcd1[3]_INST_0_i_4_n_0\
    );
\bcd1[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF5E7A7A"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_16_n_0\,
      I1 => \bcd1[3]_INST_0_i_2_n_0\,
      I2 => \bcd1[3]_INST_0_i_1_n_0\,
      I3 => \bcd1[3]_INST_0_i_4_n_0\,
      I4 => \bcd1[3]_INST_0_i_15_n_0\,
      O => \bcd1[3]_INST_0_i_5_n_0\
    );
\bcd1[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A955695565A5A"
    )
        port map (
      I0 => \bcd0[3]_INST_0_i_1_n_0\,
      I1 => \^bin_in\(3),
      I2 => \bcd0[3]_INST_0_i_2_n_0\,
      I3 => \^bin_in\(2),
      I4 => \^bin_in\(4),
      I5 => \bcd0[3]_INST_0_i_5_n_0\,
      O => \bcd1[3]_INST_0_i_6_n_0\
    );
\bcd1[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"593AC36643628364"
    )
        port map (
      I0 => \^bin_in\(7),
      I1 => \bcd0[3]_INST_0_i_7_n_0\,
      I2 => \bcd0[3]_INST_0_i_8_n_0\,
      I3 => \bcd0[3]_INST_0_i_9_n_0\,
      I4 => \^bin_in\(6),
      I5 => \^bin_in\(5),
      O => \bcd1[3]_INST_0_i_7_n_0\
    );
\bcd1[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"609F996600FF9F60"
    )
        port map (
      I0 => \^bin_in\(8),
      I1 => \bcd0[3]_INST_0_i_10_n_0\,
      I2 => \^bin_in\(7),
      I3 => \bcd0[3]_INST_0_i_9_n_0\,
      I4 => \bcd0[3]_INST_0_i_8_n_0\,
      I5 => \^bin_in\(6),
      O => \bcd1[3]_INST_0_i_8_n_0\
    );
\bcd1[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4402118011203824"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_17_n_0\,
      I1 => \bcd1[3]_INST_0_i_18_n_0\,
      I2 => \bcd1[3]_INST_0_i_19_n_0\,
      I3 => \bcd1[3]_INST_0_i_20_n_0\,
      I4 => \bcd1[3]_INST_0_i_21_n_0\,
      I5 => \bcd1[3]_INST_0_i_22_n_0\,
      O => \bcd1[3]_INST_0_i_9_n_0\
    );
\bcd2[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"690F96960F0F96F0"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_1_n_0\,
      I1 => \bcd1[3]_INST_0_i_2_n_0\,
      I2 => \bcd1[3]_INST_0_i_3_n_0\,
      I3 => \bcd1[3]_INST_0_i_4_n_0\,
      I4 => \bcd1[3]_INST_0_i_5_n_0\,
      I5 => \bcd1[3]_INST_0_i_6_n_0\,
      O => bcd2(0)
    );
\bcd2[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"05F8"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_4_n_0\,
      I1 => \bcd2[3]_INST_0_i_2_n_0\,
      I2 => \bcd2[3]_INST_0_i_1_n_0\,
      I3 => \bcd2[3]_INST_0_i_3_n_0\,
      O => bcd2(1)
    );
\bcd2[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C2C6"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_1_n_0\,
      I1 => \bcd2[3]_INST_0_i_2_n_0\,
      I2 => \bcd2[3]_INST_0_i_3_n_0\,
      I3 => \bcd2[3]_INST_0_i_4_n_0\,
      O => bcd2(2)
    );
\bcd2[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03A8"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_1_n_0\,
      I1 => \bcd2[3]_INST_0_i_2_n_0\,
      I2 => \bcd2[3]_INST_0_i_3_n_0\,
      I3 => \bcd2[3]_INST_0_i_4_n_0\,
      O => bcd2(3)
    );
\bcd2[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4402118011203824"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_5_n_0\,
      I1 => \bcd2[3]_INST_0_i_6_n_0\,
      I2 => \bcd2[3]_INST_0_i_7_n_0\,
      I3 => \bcd2[3]_INST_0_i_8_n_0\,
      I4 => \bcd2[3]_INST_0_i_9_n_0\,
      I5 => \bcd2[3]_INST_0_i_10_n_0\,
      O => \bcd2[3]_INST_0_i_1_n_0\
    );
\bcd2[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772319EC660331C8"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_7_n_0\,
      I1 => \bcd1[3]_INST_0_i_8_n_0\,
      I2 => \bcd1[3]_INST_0_i_9_n_0\,
      I3 => \bcd1[3]_INST_0_i_10_n_0\,
      I4 => \bcd1[3]_INST_0_i_11_n_0\,
      I5 => \bcd1[3]_INST_0_i_2_n_0\,
      O => \bcd2[3]_INST_0_i_10_n_0\
    );
\bcd2[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA05263111CAD846"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_9_n_0\,
      I1 => \bcd2[3]_INST_0_i_8_n_0\,
      I2 => \bcd2[3]_INST_0_i_7_n_0\,
      I3 => \bcd2[3]_INST_0_i_6_n_0\,
      I4 => \bcd2[3]_INST_0_i_5_n_0\,
      I5 => \bcd2[3]_INST_0_i_10_n_0\,
      O => \bcd2[3]_INST_0_i_2_n_0\
    );
\bcd2[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95565A5A"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_16_n_0\,
      I1 => \bcd1[3]_INST_0_i_2_n_0\,
      I2 => \bcd1[3]_INST_0_i_1_n_0\,
      I3 => \bcd1[3]_INST_0_i_4_n_0\,
      I4 => \bcd1[3]_INST_0_i_15_n_0\,
      O => \bcd2[3]_INST_0_i_3_n_0\
    );
\bcd2[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2299545A449A2592"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_5_n_0\,
      I1 => \bcd2[3]_INST_0_i_6_n_0\,
      I2 => \bcd2[3]_INST_0_i_7_n_0\,
      I3 => \bcd2[3]_INST_0_i_8_n_0\,
      I4 => \bcd2[3]_INST_0_i_9_n_0\,
      I5 => \bcd2[3]_INST_0_i_10_n_0\,
      O => \bcd2[3]_INST_0_i_4_n_0\
    );
\bcd2[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DA13A7C4B0130EC"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_8_n_0\,
      I1 => \bcd1[3]_INST_0_i_28_n_0\,
      I2 => \bcd1[3]_INST_0_i_22_n_0\,
      I3 => \bcd1[3]_INST_0_i_27_n_0\,
      I4 => \bcd1[3]_INST_0_i_26_n_0\,
      I5 => \bcd1[3]_INST_0_i_7_n_0\,
      O => \bcd2[3]_INST_0_i_5_n_0\
    );
\bcd2[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95565A5A"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_28_n_0\,
      I1 => \bcd1[3]_INST_0_i_22_n_0\,
      I2 => \bcd1[3]_INST_0_i_27_n_0\,
      I3 => \bcd1[3]_INST_0_i_8_n_0\,
      I4 => \bcd1[3]_INST_0_i_26_n_0\,
      O => \bcd2[3]_INST_0_i_6_n_0\
    );
\bcd2[3]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41201804"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_8_n_0\,
      I1 => \bcd3[3]_INST_0_i_9_n_0\,
      I2 => bcd0_out(7),
      I3 => \bcd3[3]_INST_0_i_11_n_0\,
      I4 => \bcd3[3]_INST_0_i_7_n_0\,
      O => \bcd2[3]_INST_0_i_7_n_0\
    );
\bcd2[3]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3611C86"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_11_n_0\,
      I1 => bcd0_out(7),
      I2 => \bcd3[3]_INST_0_i_9_n_0\,
      I3 => \bcd3[3]_INST_0_i_8_n_0\,
      I4 => \bcd3[3]_INST_0_i_7_n_0\,
      O => \bcd2[3]_INST_0_i_8_n_0\
    );
\bcd2[3]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"249A45A2"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_8_n_0\,
      I1 => \bcd3[3]_INST_0_i_9_n_0\,
      I2 => bcd0_out(7),
      I3 => \bcd3[3]_INST_0_i_11_n_0\,
      I4 => \bcd3[3]_INST_0_i_7_n_0\,
      O => \bcd2[3]_INST_0_i_9_n_0\
    );
\bcd3[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_1_n_0\,
      I1 => \bcd2[3]_INST_0_i_2_n_0\,
      I2 => \bcd2[3]_INST_0_i_3_n_0\,
      I3 => \bcd2[3]_INST_0_i_4_n_0\,
      O => bcd3(0)
    );
\bcd3[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2599A4545A2249A"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_5_n_0\,
      I1 => bcd1_out(11),
      I2 => \bcd3[3]_INST_0_i_3_n_0\,
      I3 => \bcd3[3]_INST_0_i_2_n_0\,
      I4 => \bcd3[3]_INST_0_i_1_n_0\,
      I5 => \bcd3[3]_INST_0_i_6_n_0\,
      O => bcd3(1)
    );
\bcd3[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9429A54AA54A2952"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_1_n_0\,
      I1 => \bcd3[3]_INST_0_i_2_n_0\,
      I2 => \bcd3[3]_INST_0_i_3_n_0\,
      I3 => bcd1_out(11),
      I4 => \bcd3[3]_INST_0_i_5_n_0\,
      I5 => \bcd3[3]_INST_0_i_6_n_0\,
      O => bcd3(2)
    );
\bcd3[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2142081008104284"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_1_n_0\,
      I1 => \bcd3[3]_INST_0_i_2_n_0\,
      I2 => \bcd3[3]_INST_0_i_3_n_0\,
      I3 => bcd1_out(11),
      I4 => \bcd3[3]_INST_0_i_5_n_0\,
      I5 => \bcd3[3]_INST_0_i_6_n_0\,
      O => bcd3(3)
    );
\bcd3[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A17C01EC"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_6_n_0\,
      I1 => \bcd2[3]_INST_0_i_7_n_0\,
      I2 => \bcd2[3]_INST_0_i_8_n_0\,
      I3 => \bcd2[3]_INST_0_i_9_n_0\,
      I4 => \bcd2[3]_INST_0_i_5_n_0\,
      O => \bcd3[3]_INST_0_i_1_n_0\
    );
\bcd3[3]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000E000"
    )
        port map (
      I0 => \^bin_in\(11),
      I1 => \^bin_in\(12),
      I2 => \^bin_in\(14),
      I3 => \^bin_in\(15),
      I4 => \^bin_in\(13),
      O => bcd0_out(7)
    );
\bcd3[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF00F000FE03F00"
    )
        port map (
      I0 => \^bin_in\(10),
      I1 => \^bin_in\(11),
      I2 => \^bin_in\(14),
      I3 => \^bin_in\(15),
      I4 => \^bin_in\(13),
      I5 => \^bin_in\(12),
      O => \bcd3[3]_INST_0_i_11_n_0\
    );
\bcd3[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3973CE9C31638C18"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_7_n_0\,
      I1 => \bcd3[3]_INST_0_i_8_n_0\,
      I2 => \bcd3[3]_INST_0_i_9_n_0\,
      I3 => bcd0_out(7),
      I4 => \bcd3[3]_INST_0_i_11_n_0\,
      I5 => \bcd2[3]_INST_0_i_6_n_0\,
      O => \bcd3[3]_INST_0_i_2_n_0\
    );
\bcd3[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"793C6138"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_8_n_0\,
      I1 => \bcd3[3]_INST_0_i_9_n_0\,
      I2 => bcd0_out(7),
      I3 => \bcd3[3]_INST_0_i_11_n_0\,
      I4 => \bcd3[3]_INST_0_i_7_n_0\,
      O => \bcd3[3]_INST_0_i_3_n_0\
    );
\bcd3[3]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_9_n_0\,
      I1 => \bcd3[3]_INST_0_i_11_n_0\,
      I2 => bcd0_out(7),
      O => bcd1_out(11)
    );
\bcd3[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B424"
    )
        port map (
      I0 => \bcd3[3]_INST_0_i_9_n_0\,
      I1 => bcd0_out(7),
      I2 => \bcd3[3]_INST_0_i_11_n_0\,
      I3 => \bcd3[3]_INST_0_i_8_n_0\,
      O => \bcd3[3]_INST_0_i_5_n_0\
    );
\bcd3[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772319EC660331C8"
    )
        port map (
      I0 => \bcd2[3]_INST_0_i_5_n_0\,
      I1 => \bcd2[3]_INST_0_i_6_n_0\,
      I2 => \bcd2[3]_INST_0_i_7_n_0\,
      I3 => \bcd2[3]_INST_0_i_8_n_0\,
      I4 => \bcd2[3]_INST_0_i_9_n_0\,
      I5 => \bcd2[3]_INST_0_i_10_n_0\,
      O => \bcd3[3]_INST_0_i_6_n_0\
    );
\bcd3[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772319EC660331C8"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_17_n_0\,
      I1 => \bcd1[3]_INST_0_i_18_n_0\,
      I2 => \bcd1[3]_INST_0_i_19_n_0\,
      I3 => \bcd1[3]_INST_0_i_20_n_0\,
      I4 => \bcd1[3]_INST_0_i_21_n_0\,
      I5 => \bcd1[3]_INST_0_i_22_n_0\,
      O => \bcd3[3]_INST_0_i_7_n_0\
    );
\bcd3[3]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A17C01EC"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_18_n_0\,
      I1 => \bcd1[3]_INST_0_i_19_n_0\,
      I2 => \bcd1[3]_INST_0_i_20_n_0\,
      I3 => \bcd1[3]_INST_0_i_21_n_0\,
      I4 => \bcd1[3]_INST_0_i_17_n_0\,
      O => \bcd3[3]_INST_0_i_8_n_0\
    );
\bcd3[3]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \bcd1[3]_INST_0_i_19_n_0\,
      I1 => \bcd1[3]_INST_0_i_20_n_0\,
      I2 => \bcd1[3]_INST_0_i_18_n_0\,
      I3 => \bcd1[3]_INST_0_i_21_n_0\,
      O => \bcd3[3]_INST_0_i_9_n_0\
    );
end STRUCTURE;
