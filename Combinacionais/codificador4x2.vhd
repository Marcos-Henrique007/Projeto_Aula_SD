library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity codificador4x2 is
    Port (
        d : in STD_LOGIC_VECTOR(3 downto 0);
        y : out STD_LOGIC_VECTOR(1 downto 0)
    );
end codificador4x2 ;

architecture arc of codificador4x2 is
begin

    process(d)
    begin
        case d is
            when "0001" => y <= "00";
            when "0010" => y <= "01";
            when "0100" => y <= "10";
            when "1000" => y <= "11";
            when others => y <= "00";
        end case;
    end process;

end arc;