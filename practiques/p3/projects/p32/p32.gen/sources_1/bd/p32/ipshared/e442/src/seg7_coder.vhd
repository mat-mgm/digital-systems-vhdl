library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg7_coder is
    Port ( char0, char1, char2, char3 : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div : in STD_LOGIC;
           cat : out STD_LOGIC_VECTOR (7 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end seg7_coder;

architecture Behavioral of seg7_coder is
    signal digit_act: integer range 0 to 3;
    signal sg: std_logic_vector (3 downto 0);

begin
-- 2 Comptador que assigna la entrada que toca
digit_actual: process(clk, reset) begin
    if clk'event and clk = '1' then
        if reset = '1' then
            digit_act <= 0;
        elsif clk_div = '1' then
            if digit_act = 3 then
                digit_act <= 0;
            else digit_act <= digit_act + 1;
            end if;
        end if;
    end if;
end process;

-- 3 Valors dels catodes
selector: process(digit_act, sg, char0, char1, char2, char3) begin
    -- Assignar conjunt de switches a sg
    case digit_act is
        when 0 =>
            sg <= char0;
        when 1 =>
            sg <= char1;
        when 2 =>
            sg <= char2;
        when 3 =>
            sg <= char3;
    end case;
end process;

with sg select cat <=
        "00000011" when "0000", --0
        "10011111" when "0001", --1
        "00100101" when "0010", --2
        "00001101" when "0011", --3
        "10011001" when "0100", --4
        "01001001" when "0101", --5
        "01000001" when "0110", --6
        "00011111" when "0111", --7
        "00000001" when "1000", --8
        "00011001" when "1001", --9
        "00000101" when "1010", --a
        "11000001" when "1011", --b
        "11100101" when "1100", --c
        "10000101" when "1101", --d
        "01100001" when "1110", --E
        "01110001" when "1111", --F
        "11111111" when others;

with digit_act select an <=
        "1110" when 0,
        "1101" when 1,
        "1011" when 2,
        "0111" when 3;

end Behavioral;