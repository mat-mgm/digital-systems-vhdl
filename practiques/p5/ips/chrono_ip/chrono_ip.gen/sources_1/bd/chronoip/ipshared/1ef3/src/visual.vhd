library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity visual is
    Port ( btnr,reset,clk,mssc,st,lap : in STD_LOGIC;
           centiseg,deciseg,seg,decaseg,min,decamin : in STD_LOGIC_VECTOR (3 downto 0);
           disp0,disp1,disp2,disp3 : out STD_LOGIC_VECTOR (3 downto 0);
           crono_enable : out STD_LOGIC);
end visual;

architecture Behavioral of visual is
signal pressed : std_logic;
begin
visualitzador: process(clk,reset) -- Actualitzar estat i reset
begin
    if mssc = '1' xor pressed = '1' then
            disp0 <= centiseg;
            disp1 <= deciseg;
            disp2 <= seg;
            disp3 <= decaseg;
            pressed <= '1';
    else
            disp0 <= seg;
            disp1 <= decaseg;
            disp2 <= min;
            disp3 <= decamin;
            pressed <= '0';
    end if;
end process;
end Behavioral;