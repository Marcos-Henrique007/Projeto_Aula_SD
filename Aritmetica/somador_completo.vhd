library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador_completo is
    Port (
        a,b,cin : in STD_LOGIC;
        s,cout  : out STD_LOGIC
    );
end somador_completo;

architecture arc of somador_completo is
begin

    s    <= a xor b xor cin;
    cout <= (a and b) or
            (a and cin) or
            (b and cin);

end arc;