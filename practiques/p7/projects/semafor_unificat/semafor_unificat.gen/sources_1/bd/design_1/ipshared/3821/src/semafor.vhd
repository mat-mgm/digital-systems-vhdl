library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity semafor is
    Port ( clk : in STD_LOGIC;
           p : in STD_LOGIC;
           reset : in STD_LOGIC;
           div_clk : in STD_LOGIC;
           enable_out : out STD_LOGIC;
           enable_out_b : out STD_LOGIC;
           conta : out STD_LOGIC_VECTOR(7 downto 0);
           vermell_c : out STD_LOGIC;
           ambar_c : out STD_LOGIC;
           verd_c : out STD_LOGIC;
           verd_v : out STD_LOGIC;
           vermell_v : out STD_LOGIC);
end semafor;

architecture Behavioral of semafor is

type state_sem is (no_walk, walk_req, all_stop_1, walk, end_walk, all_stop_2);
signal temps : integer range 0 to 25;
signal next_state, act_state: state_sem;

begin
-- COMPTADOR:
process(div_clk) begin
if rising_edge(div_clk)then
    if act_state=no_walk then
        temps <= 25;
    else
        if rising_edge(div_clk) then
            if temps = 0 then
                temps <= 25;
            else
                temps <= temps - 1;
            end if;
        end if;
    end if;
end if;
end process;

--MÀQUINA D'ESTATS:
process( reset, clk) begin
if rising_edge(clk) then
    if reset ='1' then
        act_state <= no_walk;
    else
        act_state <= next_state;
   end if;
end if;
end process;

process (act_state,temps,next_state,p,reset) begin
case act_state is
    when no_walk =>
        if p ='1' then
            next_state <= walk_req;
        elsif reset = '1' then
            next_state <= no_walk;
        end if;
    when walk_req =>
        if temps= 21 then
            next_state <= all_stop_1;
        elsif reset = '1' then
            next_state <= no_walk;
        end if;
     when all_stop_1 =>
        if temps = 18 then
            next_state <= walk;
        elsif reset = '1' then
            next_state <= no_walk;
        end if;
     when walk =>
        if temps = 8 then
            next_state <= end_walk;
        elsif reset = '1' then
            next_state <= no_walk;
        end if;
      when end_walk =>
        if temps= 3 then
            next_state <= all_stop_2;
        elsif reset = '1' then
            next_state <= no_walk;
        end if;
      when all_stop_2 =>
        if temps = 0 then
            next_state <= no_walk;
        elsif reset = '1' then
            next_state <= no_walk;
        end if;
      end case;
end process;

process (act_state) begin
    if act_state = no_walk then
        verd_c <= '1';
        vermell_v <= '1';
        ambar_c <= '0';
        vermell_c <= '0';
        enable_out <= '0';
        enable_out_b <='0';
    elsif act_state = walk_req then
        verd_v <= '0';
        verd_c <= '0';
        vermell_v <= '1';
        ambar_c <= '1';
        vermell_c <= '0';
        enable_out <= '0';
        enable_out_b <='0';
    elsif act_state = all_stop_1 then
        verd_v <= '0';
        verd_c <= '0';
        vermell_v <= '1';
        ambar_c <= '0';
        vermell_c <= '1';
        enable_out <= '0';
        enable_out_b <='0';
    elsif act_state = walk then
        verd_v <= '1';
        verd_c <= '0';
        vermell_v <= '0';
        ambar_c <= '0';
        vermell_c <= '0';
        enable_out <= '1';
        enable_out_b <='0';
   elsif act_state = end_walk then
        verd_v <= '1';
        verd_c <= '0';
        vermell_v <= '0';
        ambar_c <= '0';
        vermell_c <= '0';
        enable_out <= '1';
        enable_out_b <='1';
   elsif act_state = all_stop_2 then
        verd_v <= '0';
        verd_c <= '0';
        vermell_v <= '1';
        ambar_c <= '0';
        vermell_c <= '1';
        enable_out <= '0';
        enable_out_b <='0';
   end if;
  end process;
  
conta <= std_logic_vector(to_unsigned(temps-3,8));
end Behavioral;