library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity p31 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (12 downto 0);
           cat : out STD_LOGIC_VECTOR (7 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end p31;

architecture Behavioral of p31 is

component clk_divider
    generic (eoc: integer := 100000);
    port (  clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            clk_div : out STD_LOGIC);
end component;

component bin2bcd
    generic (n: positive :=16) ;
    port (  bin_in : in STD_LOGIC_VECTOR (n-1 downto 0);
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            bcd0, bcd1, bcd2, bcd3, bcd4 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component seg7_coder
    port (  char0, char1, char2, char3 : in STD_LOGIC_VECTOR (3 downto 0);
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            clk_div : in STD_LOGIC;
            cat : out STD_LOGIC_VECTOR (7 downto 0);
            an : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal clk_div: STD_LOGIC;
signal bcd0, bcd1, bcd2, bcd3: STD_LOGIC_VECTOR (3 downto 0);

begin
u1: clk_divider
    generic map (eoc => 100000)
    port map (  clk => clk,
                reset => reset,
                clk_div => clk_div);

u2: bin2bcd
    generic map (n => 13)
    port map (  bin_in => sw,
                clk => clk,
                reset => reset,
                bcd0 => bcd0,
                bcd1 => bcd1,
                bcd2 => bcd2,
                bcd3 => bcd3,
                bcd4 => open);

u3: seg7_coder
    port map (  char0 => bcd0,
                char1 => bcd1,
                char2 => bcd2,
                char3 => bcd3,
                clk => clk,
                reset => reset,
                clk_div => clk_div,
                cat => cat,
                an => an);

end Behavioral;
