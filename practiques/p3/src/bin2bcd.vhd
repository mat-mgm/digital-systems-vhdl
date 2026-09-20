library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bin2bcd is
    generic (n: positive:=16);
    Port (  bin_in : in STD_LOGIC_VECTOR (n-1 downto 0);
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            bcdo: out STD_LOGIC_VECTOR (19 downto 0));
end bin2bcd;

architecture Behavioral of bin2bcd is
   
    function to_bcd ( bin : std_logic_vector(n-1 downto 0) ) return std_logic_vector is
        variable i : integer:=0;
        variable bcd : std_logic_vector(19 downto 0) := (others => '0');
        variable bint : std_logic_vector(n-1 downto 0) := bin;  
    begin
        for i in 0 to n-1 loop  -- repeating n-1 times.
            bcd(15 downto 1) := bcd(14 downto 0);  --shifting the bits.
            bcd(0) := bint(n-1);
            bint(n-1 downto 1) := bint(n-2 downto 0);
            bint(0) :='0';
            if(i < n-1 and bcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
            bcd(3 downto 0) := bcd(3 downto 0) + "0011";
            end if;
            if(i < n-1 and bcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
            bcd(7 downto 4) := bcd(7 downto 4) + "0011";
            end if;
            if(i < n-1 and bcd(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
            bcd(11 downto 8) := bcd(11 downto 8) + "0011";
            end if;
            if(i < n-1 and bcd(15 downto 12) > "0100") then  --add 3 if BCD digit is greater than 4.
            bcd(19 downto 12) := bcd(15 downto 12) + "0011";
            end if;
        end loop;
        return bcd;
    end to_bcd;
    
begin
    -- Convertir de binari a BCD
    doubledabble: process(bin_in) begin
        bcdo <= to_bcd(bin_in);
    end process;

end Behavioral;