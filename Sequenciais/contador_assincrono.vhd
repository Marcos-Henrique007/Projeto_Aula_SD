library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY contador_assincrono IS
    PORT(
        clk : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        q   : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
END contador_assincrono;

ARCHITECTURE arc OF contador_assincrono IS
    SIGNAL estado : STD_LOGIC_VECTOR(3 downto 0) := "0000";
BEGIN

    -- Flip-Flop 0
    PROCESS(clk, clr)
    BEGIN
        IF clr = '1' THEN
            estado(0) <= '0';
        ELSIF rising_edge(clk) THEN
            estado(0) <= NOT estado(0);
        END IF;
    END PROCESS;

    -- Flip-Flop 1
    PROCESS(estado(0), clr)
    BEGIN
        IF clr = '1' THEN
            estado(1) <= '0';
        ELSIF falling_edge(estado(0)) THEN
            estado(1) <= NOT estado(1);
        END IF;
    END PROCESS;

    -- Flip-Flop 2
    PROCESS(estado(1), clr)
    BEGIN
        IF clr = '1' THEN
            estado(2) <= '0';
        ELSIF falling_edge(estado(1)) THEN
            estado(2) <= NOT estado(2);
        END IF;
    END PROCESS;

    -- Flip-Flop 3
    PROCESS(estado(2), clr)
    BEGIN
        IF clr = '1' THEN
            estado(3) <= '0';
        ELSIF falling_edge(estado(2)) THEN
            estado(3) <= NOT estado(3);
        END IF;
    END PROCESS;

    q <= estado;

END arc;