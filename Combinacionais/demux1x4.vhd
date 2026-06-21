library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1x4 is
    Port (
        x   : in STD_LOGIC;
        sel : in STD_LOGIC_VECTOR(1 downto 0);
        y   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end demux1x4;

architecture arc of demux1x4 is
begin

    process(x,sel)
    begin
        y <= "0000";

        case sel is
            when "00" => y(0) <= x;
            when "01" => y(1) <= x;
            when "10" => y(2) <= x;
            when "11" => y(3) <= x;
            when others => null;
        end case;
    end process;

end arc;