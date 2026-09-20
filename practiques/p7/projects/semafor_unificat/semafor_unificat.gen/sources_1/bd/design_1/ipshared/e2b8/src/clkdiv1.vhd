library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clk_div_1s is
    generic (eoc: integer:= 100000000);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div_sec : out STD_LOGIC);
end clk_div_1s;

architecture Behavioral of clk_div_1s is
signal div_cnt: integer range 0 to 100000000;
begin
-- Divisor del clk (de 100Mhz a frequència escollida)
divisor_clk: process (clk, reset) begin
if clk'event and clk = '1' then
    clk_div_sec <= '0';
    if reset = '1' then
        div_cnt <= 0;
    elsif div_cnt = eoc then
        div_cnt <= 0;
        clk_div_sec <= '1';
    else div_cnt <= div_cnt + 1;
    end if;
end if;
end process;    
end architecture;