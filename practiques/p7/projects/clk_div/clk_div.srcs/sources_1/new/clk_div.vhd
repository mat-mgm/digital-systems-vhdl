library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div is
    generic(eoc: integer:=10000);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div_base : out STD_LOGIC);
end clk_div;
--Divisor de Clock de "eoc" vegades
architecture Behavioral of clk_div is
    signal div_cnt: integer range 0 to eoc;
begin
    divisor_clk: process (clk, reset) begin
    if clk'event and clk = '1' then
        clk_div_base <= '0';
        if reset = '1' then
            div_cnt <= 0;
        elsif div_cnt = eoc then
            div_cnt <= 0;
            clk_div_base <= '1';
        else div_cnt <= div_cnt + 1;
        end if;
    end if;
    end process;
end Behavioral;
