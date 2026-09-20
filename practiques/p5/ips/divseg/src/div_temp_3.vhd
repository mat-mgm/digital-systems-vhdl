----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2022 19:37:35
-- Design Name: 
-- Module Name: div_temp_3 - Behavioral
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
use IEEE.STD_LOGIC_arith.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity div_temp_3 is
    generic( n : integer:=10);
    Port ( Clck_E : in STD_LOGIC;
           reset : in STD_LOGIC;
           compt : out STD_LOGIC_VECTOR (3 downto 0);
           thick : out STD_LOGIC);
end div_temp_3;

architecture Behavioral of div_temp_3 is
signal compta: integer range 0 to n;
begin

comptadortemps: process(Clck_E,compta) begin 
if rising_edge(Clck_E) then
    thick <= '0';
    if reset = '1' then
        compta <= 0;
    else
        if compta = n-1 then
            compta <= 0;
            thick <= '1';
        else
            compta <= compta +1;
        end if;
    end if;
end if;

end process;
compt <= conv_std_logic_vector(compta,4);
      
end Behavioral;
