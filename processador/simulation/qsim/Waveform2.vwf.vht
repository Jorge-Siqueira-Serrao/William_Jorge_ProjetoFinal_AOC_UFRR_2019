-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2019 09:41:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sonic
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sonic_vhd_vec_tst IS
END sonic_vhd_vec_tst;
ARCHITECTURE sonic_arch OF sonic_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_sonic : STD_LOGIC;
SIGNAL out_mult_2x1_br : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_op_code_sonic : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_out_pc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_out_somador_pc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_reg1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL out_reg2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL out_rom_value : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_ula_sonic : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT sonic
	PORT (
	clock_sonic : IN STD_LOGIC;
	out_mult_2x1_br : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_op_code_sonic : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_out_pc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_out_somador_pc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_reg1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	out_reg2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	out_rom_value : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_ula_sonic : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sonic
	PORT MAP (
-- list connections between master ports and signals
	clock_sonic => clock_sonic,
	out_mult_2x1_br => out_mult_2x1_br,
	out_op_code_sonic => out_op_code_sonic,
	out_out_pc => out_out_pc,
	out_out_somador_pc => out_out_somador_pc,
	out_reg1 => out_reg1,
	out_reg2 => out_reg2,
	out_rom_value => out_rom_value,
	out_ula_sonic => out_ula_sonic
	);

-- clock_sonic
t_prcs_clock_sonic: PROCESS
BEGIN
LOOP
	clock_sonic <= '0';
	WAIT FOR 500 ps;
	clock_sonic <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_sonic;
END sonic_arch;
