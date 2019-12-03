library ieee;
use ieee.std_logic_1164.all;

entity divisao_instrucao is port (
    in_port : IN std_logic_vector(7 downto 0);
    out_op_code : OUT std_logic_vector(3 downto 0);
    out_rs : OUT std_logic_vector(1 downto 0);
    out_rt : OUT std_logic_vector(1 downto 0);
    out_jump : OUT std_logic_vector(3 downto 0)
);
end divisao_instrucao;

architecture behavior OF divisao_instrucao IS

begin
    out_op_code <= in_port(7 downto 4);
    out_rs <= in_port(3 downto 2);
    out_rt <= in_port(1 downto 0);
    out_jump <= in_port(3 downto 0);

end behavior;