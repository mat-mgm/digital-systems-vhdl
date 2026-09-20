library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter is
    port(
        clk:in std_logic;
        q0,q1:out std_logic;
    );
end counter;

architecture a1 of counter is
    signal acc:integer range 0 to 3;
begin
    process(clk)
    begin
        wait until clk'event and clk='1'; -- equivalent a rising_edge(clk);
        acc <= acc + 1 mode 4;
    end process;
    (q1,q0) <= conv_std_logic_vector(acc,2);
end a1;