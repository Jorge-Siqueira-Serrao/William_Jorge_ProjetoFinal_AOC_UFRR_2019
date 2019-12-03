library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity banco_registradores is port (
    clock : in std_logic;
    reg_write : in std_logic;
    endereco_reg_a : in std_logic_vector(1 downto 0);
    endereco_reg_b : in std_logic_vector(1 downto 0);
    write_data : in std_logic_vector (7 downto 0);
    reg_out_a : out std_logic_vector (7 downto 0);
    reg_out_b : out std_logic_vector (7 downto 0)
);
end banco_registradores;

architecture behavior of banco_registradores is

    type banco_registrador is array(0 to 3) of std_logic_vector (7 downto 0);
    signal registrador : banco_registrador;

begin
    process (clock)
    begin
        if rising_edge(clock) then
            if (reg_write = '1') then
					 -- código que escreve um valor no registrador a (!endereço reg a pega a posição do registrador!)
                registrador(to_integer(unsigned(endereco_reg_a))) <= write_data; 
            end if;
        end if;
        reg_out_a <= registrador(to_integer(unsigned(endereco_reg_a)));
        reg_out_b <= registrador(to_integer(unsigned(endereco_reg_b)));
    end process;
end behavior;
