library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop_d is
    Port (
        clk : in STD_LOGIC;
        d   : in STD_LOGIC;
        q   : out STD_LOGIC
    );
end flipflop_d;

architecture arc of flipflop_d is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q <= d;
        end if;
    end process;
end arc;