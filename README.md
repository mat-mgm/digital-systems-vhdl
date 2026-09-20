# Sistemes Digitals - Projectes i Disseny VHDL

Aquest repositori conté els dissenys en **VHDL**, bancs de proves (*testbenches*) i fitxers de restriccions per a sistemes digitals implementats sobre la targeta FPGA **Digilent Basys 3** (Xilinx Artix-7).

---

## Plataforma i Eines

- **Targeta FPGA:** Digilent Basys 3
- **Dispositiu FPGA:** Xilinx Artix-7 (`XC7A35T-1CPG236C`)
- **Entorn de Desenvolupament:** Xilinx Vivado Design Suite
- **Llenguatge:** VHDL (IEEE standard logic 1164 / numeric_std)

---

## Estructura del Repositori

El repositori està organitzat en tres directoris principals:

### 1. `practiques/`

Conté les pràctiques de laboratori. Cada carpeta conté una estructura estàndard amb codi font (`src/`), restriccions de pins (`constr/`), projectes de Vivado (`projects/`), biblioteques IP (`ips/`), simulacions (`sim/`), documentació i informes en PDF (`docs/`) i captures (`images/`):

| Pràctica | Nom | Descripció | Mòduls Principals |
| :--- | :--- | :--- | :--- |
| **`p1`** | **Decodificador 7 Segments** | Decodificador binari a display de 7 segments per a la Basys 3. | `char_7seg.vhd`, `char_7seg_tb.vhd` |
| **`p2`** | **Processos Síncrons** | Circuits síncrons amb rellotge, registres i transferència de dades. | `p2_sincron.vhd`, `p2_sincron2.vhd`, `p22.vhd` |
| **`p3`** | **Blocs Modulars i BCD** | Divisor de rellotge, conversor binari a BCD (Double Dabble) i codificador 7 segments. | `clk_divider.vhd`, `bin2bcd.vhd`, `seg7_coder.vhd`, `p31.vhd` |
| **`p4`** | **Calculadora Aritmètica** | Unitat aritmètica i lògica (ALU) amb visualització multiplexada i mode scroll. | `calc.vhd`, `calc_comp.vhd`, `scroll.vhd` |
| **`p5`** | **Cronòmetre Digital** | Cronòmetre digital amb control Start/Stop, registre de volta (LAP) i divisors en cascada. | `startstop.vhd`, `lap.vhd`, `visual.vhd`, `div_temp_1` a `div_temp_6` |
| **`p7`** | **Controlador de Semàfor** | Màquines d'estats finits (FSM) per gestionar el cicle semafòric de vehicles i vianants. | `semafor.vhd`, `trafic_light.vhd`, `bin2bcd_4bit.vhd`, `clkdiv1.vhd` |

### 2. `exercicis/`

Exercicis de teoria i mòduls monogràfics organitzats per àrea temàtica:

- **`aritmetica/`**: Operacions aritmètiques bàsiques (`sum.vhd`).
- **`basics/`**: Blocs combinacionals fonamentals i multiplexors (`exercici1.vhd`).
- **`codificadors/`**: Descodificadors 2 a 8, 3 a 8 i codificador amb prioritat 8 a 3.
- **`comptadors/`**: Comptadors binaris mòdul 4, amunt/avall (up/down), amb enable i divisors de clock.
- **`fsm/`**: Màquines d'estats finits simples (`maquina_simple.vhd`).
- **`pcompta/`**: Comptador d'impulsos amb detecció de flanc i sortida multiplexada a 7 segments.
- **`ps2/`**: Receptor sèrie i descodificador de scan codes per a teclat PS/2.
- **`uart/`**: Receptor sèrie asíncron (UART Rx).

### 3. `docs/`

Documentació tècnica, apunts i referències de maquinari:

- **`docs/hardware/`**:
  - Manual de referència de la placa: [basys3_reference_manual.pdf](docs/hardware/basys3_reference_manual.pdf).
  - Fitxa tècnica de la família FPGA: [xilinx_7series_datasheet.pdf](docs/hardware/xilinx_7series_datasheet.pdf).
- **`docs/notes/`**:
  - [Conversions de Tipus i Formats en VHDL (Binary to BCD / Double Dabble)](docs/notes/vhdl_conversions.md).
  - [Disseny de Semàfor amb Màquines d'Estats Finits (FSM)](docs/notes/vhdl_traffic_light.md).
  - [Restriccions Mestres de la Basys 3 (XDC)](docs/notes/basys3_master_xdc.md).
- **`docs/vivado/`**:
  - Guies de síntesi, simulació lògica i implementació a Vivado.

---

## Com Utilitzar els Projectes a Vivado

1. Obre **Xilinx Vivado**.
2. Crea un nou projecte seleccionant la placa **Basys 3** o el dispositiu `xc7a35tcpg236-1`.
3. Afegeix els fitxers `.vhd` de la carpeta `src/` corresponent com a *Design Sources*.
4. Si hi ha banc de proves, afegeix el fitxer de la carpeta `sim/` com a *Simulation Source*.
5. Afegeix el fitxer de restriccions `.xdc` de la carpeta `constr/` com a *Constraints*.
6. Executa la **Simulació**, **Síntesi**, **Implementació** i genera el *Bitstream* per programar la placa.

---

## Autoria i Crèdits

- **Mateu Magem**
- **Jordi Garcia** (Company de pràctiques i co-autor dels projectes de laboratori)

---

## Llicència

Aquest projecte es distribueix sota la llicència [MIT](LICENSE).
