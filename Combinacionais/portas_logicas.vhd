library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity portas_logicas is
    Port (
        a, b : in STD_LOGIC;
        and_o : out STD_LOGIC;
        or_o  : out STD_LOGIC;
        not_o : out STD_LOGIC;
        xor_o : out STD_LOGIC;
        nand_o: out STD_LOGIC;
        nor_o : out STD_LOGIC
    );
end portas_logicas;

architecture arc of portas_logicas is
begin

    and_o  <= a and b;
    or_o   <= a or b;
    not_o  <= not a;
    xor_o  <= a xor b;
    nand_o <= a nand b;
    nor_o  <= a nor b;

end arc;