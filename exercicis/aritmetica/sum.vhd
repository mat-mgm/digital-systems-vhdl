library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

enitity sumator is
    port (
        n1,n2: in std_logic_vector(0 to 7);
        cin: in std_logic;
        sum: out std_logic_vector(0 to 7);
        cout: out std_logic;
    );
end sumator;

architecture adder of sumator is
    signal csum: std_logic_vector(0 to 8);
begin
    csum <= '0' & n1 + '0' & n2 + "00000000" & cin;
    sum <= csum(0 to 7);
    cout <= csum(8);
end adder;