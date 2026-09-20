library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder2to8 is
    port (
        a: in std_logic_vector(7 downto 0);
        b: out std_logic_vector(1 downto 0)
    );
end entity;
 
architecture behavioral of decoder2to8 is
begin
    b <= "00000001" when a = "000" else
    "00000010" when a = "001" else
    "00000100" when a = "010" else
    "00001000" when a = "011";

end architecture;