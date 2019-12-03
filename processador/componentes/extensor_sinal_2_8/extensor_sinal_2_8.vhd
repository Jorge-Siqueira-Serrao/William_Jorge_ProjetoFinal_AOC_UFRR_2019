library ieee;
use ieee.std_logic_1164.all;

entity extensor_sinal_2_8 is
    port (
        in_port : in std_logic_vector (1 downto 0);
        out_port : out std_logic_vector (7 downto 0)
    );
end extensor_sinal_2_8;

architecture behavior of extensor_sinal_2_8 is

begin
    process (in_port)
    begin
        out_port <= ("000000") & in_port;
    end process;
end behavior;
