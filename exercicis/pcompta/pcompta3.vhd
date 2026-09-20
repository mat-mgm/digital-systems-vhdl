-- Comptador que compta quan p_up és 1 i descompta quan p_down és 1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity det_flanc is
    port (up,down, clk, reset: in std_logic;
    p_up,p_down: out std_logic_vector(2 downto 0));
end entity;
 
architecture behavioral of det_flanc is
    --signal cout: std_logic_vector(2 downto 0);
begin
process(up,down,reset,clk)
begin
    
end process;
end architecture;