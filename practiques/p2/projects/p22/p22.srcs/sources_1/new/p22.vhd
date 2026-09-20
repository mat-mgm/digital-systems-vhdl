library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity p22 is
    Port ( sw : in STD_LOGIC_VECTOR (12 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           cat : out STD_LOGIC_VECTOR (7 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end p22;

architecture Behavioral of p22 is
    signal div_clk: std_logic;
    signal div_cnt: integer range 0 to 100000;
    signal digit_act: integer range 0 to 3;
    signal sg: std_logic_vector (3 downto 0);
    signal bcdo: std_logic_vector (15 downto 0) := (others => '0');
    
    function to_bcd ( bin : std_logic_vector(12 downto 0) ) return std_logic_vector is
        variable i : integer:=0;
        variable bcd : std_logic_vector(15 downto 0) := (others => '0');
        variable bint : std_logic_vector(12 downto 0) := bin;  
    begin
        for i in 0 to 12 loop  -- repeating 12 times.
            bcd(15 downto 1) := bcd(14 downto 0);  --shifting the bits.
            bcd(0) := bint(12);
            bint(12 downto 1) := bint(11 downto 0);
            bint(0) :='0';
            if(i < 12 and bcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
            bcd(3 downto 0) := bcd(3 downto 0) + "0011";
            end if;
            if(i < 12 and bcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
            bcd(7 downto 4) := bcd(7 downto 4) + "0011";
            end if;
            if(i < 12 and bcd(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
            bcd(11 downto 8) := bcd(11 downto 8) + "0011";
            end if;
            if(i < 12 and bcd(15 downto 12) > "0100") then  --add 3 if BCD digit is greater than 4.
            bcd(15 downto 12) := bcd(15 downto 12) + "0011";
            end if;
        end loop;
        return bcd;
    end to_bcd;
    
begin

   -- 1 Divisor del clk (de 100Mhz a 1kHz)
    divisor_clk: process (clk, reset) begin
        if clk'event and clk = '1' then
            div_clk <= '0';
            if reset = '1' then
                div_cnt <= 0;
            elsif div_cnt = 100000 then
                div_cnt <= 0;
                div_clk <= '1';
            else div_cnt <= div_cnt + 1;
            end if;
        end if;
    end process;

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

    -- Convertir de binari a BCD
    doubledabble: process(sw,bcdo) begin
        bcdo <= to_bcd(sw);
    end process;

    -- 3 Valors dels catodes
    selector: process(digit_act, sg, bcdo) begin
        -- Assignar conjunt de switches a sg
        case digit_act is
            when 0 =>
                sg <= bcdo(3 downto 0);
            when 1 =>
                sg <= bcdo(7 downto 4);
            when 2 =>
                sg <= bcdo(11 downto 8);
            when 3 =>
                sg <= bcdo(15 downto 12);
        end case;
    end process;
    
    -- Assignar grup de switches al c?tode
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
            "11111111" when others;

    -- Assignar grup de switches al ?node
    with digit_act select an <=
            "1110" when 0,
            "1101" when 1,
            "1011" when 2,
            "0111" when 3;
end Behavioral;
