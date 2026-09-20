-- MÀQUINA SIMPLE

-- Program counter + incrementador
-- Entrades: clk, reset, incpc, pc7=mux7+1
-- Sortides: pc7
process(clk, reset) begin
    if reset = '1' then
        pc7 <= "0000000";
    elsif clk'event and clk='1' then
        if incpc = '1' then
            pc7 <= mux7 + "0000001";
        end if;
    end if;
end process;

-- Multiplexor 7
-- Entrades: pc7, d7, f7, mux (entrada de control)
-- Sortides: mux7
process(pc7, d7, f7, mux) begin
    case mux is
        when "00" => mux7 <= pc7;
        when "10" => mux7 <= f7;
        when others => mux7 <= d7;
    end case;
end process;

-- Flip flop
-- Entrades: clk, z, z_fz
-- Sortides: fz
process begin
    wait until clk'event and clk='1';
    if z_fz = '1' then
        fz <= z;
    end if;
end process;

-- Internal register (IR)
-- Entrades: clk, m16, m_ir
-- Sortides: pc7, d7, f7, co
process begin
    wait until clk'event and clk='1';
    if m_ir = '1' then
        co <= m16(1 downto 0);
        f7 <= m16(8 downto 2);
        d7 <= m16(15 downto 9);
    end if;
end process;

-- Registres A i B
-- Entrades: clk (A), clk (B), m16 (A), m16 (B), m_a, m_b
-- Sortides: a16, b16
process begin
    wait until clk'event and clk='1';
    if m_b = '1' then
        b16 <= m16;
    end if;
    if m_a = '1' then
        a16 <= m16;
    end if;
end process;

-- Aritmethic Logic Unit (ALU)
-- Entrades: a16, b16, alu
-- Sortides: alu16, z
process(alu, a16, b16) begin
    case alu is
        when "00" => alu16 <= a16 + b16;
        when "01" => alu16 <= a16 xor b16;
        when others => alu16 <= b16;
    end case;
end process;
z <= '1' when alu16 = "0000000000000000" else '0';

-- Memòria
-- Entrades: clk, mux7, alu16, nL_E
-- Sortides: m16
-- Architecture:
architecture amemory of memory is
    type mem is array(0 to 127) of STD_LOGIC_VECTOR(15 downto 0);
    signal mem16 : mem;
begin
mux7int <= conv_integer(unsigned(mux7));
m16 <= mem16(mux7int);
process begin
    wait until clk'event and clk='1';
    if nL_E = '1' then
        mem16(mux7int) <= alu16;
    end if;
end process;
end architecture;

-- Màquina d'estats de la màquina simple
architecture amaquina of maquina is
    type maq_estat is (E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11);
    signal actual, seguent : maq_estat;
begin
-- 1) Canvi d'estat
process(clk, reset) begin
    if reset = '1' then
        actual <= 'E0';
    elsif clk'event and clk = '1' then
        actual <= seguent;
    end if;
end process;
-- 2) Codificador estat seguent
process(actual, co, fz) begin
    case actual is
        when E0 =>
            segunt <= E1;
            mux <= "00";
            alu <= "XX";
            nL_E <= '0';
            incpc <= '1';
            m_ir <= '1';
            m_a <= '0';
            m_b <= '0';
            z_fz <= '0';
        when E1 =>
            mux <= "XX";
            alu <= "XX";
            nL_E <= '0';
            incpc <= '0';
            m_ir <= '0';
            m_a <= '0';
            m_b <= '0';
            z_fz <= '0';
            case co is
                when "00" => seguent <= E2;
                when "01" => seguent <= E3;
                when "10" => seguent <= E4;
                when "11" => seguent <= E5;
            end case;
        when E2 =>
            ...
end process;