-- BLOC DESCODIFICADOR DE TECLA PS2 (PERIFERAL - KEYBOARD)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity kb_code is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        ps2d : in STD_LOGIC;    -- Línia de dades
        ps2c : in STD_LOGIC;    -- Línia de rellotge
        key_code : out STD_LOGIC_VECTOR(7 downto 0);
        key_val : out STD_LOGIC);
end kb_code;

architecture Behavioral of kb_code is
    constant brk : STD_LOGIC_VECTOR(7 downto 0) := "11110000"; -- break = "F0" 
    type statetype is (wait_brk, get_code);
    signal state_reg, state_next : statetype;
    signal scan_done_tick : STD_LOGIC;
    signal scan_out : STD_LOGIC_VECTOR(7 downto 0);
    signal got_code_tick : STD_LOGIC;
begin

-- MÀQUINA D'ESTATS
-- 1) Canvi d'estat
process(clk, reset) begin
    if reset = '1' then
        state_reg <= wait_brk;
    elsif clk'event and clk = '1' then
        state_reg <= state_next;
    end if;
end process;

-- 2) Codificador estat següent
process(state_reg, scan_done_tick, scan_out) begin
    got_code_tick <= '0';
    state_next <= state_reg;
    case state_reg is
        when wait_brk =>
            if scan_done_tick = '1' and scan_out = brk then
                state_next <= get_code;
            end if;
        when get_code =>
            if scan_done_tick = '1' then
                got_code_tick <= '1';
                state_next <= wait_brk;
            end if;
    end case;
end process;

-- 3) Codificador de sortides
key_code <= scan_out;
key_val <= got_code_tick;

end Behavioral;