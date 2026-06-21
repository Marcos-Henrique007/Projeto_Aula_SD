LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY somador IS
    PORT (
        A, B: IN  STD_LOGIC_VECTOR(4 DOWNTO 0); 
        Cin: IN  STD_LOGIC;
        S: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);               
        Cout: OUT STD_LOGIC
    );
END somador;

ARCHITECTURE aplicacao OF somador IS
    SIGNAL C : STD_LOGIC_VECTOR(5 DOWNTO 0);
BEGIN

    C(0) <= Cin;

    -- Bit 0
    S(0) <= A(0) XOR B(0) XOR C(0);
    C(1) <= (A(0) AND B(0)) OR (A(0) AND C(0)) OR (B(0) AND C(0));

    -- Bit 1
    S(1) <= A(1) XOR B(1) XOR C(1);
    C(2) <= (A(1) AND B(1)) OR (A(1) AND C(1)) OR (B(1) AND C(1));

    -- Bit 2
    S(2) <= A(2) XOR B(2) XOR C(2);
    C(3) <= (A(2) AND B(2)) OR (A(2) AND C(2)) OR (B(2) AND C(2));

    -- Bit 3
    S(3) <= A(3) XOR B(3) XOR C(3);
    C(4) <= (A(3) AND B(3)) OR (A(3) AND C(3)) OR (B(3) AND C(3));

    -- Bit 4
    S(4) <= A(4) XOR B(4) XOR C(4);
    C(5) <= (A(4) AND B(4)) OR (A(4) AND C(4)) OR (B(4) AND C(4));

    Cout <= C(5);

END aplicacao;