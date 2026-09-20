library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity calc_comp is
    Port (
        A : in STD_LOGIC_VECTOR (7 downto 0);
        B : in STD_LOGIC_VECTOR (7 downto 0);
        clk,reset : in STD_LOGIC;
        s : in STD_LOGIC;
        r : in STD_LOGIC;
        m : in STD_LOGIC;
        d : in STD_LOGIC;
        cat : out STD_LOGIC_VECTOR (7 downto 0);
        an : out STD_LOGIC_VECTOR (3 downto 0)
    );
end calc_comp;

architecture Behavioral of calc_comp is

component calc
    Port (
        A,B : in STD_LOGIC_VECTOR (7 downto 0);
        s,r,m,d : in STD_LOGIC;
        clk,reset : in STD_LOGIC;
        result : out STD_LOGIC_VECTOR (15 downto 0)
    );
end component;

component bin2bcd
    generic (n: positive:=16);
    Port (
        bin_in : in STD_LOGIC_VECTOR (n-1 downto 0);
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        bcdo: out STD_LOGIC_VECTOR (19 downto 0)
    );
end component;

component clk_divider
    generic(eoc: integer:=10000);
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_div : out STD_LOGIC
    );
end component;

component scroll
    generic(eoc2: integer:=50000000);
    Port (
        bcd : in STD_LOGIC_VECTOR (19 downto 0);
        clk, reset : in STD_LOGIC;
        d0 : out STD_LOGIC_VECTOR (3 downto 0);
        d1 : out STD_LOGIC_VECTOR (3 downto 0);
        d2 : out STD_LOGIC_VECTOR (3 downto 0);
        d3 : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

component seg7_coder
    Port (
        char0, char1, char2, char3 : in STD_LOGIC_VECTOR (3 downto 0);
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_div : in STD_LOGIC;
        cat : out STD_LOGIC_VECTOR (7 downto 0);
        an : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

signal bin_in: STD_LOGIC_VECTOR(15 downto 0);
signal bcdo: STD_LOGIC_VECTOR(19 downto 0);
signal clk_div: STD_LOGIC; 
signal d0,d1,d2,d3: STD_LOGIC_VECTOR(3 downto 0);

begin
u1: calc
    port map (
        A => A,
        B => B,
        s => s,
        r => r,
        m => m,
        d => d,
        clk => clk,
        reset => reset,
        result => bin_in
    );

u2: bin2bcd
    generic map (n => 16)
    port map (
        bin_in => bin_in,
        clk => clk,
        reset => reset,
        bcdo => bcdo
    );

u3: clk_divider
    generic map (eoc => 10000)
    port map (
        clk => clk,
        reset => reset,
        clk_div => clk_div
    );

u4: scroll
    generic map (eoc2 => 50)
    port map ( 
        bcd => bcdo,
        clk => clk,
        reset => reset,
        d0 => d0,
        d1 => d1,
        d2 => d2,
        d3 => d3
    );

u5: seg7_coder
    port map (
        char0 => d0,
        char1 => d1,
        char2 => d2,
        char3 => d3,
        clk => clk,
        reset => reset,
        clk_div => clk_div,
        cat => cat,
        an => an
    );
end Behavioral;