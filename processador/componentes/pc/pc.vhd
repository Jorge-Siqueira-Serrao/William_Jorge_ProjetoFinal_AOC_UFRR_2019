-- 
-- Author: William Thiago
--
-- Data: Novembro de 2019
--

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity pc is
    port ( 														
        clock_pc : in std_logic;
        in_pc : in std_logic_vector (7 downto 0);
        pc_out : out std_logic_vector (7 downto 0)
    );
end pc;


architecture behavior of pc is
begin
    process (clock_pc)
    begin
        if rising_edge(clock_pc) then				-- caso tenha energia
            pc_out <= in_pc;
--		  else                           -- só para testes
--				pc_out <= "00000000"; 
        end if;
    end process;
end behavior;