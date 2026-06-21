library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY subtrator5bits IS
    PORT (
        A, B  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
        S     : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        Cout  : OUT STD_LOGIC
    );
END subtrator5bits;

ARCHITECTURE comportamento OF subtrator5bits IS
    SIGNAL B_comp : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL C      : STD_LOGIC_VECTOR(5 DOWNTO 0);
BEGIN

    B_comp <= NOT B;

    C(0) <= '1';

    -- Bit 0
    S(0) <= A(0) XOR B_comp(0) XOR C(0);
    C(1) <= (A(0) AND B_comp(0)) OR (A(0) AND C(0)) OR (B_comp(0) AND C(0));

    -- Bit 1
    S(1) <= A(1) XOR B_comp(1) XOR C(1);
    C(2) <= (A(1) AND B_comp(1)) OR (A(1) AND C(1)) OR (B_comp(1) AND C(1));

    -- Bit 2
    S(2) <= A(2) XOR B_comp(2) XOR C(2);
    C(3) <= (A(2) AND B_comp(2)) OR (A(2) AND C(2)) OR (B_comp(2) AND C(2));

    -- Bit 3
    S(3) <= A(3) XOR B_comp(3) XOR C(3);
    C(4) <= (A(3) AND B_comp(3)) OR (A(3) AND C(3)) OR (B_comp(3) AND C(3));

    -- Bit 4
    S(4) <= A(4) XOR B_comp(4) XOR C(4);
    C(5) <= (A(4) AND B_comp(4)) OR (A(4) AND C(4)) OR (B_comp(4) AND C(4));

    Cout <= C(5);

END comportamento;