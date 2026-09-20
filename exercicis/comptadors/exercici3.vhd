-- Divisor de clock (passar d'un clock de major freqüència a menor freqüència)
library ieee;
use ieee.st_logic_1164.ALL;
use ieee.st_logic_unsigned.ALL;

entity divisor_clk is
    port (
        clk, enable, reset: in std_logic;
        cout: out std_logic_vector(7 downto 0);
    );
end entity;

architecture datapath of counter is

    signal count : integer range 0 to 10000000;

begin
    cout <= '0';
    process (clk, reset) begin
        if (reset = '1') then
            count <= '0';
        elsif (rising_edge(clk)) then
            if (enable = '1') then
                if (count = 10000000) then
                    count <= '0';
                    cout <= '1';
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;
    cout <= accumulator;
end architecture
