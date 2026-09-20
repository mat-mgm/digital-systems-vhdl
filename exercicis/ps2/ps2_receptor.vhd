-- BLOC RECEPTOR DE COMMUNICACIONS PS2 (HOST)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ps2_rx is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        ps2d : in STD_LOGIC;    -- Línia de dades
        ps2c : in STD_LOGIC;    -- Línia de rellotje
        rx_en : in STD_LOGIC;   -- Enable
        rx_done_tick : out STD_LOGIC; -- Confirmació  de dades vàlides i a la sortida
        dout : out STD_LOGIC_VECTOR(7 downto 0)); -- Dades de sortida
end ps2_rx;

architecture Behavioral of ps2_rx is
    type statetype is (idle, dps, load);
    signal state_reg, state_next : statetype;
    signal filter_reg, filter_next : STD_LOGIC_VECTOR(7 downto 0);
    signal f_ps2c_reg, f_ps2c_next : STD_LOGIC;
    signal b_reg, b_next : STD_LOGIC_VECTOR(10 downto 0);
    signal n_reg, n_next : UNSIGNED(3 downto 0);
    signal fall_edge : STD_LOGIC;
begin

-- Filtre de rellotge
process(clk, reset) begin
    if reset = '1' then
        filter_reg <= (others => '0');
        f_ps2c_reg <= '0';
    elsif clk'event and clk='1' then
        filter_reg <= filter_next;
        f_ps2c_reg <= f_ps2c_next;
    end if;
end process;

filter_next <= ps2c & filter_reg(7 downto 1);
f_ps2c_next <= '1' when filter_reg = "11111111" else
               '0' when filter_reg = "00000000" else
               f_ps2c_reg;
fall_edge <= f_ps2c_reg and (not f_ps2c_next);

-- MÀQUINA D'ESTATS
-- 1) Canvi d'estat
process(clk, reset) begin
    if reset = '1' then
        state_reg <= idle;
        n_reg <= (others => '0');
        b_reg <= (others => '0');
    elsif clk'event and clk='1' then
        state_reg <= state_next;
        n_reg <= n_next;
        b_reg <= b_next;
    end if;
end process;

-- ESTATS
-- IDLE -> Receptor espera rebre un bit start i passa a DPS.
-- DPS -> Llegeix els 11 bits entrants del paquet inserint-los a un 
-- registre de desplaçament fins que reb el bit stop i passa a LOAD.
-- LOAD -> Activa el senyal de validesa (rx_done_tick) segons els 8 bits 
-- de dades rebuts (1 byte) es troben a la sortida (dout).

-- 2) Codificador d'estat següent
process(state_reg, n_reg, b_reg, fall_edge, rx_en, ps2d) begin
    rx_done_tick <= '0';
    state_next <= state_reg;
    n_next <= n_reg;
    b_next <= b_reg;
    case state_reg is
        when idle =>
            if fall_edge = '0' and rx_en = '1' then
                b_next <= ps2d & b_reg(10 downto 1);
                n_next <= "1001";
                state_next <= dps;
            end if;
        when dps =>
            if fall_edge = '1' then
                b_next <= ps2d & b_reg(10 downto 1);
                if n_reg = 0 then
                    state_next <= load;
                else
                    n_next <= n_reg - 1;
                end if;
            end if;
        when load =>
            state_next <= idle;
            rx_done_tick <= '1';
    end case;
end process;

-- 3) Codificador de sortides
dout <= b_reg(8 downto 1);

end Behavioral;