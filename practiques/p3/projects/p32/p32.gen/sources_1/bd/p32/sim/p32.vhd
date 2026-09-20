--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Oct 27 11:39:41 2022
--Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
--Command     : generate_target p32.bd
--Design      : p32
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity p32 is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of p32 : entity is "p32,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=p32,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of p32 : entity is "p32.hwdef";
end p32;

architecture STRUCTURE of p32 is
  component p32_seg7_coder_0_0 is
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
  end component p32_seg7_coder_0_0;
  component p32_bin2bcd_0_0 is
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
  end component p32_bin2bcd_0_0;
  component p32_clk_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component p32_clk_divider_0_0;
  signal bin2bcd_0_bcd0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bin2bcd_0_bcd1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bin2bcd_0_bcd2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bin2bcd_0_bcd3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bin_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal clk_divider_0_clk_div : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal seg7_coder_0_an : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal seg7_coder_0_cat : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_bin2bcd_0_bcd4_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN p32_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  an(3 downto 0) <= seg7_coder_0_an(3 downto 0);
  bin_in_1(15 downto 0) <= bin_in(15 downto 0);
  cat(7 downto 0) <= seg7_coder_0_cat(7 downto 0);
  clk_1 <= clk;
  reset_1 <= reset;
bin2bcd_0: component p32_bin2bcd_0_0
     port map (
      bcd0(3 downto 0) => bin2bcd_0_bcd0(3 downto 0),
      bcd1(3 downto 0) => bin2bcd_0_bcd1(3 downto 0),
      bcd2(3 downto 0) => bin2bcd_0_bcd2(3 downto 0),
      bcd3(3 downto 0) => bin2bcd_0_bcd3(3 downto 0),
      bcd4(3 downto 0) => NLW_bin2bcd_0_bcd4_UNCONNECTED(3 downto 0),
      bin_in(15 downto 0) => bin_in_1(15 downto 0),
      clk => clk_1,
      reset => reset_1
    );
clk_divider_0: component p32_clk_divider_0_0
     port map (
      clk => clk_1,
      clk_div => clk_divider_0_clk_div,
      reset => reset_1
    );
seg7_coder_0: component p32_seg7_coder_0_0
     port map (
      an(3 downto 0) => seg7_coder_0_an(3 downto 0),
      cat(7 downto 0) => seg7_coder_0_cat(7 downto 0),
      char0(3 downto 0) => bin2bcd_0_bcd0(3 downto 0),
      char1(3 downto 0) => bin2bcd_0_bcd1(3 downto 0),
      char2(3 downto 0) => bin2bcd_0_bcd2(3 downto 0),
      char3(3 downto 0) => bin2bcd_0_bcd3(3 downto 0),
      clk => clk_1,
      clk_div => clk_divider_0_clk_div,
      reset => reset_1
    );
end STRUCTURE;
