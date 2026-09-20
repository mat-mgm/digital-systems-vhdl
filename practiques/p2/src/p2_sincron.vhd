library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity p2_sincron is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           cat : out STD_LOGIC_VECTOR (7 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end p2_sincron;

architecture Behavioral of p2_sincron is

signal div_clk: std_logic;
signal div_cnt: integer range 0 to 100000;
signal digit_act: integer range 0 to 3;
signal sg: std_logic_vector (3 downto 0);

begin

-- Divisor del clk (de 100Mhz a 1kHz)
divisor_clk: process (clk, reset) begin
if clk'event and clk = '1' then
    div_clk <= '0';
    if reset = '1' then
        div_cnt <= 0;
    elsif div_cnt = 100000 then
        div_cnt <= 0;
        div_clk <= '1';
    else div_cnt <= div_cnt + 1;
    end if;
end if;
end process;

-- Comptador que assigna la entrada que toca
digit_actual: process(clk, reset) begin
if clk'event and clk = '1' then
    if reset = '1' then
        digit_act <= 0;
    elsif div_clk = '1' then
        if digit_act = 3 then
            digit_act <= 0;
        else digit_act <= digit_act + 1;
        end if;
    end if;
end if;
end process;

-- Valors dels catodes
selector: process(digit_act, sg, sw) begin
-- Assignar conjunt de switches a sg
case digit_act is
    when 0 =>
        sg <= sw(3 downto 0);
    when 1 =>
        sg <= sw(7 downto 4);
    when 2 =>
        sg <= sw(11 downto 8);
    when 3 =>
        sg <= sw(15 downto 12);
end case;
end process;

-- Assignar ànode
with digit_act select an <=
        "1110" when 0,
        "1101" when 1,
        "1011" when 2,
        "0111" when 3;

-- Assignar grup de switches al càtode
with sg select cat <=
        "00000011" when "0000", --0
        "10011111" when "0001", --1
        "00100101" when "0010", --2
        "00001101" when "0011", --3
        "10011001" when "0100", --4
        "01001001" when "0101", --5
        "01000001" when "0110", --6
        "00011111" when "0111", --7
        "00000001" when "1000", --8
        "00011001" when "1001", --9
        "00000101" when "1010", --a
        "11000001" when "1011", --b
        "11100101" when "1100", --c
        "10000101" when "1101", --d
        "01100001" when "1110", --E
        "01110001" when "1111", --F
        "11111111" when others;
with digit_act select an <=
        "1110" when 0,
        "1101" when 1,
        "1011" when 2,
        "0111" when 3;
end Behavioral;
