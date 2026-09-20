# Controlador de Semàfor en VHDL (Màquina d'Estats Finits)

Aquesta nota descriu la implementació d'un controlador de semàfor en VHDL mitjançant una **Màquina d'Estats Finits (FSM)** síncrona i sintetitzable per a FPGA.

---

## 1. Patró Estàndard d'una FSM Sintetitzable (2 Processos)

En disseny digital amb VHDL, l'arquitectura recomanada per a màquines d'estats es divideix en **dos processos**:
1. **Procés seqüencial (Registre d'estat):** Actualitza l'estat actual al flanc de pujada del rellotge o inicialitza mitjançant un senyal de reinici asíncron (`reset`).
2. **Procés combinacional (Lògica d'estat següent i sortides):** Avalua l'estat actual i les entrades per determinar el següent estat i activar les llums corresponents.

```
                  ┌────────────────────────────────────────┐
                  │          Lògica Combinacional          │
   Entrades ─────►│  (Estat Següent i Sortides de Llums)  ├──────► Llums
                  │                                        │
                  └──────────────▲───────────────┬─────────┘
                                 │               │ next_state
                                 │               ▼
                         ┌───────┴────────────────────────┐
                 clk ───►│       Registre d'Estat         │
               reset ───►│      (Procés Seqüencial)       │
                         └────────────────────────────────┘
```

---

## 2. Temporització en FPGA vs Simulació

> **Important:** En VHDL sintetitzable per a FPGA **no es pot utilitzar la sentència `wait for X sec;`**, ja que aquesta sentència només és vàlida en simuladors (testbenches).

Per aconseguir retards de segons sobre una FPGA real com la **Digilent Basys 3** (que té un oscil·lador de 100 MHz):
- S'utilitza un **comptador divisor de rellotge** que genera un pols periòdic d'habilitació (per exemple, cada 1 segon o cada 5 segons).

---

## 3. Implementació Sintetitzable Completa

```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity traffic_light is
    port (
        clk          : in  std_logic; -- Rellotge de 100 MHz de la Basys 3
        reset        : in  std_logic; -- Botó de reset (actiu a nivell alt)
        light_red    : out std_logic;
        light_yellow : out std_logic;
        light_green  : out std_logic
    );
end entity traffic_light;

architecture behavioral of traffic_light is
    -- Definició dels estats de la FSM
    type state_type is (STATE_GREEN, STATE_YELLOW, STATE_RED);
    signal current_state, next_state : state_type;

    -- Comptador divisor de rellotge per a temporització
    -- Rellotge de 100 MHz -> 1 segon = 100_000_000 cicles
    constant CLK_FREQ_HZ : integer := 100_000_000;
    constant TIME_GREEN  : integer := 5; -- 5 segons en verd
    constant TIME_YELLOW : integer := 2; -- 2 segons en ambre
    constant TIME_RED    : integer := 5; -- 5 segons en vermell

    signal timer_counter : integer range 0 to CLK_FREQ_HZ * 5 := 0;
    signal timer_enable  : std_logic := '0';
begin

    -- -------------------------------------------------------------
    -- 1. Procés Seqüencial: Actualització de l'estat actual i rellotge
    -- -------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= STATE_RED;
            timer_counter <= 0;
            timer_enable  <= '0';
        elsif rising_edge(clk) then
            -- Gestió del comptador de temps
            if timer_enable = '1' then
                timer_counter <= 0;
                current_state <= next_state;
            else
                timer_counter <= timer_counter + 1;
            end if;
        end if;
    end process;

    -- -------------------------------------------------------------
    -- 2. Procés Combinacional: Lògica d'estat següent i temporització
    -- -------------------------------------------------------------
    process(current_state, timer_counter)
    begin
        -- Valors per defecte de les sortides
        light_red    <= '0';
        light_yellow <= '0';
        light_green  <= '0';
        timer_enable <= '0';
        next_state   <= current_state;

        case current_state is
            when STATE_GREEN =>
                light_green <= '1';
                if timer_counter >= (CLK_FREQ_HZ * TIME_GREEN) - 1 then
                    timer_enable <= '1';
                    next_state   <= STATE_YELLOW;
                end if;

            when STATE_YELLOW =>
                light_yellow <= '1';
                if timer_counter >= (CLK_FREQ_HZ * TIME_YELLOW) - 1 then
                    timer_enable <= '1';
                    next_state   <= STATE_RED;
                end if;

            when STATE_RED =>
                light_red <= '1';
                if timer_counter >= (CLK_FREQ_HZ * TIME_RED) - 1 then
                    timer_enable <= '1';
                    next_state   <= STATE_GREEN;
                end if;

            when others =>
                next_state <= STATE_RED;
        end case;
    end process;

end architecture behavioral;
```

---

## 4. Model Simulat (Només per a Testbench)

Si només es vol simular el comportament ràpidament sense generar circuits de síntesi, es pot utilitzar una descripció basada en retards temporals directes:

```vhdl
-- Model de simulació simple (No sintetitzable en FPGA)
process
begin
    -- Estat Verd
    light_red    <= '0';
    light_yellow <= '0';
    light_green  <= '1';
    wait for 5 sec;

    -- Estat Ambre
    light_green  <= '0';
    light_yellow <= '1';
    wait for 2 sec;

    -- Estat Vermell
    light_yellow <= '0';
    light_red    <= '1';
    wait for 5 sec;
end process;
```
