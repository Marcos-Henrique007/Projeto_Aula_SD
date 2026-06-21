library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity somador4bits is
    Port (
        a,b : in STD_LOGIC_VECTOR(3 downto 0);
        s   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end somador4bits;

architecture arc of somador4bits is
begin

    s <= std_logic_vector(unsigned(a)+unsigned(b));

end arc;