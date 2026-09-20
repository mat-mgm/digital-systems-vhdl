library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity char_7seg is
    Port ( bin_in : in STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (7 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end char_7seg;

architecture Behavioral of char_7seg is

begin
with bin_in select
    cat <= "00000011" when "0000", --0
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
an <= "1110";

end Behavioral;
