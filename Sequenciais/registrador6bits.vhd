library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador6bits is
    Port (
        clk  : in STD_LOGIC;
        load : in STD_LOGIC;
        d    : in STD_LOGIC_VECTOR(5 downto 0);
        q    : out STD_LOGIC_VECTOR(5 downto 0)
    );
end registrador6bits;

architecture Estrutural of registrador6bits is

    component flipflop_d
        Port (
            clk : in STD_LOGIC;
            d   : in STD_LOGIC;
            q   : out STD_LOGIC
        );
    end component;

    component mux2x1
        Port (
            a   : in STD_LOGIC;
            b   : in STD_LOGIC;
            sel : in STD_LOGIC;
            y   : out STD_LOGIC
        );
    end component;

    signal q_int   : STD_LOGIC_VECTOR(5 downto 0);
    signal mux_out : STD_LOGIC_VECTOR(5 downto 0);

begin

    -- 6 MUXs
    MUX0: mux2x1 port map(a => q_int(0), b => d(0), sel => load, y => mux_out(0));
    MUX1: mux2x1 port map(a => q_int(1), b => d(1), sel => load, y => mux_out(1));
    MUX2: mux2x1 port map(a => q_int(2), b => d(2), sel => load, y => mux_out(2));
    MUX3: mux2x1 port map(a => q_int(3), b => d(3), sel => load, y => mux_out(3));
    MUX4: mux2x1 port map(a => q_int(4), b => d(4), sel => load, y => mux_out(4));
    MUX5: mux2x1 port map(a => q_int(5), b => d(5), sel => load, y => mux_out(5));

    -- 6 Flip-Flops D
    FF0: flipflop_d port map(clk => clk, d => mux_out(0), q => q_int(0));
    FF1: flipflop_d port map(clk => clk, d => mux_out(1), q => q_int(1));
    FF2: flipflop_d port map(clk => clk, d => mux_out(2), q => q_int(2));
    FF3: flipflop_d port map(clk => clk, d => mux_out(3), q => q_int(3));
    FF4: flipflop_d port map(clk => clk, d => mux_out(4), q => q_int(4));
    FF5: flipflop_d port map(clk => clk, d => mux_out(5), q => q_int(5));

    q <= q_int;

end Estrutural;