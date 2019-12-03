library ieee;
	use ieee.std_logic_1164.all;
	

	entity unidade_controle is
	    port (
	        clock : in std_logic;
	        op_code : in std_logic_vector (3 downto 0);
	        jump : out std_logic;
	        branch : out std_logic;
	        mem_read : out std_logic;
	        mem_to_reg : out std_logic;
	        ula_op : out std_logic_vector (3 downto 0);
	        mem_write : out std_logic;
	        ula_src : out std_logic;
	        reg_write : out std_logic
	    );
	end unidade_controle;
	

	architecture behavior of unidade_controle is
	begin
	    process (clock)
	    begin
	        case op_code is
	            when "0000" => -- add
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "0000";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '1';
	

	            when "0001" => -- addi
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "0001";
	                mem_write <= '0';
	                ula_src <= '1';
	                reg_write <= '1';
	

	            when "0010" => -- sub
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "0010";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '1';
	

	            when "0011" => -- subi
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "0011";
	                mem_write <= '0';
	                ula_src <= '1';
	                reg_write <= '1';
	

	            when "0100" => -- lw
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '1';
	                mem_to_reg <= '1';
	                ula_op <= "0100";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '1';
	

	            when "0101" => -- sw
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "0101";
	                mem_write <= '1';
	                ula_src <= '0';
	                reg_write <= '0';
	

	            when "0110" => -- move
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "0110";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '1';
	

	            when "0111" => -- li
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "0111";
	                mem_write <= '0';
	                ula_src <= '1';
	                reg_write <= '1';
	

	            when "1000" => -- beq
	                jump <= '0';
	                branch <= '1';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "1000";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '0';
	

	            when "1001" => -- bne
	                jump <= '0';
	                branch <= '1';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "1001";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '0';
	

	            when "1010" => -- if beq e bne
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "1010";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '0';
	

	            when "1011" => -- mul
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "1011";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '1';
	

	            when "1111" => -- jump
	                jump <= '1';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "1111";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '0';
	

	            when others =>
	                jump <= '0';
	                branch <= '0';
	                mem_read <= '0';
	                mem_to_reg <= '0';
	                ula_op <= "1111";
	                mem_write <= '0';
	                ula_src <= '0';
	                reg_write <= '0';
	        end case;
	    end process;
	end behavior;
