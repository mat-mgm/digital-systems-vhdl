library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity calc is
    Port ( A,B : in STD_LOGIC_VECTOR (7 downto 0);
           s,r,m,d : in STD_LOGIC;
           clk,reset : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (15 downto 0));
end calc;

architecture Behavioral of calc is
    type STATE_TYPE is (E0, E1, E2, E3, E4, E5);
    signal state, next_state : STATE_TYPE;
    signal next_result: STD_LOGIC_VECTOR(15 downto 0);
    signal aint, bint: INTEGER range 0 to 255;
begin

state_machine: process(clk, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            state <= E0;
            result <= (others => '0');
        else
            state <= next_state;
            result <= next_result;
        end if;
    end if;
end process;


next_state_decorder: process(state,s,r,m,d)
begin
    case (state) is
        when E0 =>
            if s = '1' then
                next_state <= E1;
            elsif r = '1' then
                next_state <= E2;
            elsif m = '1' then
                next_state <= E3;
            elsif d = '1' then
                next_state <= E4;
            else
                next_state <= E0;
            end if;
        when E1 =>
            if s = '1' then
                next_state <= E1;
            elsif r = '1' then
                next_state <= E2;
            elsif m = '1' then
                next_state <= E3;
            elsif d = '1' then
                next_state <= E4;
            else
                next_state <= E1;
            end if;
        when E2 =>
            if s = '1' then
                next_state <= E1;
            elsif r = '1' then
                next_state <= E2;
            elsif m = '1' then
                next_state <= E3;
            elsif d = '1' then
                next_state <= E4;
            else
                next_state <= E2;
            end if;
        when E3 =>
            if s = '1' then
                next_state <= E1;
            elsif r = '1' then
                next_state <= E2;
            elsif m = '1' then
                next_state <= E3;
            elsif d = '1' then
                next_state <= E4;
            else
                next_state <= E3;
            end if;
        when E4 =>
            if s = '1' then
                next_state <= E1;
            elsif r = '1' then
                next_state <= E2;
            elsif m = '1' then
                next_state <= E3;
            elsif d = '1' then
                next_state <= E5;
            else
                next_state <= E4;
            end if;
        when E5 =>
            if s = '1' then
                next_state <= E1;
            elsif r = '1' then
                next_state <= E2;
            elsif m = '1' then
                next_state <= E3;
            elsif d = '1' then
                next_state <= E4;
            else
                next_state <= E5;
            end if;
        end case;
end process;

output_decoder: process(state,A,B)
begin
    aint <= conv_integer(A);
    bint <= conv_integer(B);
    if state = E0 then
        next_result  <= (others => '0');
    elsif state = E1 then
        next_result <= conv_std_logic_vector(aint + bint, 16);
    elsif state = E2 then
        if aint > bint then
            next_result <= conv_std_logic_vector(aint-bint, 16);
        else
            next_result <= conv_std_logic_vector(bint-aint, 16);
        end if;
    elsif state = E3 then
            next_result <= conv_std_logic_vector(bint*aint, 16);
    elsif state = E4 then
        if aint > bint then
            next_result <= conv_std_logic_vector(aint/bint, 16);
        else
            next_result <= conv_std_logic_vector(bint/aint, 16);
        end if;
    elsif state = E5 then
        if aint > bint then
            next_result <= conv_std_logic_vector(aint mod bint, 16);
        else
            next_result <= conv_std_logic_vector(bint mod aint, 16);
        end if;
    end if;
end process;


end Behavioral;
