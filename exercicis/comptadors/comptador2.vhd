-- Comptador amb reset, up i down
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter is
    port(
        clk,reset,updw:in std_logic;
        q:out std_logic_vector(0 to 7);
    );
end counter;

architecture a1 of counter is
    signal acc:integer range 0 to 256;
begin
    process(clk, reset)
    begin
        if reset='1' then
            acc <= (others => '0');
        else
            wait until rising_edge(clk);
            if updw='1' then
                acc <= acc + 1 mod 256;
            else
                acc <= acc - 1;
            endif;
        end if;
    end process;
    q <= conv_std_logic_vector(acc,8);
end a1;