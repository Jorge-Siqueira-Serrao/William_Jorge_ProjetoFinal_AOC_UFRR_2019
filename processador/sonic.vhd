-- 
-- Author: William thiago e Jorge Siqueira
--
-- Data: Dezembro de 2019
--
-- legenda # component #
--         * valor de teste*

library IEEE;
use IEEE.std_logic_1164.all;

entity sonic is
	PORT(
		clock_sonic: in std_logic; --entrada do clock 
		out_out_pc : out std_logic_vector (7 downto 0); -- saída do pc (testes)
		out_rom_value : out std_logic_vector (7 downto 0); -- saída de instrução da rom
		out_op_code_sonic : out std_logic_vector(3 downto 0); -- saída do cod. de operação da rom (para testes)
		out_reg1 : out std_logic_vector (1 downto 0);
		out_reg2 : out std_logic_vector (1 downto 0);
		out_ula_sonic : out std_logic_vector(7 downto 0);
		out_out_somador_pc : out std_logic_vector (7 downto 0);
		out_mult_2x1_br : out std_logic_vector (7 downto 0);
		out_banco_reg_a_sonic : out std_logic_vector (7 downto 0);
		out_banco_reg_b_sonic : out std_logic_vector (7 downto 0)

	);
end sonic;

architecture hardware of sonic is						-- arquitetura do processador
	
	component pc is												-- #declaração do pc#
	port ( 														
        clock_pc : in std_logic;
        in_pc : in std_logic_vector (7 downto 0);
        pc_out : out std_logic_vector (7 downto 0)
    );
	end component;
	
	signal pc_out_u : std_logic_vector(7 downto 0); -- porta saída do pc (para o port map)
	
	component memoria_rom is 								-- #declaração da rom#
	port (
        clock : in std_logic;
        in_port : in std_logic_vector(7 downto 0);
        out_port : out std_logic_vector(7 downto 0)
    );
	end component;
	
	signal memoria_rom_u : std_logic_vector(7 downto 0); -- porta com a instrução da rom (para o port map)
	
	component divisao_instrucao is                    -- #declaração da divisão instructions#
	port (
			in_port : IN std_logic_vector(7 downto 0);
			out_op_code : OUT std_logic_vector(3 downto 0);
			out_rs : OUT std_logic_vector(1 downto 0);
			out_rt : OUT std_logic_vector(1 downto 0);
			out_jump : OUT std_logic_vector(3 downto 0)
	);
	end component;
	
	signal out_op_code_30_u : std_logic_vector(3 downto 0); -- código da operação (para o port map)
	signal out_rs_10_u : std_logic_vector(1 downto 0); --registrador 1 (para o port map)
	signal out_rt_10_u : std_logic_vector(1 downto 0); -- registrador 2 (para o port map)
	signal out_jump_30_u : std_logic_vector(3 downto 0); -- endereço para salto/ imediate (para o port map)
	 
	component banco_registradores is							-- #declaração do banco de registradores#
		port (
			 clock : in std_logic;
			 reg_write : in std_logic;									 -- (1 ou 0) vem da uc 
			 endereco_reg_a : in std_logic_vector(1 downto 0);  -- end. registrador a
			 endereco_reg_b : in std_logic_vector(1 downto 0);  -- end. registrador b
			 write_data : in std_logic_vector (7 downto 0); -- endereço do reg. para escrita
			 reg_out_a : out std_logic_vector (7 downto 0); -- endereço de saída do registrador a 
			 reg_out_b : out std_logic_vector (7 downto 0) -- endereço de saída do registrador ab
		);
	end component;
	
	signal out_br_reg_a_u : std_logic_vector (7 downto 0); -- saída registrador a do banco de registradores
   signal out_br_reg_b_u : std_logic_vector (7 downto 0); -- saída registrador b do banco de registradores
	
	component multiplexador_2x1 is                          	-- #declaração do multiplexador_2x1#
		 port (
        in_port : in std_logic;
        in_a : in std_logic_vector (7 downto 0);         -- saída reg a 
        in_b : in std_logic_vector (7 downto 0);         -- saída reg b 
        out_port : out std_logic_vector (7 downto 0)     -- saída a se 0 ou b se 1
		 );
	end component;
	
	signal out_mul_2x1_br_alu : std_logic_vector(7 downto 0);  -- saída do multiplexador entre o br e a ula
	signal out_mul_2X1_ram_ula : std_logic_vector (7 DOWNTO 0); -- saída do mult. ao lado da ram
	signal out_mul_2X1_and_add_se: std_logic_vector (7 DOWNTO 0); -- saída do mult. ao lado da porta and
	signal out_mul_2X1_jump : std_logic_vector (7 DOWNTO 0); -- saída do mult. que dá o jump final(ligado ao pc)
	
	component unidade_controle is                  -- #declaração da unidade de controle#
		port (
	        clock : in std_logic;
	        op_code : in std_logic_vector (3 downto 0);        -- código da operação
	        jump : out std_logic;                              -- se vai ter jump
	        branch : out std_logic;									  -- se tem branch
	        mem_read : out std_logic;								  -- se for ler algo armazenado
	        mem_to_reg : out std_logic;								  -- se for armazenar em um reg o valor da op
	        ula_op : out std_logic_vector (3 downto 0);		  
	        mem_write : out std_logic;
	        ula_src : out std_logic;
	        reg_write : out std_logic
	    );
	end component;
	
	 -- unidade de controle saídas 
    signal out_uc_jump : std_logic;								-- vai para o port map do 
    signal out_uc_branch : std_logic;
    signal out_uc_mem_read : std_logic;
    signal out_uc_mem_to_reg : std_logic;
    signal out_uc_ula_op : std_logic_vector (3 DOWNTO 0);
    signal out_uc_mem_write : std_logic;
    signal out_uc_ula_src : std_logic;
    signal out_uc_reg_write : std_logic;
	 
	 component extensor_sinal_2_8 is						-- #declaração do extensor de sinal de 2 pra 8 bits#
		port (
        in_port : in std_logic_vector (1 downto 0);
        out_port : out std_logic_vector (7 downto 0)
		);
	 end component;
	 
	 signal out_es_2_8 : std_logic_vector (7 downto 0);  -- vai para o mul 2x1 entre o br e a ula
	 
	 component ula is                                 --#declaração do componente ula#
	 port (
        clock : in std_logic;
        ula_op : in std_logic_vector(3 downto 0);
        in_port_A : in std_logic_vector(7 downto 0);
        in_port_B : in std_logic_vector(7 downto 0);
        out_ula_result : out std_logic_vector(7 downto 0);
        zero : out std_logic;
        overflow : out std_logic
    );
	 end component;
	 
	 signal out_ula_result : std_logic_vector (7 DOWNTO 0); 
    signal out_ula_zero : std_logic;								
    signal out_overflow : std_logic;                         --#trilha saída se tiver overflow
	 
	 component memoria_ram is 						--#declaração da memória ram#
		 port (
			  clock : IN std_logic;
			  mem_write : IN std_logic;
			  mem_read : IN std_logic;
			  endereco : IN std_logic_vector(7 DOWNTO 0);
			  in_port : IN std_logic_vector(7 DOWNTO 0);
			  out_port : OUT std_logic_vector(7 DOWNTO 0)
		 );
	 end component;
	 
	 signal out_memoria_ram : std_logic_vector (7 DOWNTO 0); -- única saída da ram 8 bits
	 
	 component port_and is				-- #declaração da porta and que vem de uc#
		 port (
			  in_port_A : IN STD_LOGIC;
			  in_port_B : IN STD_LOGIC;
			  out_port : OUT STD_LOGIC
		 );
	 end component;
	 
	 signal out_port_and : std_logic; -- saída da porta and
	 
	 component somador_pc is		-- #declaração do somador pc#
		port (
        clock : IN std_logic;
        in_port : IN std_logic_vector (7 downto 0);
        out_port : OUT std_logic_vector (7 downto 0)
		);
	 end component;
	 
	 signal out_somador_pc : std_logic_vector (7 downto 0); -- saída do somador_pc
	 
	 component extensor_sinal_4_8 is   -- #declaração do extensor de sinal#
		port (
        in_port : IN std_logic_vector (3 downto 0);
        out_port : OUT std_logic_vector (7 downto 0)
		);
	 end component;
	 
	 signal out_es_4_8 : std_logic_vector (7 downto 0);  -- saída do extensor de sinal
	 

	begin
		pc_port_map : pc port map(clock_sonic,out_mul_2X1_jump, pc_out_u);    --port map do pc
		memoria_rom_port_map : memoria_rom port map(clock_sonic,pc_out_u,memoria_rom_u); --port map da memoria de instruções
		-- port map da divisão de instruções
		divisao_instrucao_map : divisao_instrucao port map(memoria_rom_u,out_op_code_30_u,out_rs_10_u,out_rt_10_u,out_jump_30_u); 
		-- port map do banco de registradores (out rs 10 u)
		banco_registradores_map :  banco_registradores port map(clock_sonic,out_uc_reg_write,out_rs_10_u,out_rt_10_u,out_mul_2X1_ram_ula,out_br_reg_a_u,out_br_reg_b_u);	
	   -- portmap da unidade de controle
      unidade_controle_map: unidade_controle port map(clock_sonic,out_op_code_30_u,out_uc_jump,out_uc_branch,out_uc_mem_read,out_uc_mem_to_reg,out_uc_ula_op,out_uc_mem_write,out_uc_ula_src,out_uc_reg_write);
		--port map do mux que fica entre o br e a ula
		multiplexador_2x1_map: multiplexador_2x1 port map (out_uc_ula_src,out_br_reg_b_u,out_es_2_8,out_mul_2x1_br_alu);	
		--port map do extensor sinal 2 pra 8
		extensor_sinal_2_8_map : extensor_sinal_2_8 port map(out_rt_10_u,out_es_2_8);
		--port map da ula
		ula_map : ula port map(clock_sonic, out_uc_ula_op, out_br_reg_a_u, out_mul_2x1_br_alu,out_ula_result, out_ula_zero, out_overflow);
		-- port map da mem. ram
		memoria_ram_map : memoria_ram port map(clock_sonic, out_uc_mem_write, out_uc_mem_read,out_ula_result,out_es_2_8, out_memoria_ram);
		-- port map do mux que sai da ram
		multiplexador_2x1_ram_map : multiplexador_2x1 port map(out_uc_mem_to_reg,out_memoria_ram,out_ula_result,out_mul_2X1_ram_ula);
		-- port map da porta and que liga a uc e a ula
		port_and_map : port_and port map(out_uc_branch, out_ula_zero, out_port_and);
		-- port map do somador_pc, que incrementa a pos. de memória 
		somador_pc_map : somador_pc port map(clock_sonic, pc_out_u, out_somador_pc);
		-- port map do extensor de sinal de 4 para 8
		extensor_sinal_4_8_map : extensor_sinal_4_8 port map(out_op_code_30_u,out_es_4_8);
		-- port map do mux que liga o extensor de 4 pra 8 à porta and que vem da uc
		multiplexador_2x1_add_pc_jump : multiplexador_2x1 port map(out_port_and, out_es_4_8, out_somador_pc,out_mul_2X1_and_add_se);
		-- port map do mux que liga o mux da uc ao pc counter
		multiplexador_2x1_jump : multiplexador_2x1 port map(out_uc_jump,out_es_4_8,out_mul_2X1_and_add_se,out_mul_2X1_jump);
	
		
		out_out_pc <= pc_out_u; -- saída do pc
		out_rom_value <= memoria_rom_u; -- saída da rom
		out_op_code_sonic <= out_op_code_30_u; -- tipo de instrução
		out_reg1 <= out_rs_10_u; -- saída de div. de instrução endereço do reg A
		out_reg2 <= out_rt_10_u; -- saída de div. de instrução endereço do reg B
		out_ula_sonic <= out_ula_result; -- saída da ula
		out_out_somador_pc <= out_somador_pc; -- saída do adder do jump do pc
		out_mult_2x1_br <= out_mul_2x1_br_alu; -- saída do multiplexador que liga br e alu
		out_banco_reg_a_sonic <= out_br_reg_a_u;
		out_banco_reg_b_sonic <= out_br_reg_b_u;
	
	
	
end hardware;
	