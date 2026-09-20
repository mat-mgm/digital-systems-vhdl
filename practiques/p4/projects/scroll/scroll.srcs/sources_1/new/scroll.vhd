library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity scroll is
    generic(eoc2: integer:=50000000);
    Port ( bcd : in STD_LOGIC_VECTOR (19 downto 0);
           clk, reset : in STD_LOGIC;
           d0 : out STD_LOGIC_VECTOR (3 downto 0);
           d1 : out STD_LOGIC_VECTOR (3 downto 0);
           d2 : out STD_LOGIC_VECTOR (3 downto 0);
           d3 : out STD_LOGIC_VECTOR (3 downto 0));
end scroll;

architecture Behavioral of scroll is
    signal div_cnt : integer range 0 to eoc2;
    signal clk_div : std_logic;
    signal counter : integer range 0 to 8;
begin

    divisor_clk: process (clk, reset) begin
    if rising_edge(clk) then
        clk_div <= '0';
        if reset = '1' then
            div_cnt <= 0;
        elsif div_cnt = eoc2 then
            div_cnt <= 0;
            clk_div <= '1';
        else div_cnt <= div_cnt + 1;
        end if;
    end if;
    end process;
    
    -- Comptador que assigna la entrada que toca
    digit_counter: process(clk_div, reset) begin
        if clk_div'event and clk_div = '1' then
            if reset = '1' then
                counter <= 0;
            elsif clk_div = '1' then
                if counter = 8 then
                    counter <= 0;
                else counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;
    
    scroll: process(bcd,counter)
    begin
        if counter = 0 then
            d0 <= "1111";
            d1 <= "1111";
            d2 <= "1111";
            d3 <= "1111";
        elsif counter = 1 then
            d0 <= bcd(19 downto 16);
        elsif counter = 2 then
            d0 <= bcd(15 downto 12);
            d1 <= bcd(19 downto 16);
        elsif counter = 3 then
            d0 <= bcd(11 downto 8);
            d1 <= bcd(15 downto 12);
            d2 <= bcd(19 downto 16);
        elsif counter = 4 then
            d0 <= bcd(7 downto 4);
            d1 <= bcd(11 downto 8);
            d2 <= bcd(15 downto 12);
            d3 <= bcd(19 downto 16);
        elsif counter = 5 then
            d0 <= bcd(3 downto 0);
            d1 <= bcd(7 downto 4);
            d2 <= bcd(11 downto 8);
            d3 <= bcd(15 downto 12);
        elsif counter = 6 then
            d0 <= "1111";
            d1 <= bcd(3 downto 0);
            d2 <= bcd(7 downto 4);
            d3 <= bcd(11 downto 8);
        elsif counter = 7 then
            d0 <= "1111";
            d1 <= "1111";
            d2 <= bcd(3 downto 0);
            d3 <= bcd(7 downto 4);
        else
            d0 <= "1111";
            d1 <= "1111";
            d2 <= "1111";
            d3 <= bcd(3 downto 0);
        end if;
    end process;
end Behavioral;
