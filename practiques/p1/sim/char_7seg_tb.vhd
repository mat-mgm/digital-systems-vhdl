library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity char_7seg_tb is
--  Port ( );
end char_7seg_tb;

architecture Behavioral of char_7seg_tb is

signal bin_in: std_logic_vector(3 downto 0);
signal cat: std_logic_vector(7 downto 0);
signal an: std_logic_vector(3 downto 0);

component char_7seg
    Port ( bin_in : in STD_LOGIC_VECTOR (3 downto 0);
        cat : out STD_LOGIC_VECTOR (7 downto 0);
        an : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

uut: char_7seg port map ( bin_in => bin_in, cat => cat, an => an);

test_entrades: process begin
    for i in 0 to 15 loop
        bin_in <= std_logic_vector(to_unsigned(i,4));
        wait for 10 ns;
    end loop;
end process;

end Behavioral;

