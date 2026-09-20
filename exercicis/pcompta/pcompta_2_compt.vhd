-- Comptador que compta quan p_up és 1 i descompta quan p_down és 1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pcompta is
    port (p_up,p_down, clk, reset: in std_logic;
    compta: out std_logic_vector(2 downto 0));
end entity;
 
architecture behavioral of pcompta is
    signal cout: std_logic_vector(2 downto 0);
begin
process(reset,clk,p_up,p_down)
begin
    if reset="1" then
        coutc=(others=>"0") -- coutc="000"
    elsif rising_edge(clk) then
        if (p_up="1" and cout /= 7) then
            cout <= compta + 1;
        endif;
        if (p_down="0" and cout /=0) then
            cout <= compta - 1;
        end if;
    end if;
end process;
compta <= cout;
end architecture;
