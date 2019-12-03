LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY port_and IS
    PORT (
        in_port_A : IN STD_LOGIC;
        in_port_B : IN STD_LOGIC;
        out_port : OUT STD_LOGIC
    );
END port_and;

ARCHITECTURE behavior OF port_and IS
BEGIN
    out_port <= in_port_A AND in_port_B;
END behavior;