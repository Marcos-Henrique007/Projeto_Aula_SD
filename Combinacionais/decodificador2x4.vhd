library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodificador2x4 is
    Port (
        a : in STD_LOGIC_VECTOR(1 downto 0);
        y : out STD_LOGIC_VECTOR(3 downto 0)
    );
end decodificador2x4 ;

architecture arc of decodificador2x4  is
begin

    with a select
        y <= "0001" when "00",
             "0010" when "01",
             "0100" when "10",
             "1000" when "11",
             "0000" when others;

end arc;