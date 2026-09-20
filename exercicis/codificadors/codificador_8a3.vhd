library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity coder8to3 is
    port (
        a: in std_logic_vector(7 downto 0);
        b: out std_logic_vector(2 downto 0)
    );
end entity;
 
architecture behavioral of coder8to3 is
begin
-- Podria fer-se amb o sense proces en aquest exemple és indiferent
    if a(7) = '1' then b <= '111';
    elsif a(6) = '1' then b <= '110';
    elsif a(5) = '1' then b <= '101';
    elsif a(4) = '1' then b <= '100';
    elsif a(3) = '1' then b <= '011';
    elsif a(2) = '1' then b <= '010';
    elsif a(1) = '1' then b <= '001';
    elsif a(0) = '1' then b <= '000';
    else b <= '000'; -- Opcional
    endif;

end architecture;