library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity trafic_light is
    generic (n: positive:=8);
    Port ( counter : in STD_LOGIC_VECTOR (n-1 downto 0);
           div_clk : in STD_LOGIC;
           div_clk1 : in STD_LOGIC;
           clk : in STD_LOGIC;
           enable : in STD_LOGIC; -- Activa el temporitzador dels vianants
           enable_b : in STD_LOGIC; -- Activa el parpadeig del senyal de vianants
           red_c : in STD_LOGIC;
           ambar_c : in STD_LOGIC;
           green_c : in STD_LOGIC;
           red_v : in STD_LOGIC;
           green_v : in STD_LOGIC;
           reset : in STD_LOGIC;
           cat : out STD_LOGIC_VECTOR (7 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end trafic_light;

architecture Behavioral of trafic_light is
    signal digit_act: integer range 0 to 3;
    signal sg, char0, char1, char2, char3: std_logic_vector(3 downto 0);
    signal bcdcount: std_logic_vector(7 downto 0);
    
    function to_bcd (bin : std_logic_vector(n-1 downto 0) ) return std_logic_vector is
        variable i : integer:=0;
        variable bcd : std_logic_vector(n-1 downto 0) := (others => '0');
        variable bint : std_logic_vector(n-1 downto 0) := bin;  
    begin
        for i in 0 to n-1 loop  -- repeating n-1 times.
            bcd(n-1 downto 1) := bcd(n-2 downto 0);  --shifting the bits.
            bcd(0) := bint(n-1);
            bint(n-1 downto 1) := bint(n-2 downto 0);
            bint(0) :='0';
            if(i < n-1 and bcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
            bcd(3 downto 0) := bcd(3 downto 0) + "0011";
            end if;
            if(i < n-1 and bcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
            bcd(7 downto 4) := bcd(7 downto 4) + "0011";
            end if;
        end loop;
        return bcd;
    end to_bcd;

begin
-- 2 Comptador que assigna la entrada que toca
digit_actual: process(clk, reset) begin
    if clk'event and clk = '1' then
        if reset = '1' then
            digit_act <= 0;
        elsif div_clk = '1' then
            if digit_act = 3 then
                digit_act <= 0;
            else digit_act <= digit_act + 1;
            end if;
        end if;
    end if;
end process;

-- Lògica d'il·luminació del semàfor
ilumination: process(clk, div_clk1, green_c, ambar_c, red_c, green_v, red_v, enable, enable_b) begin
-- Cotxes
    if green_c = '1' then
        char3 <= "1100";
    elsif ambar_c = '1' then
        char3 <= "1011";
    elsif red_c = '1' then
        char3 <= "1010";
    end if;
-- Vianants
    if enable_b = '1' then
        if div_clk1 = '1' then
            char2 <= "1100";
        else
            char2 <= "1101";
        end if;
    else
        if green_v = '1' then
            char2 <= "1100";
        elsif red_v ='1' then
            char2 <= "1010";
        end if;
    end if;
-- Temporitzador
    if enable = '1' then
        bcdcount <= to_bcd(counter);
        char0 <= bcdcount(3 downto 0);
        char1 <= bcdcount(7 downto 4);
    else
        char0 <= "1101";
        char1 <= "1101";
    end if;
end process;

-- Valors de cadascún dels displays que s'alternen segons el div_clk (digit_act)
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

-- Selector de càtode segons sg
with sg select cat <=
-- Codificació dels nombres
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
-- Codificació del semàfor
        "00111001" when "1010", -- Semàfor vermell
        "00000011" when "1011", -- Semàfor àmbar
        "11000101" when "1100", -- Semàfor verd
        "11111111" when "1101", -- Semàfor apagat
-- Codificació de signes auxiliars
        "11111101" when "1111", -- -
        "11111111" when others;

-- Selector d'ànode
with digit_act select an <=
        "1110" when 0,
        "1101" when 1,
        "1011" when 2,
        "0111" when 3;

end Behavioral;
