library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador_deslocamento is
    Port (
        clk : in STD_LOGIC;
        si  : in STD_LOGIC;
        q   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end registrador_deslocamento;

architecture arc of registrador_deslocamento is

    signal reg : STD_LOGIC_VECTOR(3 downto 0);

begin

    process(clk)
    begin
        if rising_edge(clk) then
            reg <= si & reg(3 downto 1);
        end if;
    end process;

    q <= reg;

end arc;