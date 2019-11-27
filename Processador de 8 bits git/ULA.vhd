library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-----------------------------------------------
---------- ULA 8-bit VHDL ---------------------
-----------------------------------------------
entity ULA is
  generic ( 
     constant N: natural := 1  -- número de bits deslocados ou girados
    );
  
    Port (
    A, B     : in  STD_LOGIC_VECTOR(7 downto 0);  -- 2 inputs 8-bit
    ULA_Sel  : in  STD_LOGIC_VECTOR(3 downto 0);  -- 1 entradas 4-bit para selecionar a função
    ULA_Out   : out  STD_LOGIC_VECTOR(7 downto 0); -- 1 saída 8-bit 
    Carryout : out std_logic        -- Carryout flag
    );
end ULA; 
architecture Behavioral of ULA is

signal ULA_Result : std_logic_vector (7 downto 0);
signal tmp: std_logic_vector (8 downto 0);

begin
   process(A,B,ULA_Sel)
 begin
  case(ULA_Sel) is
  when "0000" => -- adição
   ULA_Result <= A + B ; 
  when "0001" => -- subtração
   ULA_Result <= A - B ;
  when "0010" => -- multiplicação
   ULA_Result <= std_logic_vector(to_unsigned((to_integer(unsigned(A)) * to_integer(unsigned(B))),8)) ;
  when "0011" => -- divisão
   ULA_Result <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)),8)) ;
  when "0100" => -- Deslocamento lógico para a esquerda
   ULA_Result <= std_logic_vector(unsigned(A) sll N);
  when "0101" => -- Deslocamento lógico para a direita
   ULA_Result <= std_logic_vector(unsigned(A) srl N);
  when "0110" => -- Vire à esquerda
   ULA_Result <= std_logic_vector(unsigned(A) rol N);
  when "0111" => -- Vire à direita
   ULA_Result <= std_logic_vector(unsigned(A) ror N);
  when "1000" => -- lógica and 
   ULA_Result <= A and B;
  when "1001" => -- Logical or
   ULA_Result <= A or B;
  when "1010" => -- lógica xor 
   ULA_Result <= A xor B;
  when "1011" => -- lógica nor
   ULA_Result <= A nor B;
  when "1100" => -- lógica nand 
   ULA_Result <= A nand B;
  when "1101" => -- lógica xnor
   ULA_Result <= A xnor B;
  when "1110" => -- Maior comparação
   if(A>B) then
    ULA_Result <= x"01" ;
   else
    ULA_Result <= x"00" ;
   end if; 
  when "1111" => -- comparação igual  
   if(A=B) then
    ULA_Result <= x"01" ;
   else
    ULA_Result <= x"00" ;
   end if;
  when others => ULA_Result <= A + B ; 
  end case;
 end process;
 ULA_Out <= ULA_Result; -- ULA out
 tmp <= ('0' & A) + ('0' & B);
 Carryout <= tmp(8); -- Carryout flag
end Behavioral;