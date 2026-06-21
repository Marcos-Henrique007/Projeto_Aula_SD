library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity meio_somador is
    Port (
        a,b : in STD_LOGIC;
        s   : out STD_LOGIC;
        c   : out STD_LOGIC
    );
end meio_somador;

architecture Behavioral of meio_somador is
begin

    s <= a xor b;
    c <= a and b;

end Behavioral;