-- Encapsulat
library ieee;
use ieee.st_logic_1164.All;
use ieee.st_logic_unsigned.All;

-- Entitat
entity black_box is
    port (
        a,b,c: in std_logic;                -- Variables d'entrada
        s: std_logic_vector(1 downto 0);    -- Variables internes
        z: out                              -- Variables de sortida
    );
end entity;

-- Arquitectura
-- El contingut d'arquitectura s'executa seqüencialment mentre que el contigut de process pot executar-se en paral·lel amb un altre block process.
architecture datapath of black:box is
begin
    mux:process(a,b,c,s)
    begin
        case s is
            when '00' =>
                z <= a;
            when '11' =>
                z <= c
            when others =>
                z <= b
        end case;
    end process mux;
end architecture
