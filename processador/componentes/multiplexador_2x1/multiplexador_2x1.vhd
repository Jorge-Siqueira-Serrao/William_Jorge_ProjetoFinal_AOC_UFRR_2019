library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexador_2x1 is
    port (
        in_port : in std_logic;
        in_a : in std_logic_vector (7 downto 0);
        in_b : in std_logic_vector (7 downto 0);
        out_port : out std_logic_vector (7 downto 0)
    );
end multiplexador_2x1;

architecture behavior of multiplexador_2x1 is
begin
    process (in_port, in_a, in_b)
    begin
        case in_port is
            when '0' => out_port <= in_a;
            when '1' => out_port <= in_b;
        end case;
    end process;
end behavior;
