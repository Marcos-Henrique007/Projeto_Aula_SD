library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1 is
    Port (
        a,b,c,d : in STD_LOGIC;
        sel     : in STD_LOGIC_VECTOR(1 downto 0);
        y       : out STD_LOGIC
    );
end mux4x1;

architecture arc of mux4x1 is
begin

    with sel select
        y <= a when "00",
             b when "01",
             c when "10",
             d when "11",
             '0' when others;

end arc;