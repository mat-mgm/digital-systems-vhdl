--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Wed Nov 30 23:45:10 2022
--Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
--Command     : generate_target chronoip.bd
--Design      : chronoip
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity chronoip is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of chronoip : entity is "chronoip,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=chronoip,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of chronoip : entity is "chronoip.hwdef";
end chronoip;

architecture STRUCTURE of chronoip is
  component chronoip_clk_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component chronoip_clk_divider_0_0;
  component chronoip_div_temp_1_0_0 is
  port (
    Clck_E : in STD_LOGIC;
    reset : in STD_LOGIC;
    compt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC
  );
  end component chronoip_div_temp_1_0_0;
  component chronoip_div_temps2_0_0 is
  port (
    Clck_E : in STD_LOGIC;
    reset : in STD_LOGIC;
    compt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC
  );
  end component chronoip_div_temps2_0_0;
  component chronoip_div_temp_3_0_0 is
  port (
    Clck_E : in STD_LOGIC;
    reset : in STD_LOGIC;
    compt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC
  );
  end component chronoip_div_temp_3_0_0;
  component chronoip_div_temp_4_0_0 is
  port (
    Clck_E : in STD_LOGIC;
    reset : in STD_LOGIC;
    compt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC
  );
  end component chronoip_div_temp_4_0_0;
  component chronoip_div_temp_5_0_0 is
  port (
    Clck_E : in STD_LOGIC;
    reset : in STD_LOGIC;
    compt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC
  );
  end component chronoip_div_temp_5_0_0;
  component chronoip_div_temp_6_0_0 is
  port (
    Clck_E : in STD_LOGIC;
    reset : in STD_LOGIC;
    compt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    thick : out STD_LOGIC
  );
  end component chronoip_div_temp_6_0_0;
  component chronoip_seg7_coder_0_0 is
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
  end component chronoip_seg7_coder_0_0;
  component chronoip_startstop_0_0 is
  port (
    clk : in STD_LOGIC;
    stst : in STD_LOGIC;
    crono_on : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component chronoip_startstop_0_0;
  component chronoip_lap_0_0 is
  port (
    clk : in STD_LOGIC;
    lapbt : in STD_LOGIC;
    lap_on : out STD_LOGIC
  );
  end component chronoip_lap_0_0;
  component chronoip_visual_0_0 is
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
  end component chronoip_visual_0_0;
  signal btnr_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clk_divider_0_clk_div : STD_LOGIC;
  signal div_temp_1_0_compt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal div_temp_1_0_thick : STD_LOGIC;
  signal div_temp_3_0_compt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal div_temp_3_0_thick : STD_LOGIC;
  signal div_temp_4_0_compt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal div_temp_4_0_thick : STD_LOGIC;
  signal div_temp_5_0_compt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal div_temp_5_0_thick : STD_LOGIC;
  signal div_temp_6_0_compt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal div_temps2_0_compt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal div_temps2_0_thick : STD_LOGIC;
  signal lap_0_lap_on : STD_LOGIC;
  signal lapbtn_1 : STD_LOGIC;
  signal mssc_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal seg7_coder_0_an : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal seg7_coder_0_cat : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal startstop_0_crono_on : STD_LOGIC;
  signal stst_1 : STD_LOGIC;
  signal visual_0_disp0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal visual_0_disp1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal visual_0_disp2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal visual_0_disp3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_div_temp_6_0_thick_UNCONNECTED : STD_LOGIC;
  signal NLW_visual_0_crono_enable_UNCONNECTED : STD_LOGIC;
begin
  an(3 downto 0) <= seg7_coder_0_an(3 downto 0);
  btnr_1 <= btnr;
  cat(7 downto 0) <= seg7_coder_0_cat(7 downto 0);
  clk_1 <= clk;
  lapbtn_1 <= lapbtn;
  mssc_1 <= mssc;
  reset_1 <= reset;
  stst_1 <= stst;
clk_divider_0: component chronoip_clk_divider_0_0
     port map (
      clk => clk_1,
      clk_div => clk_divider_0_clk_div,
      reset => reset_1
    );
div_temp_1_0: component chronoip_div_temp_1_0_0
     port map (
      Clck_E => clk_divider_0_clk_div,
      compt(3 downto 0) => div_temp_1_0_compt(3 downto 0),
      reset => reset_1,
      thick => div_temp_1_0_thick
    );
div_temp_3_0: component chronoip_div_temp_3_0_0
     port map (
      Clck_E => div_temps2_0_thick,
      compt(3 downto 0) => div_temp_3_0_compt(3 downto 0),
      reset => reset_1,
      thick => div_temp_3_0_thick
    );
div_temp_4_0: component chronoip_div_temp_4_0_0
     port map (
      Clck_E => div_temp_3_0_thick,
      compt(3 downto 0) => div_temp_4_0_compt(3 downto 0),
      reset => reset_1,
      thick => div_temp_4_0_thick
    );
div_temp_5_0: component chronoip_div_temp_5_0_0
     port map (
      Clck_E => div_temp_4_0_thick,
      compt(3 downto 0) => div_temp_5_0_compt(3 downto 0),
      reset => reset_1,
      thick => div_temp_5_0_thick
    );
div_temp_6_0: component chronoip_div_temp_6_0_0
     port map (
      Clck_E => div_temp_5_0_thick,
      compt(3 downto 0) => div_temp_6_0_compt(3 downto 0),
      reset => reset_1,
      thick => NLW_div_temp_6_0_thick_UNCONNECTED
    );
div_temps2_0: component chronoip_div_temps2_0_0
     port map (
      Clck_E => div_temp_1_0_thick,
      compt(3 downto 0) => div_temps2_0_compt(3 downto 0),
      reset => reset_1,
      thick => div_temps2_0_thick
    );
lap_0: component chronoip_lap_0_0
     port map (
      clk => clk_1,
      lap_on => lap_0_lap_on,
      lapbt => lapbtn_1
    );
seg7_coder_0: component chronoip_seg7_coder_0_0
     port map (
      an(3 downto 0) => seg7_coder_0_an(3 downto 0),
      cat(7 downto 0) => seg7_coder_0_cat(7 downto 0),
      char0(3 downto 0) => visual_0_disp0(3 downto 0),
      char1(3 downto 0) => visual_0_disp1(3 downto 0),
      char2(3 downto 0) => visual_0_disp2(3 downto 0),
      char3(3 downto 0) => visual_0_disp3(3 downto 0),
      clk => clk_1,
      clk_div => clk_divider_0_clk_div,
      reset => reset_1
    );
startstop_0: component chronoip_startstop_0_0
     port map (
      clk => clk_1,
      crono_on => startstop_0_crono_on,
      reset => reset_1,
      stst => stst_1
    );
visual_0: component chronoip_visual_0_0
     port map (
      btnr => btnr_1,
      centiseg(3 downto 0) => div_temp_1_0_compt(3 downto 0),
      clk => clk_1,
      crono_enable => NLW_visual_0_crono_enable_UNCONNECTED,
      decamin(3 downto 0) => div_temp_6_0_compt(3 downto 0),
      decaseg(3 downto 0) => div_temp_4_0_compt(3 downto 0),
      deciseg(3 downto 0) => div_temps2_0_compt(3 downto 0),
      disp0(3 downto 0) => visual_0_disp0(3 downto 0),
      disp1(3 downto 0) => visual_0_disp1(3 downto 0),
      disp2(3 downto 0) => visual_0_disp2(3 downto 0),
      disp3(3 downto 0) => visual_0_disp3(3 downto 0),
      lap => lap_0_lap_on,
      min(3 downto 0) => div_temp_5_0_compt(3 downto 0),
      mssc => mssc_1,
      reset => reset_1,
      seg(3 downto 0) => div_temp_3_0_compt(3 downto 0),
      st => startstop_0_crono_on
    );
end STRUCTURE;
