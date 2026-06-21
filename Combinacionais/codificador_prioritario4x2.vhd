library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity codificador_prioritario4x2 is
    Port (
        d : in STD_LOGIC_VECTOR(3 downto 0);
        y : out STD_LOGIC_VECTOR(1 downto 0)
    );
end codificador_prioritario4x2 ;

architecture arc of codificador_prioritario4x2 is
begin

    process(d)
    begin
        if d(3)='1' then
            y <= "11";
        elsif d(2)='1' then
            y <= "10";
        elsif d(1)='1' then
            y <= "01";
        elsif d(0)='1' then
            y <= "00";
        else
            y <= "00";
        end if;
    end process;

end arc;