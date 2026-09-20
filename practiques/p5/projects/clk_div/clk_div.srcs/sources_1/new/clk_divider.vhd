library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_divider is
    generic(eoc: integer:=1000000);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end clk_divider;
--Divisor de Clock de "eoc" vegades
architecture Behavioral of clk_divider is
    signal div_cnt: integer range 0 to eoc;
begin
    divisor_clk: process (clk, reset) begin
    if clk'event and clk = '1' then
        clk_div <= '0';
        if reset = '1' then
            div_cnt <= 0;
        elsif div_cnt = eoc then
            div_cnt <= 0;
            clk_div <= '1';
        else div_cnt <= div_cnt + 1;
        end if;
    end if;
    end process;
end Behavioral;
