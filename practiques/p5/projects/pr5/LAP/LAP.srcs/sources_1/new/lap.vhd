----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2022 21:16:49
-- Design Name: 
-- Module Name: lap - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lap is
    Port ( clk : in STD_LOGIC;
           lapbt : in STD_LOGIC;
           lap_on : out STD_LOGIC);
end lap;

architecture Behavioral of lap is

begin
process(clk, lapbt) begin
if rising_edge(clk) then
    if lapbt='1' then
        lap_on <= '1';
    else
        lap_on <= '0';
    end if;
end if;
end process;


end Behavioral;
