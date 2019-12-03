library ieee;
use ieee.std_logic_1164.all;

entity temp_zero is
    port (
        in_port : in std_logic;
        out_port : out std_logic
    );
end temp_zero;

architecture behavior of temp_zero is
begin
    out_port <= in_port;
end behavior;
