# Conversions de Tipus i Formats en VHDL

Aquesta guia recull els patrons estàndard de conversió de tipus en VHDL segons la biblioteca recomanada per IEEE (`ieee.numeric_std`), així com l'algorisme estàndard sintetitzable per convertir enters binaris a format **BCD** (*Binary-Coded Decimal*).

---

## 1. El Sistema de Tipus Numèrics a `ieee.numeric_std`

En VHDL modern es recomana utilitzar sempre la biblioteca estàndard:

```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
```

> **Evita:** `ieee.std_logic_arith` o `ieee.std_logic_unsigned` (són paquets propietaris antics no estàndard).

### Principals tipus de dades per a busos numèrics

| Tipus | Paquet | Significat | Operacions permeses |
| :--- | :--- | :--- | :--- |
| `std_logic_vector` | `ieee.std_logic_1164` | Vector de bits sense interpretació matemàtica | Lògiques (`and`, `or`, concatenació `&`) |
| `unsigned` | `ieee.numeric_std` | Enter binari sense signe | Aritmètiques (`+`, `-`, `*`), comparació (`>`, `<=`) |
| `signed` | `ieee.numeric_std` | Enter en complement a 2 (amb signe) | Aritmètiques (`+`, `-`, `*`), comparació (`>`, `<=`) |
| `integer` | Estàndard VHDL | Escalar enter (habitualment 32 bits o acotat amb `range`) | Aritmètiques clàssiques |

---

## 2. Diagrama de Conversió entre Tipus

```
  std_logic_vector(N-1 downto 0)
        ▲                │
        │ cast           │ cast
        │                ▼
       unsigned(N-1 downto 0)
        ▲                │
        │ to_unsigned    │ to_integer
        │                ▼
             integer
```

### Exemples pràctics de conversió:

```vhdl
signal slv : std_logic_vector(7 downto 0);
signal u   : unsigned(7 downto 0);
signal s   : signed(7 downto 0);
signal int : integer range 0 to 255;

-- 1. std_logic_vector <-> unsigned (Re-interpretació de tipus / Cast directe)
u   <= unsigned(slv);
slv <= std_logic_vector(u);

-- 2. std_logic_vector <-> signed
s   <= signed(slv);
slv <= std_logic_vector(s);

-- 3. unsigned / signed -> integer
int <= to_integer(u);
int <= to_integer(s);

-- 4. integer -> unsigned / signed (Cal especificar l'amplada de bits)
u <= to_unsigned(int, 8);
s <= to_signed(int, 8);

-- 5. integer -> std_logic_vector (Combinat)
slv <= std_logic_vector(to_unsigned(int, 8));
```

---

## 3. Conversió de Binari a BCD (Shift-Add-3 / Double Dabble)

En format **BCD**, cada dígit decimal (0 a 9) es codifica utilitzant exactament 4 bits (`0000` a `1001`).

Per a valors superiors a 9, un número binari de 8 bits (fins a 255) requereix 3 dígits BCD (centenes, desenes i unitats = 12 bits BCD).

### Algorisme Shift-Add-3 (Double Dabble)

Per sintetitzar la conversió a maquinari de forma eficient:
1. S'inicialitza un registre desplaçador que conté els dígits BCD i el valor binari d'entrada.
2. Per a cada bit del valor binari:
   - Si qualsevol columna BCD (centenes, desenes o unitats) és $\ge 5$, se li suma **3**.
   - Es desplaça tot el registre **1 bit a l'esquerra**.
3. En acabar el nombre de desplaçaments igual a l'amplada del binari d'entrada, les columnes contenen directament els dígits BCD.

### Implementació sintetitzable en VHDL

Aquest és el patró utilitzat al disseny [`practiques/p3/src/bin2bcd.vhd`](file:///home/rs/computation/programming/vhdl/digital-systems-vhdl/practiques/p3/src/bin2bcd.vhd):

```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd is
    port (
        bin_in   : in  std_logic_vector(7 downto 0); -- 0 a 255
        bcd_cent : out std_logic_vector(3 downto 0); -- Centenes
        bcd_dec  : out std_logic_vector(3 downto 0); -- Desenes
        bcd_unit : out std_logic_vector(3 downto 0)  -- Unitats
    );
end entity bin2bcd;

architecture behavioral of bin2bcd is
begin
    process(bin_in)
        variable shift_reg : unsigned(19 downto 0); -- 12 bits BCD + 8 bits binari
    begin
        -- Neteja dels bits BCD i càrrega del binari
        shift_reg := (others => '0');
        shift_reg(7 downto 0) := unsigned(bin_in);

        -- Bucle de 8 iteracions (per a 8 bits d'entrada)
        for i in 0 to 7 loop
            -- Comprovació de la regla Add-3 per a cada dígit BCD
            if shift_reg(11 downto 8) >= 5 then
                shift_reg(11 downto 8) := shift_reg(11 downto 8) + 3;
            end if;

            if shift_reg(15 downto 12) >= 5 then
                shift_reg(15 downto 12) := shift_reg(15 downto 12) + 3;
            end if;

            if shift_reg(19 downto 16) >= 5 then
                shift_reg(19 downto 16) := shift_reg(19 downto 16) + 3;
            end if;

            -- Desplaçament cap a l'esquerra
            shift_reg := shift_reg sll 1;
        end loop;

        -- Assignació de sortides
        bcd_cent <= std_logic_vector(shift_reg(19 downto 16));
        bcd_dec  <= std_logic_vector(shift_reg(15 downto 12));
        bcd_unit <= std_logic_vector(shift_reg(11 downto 8));
    end process;
end architecture behavioral;
```
