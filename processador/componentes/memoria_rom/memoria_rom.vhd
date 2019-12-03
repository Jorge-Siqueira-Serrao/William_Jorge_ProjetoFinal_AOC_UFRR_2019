LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY memoria_rom IS
    PORT (
        clock : IN std_logic;
        in_port : IN std_logic_vector(7 DOWNTO 0);
        out_port : OUT std_logic_vector(7 DOWNTO 0)
    );
END memoria_rom;

ARCHITECTURE behavior OF memoria_rom IS
    TYPE memoriaRom IS ARRAY (0 TO 255) OF std_logic_vector(7 DOWNTO 0);
    CONSTANT rom : memoriaRom := (
    -- Teste addi
    0 => "00010011", -- addi S0 2 -- S0 == 2
    1 => "00010001", 
    2 => "00010001", 
    3 => "00010000",
    4 => "00110010", 
    5 => "01110000", 
    6 => "01110100", 
    7 => "11110000", 
    OTHERS => "00000000");
BEGIN
    PROCESS (clock)
    BEGIN
        out_port <= rom(conv_integer(unsigned(in_port)));
    END PROCESS;
END behavior;