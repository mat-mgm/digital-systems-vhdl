-- 
library ieee;
use ieee.st_logic_1164.ALL;
use ieee.st_logic_unsigned.ALL;

entity PCompta is
    port (
        clk, pup, pdown, reset: in std_logic;
        count: out std_logic_vector(2 downto 0);
    );
end entity;

architecture datapath of Pcompta is
    signal accumulator : std_logic_vector(7 downto 0);
begin
    process (clk, reset)
    begin
        if (reset = '1') then
            accumulator <= (others => '0');
        elsif (rising_edge(clk)) then
            if (enable = '1') then
                accumulator <= accumulator + 1;
            end if;
        end if;
    end process;
    count <= accumulator;
end architecture
