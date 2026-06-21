library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_sincrono is
    Port (
        clk : in STD_LOGIC;
        q   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end contador_sincrono;

architecture arc of contador_sincrono is

    signal count : unsigned(3 downto 0) := "0000";

begin

    process(clk)
    begin
        if rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;

    q <= std_logic_vector(count);

end arc;