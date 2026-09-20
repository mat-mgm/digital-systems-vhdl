-- Detector de flanc
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity det_flanc is
    port (BT0,BT2, clk, BT3: in std_logic;
    p_up,p_down: out std_logic_vector(2 downto 0));
end entity;
 
architecture behavioral of det_flanc is
    --signal cout: std_logic_vector(2 downto 0);
begin
process(BT,down,reset,clk)
begin
    if BT3 <= '1' then
        p_ip <= '0';
        p_down<= '0';
    elsif rising_edge(clk) then
        if BT0 <= '1' &  BT2 <= '0' then
            p_up <= '1';
        end if;
    end if;
end process;
end architecture;