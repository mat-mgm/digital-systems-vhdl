--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Fri Dec 16 19:30:27 2022
--Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    p : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_div_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div_base : out STD_LOGIC
  );
  end component design_1_clk_div_0_0;
  component design_1_clk_div_1s_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div_sec : out STD_LOGIC
  );
  end component design_1_clk_div_1s_0_0;
  component design_1_semafor_0_0 is
  port (
    clk : in STD_LOGIC;
    p : in STD_LOGIC;
    reset : in STD_LOGIC;
    div_clk_tm : in STD_LOGIC;
    enable_out : out STD_LOGIC;
    enable_out_b : out STD_LOGIC;
    conta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vermell_c : out STD_LOGIC;
    ambar_c : out STD_LOGIC;
    verd_c : out STD_LOGIC;
    verd_v : out STD_LOGIC;
    vermell_v : out STD_LOGIC
  );
  end component design_1_semafor_0_0;
  component design_1_trafic_light_0_0 is
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
  end component design_1_trafic_light_0_0;
  signal Net : STD_LOGIC;
  signal clk_div_0_clk_div : STD_LOGIC;
  signal clk_div_1s_0_clk_div : STD_LOGIC;
  signal p_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal semafor_0_ambar_c : STD_LOGIC;
  signal semafor_0_conta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semafor_0_enable_out : STD_LOGIC;
  signal semafor_0_enable_out_b : STD_LOGIC;
  signal semafor_0_verd_c : STD_LOGIC;
  signal semafor_0_verd_v : STD_LOGIC;
  signal semafor_0_vermell_c : STD_LOGIC;
  signal semafor_0_vermell_v : STD_LOGIC;
  signal trafic_light_0_an : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal trafic_light_0_cat : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  Net <= clk;
  an(3 downto 0) <= trafic_light_0_an(3 downto 0);
  cat(7 downto 0) <= trafic_light_0_cat(7 downto 0);
  p_1 <= p;
  reset_1 <= reset;
clk_div_0: component design_1_clk_div_0_0
     port map (
      clk => Net,
      clk_div_base => clk_div_0_clk_div,
      reset => reset_1
    );
clk_div_1s_0: component design_1_clk_div_1s_0_0
     port map (
      clk => Net,
      clk_div_sec => clk_div_1s_0_clk_div,
      reset => reset_1
    );
semafor_0: component design_1_semafor_0_0
     port map (
      ambar_c => semafor_0_ambar_c,
      clk => Net,
      conta(7 downto 0) => semafor_0_conta(7 downto 0),
      div_clk_tm => clk_div_1s_0_clk_div,
      enable_out => semafor_0_enable_out,
      enable_out_b => semafor_0_enable_out_b,
      p => p_1,
      reset => reset_1,
      verd_c => semafor_0_verd_c,
      verd_v => semafor_0_verd_v,
      vermell_c => semafor_0_vermell_c,
      vermell_v => semafor_0_vermell_v
    );
trafic_light_0: component design_1_trafic_light_0_0
     port map (
      ambar_c => semafor_0_ambar_c,
      an(3 downto 0) => trafic_light_0_an(3 downto 0),
      cat(7 downto 0) => trafic_light_0_cat(7 downto 0),
      clk => Net,
      counter(7 downto 0) => semafor_0_conta(7 downto 0),
      div_clk => clk_div_0_clk_div,
      div_clk1 => clk_div_1s_0_clk_div,
      enable => semafor_0_enable_out,
      enable_b => semafor_0_enable_out_b,
      green_c => semafor_0_verd_c,
      green_v => semafor_0_verd_v,
      red_c => semafor_0_vermell_c,
      red_v => semafor_0_vermell_v,
      reset => reset_1
    );
end STRUCTURE;
