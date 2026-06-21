library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divisor_frequencia is
    Port (
        clk_in  : in  STD_LOGIC;
        clk_out : out STD_LOGIC
    );
end divisor_frequencia;

architecture arc of divisor_frequencia is

    signal contador : unsigned(24 downto 0) := (others => '0');
    signal clk_div  : STD_LOGIC := '0';

begin

    process(clk_in)
    begin
        if rising_edge(clk_in) then

            if contador = 24999999 then
                contador <= (others => '0');
                clk_div <= not clk_div;
            else
                contador <= contador + 1;
            end if;

        end if;
    end process;

    clk_out <= clk_div;

end arc;