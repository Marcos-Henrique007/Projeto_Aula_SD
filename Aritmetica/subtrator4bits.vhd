library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity subtrator4bits is
    Port (
        a,b : in STD_LOGIC_VECTOR(3 downto 0);
        d   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end subtrator4bits;

architecture arc of subtrator4bits is
begin

    d <= std_logic_vector(unsigned(a)-unsigned(b));

end arc;