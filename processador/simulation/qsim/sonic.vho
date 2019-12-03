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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/03/2019 13:13:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sonic IS
    PORT (
	clock_sonic : IN std_logic;
	out_out_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	out_rom_value : BUFFER std_logic_vector(7 DOWNTO 0);
	out_op_code_sonic : BUFFER std_logic_vector(3 DOWNTO 0);
	out_reg1 : BUFFER std_logic_vector(1 DOWNTO 0);
	out_reg2 : BUFFER std_logic_vector(1 DOWNTO 0);
	out_ula_sonic : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_somador_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	out_mult_2x1_br : BUFFER std_logic_vector(7 DOWNTO 0);
	out_banco_reg_a_sonic : BUFFER std_logic_vector(7 DOWNTO 0);
	out_banco_reg_b_sonic : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END sonic;

ARCHITECTURE structure OF sonic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_sonic : std_logic;
SIGNAL ww_out_out_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_rom_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_op_code_sonic : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_reg1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_reg2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_ula_sonic : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_somador_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_mult_2x1_br : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_banco_reg_a_sonic : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_banco_reg_b_sonic : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clock_sonic~input_o\ : std_logic;
SIGNAL \memoria_rom_port_map|Mux1~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|Mux2~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|Mux0~0_combout\ : std_logic;
SIGNAL \pc_port_map|pc_out[0]~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|Mux6~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|Mux5~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|Mux4~0_combout\ : std_logic;
SIGNAL \unidade_controle_map|Mux2~0_combout\ : std_logic;
SIGNAL \unidade_controle_map|Mux6~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|Mux6~0_wirecell_combout\ : std_logic;
SIGNAL \unidade_controle_map|Mux7~0_combout\ : std_logic;
SIGNAL \unidade_controle_map|Mux8~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~59_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~19_q\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[0]~0_combout\ : std_logic;
SIGNAL \ula_map|Mux7~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~60_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~12_q\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[1]~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[2]~2_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~21_q\ : std_logic;
SIGNAL \banco_registradores_map|registrador~13_q\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[2]~2_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~56_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~44_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~2_cout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~9_sumout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~43_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~30_cout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~25_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~26_cout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|out_port[2]~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|out_port[2]~1_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~45_combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A1|cout~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_adder|A1|cout~combout\ : std_logic;
SIGNAL \ula_map|Mux9~0_combout\ : std_logic;
SIGNAL \ula_map|Mux9~1_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[1]~1_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~20_q\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~1_sumout\ : std_logic;
SIGNAL \ula_map|Mux10~0_combout\ : std_logic;
SIGNAL \ula_map|Mux10~1_combout\ : std_logic;
SIGNAL \ula_map|Mux10~2_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[0]~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~11_q\ : std_logic;
SIGNAL \ula_map|Mux11~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|process_0~1_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|process_0~2_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[3]~3_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~22_q\ : std_logic;
SIGNAL \banco_registradores_map|registrador~14_q\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~1_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~22_cout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~1_sumout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~46_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[3]~3_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|out_port[3]~6_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~47_combout\ : std_logic;
SIGNAL \ula_map|Mux8~0_combout\ : std_logic;
SIGNAL \ula_map|Mux8~1_combout\ : std_logic;
SIGNAL \ula_map|Mux8~2_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|process_0~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|process_0~3_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~15_q\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~14\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~2_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~3_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~4_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~18_cout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|out_port[4]~3_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~49_combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A3|cout~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_adder|A3|cout~combout\ : std_logic;
SIGNAL \ula_map|Mux7~2_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[4]~4_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~23_q\ : std_logic;
SIGNAL \banco_registradores_map|registrador~48_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[4]~4_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add7~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|out_port[4]~2_combout\ : std_logic;
SIGNAL \ula_map|Mux7~1_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[5]~5_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~24_q\ : std_logic;
SIGNAL \banco_registradores_map|registrador~16_q\ : std_logic;
SIGNAL \banco_registradores_map|registrador~50_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[5]~5_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~18\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~14\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~14\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~28_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~5_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~27_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~6_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~26_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add7~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add7~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~2\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~7_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~8_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~51_combout\ : std_logic;
SIGNAL \ula_map|Mux6~0_combout\ : std_logic;
SIGNAL \ula_map|Mux6~1_combout\ : std_logic;
SIGNAL \ula_map|Mux6~2_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[6]~6_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~25_q\ : std_logic;
SIGNAL \banco_registradores_map|registrador~17_q\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~22\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~25_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~18\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~18\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~31_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~14\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~14\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~9_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~30_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~10_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~29_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add7~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add7~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~6\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~11_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~12_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~13_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~52_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|out_port[6]~4_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[6]~6_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~53_combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A5|cout~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_adder|A5|cout~combout\ : std_logic;
SIGNAL \ula_map|Mux5~0_combout\ : std_logic;
SIGNAL \ula_map|Mux5~1_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~14_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \multiplexador_2x1_ram_map|out_port[7]~7_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~26_q\ : std_logic;
SIGNAL \banco_registradores_map|registrador~18_q\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~26\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add0~29_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~22\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add1~25_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~22\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add2~25_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~34_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~18\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add3~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~18\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add4~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~15_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~33_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~14\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add5~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~14\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add6~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~16_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~32_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add7~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add7~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~10\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add8~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~17_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add10~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~18_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|process_0~4_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add9~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~19_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~20_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~21_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~22_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|Add12~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~23_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|produto~24_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~54_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|out_port[7]~7_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|out_port[7]~5_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~55_combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\ : std_logic;
SIGNAL \ula_map|Mux4~0_combout\ : std_logic;
SIGNAL \ula_map|Mux4~2_combout\ : std_logic;
SIGNAL \ula_map|Mux4~1_combout\ : std_logic;
SIGNAL \somador_pc_map|Add0~0_combout\ : std_logic;
SIGNAL \somador_pc_map|Add0~1_combout\ : std_logic;
SIGNAL \somador_pc_map|Add0~2_combout\ : std_logic;
SIGNAL \somador_pc_map|Add0~3_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~57_combout\ : std_logic;
SIGNAL \banco_registradores_map|registrador~58_combout\ : std_logic;
SIGNAL \pc_port_map|pc_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ula_map|port_map_multi|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_out_port[2]~1_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_out_port[2]~0_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~44_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~43_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \unidade_controle_map|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \memoria_rom_port_map|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \pc_port_map|ALT_INV_pc_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula_map|port_map_multi|ALT_INV_out_port[3]~6_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~34_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~33_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~32_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~31_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~30_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~29_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~28_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~27_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~26_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~25_combout\ : std_logic;
SIGNAL \unidade_controle_map|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \unidade_controle_map|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~56_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A7|ha2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~55_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_out_port[7]~5_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[7]~7_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~54_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~24_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~23_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add12~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~22_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~21_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~20_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~19_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add9~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~18_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_Add10~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~17_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~16_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~15_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~14_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_adder|A5|ALT_INV_cout~combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A5|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~53_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[6]~6_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_out_port[6]~4_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~52_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~13_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~12_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~11_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~10_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~9_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~51_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~8_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~7_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~6_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~5_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~50_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \ula_map|port_map_adder|A3|ALT_INV_cout~combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A3|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~49_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_out_port[4]~3_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~4_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~3_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~2_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_out_port[4]~2_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~48_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~47_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~1_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_produto~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ula_map|port_map_multi|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~46_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ula_map|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ula_map|port_map_adder|A1|ALT_INV_cout~combout\ : std_logic;
SIGNAL \ula_map|port_map_sub|A1|A1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \banco_registradores_map|ALT_INV_registrador~45_combout\ : std_logic;

BEGIN

ww_clock_sonic <= clock_sonic;
out_out_pc <= ww_out_out_pc;
out_rom_value <= ww_out_rom_value;
out_op_code_sonic <= ww_out_op_code_sonic;
out_reg1 <= ww_out_reg1;
out_reg2 <= ww_out_reg2;
out_ula_sonic <= ww_out_ula_sonic;
out_out_somador_pc <= ww_out_out_somador_pc;
out_mult_2x1_br <= ww_out_mult_2x1_br;
out_banco_reg_a_sonic <= ww_out_banco_reg_a_sonic;
out_banco_reg_b_sonic <= ww_out_banco_reg_b_sonic;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \memoria_rom_port_map|Mux6~0_wirecell_combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \memoria_rom_port_map|Mux5~0_combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \~GND~combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \~GND~combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \~GND~combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \~GND~combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \~GND~combout\;

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\ula_map|Mux9~1_combout\ & \ula_map|Mux10~2_combout\ & \ula_map|Mux11~0_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\ula_map|port_map_multi|ALT_INV_Add4~1_sumout\ <= NOT \ula_map|port_map_multi|Add4~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add3~1_sumout\ <= NOT \ula_map|port_map_multi|Add3~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add2~1_sumout\ <= NOT \ula_map|port_map_multi|Add2~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add1~1_sumout\ <= NOT \ula_map|port_map_multi|Add1~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add0~5_sumout\ <= NOT \ula_map|port_map_multi|Add0~5_sumout\;
\ula_map|port_map_multi|ALT_INV_out_port[2]~1_combout\ <= NOT \ula_map|port_map_multi|out_port[2]~1_combout\;
\ula_map|port_map_multi|ALT_INV_out_port[2]~0_combout\ <= NOT \ula_map|port_map_multi|out_port[2]~0_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\ <= NOT \multiplexador_2x1_map|out_port[2]~2_combout\;
\banco_registradores_map|ALT_INV_registrador~13_q\ <= NOT \banco_registradores_map|registrador~13_q\;
\banco_registradores_map|ALT_INV_registrador~21_q\ <= NOT \banco_registradores_map|registrador~21_q\;
\ula_map|ALT_INV_Mux10~2_combout\ <= NOT \ula_map|Mux10~2_combout\;
\ula_map|ALT_INV_Mux10~1_combout\ <= NOT \ula_map|Mux10~1_combout\;
\banco_registradores_map|ALT_INV_registrador~44_combout\ <= NOT \banco_registradores_map|registrador~44_combout\;
\ula_map|ALT_INV_Mux7~0_combout\ <= NOT \ula_map|Mux7~0_combout\;
\ula_map|ALT_INV_Mux10~0_combout\ <= NOT \ula_map|Mux10~0_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\ <= NOT \multiplexador_2x1_map|out_port[1]~1_combout\;
\banco_registradores_map|ALT_INV_registrador~12_q\ <= NOT \banco_registradores_map|registrador~12_q\;
\banco_registradores_map|ALT_INV_registrador~20_q\ <= NOT \banco_registradores_map|registrador~20_q\;
\banco_registradores_map|ALT_INV_registrador~43_combout\ <= NOT \banco_registradores_map|registrador~43_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\ <= NOT \multiplexador_2x1_map|out_port[0]~0_combout\;
\banco_registradores_map|ALT_INV_registrador~11_q\ <= NOT \banco_registradores_map|registrador~11_q\;
\banco_registradores_map|ALT_INV_registrador~19_q\ <= NOT \banco_registradores_map|registrador~19_q\;
\unidade_controle_map|ALT_INV_Mux7~0_combout\ <= NOT \unidade_controle_map|Mux7~0_combout\;
\memoria_rom_port_map|ALT_INV_Mux0~0_combout\ <= NOT \memoria_rom_port_map|Mux0~0_combout\;
\memoria_rom_port_map|ALT_INV_Mux1~0_combout\ <= NOT \memoria_rom_port_map|Mux1~0_combout\;
\memoria_rom_port_map|ALT_INV_Mux2~0_combout\ <= NOT \memoria_rom_port_map|Mux2~0_combout\;
\memoria_rom_port_map|ALT_INV_Mux4~0_combout\ <= NOT \memoria_rom_port_map|Mux4~0_combout\;
\memoria_rom_port_map|ALT_INV_Mux5~0_combout\ <= NOT \memoria_rom_port_map|Mux5~0_combout\;
\memoria_rom_port_map|ALT_INV_Mux6~0_combout\ <= NOT \memoria_rom_port_map|Mux6~0_combout\;
\pc_port_map|ALT_INV_pc_out\(3) <= NOT \pc_port_map|pc_out\(3);
\pc_port_map|ALT_INV_pc_out\(2) <= NOT \pc_port_map|pc_out\(2);
\pc_port_map|ALT_INV_pc_out\(1) <= NOT \pc_port_map|pc_out\(1);
\pc_port_map|ALT_INV_pc_out\(0) <= NOT \pc_port_map|pc_out\(0);
\ula_map|port_map_multi|ALT_INV_out_port[3]~6_combout\ <= NOT \ula_map|port_map_multi|out_port[3]~6_combout\;
\ula_map|ALT_INV_Mux7~2_combout\ <= NOT \ula_map|Mux7~2_combout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\;
\memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\ula_map|port_map_multi|ALT_INV_Add2~25_sumout\ <= NOT \ula_map|port_map_multi|Add2~25_sumout\;
\ula_map|port_map_multi|ALT_INV_Add1~25_sumout\ <= NOT \ula_map|port_map_multi|Add1~25_sumout\;
\ula_map|port_map_multi|ALT_INV_Add0~29_sumout\ <= NOT \ula_map|port_map_multi|Add0~29_sumout\;
\ula_map|port_map_multi|ALT_INV_Add4~21_sumout\ <= NOT \ula_map|port_map_multi|Add4~21_sumout\;
\ula_map|port_map_multi|ALT_INV_Add3~21_sumout\ <= NOT \ula_map|port_map_multi|Add3~21_sumout\;
\ula_map|port_map_multi|ALT_INV_Add6~17_sumout\ <= NOT \ula_map|port_map_multi|Add6~17_sumout\;
\ula_map|port_map_multi|ALT_INV_Add5~17_sumout\ <= NOT \ula_map|port_map_multi|Add5~17_sumout\;
\ula_map|port_map_multi|ALT_INV_Add8~13_sumout\ <= NOT \ula_map|port_map_multi|Add8~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add7~13_sumout\ <= NOT \ula_map|port_map_multi|Add7~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add2~21_sumout\ <= NOT \ula_map|port_map_multi|Add2~21_sumout\;
\ula_map|port_map_multi|ALT_INV_Add1~21_sumout\ <= NOT \ula_map|port_map_multi|Add1~21_sumout\;
\ula_map|port_map_multi|ALT_INV_Add0~25_sumout\ <= NOT \ula_map|port_map_multi|Add0~25_sumout\;
\ula_map|port_map_multi|ALT_INV_Add4~17_sumout\ <= NOT \ula_map|port_map_multi|Add4~17_sumout\;
\ula_map|port_map_multi|ALT_INV_Add3~17_sumout\ <= NOT \ula_map|port_map_multi|Add3~17_sumout\;
\ula_map|port_map_multi|ALT_INV_Add6~13_sumout\ <= NOT \ula_map|port_map_multi|Add6~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add5~13_sumout\ <= NOT \ula_map|port_map_multi|Add5~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add8~9_sumout\ <= NOT \ula_map|port_map_multi|Add8~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add7~9_sumout\ <= NOT \ula_map|port_map_multi|Add7~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add2~17_sumout\ <= NOT \ula_map|port_map_multi|Add2~17_sumout\;
\ula_map|port_map_multi|ALT_INV_Add1~17_sumout\ <= NOT \ula_map|port_map_multi|Add1~17_sumout\;
\ula_map|port_map_multi|ALT_INV_Add0~21_sumout\ <= NOT \ula_map|port_map_multi|Add0~21_sumout\;
\ula_map|port_map_multi|ALT_INV_Add4~13_sumout\ <= NOT \ula_map|port_map_multi|Add4~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add3~13_sumout\ <= NOT \ula_map|port_map_multi|Add3~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add6~9_sumout\ <= NOT \ula_map|port_map_multi|Add6~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add5~9_sumout\ <= NOT \ula_map|port_map_multi|Add5~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add8~5_sumout\ <= NOT \ula_map|port_map_multi|Add8~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add7~5_sumout\ <= NOT \ula_map|port_map_multi|Add7~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add8~1_sumout\ <= NOT \ula_map|port_map_multi|Add8~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add5~5_sumout\ <= NOT \ula_map|port_map_multi|Add5~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add6~5_sumout\ <= NOT \ula_map|port_map_multi|Add6~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add4~9_sumout\ <= NOT \ula_map|port_map_multi|Add4~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add2~13_sumout\ <= NOT \ula_map|port_map_multi|Add2~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add0~17_sumout\ <= NOT \ula_map|port_map_multi|Add0~17_sumout\;
\ula_map|port_map_multi|ALT_INV_Add1~13_sumout\ <= NOT \ula_map|port_map_multi|Add1~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add3~9_sumout\ <= NOT \ula_map|port_map_multi|Add3~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add7~1_sumout\ <= NOT \ula_map|port_map_multi|Add7~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add4~5_sumout\ <= NOT \ula_map|port_map_multi|Add4~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add2~9_sumout\ <= NOT \ula_map|port_map_multi|Add2~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add0~13_sumout\ <= NOT \ula_map|port_map_multi|Add0~13_sumout\;
\ula_map|port_map_multi|ALT_INV_Add1~9_sumout\ <= NOT \ula_map|port_map_multi|Add1~9_sumout\;
\ula_map|port_map_multi|ALT_INV_Add3~5_sumout\ <= NOT \ula_map|port_map_multi|Add3~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add6~1_sumout\ <= NOT \ula_map|port_map_multi|Add6~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add5~1_sumout\ <= NOT \ula_map|port_map_multi|Add5~1_sumout\;
\ula_map|port_map_multi|ALT_INV_Add2~5_sumout\ <= NOT \ula_map|port_map_multi|Add2~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add1~5_sumout\ <= NOT \ula_map|port_map_multi|Add1~5_sumout\;
\ula_map|port_map_multi|ALT_INV_Add0~9_sumout\ <= NOT \ula_map|port_map_multi|Add0~9_sumout\;
\ula_map|ALT_INV_Mux11~0_combout\ <= NOT \ula_map|Mux11~0_combout\;
\ula_map|ALT_INV_Mux4~2_combout\ <= NOT \ula_map|Mux4~2_combout\;
\ula_map|port_map_multi|ALT_INV_produto~34_combout\ <= NOT \ula_map|port_map_multi|produto~34_combout\;
\ula_map|port_map_multi|ALT_INV_produto~33_combout\ <= NOT \ula_map|port_map_multi|produto~33_combout\;
\ula_map|port_map_multi|ALT_INV_produto~32_combout\ <= NOT \ula_map|port_map_multi|produto~32_combout\;
\ula_map|port_map_multi|ALT_INV_produto~31_combout\ <= NOT \ula_map|port_map_multi|produto~31_combout\;
\ula_map|port_map_multi|ALT_INV_produto~30_combout\ <= NOT \ula_map|port_map_multi|produto~30_combout\;
\ula_map|port_map_multi|ALT_INV_produto~29_combout\ <= NOT \ula_map|port_map_multi|produto~29_combout\;
\ula_map|port_map_multi|ALT_INV_produto~28_combout\ <= NOT \ula_map|port_map_multi|produto~28_combout\;
\ula_map|port_map_multi|ALT_INV_produto~27_combout\ <= NOT \ula_map|port_map_multi|produto~27_combout\;
\ula_map|port_map_multi|ALT_INV_produto~26_combout\ <= NOT \ula_map|port_map_multi|produto~26_combout\;
\ula_map|port_map_multi|ALT_INV_produto~25_combout\ <= NOT \ula_map|port_map_multi|produto~25_combout\;
\unidade_controle_map|ALT_INV_Mux8~0_combout\ <= NOT \unidade_controle_map|Mux8~0_combout\;
\unidade_controle_map|ALT_INV_Mux2~0_combout\ <= NOT \unidade_controle_map|Mux2~0_combout\;
\banco_registradores_map|ALT_INV_registrador~56_combout\ <= NOT \banco_registradores_map|registrador~56_combout\;
\ula_map|ALT_INV_Mux4~1_combout\ <= NOT \ula_map|Mux4~1_combout\;
\ula_map|ALT_INV_Mux4~0_combout\ <= NOT \ula_map|Mux4~0_combout\;
\ula_map|port_map_sub|A1|A7|ha2|ALT_INV_sum~0_combout\ <= NOT \ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\;
\banco_registradores_map|ALT_INV_registrador~55_combout\ <= NOT \banco_registradores_map|registrador~55_combout\;
\ula_map|port_map_multi|ALT_INV_out_port[7]~5_combout\ <= NOT \ula_map|port_map_multi|out_port[7]~5_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[7]~7_combout\ <= NOT \multiplexador_2x1_map|out_port[7]~7_combout\;
\banco_registradores_map|ALT_INV_registrador~54_combout\ <= NOT \banco_registradores_map|registrador~54_combout\;
\banco_registradores_map|ALT_INV_registrador~18_q\ <= NOT \banco_registradores_map|registrador~18_q\;
\banco_registradores_map|ALT_INV_registrador~26_q\ <= NOT \banco_registradores_map|registrador~26_q\;
\ula_map|port_map_multi|ALT_INV_produto~24_combout\ <= NOT \ula_map|port_map_multi|produto~24_combout\;
\ula_map|port_map_multi|ALT_INV_produto~23_combout\ <= NOT \ula_map|port_map_multi|produto~23_combout\;
\ula_map|port_map_multi|ALT_INV_Add12~0_combout\ <= NOT \ula_map|port_map_multi|Add12~0_combout\;
\ula_map|port_map_multi|ALT_INV_produto~22_combout\ <= NOT \ula_map|port_map_multi|produto~22_combout\;
\ula_map|port_map_multi|ALT_INV_produto~21_combout\ <= NOT \ula_map|port_map_multi|produto~21_combout\;
\ula_map|port_map_multi|ALT_INV_produto~20_combout\ <= NOT \ula_map|port_map_multi|produto~20_combout\;
\ula_map|port_map_multi|ALT_INV_produto~19_combout\ <= NOT \ula_map|port_map_multi|produto~19_combout\;
\ula_map|port_map_multi|ALT_INV_Add9~0_combout\ <= NOT \ula_map|port_map_multi|Add9~0_combout\;
\ula_map|port_map_multi|ALT_INV_process_0~4_combout\ <= NOT \ula_map|port_map_multi|process_0~4_combout\;
\ula_map|port_map_multi|ALT_INV_produto~18_combout\ <= NOT \ula_map|port_map_multi|produto~18_combout\;
\ula_map|port_map_multi|ALT_INV_Add10~0_combout\ <= NOT \ula_map|port_map_multi|Add10~0_combout\;
\ula_map|port_map_multi|ALT_INV_produto~17_combout\ <= NOT \ula_map|port_map_multi|produto~17_combout\;
\ula_map|port_map_multi|ALT_INV_produto~16_combout\ <= NOT \ula_map|port_map_multi|produto~16_combout\;
\ula_map|port_map_multi|ALT_INV_produto~15_combout\ <= NOT \ula_map|port_map_multi|produto~15_combout\;
\ula_map|port_map_multi|ALT_INV_produto~14_combout\ <= NOT \ula_map|port_map_multi|produto~14_combout\;
\ula_map|ALT_INV_Mux5~1_combout\ <= NOT \ula_map|Mux5~1_combout\;
\ula_map|ALT_INV_Mux5~0_combout\ <= NOT \ula_map|Mux5~0_combout\;
\ula_map|port_map_adder|A5|ALT_INV_cout~combout\ <= NOT \ula_map|port_map_adder|A5|cout~combout\;
\ula_map|port_map_sub|A1|A5|ALT_INV_cout~0_combout\ <= NOT \ula_map|port_map_sub|A1|A5|cout~0_combout\;
\banco_registradores_map|ALT_INV_registrador~53_combout\ <= NOT \banco_registradores_map|registrador~53_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[6]~6_combout\ <= NOT \multiplexador_2x1_map|out_port[6]~6_combout\;
\ula_map|port_map_multi|ALT_INV_out_port[6]~4_combout\ <= NOT \ula_map|port_map_multi|out_port[6]~4_combout\;
\banco_registradores_map|ALT_INV_registrador~52_combout\ <= NOT \banco_registradores_map|registrador~52_combout\;
\banco_registradores_map|ALT_INV_registrador~17_q\ <= NOT \banco_registradores_map|registrador~17_q\;
\banco_registradores_map|ALT_INV_registrador~25_q\ <= NOT \banco_registradores_map|registrador~25_q\;
\ula_map|port_map_multi|ALT_INV_produto~13_combout\ <= NOT \ula_map|port_map_multi|produto~13_combout\;
\ula_map|port_map_multi|ALT_INV_produto~12_combout\ <= NOT \ula_map|port_map_multi|produto~12_combout\;
\ula_map|port_map_multi|ALT_INV_produto~11_combout\ <= NOT \ula_map|port_map_multi|produto~11_combout\;
\ula_map|port_map_multi|ALT_INV_produto~10_combout\ <= NOT \ula_map|port_map_multi|produto~10_combout\;
\ula_map|port_map_multi|ALT_INV_produto~9_combout\ <= NOT \ula_map|port_map_multi|produto~9_combout\;
\ula_map|ALT_INV_Mux6~2_combout\ <= NOT \ula_map|Mux6~2_combout\;
\ula_map|ALT_INV_Mux6~1_combout\ <= NOT \ula_map|Mux6~1_combout\;
\ula_map|ALT_INV_Mux6~0_combout\ <= NOT \ula_map|Mux6~0_combout\;
\banco_registradores_map|ALT_INV_registrador~51_combout\ <= NOT \banco_registradores_map|registrador~51_combout\;
\ula_map|port_map_multi|ALT_INV_produto~8_combout\ <= NOT \ula_map|port_map_multi|produto~8_combout\;
\ula_map|port_map_multi|ALT_INV_produto~7_combout\ <= NOT \ula_map|port_map_multi|produto~7_combout\;
\ula_map|port_map_multi|ALT_INV_produto~6_combout\ <= NOT \ula_map|port_map_multi|produto~6_combout\;
\ula_map|port_map_multi|ALT_INV_produto~5_combout\ <= NOT \ula_map|port_map_multi|produto~5_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\ <= NOT \multiplexador_2x1_map|out_port[5]~5_combout\;
\banco_registradores_map|ALT_INV_registrador~50_combout\ <= NOT \banco_registradores_map|registrador~50_combout\;
\banco_registradores_map|ALT_INV_registrador~16_q\ <= NOT \banco_registradores_map|registrador~16_q\;
\banco_registradores_map|ALT_INV_registrador~24_q\ <= NOT \banco_registradores_map|registrador~24_q\;
\ula_map|port_map_adder|A3|ALT_INV_cout~combout\ <= NOT \ula_map|port_map_adder|A3|cout~combout\;
\ula_map|port_map_sub|A1|A3|ALT_INV_cout~0_combout\ <= NOT \ula_map|port_map_sub|A1|A3|cout~0_combout\;
\banco_registradores_map|ALT_INV_registrador~49_combout\ <= NOT \banco_registradores_map|registrador~49_combout\;
\ula_map|port_map_multi|ALT_INV_out_port[4]~3_combout\ <= NOT \ula_map|port_map_multi|out_port[4]~3_combout\;
\ula_map|port_map_multi|ALT_INV_produto~4_combout\ <= NOT \ula_map|port_map_multi|produto~4_combout\;
\ula_map|port_map_multi|ALT_INV_produto~3_combout\ <= NOT \ula_map|port_map_multi|produto~3_combout\;
\ula_map|port_map_multi|ALT_INV_produto~2_combout\ <= NOT \ula_map|port_map_multi|produto~2_combout\;
\ula_map|port_map_multi|ALT_INV_process_0~3_combout\ <= NOT \ula_map|port_map_multi|process_0~3_combout\;
\ula_map|port_map_multi|ALT_INV_out_port[4]~2_combout\ <= NOT \ula_map|port_map_multi|out_port[4]~2_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\ <= NOT \multiplexador_2x1_map|out_port[4]~4_combout\;
\banco_registradores_map|ALT_INV_registrador~48_combout\ <= NOT \banco_registradores_map|registrador~48_combout\;
\banco_registradores_map|ALT_INV_registrador~15_q\ <= NOT \banco_registradores_map|registrador~15_q\;
\banco_registradores_map|ALT_INV_registrador~23_q\ <= NOT \banco_registradores_map|registrador~23_q\;
\ula_map|ALT_INV_Mux8~2_combout\ <= NOT \ula_map|Mux8~2_combout\;
\ula_map|ALT_INV_Mux8~1_combout\ <= NOT \ula_map|Mux8~1_combout\;
\ula_map|ALT_INV_Mux8~0_combout\ <= NOT \ula_map|Mux8~0_combout\;
\banco_registradores_map|ALT_INV_registrador~47_combout\ <= NOT \banco_registradores_map|registrador~47_combout\;
\ula_map|port_map_multi|ALT_INV_produto~1_combout\ <= NOT \ula_map|port_map_multi|produto~1_combout\;
\ula_map|port_map_multi|ALT_INV_produto~0_combout\ <= NOT \ula_map|port_map_multi|produto~0_combout\;
\ula_map|port_map_multi|ALT_INV_process_0~2_combout\ <= NOT \ula_map|port_map_multi|process_0~2_combout\;
\ula_map|port_map_multi|ALT_INV_process_0~1_combout\ <= NOT \ula_map|port_map_multi|process_0~1_combout\;
\ula_map|port_map_multi|ALT_INV_process_0~0_combout\ <= NOT \ula_map|port_map_multi|process_0~0_combout\;
\multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\ <= NOT \multiplexador_2x1_map|out_port[3]~3_combout\;
\banco_registradores_map|ALT_INV_registrador~46_combout\ <= NOT \banco_registradores_map|registrador~46_combout\;
\banco_registradores_map|ALT_INV_registrador~14_q\ <= NOT \banco_registradores_map|registrador~14_q\;
\banco_registradores_map|ALT_INV_registrador~22_q\ <= NOT \banco_registradores_map|registrador~22_q\;
\ula_map|ALT_INV_Mux9~1_combout\ <= NOT \ula_map|Mux9~1_combout\;
\ula_map|ALT_INV_Mux9~0_combout\ <= NOT \ula_map|Mux9~0_combout\;
\ula_map|port_map_adder|A1|ALT_INV_cout~combout\ <= NOT \ula_map|port_map_adder|A1|cout~combout\;
\ula_map|port_map_sub|A1|A1|ALT_INV_cout~0_combout\ <= NOT \ula_map|port_map_sub|A1|A1|cout~0_combout\;
\banco_registradores_map|ALT_INV_registrador~45_combout\ <= NOT \banco_registradores_map|registrador~45_combout\;

\out_out_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_port_map|pc_out\(0),
	devoe => ww_devoe,
	o => ww_out_out_pc(0));

\out_out_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_port_map|pc_out\(1),
	devoe => ww_devoe,
	o => ww_out_out_pc(1));

\out_out_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_port_map|pc_out\(2),
	devoe => ww_devoe,
	o => ww_out_out_pc(2));

\out_out_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_port_map|pc_out\(3),
	devoe => ww_devoe,
	o => ww_out_out_pc(3));

\out_out_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_out_pc(4));

\out_out_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_out_pc(5));

\out_out_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_out_pc(6));

\out_out_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_out_pc(7));

\out_rom_value[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_out_rom_value(0));

\out_rom_value[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_out_rom_value(1));

\out_rom_value[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_out_rom_value(2));

\out_rom_value[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rom_value(3));

\out_rom_value[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_port_map|ALT_INV_pc_out\(3),
	devoe => ww_devoe,
	o => ww_out_rom_value(4));

\out_rom_value[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_out_rom_value(5));

\out_rom_value[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_rom_value(6));

\out_rom_value[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_out_rom_value(7));

\out_op_code_sonic[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_port_map|ALT_INV_pc_out\(3),
	devoe => ww_devoe,
	o => ww_out_op_code_sonic(0));

\out_op_code_sonic[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_out_op_code_sonic(1));

\out_op_code_sonic[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_op_code_sonic(2));

\out_op_code_sonic[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_out_op_code_sonic(3));

\out_reg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_out_reg1(0));

\out_reg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_reg1(1));

\out_reg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_out_reg2(0));

\out_reg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria_rom_port_map|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_out_reg2(1));

\out_ula_sonic[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(0));

\out_ula_sonic[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux10~2_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(1));

\out_ula_sonic[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux9~1_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(2));

\out_ula_sonic[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux8~2_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(3));

\out_ula_sonic[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux7~1_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(4));

\out_ula_sonic[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux6~2_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(5));

\out_ula_sonic[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(6));

\out_ula_sonic[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_map|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_sonic(7));

\out_out_somador_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_port_map|ALT_INV_pc_out\(0),
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(0));

\out_out_somador_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somador_pc_map|Add0~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(1));

\out_out_somador_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somador_pc_map|Add0~1_combout\,
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(2));

\out_out_somador_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somador_pc_map|Add0~2_combout\,
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(3));

\out_out_somador_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somador_pc_map|Add0~3_combout\,
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(4));

\out_out_somador_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(5));

\out_out_somador_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(6));

\out_out_somador_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_out_somador_pc(7));

\out_mult_2x1_br[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(0));

\out_mult_2x1_br[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(1));

\out_mult_2x1_br[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(2));

\out_mult_2x1_br[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(3));

\out_mult_2x1_br[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(4));

\out_mult_2x1_br[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(5));

\out_mult_2x1_br[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(6));

\out_mult_2x1_br[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2x1_map|out_port[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_out_mult_2x1_br(7));

\out_banco_reg_a_sonic[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~43_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(0));

\out_banco_reg_a_sonic[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~44_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(1));

\out_banco_reg_a_sonic[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~45_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(2));

\out_banco_reg_a_sonic[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~47_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(3));

\out_banco_reg_a_sonic[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~49_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(4));

\out_banco_reg_a_sonic[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~51_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(5));

\out_banco_reg_a_sonic[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~53_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(6));

\out_banco_reg_a_sonic[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~55_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_a_sonic(7));

\out_banco_reg_b_sonic[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~56_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(0));

\out_banco_reg_b_sonic[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~57_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(1));

\out_banco_reg_b_sonic[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~58_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(2));

\out_banco_reg_b_sonic[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~46_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(3));

\out_banco_reg_b_sonic[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~48_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(4));

\out_banco_reg_b_sonic[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~50_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(5));

\out_banco_reg_b_sonic[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~52_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(6));

\out_banco_reg_b_sonic[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores_map|registrador~54_combout\,
	devoe => ww_devoe,
	o => ww_out_banco_reg_b_sonic(7));

\clock_sonic~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_sonic,
	o => \clock_sonic~input_o\);

\memoria_rom_port_map|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoria_rom_port_map|Mux1~0_combout\ = (\pc_port_map|pc_out\(2) & (!\pc_port_map|pc_out\(3) & ((\pc_port_map|pc_out\(1)) # (\pc_port_map|pc_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001110000000000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \memoria_rom_port_map|Mux1~0_combout\);

\pc_port_map|pc_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \memoria_rom_port_map|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_port_map|pc_out\(2));

\memoria_rom_port_map|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoria_rom_port_map|Mux2~0_combout\ = (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(2),
	datab => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \memoria_rom_port_map|Mux2~0_combout\);

\pc_port_map|pc_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \memoria_rom_port_map|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_port_map|pc_out\(1));

\memoria_rom_port_map|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoria_rom_port_map|Mux0~0_combout\ = (\pc_port_map|pc_out\(0) & (\pc_port_map|pc_out\(1) & \memoria_rom_port_map|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	combout => \memoria_rom_port_map|Mux0~0_combout\);

\pc_port_map|pc_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \memoria_rom_port_map|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_port_map|pc_out\(3));

\pc_port_map|pc_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_port_map|pc_out[0]~0_combout\ = !\pc_port_map|pc_out\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \pc_port_map|pc_out[0]~0_combout\);

\pc_port_map|pc_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \pc_port_map|pc_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_port_map|pc_out\(0));

\memoria_rom_port_map|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoria_rom_port_map|Mux6~0_combout\ = (((\pc_port_map|pc_out\(0) & \pc_port_map|pc_out\(1))) # (\pc_port_map|pc_out\(3))) # (\pc_port_map|pc_out\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \memoria_rom_port_map|Mux6~0_combout\);

\memoria_rom_port_map|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoria_rom_port_map|Mux5~0_combout\ = (!\pc_port_map|pc_out\(0) & (!\pc_port_map|pc_out\(1) & !\pc_port_map|pc_out\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \memoria_rom_port_map|Mux5~0_combout\);

\memoria_rom_port_map|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoria_rom_port_map|Mux4~0_combout\ = (!\pc_port_map|pc_out\(0) & (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \memoria_rom_port_map|Mux4~0_combout\);

\unidade_controle_map|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle_map|Mux2~0_combout\ = (\pc_port_map|pc_out\(3) & \memoria_rom_port_map|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(3),
	datab => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	combout => \unidade_controle_map|Mux2~0_combout\);

\unidade_controle_map|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle_map|Mux6~0_combout\ = (!\pc_port_map|pc_out\(2) & (!\pc_port_map|pc_out\(3) & \memoria_rom_port_map|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(2),
	datab => \pc_port_map|ALT_INV_pc_out\(3),
	datac => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	combout => \unidade_controle_map|Mux6~0_combout\);

\memoria_rom_port_map|Mux6~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoria_rom_port_map|Mux6~0_wirecell_combout\ = !\memoria_rom_port_map|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	combout => \memoria_rom_port_map|Mux6~0_wirecell_combout\);

\unidade_controle_map|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle_map|Mux7~0_combout\ = ((\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(0) & \pc_port_map|pc_out\(2)))) # (\pc_port_map|pc_out\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(1),
	datab => \pc_port_map|ALT_INV_pc_out\(0),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \unidade_controle_map|Mux7~0_combout\);

\unidade_controle_map|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle_map|Mux8~0_combout\ = (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(0) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(1),
	datab => \pc_port_map|ALT_INV_pc_out\(0),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \unidade_controle_map|Mux8~0_combout\);

\banco_registradores_map|registrador~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~59_combout\ = (\memoria_rom_port_map|Mux4~0_combout\ & !\unidade_controle_map|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux8~0_combout\,
	combout => \banco_registradores_map|registrador~59_combout\);

\banco_registradores_map|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[0]~0_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~19_q\);

\multiplexador_2x1_map|out_port[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[0]~0_combout\ = ( \banco_registradores_map|registrador~11_q\ & ( (!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # (\unidade_controle_map|Mux7~0_combout\ & 
-- (!\memoria_rom_port_map|Mux5~0_combout\ & ((\banco_registradores_map|registrador~19_q\) # (\memoria_rom_port_map|Mux6~0_combout\)))) ) ) # ( !\banco_registradores_map|registrador~11_q\ & ( (!\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((!\unidade_controle_map|Mux7~0_combout\) # ((\banco_registradores_map|registrador~19_q\ & !\memoria_rom_port_map|Mux5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001000100110111000100010001010100010001001101110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~19_q\,
	datad => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datae => \banco_registradores_map|ALT_INV_registrador~11_q\,
	combout => \multiplexador_2x1_map|out_port[0]~0_combout\);

\ula_map|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux7~0_combout\ = (\pc_port_map|pc_out\(2) & (!\pc_port_map|pc_out\(3) & (!\memoria_rom_port_map|Mux1~0_combout\ & \memoria_rom_port_map|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(2),
	datab => \pc_port_map|ALT_INV_pc_out\(3),
	datac => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	datad => \memoria_rom_port_map|ALT_INV_Mux0~0_combout\,
	combout => \ula_map|Mux7~0_combout\);

\banco_registradores_map|registrador~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~60_combout\ = (!\memoria_rom_port_map|Mux4~0_combout\ & !\unidade_controle_map|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux8~0_combout\,
	combout => \banco_registradores_map|registrador~60_combout\);

\banco_registradores_map|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[1]~1_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~12_q\);

\multiplexador_2x1_map|out_port[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[1]~1_combout\ = ( \banco_registradores_map|registrador~12_q\ & ( (!\unidade_controle_map|Mux7~0_combout\ & (((\memoria_rom_port_map|Mux5~0_combout\)))) # (\unidade_controle_map|Mux7~0_combout\ & 
-- (!\memoria_rom_port_map|Mux5~0_combout\ & ((\banco_registradores_map|registrador~20_q\) # (\memoria_rom_port_map|Mux6~0_combout\)))) ) ) # ( !\banco_registradores_map|registrador~12_q\ & ( (!\unidade_controle_map|Mux7~0_combout\ & 
-- (((\memoria_rom_port_map|Mux5~0_combout\)))) # (\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\ & (!\memoria_rom_port_map|Mux5~0_combout\ & \banco_registradores_map|registrador~20_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101100000111000011110000001100001011000001110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datac => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~20_q\,
	datae => \banco_registradores_map|ALT_INV_registrador~12_q\,
	combout => \multiplexador_2x1_map|out_port[1]~1_combout\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[2]~2_combout\ = (!\unidade_controle_map|Mux2~0_combout\ & ((\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))) # (\unidade_controle_map|Mux2~0_combout\ & (\ula_map|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux9~1_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	datac => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[2]~2_combout\);

\banco_registradores_map|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[2]~2_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~21_q\);

\banco_registradores_map|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[2]~2_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~13_q\);

\multiplexador_2x1_map|out_port[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[2]~2_combout\ = ( \banco_registradores_map|registrador~13_q\ & ( (\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux5~0_combout\ & ((\banco_registradores_map|registrador~21_q\) # 
-- (\memoria_rom_port_map|Mux6~0_combout\)))) ) ) # ( !\banco_registradores_map|registrador~13_q\ & ( (!\memoria_rom_port_map|Mux6~0_combout\ & (\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux5~0_combout\ & 
-- \banco_registradores_map|registrador~21_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000100000011000000000000001000000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datac => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~21_q\,
	datae => \banco_registradores_map|ALT_INV_registrador~13_q\,
	combout => \multiplexador_2x1_map|out_port[2]~2_combout\);

\banco_registradores_map|registrador~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~56_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~19_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~11_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000100000011100000010000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~19_q\,
	datac => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~11_q\,
	combout => \banco_registradores_map|registrador~56_combout\);

\banco_registradores_map|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~44_combout\ = ( \banco_registradores_map|registrador~20_q\ & ( \banco_registradores_map|registrador~12_q\ ) ) # ( !\banco_registradores_map|registrador~20_q\ & ( \banco_registradores_map|registrador~12_q\ & ( 
-- ((!\pc_port_map|pc_out\(1)) # ((!\pc_port_map|pc_out\(2)) # (\pc_port_map|pc_out\(3)))) # (\pc_port_map|pc_out\(0)) ) ) ) # ( \banco_registradores_map|registrador~20_q\ & ( !\banco_registradores_map|registrador~12_q\ & ( (!\pc_port_map|pc_out\(0) & 
-- (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \banco_registradores_map|ALT_INV_registrador~20_q\,
	dataf => \banco_registradores_map|ALT_INV_registrador~12_q\,
	combout => \banco_registradores_map|registrador~44_combout\);

\ula_map|port_map_multi|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~2_cout\ = CARRY(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~11_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~19_q\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~19_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~11_q\,
	cin => GND,
	cout => \ula_map|port_map_multi|Add0~2_cout\);

\ula_map|port_map_multi|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~5_sumout\ = SUM(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~12_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~20_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~2_cout\ ))
-- \ula_map|port_map_multi|Add0~6\ = CARRY(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~12_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~20_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~20_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~12_q\,
	cin => \ula_map|port_map_multi|Add0~2_cout\,
	sumout => \ula_map|port_map_multi|Add0~5_sumout\,
	cout => \ula_map|port_map_multi|Add0~6\);

\ula_map|port_map_multi|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~9_sumout\ = SUM(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~13_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~21_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~6\ ))
-- \ula_map|port_map_multi|Add0~10\ = CARRY(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~13_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~21_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~21_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~13_q\,
	cin => \ula_map|port_map_multi|Add0~6\,
	sumout => \ula_map|port_map_multi|Add0~9_sumout\,
	cout => \ula_map|port_map_multi|Add0~10\);

\banco_registradores_map|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~43_combout\ = ( \banco_registradores_map|registrador~19_q\ & ( \banco_registradores_map|registrador~11_q\ ) ) # ( !\banco_registradores_map|registrador~19_q\ & ( \banco_registradores_map|registrador~11_q\ & ( 
-- ((!\pc_port_map|pc_out\(1)) # ((!\pc_port_map|pc_out\(2)) # (\pc_port_map|pc_out\(3)))) # (\pc_port_map|pc_out\(0)) ) ) ) # ( \banco_registradores_map|registrador~19_q\ & ( !\banco_registradores_map|registrador~11_q\ & ( (!\pc_port_map|pc_out\(0) & 
-- (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \banco_registradores_map|ALT_INV_registrador~19_q\,
	dataf => \banco_registradores_map|ALT_INV_registrador~11_q\,
	combout => \banco_registradores_map|registrador~43_combout\);

\ula_map|port_map_multi|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add1~1_sumout\ = SUM(( \banco_registradores_map|registrador~43_combout\ ) + ( (\ula_map|port_map_multi|Add0~5_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( !VCC ))
-- \ula_map|port_map_multi|Add1~2\ = CARRY(( \banco_registradores_map|registrador~43_combout\ ) + ( (\ula_map|port_map_multi|Add0~5_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~5_sumout\,
	cin => GND,
	sumout => \ula_map|port_map_multi|Add1~1_sumout\,
	cout => \ula_map|port_map_multi|Add1~2\);

\ula_map|port_map_multi|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add1~5_sumout\ = SUM(( \banco_registradores_map|registrador~44_combout\ ) + ( (\ula_map|port_map_multi|Add0~9_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~2\ ))
-- \ula_map|port_map_multi|Add1~6\ = CARRY(( \banco_registradores_map|registrador~44_combout\ ) + ( (\ula_map|port_map_multi|Add0~9_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~9_sumout\,
	cin => \ula_map|port_map_multi|Add1~2\,
	sumout => \ula_map|port_map_multi|Add1~5_sumout\,
	cout => \ula_map|port_map_multi|Add1~6\);

\ula_map|port_map_multi|Add2~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ula_map|port_map_multi|Add2~30_cout\);

\ula_map|port_map_multi|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~1_sumout\ = SUM(( !\banco_registradores_map|registrador~43_combout\ ) + ( (\ula_map|port_map_multi|Add0~5_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~30_cout\ ))
-- \ula_map|port_map_multi|Add2~2\ = CARRY(( !\banco_registradores_map|registrador~43_combout\ ) + ( (\ula_map|port_map_multi|Add0~5_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~5_sumout\,
	cin => \ula_map|port_map_multi|Add2~30_cout\,
	sumout => \ula_map|port_map_multi|Add2~1_sumout\,
	cout => \ula_map|port_map_multi|Add2~2\);

\ula_map|port_map_multi|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~5_sumout\ = SUM(( !\banco_registradores_map|registrador~44_combout\ ) + ( (\ula_map|port_map_multi|Add0~9_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~2\ ))
-- \ula_map|port_map_multi|Add2~6\ = CARRY(( !\banco_registradores_map|registrador~44_combout\ ) + ( (\ula_map|port_map_multi|Add0~9_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~9_sumout\,
	cin => \ula_map|port_map_multi|Add2~2\,
	sumout => \ula_map|port_map_multi|Add2~5_sumout\,
	cout => \ula_map|port_map_multi|Add2~6\);

\ula_map|port_map_multi|produto~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~25_combout\ = (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add2~5_sumout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- (((\ula_map|port_map_multi|Add0~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add2~5_sumout\,
	combout => \ula_map|port_map_multi|produto~25_combout\);

\ula_map|port_map_multi|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add3~1_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~25_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~5_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~25_combout\))))) ) + ( \banco_registradores_map|registrador~43_combout\ ) + ( !VCC ))
-- \ula_map|port_map_multi|Add3~2\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~25_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~5_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~25_combout\))))) ) + ( \banco_registradores_map|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~5_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~25_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \ula_map|port_map_multi|Add3~1_sumout\,
	cout => \ula_map|port_map_multi|Add3~2\);

\ula_map|port_map_multi|Add4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add4~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ula_map|port_map_multi|Add4~26_cout\);

\ula_map|port_map_multi|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add4~1_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~25_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~5_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~25_combout\))))) ) + ( !\banco_registradores_map|registrador~43_combout\ ) + ( \ula_map|port_map_multi|Add4~26_cout\ ))
-- \ula_map|port_map_multi|Add4~2\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~25_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~5_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~25_combout\))))) ) + ( !\banco_registradores_map|registrador~43_combout\ ) + ( \ula_map|port_map_multi|Add4~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~5_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~25_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	cin => \ula_map|port_map_multi|Add4~26_cout\,
	sumout => \ula_map|port_map_multi|Add4~1_sumout\,
	cout => \ula_map|port_map_multi|Add4~2\);

\ula_map|port_map_multi|out_port[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|out_port[2]~0_combout\ = ( \ula_map|port_map_multi|Add2~5_sumout\ & ( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\)) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~5_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~9_sumout\)))) ) ) # ( !\ula_map|port_map_multi|Add2~5_sumout\ & ( 
-- (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~5_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011100000001010001010010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add1~5_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add2~5_sumout\,
	combout => \ula_map|port_map_multi|out_port[2]~0_combout\);

\ula_map|port_map_multi|out_port[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|out_port[2]~1_combout\ = ( \ula_map|port_map_multi|out_port[2]~0_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\) # ((\ula_map|port_map_multi|Add4~1_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|Add3~1_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\))) ) ) # ( !\ula_map|port_map_multi|out_port[2]~0_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|Add4~1_sumout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\ula_map|port_map_multi|Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~1_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add4~1_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_out_port[2]~0_combout\,
	combout => \ula_map|port_map_multi|out_port[2]~1_combout\);

\banco_registradores_map|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~45_combout\ = ( \banco_registradores_map|registrador~21_q\ & ( \banco_registradores_map|registrador~13_q\ ) ) # ( !\banco_registradores_map|registrador~21_q\ & ( \banco_registradores_map|registrador~13_q\ & ( 
-- ((!\pc_port_map|pc_out\(1)) # ((!\pc_port_map|pc_out\(2)) # (\pc_port_map|pc_out\(3)))) # (\pc_port_map|pc_out\(0)) ) ) ) # ( \banco_registradores_map|registrador~21_q\ & ( !\banco_registradores_map|registrador~13_q\ & ( (!\pc_port_map|pc_out\(0) & 
-- (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \banco_registradores_map|ALT_INV_registrador~21_q\,
	dataf => \banco_registradores_map|ALT_INV_registrador~13_q\,
	combout => \banco_registradores_map|registrador~45_combout\);

\ula_map|port_map_sub|A1|A1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_sub|A1|A1|cout~0_combout\ = (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (\multiplexador_2x1_map|out_port[0]~0_combout\ & (!\banco_registradores_map|registrador~43_combout\ & !\banco_registradores_map|registrador~44_combout\))) # 
-- (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\banco_registradores_map|registrador~44_combout\) # ((\multiplexador_2x1_map|out_port[0]~0_combout\ & !\banco_registradores_map|registrador~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100010011110000010001001111000001000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	combout => \ula_map|port_map_sub|A1|A1|cout~0_combout\);

\ula_map|port_map_adder|A1|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_adder|A1|cout~combout\ = (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (\multiplexador_2x1_map|out_port[0]~0_combout\ & (\banco_registradores_map|registrador~43_combout\ & \banco_registradores_map|registrador~44_combout\))) # 
-- (\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\multiplexador_2x1_map|out_port[0]~0_combout\ & \banco_registradores_map|registrador~43_combout\)) # (\banco_registradores_map|registrador~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	combout => \ula_map|port_map_adder|A1|cout~combout\);

\ula_map|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux9~0_combout\ = ( \ula_map|port_map_sub|A1|A1|cout~0_combout\ & ( \ula_map|port_map_adder|A1|cout~combout\ & ( (!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ $ 
-- (\banco_registradores_map|registrador~45_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\ & ((\banco_registradores_map|registrador~45_combout\))) # (\memoria_rom_port_map|Mux2~0_combout\ & 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\)))) ) ) ) # ( !\ula_map|port_map_sub|A1|A1|cout~0_combout\ & ( \ula_map|port_map_adder|A1|cout~combout\ & ( (!\memoria_rom_port_map|Mux2~0_combout\ & (!\banco_registradores_map|registrador~45_combout\ $ 
-- (((\multiplexador_2x1_map|out_port[2]~2_combout\) # (\memoria_rom_port_map|Mux1~0_combout\))))) # (\memoria_rom_port_map|Mux2~0_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ $ (((!\banco_registradores_map|registrador~45_combout\) # 
-- (\memoria_rom_port_map|Mux1~0_combout\))))) ) ) ) # ( \ula_map|port_map_sub|A1|A1|cout~0_combout\ & ( !\ula_map|port_map_adder|A1|cout~combout\ & ( (!\memoria_rom_port_map|Mux2~0_combout\ & (!\banco_registradores_map|registrador~45_combout\ $ 
-- (((!\multiplexador_2x1_map|out_port[2]~2_combout\) # (\memoria_rom_port_map|Mux1~0_combout\))))) # (\memoria_rom_port_map|Mux2~0_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ $ (((\banco_registradores_map|registrador~45_combout\) # 
-- (\memoria_rom_port_map|Mux1~0_combout\))))) ) ) ) # ( !\ula_map|port_map_sub|A1|A1|cout~0_combout\ & ( !\ula_map|port_map_adder|A1|cout~combout\ & ( (!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ $ 
-- (!\banco_registradores_map|registrador~45_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\ & ((\banco_registradores_map|registrador~45_combout\))) # (\memoria_rom_port_map|Mux2~0_combout\ & 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111100011010010011010011110000101011010111100000100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	datae => \ula_map|port_map_sub|A1|A1|ALT_INV_cout~0_combout\,
	dataf => \ula_map|port_map_adder|A1|ALT_INV_cout~combout\,
	combout => \ula_map|Mux9~0_combout\);

\ula_map|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux9~1_combout\ = (!\memoria_rom_port_map|Mux0~0_combout\ & (((\ula_map|Mux7~0_combout\ & \ula_map|port_map_multi|out_port[2]~1_combout\)) # (\ula_map|Mux9~0_combout\))) # (\memoria_rom_port_map|Mux0~0_combout\ & (\ula_map|Mux7~0_combout\ & 
-- (\ula_map|port_map_multi|out_port[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux0~0_combout\,
	datab => \ula_map|ALT_INV_Mux7~0_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_out_port[2]~1_combout\,
	datad => \ula_map|ALT_INV_Mux9~0_combout\,
	combout => \ula_map|Mux9~1_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[1]~1_combout\ = (!\unidade_controle_map|Mux2~0_combout\ & ((\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\))) # (\unidade_controle_map|Mux2~0_combout\ & (\ula_map|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux10~2_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	datac => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[1]~1_combout\);

\banco_registradores_map|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[1]~1_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~20_q\);

\ula_map|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux10~0_combout\ = ( \ula_map|port_map_multi|Add2~1_sumout\ & ( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\multiplexador_2x1_map|out_port[1]~1_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~1_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~5_sumout\)))) ) ) # ( !\ula_map|port_map_multi|Add2~1_sumout\ & ( 
-- (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~1_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101100000101000100010000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_Add0~5_sumout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~1_sumout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add2~1_sumout\,
	combout => \ula_map|Mux10~0_combout\);

\ula_map|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux10~1_combout\ = ( \multiplexador_2x1_map|out_port[1]~1_combout\ & ( \banco_registradores_map|registrador~44_combout\ & ( ((\multiplexador_2x1_map|out_port[0]~0_combout\ & (!\memoria_rom_port_map|Mux2~0_combout\ $ 
-- (!\banco_registradores_map|registrador~43_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\) ) ) ) # ( !\multiplexador_2x1_map|out_port[1]~1_combout\ & ( \banco_registradores_map|registrador~44_combout\ & ( (!\memoria_rom_port_map|Mux1~0_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[0]~0_combout\) # (!\memoria_rom_port_map|Mux2~0_combout\ $ (\banco_registradores_map|registrador~43_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & (!\memoria_rom_port_map|Mux2~0_combout\)) ) ) ) # ( 
-- \multiplexador_2x1_map|out_port[1]~1_combout\ & ( !\banco_registradores_map|registrador~44_combout\ & ( (!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[0]~0_combout\) # (!\memoria_rom_port_map|Mux2~0_combout\ $ 
-- (\banco_registradores_map|registrador~43_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & (\memoria_rom_port_map|Mux2~0_combout\)) ) ) ) # ( !\multiplexador_2x1_map|out_port[1]~1_combout\ & ( !\banco_registradores_map|registrador~44_combout\ & ( 
-- (!\memoria_rom_port_map|Mux1~0_combout\ & (\multiplexador_2x1_map|out_port[0]~0_combout\ & (!\memoria_rom_port_map|Mux2~0_combout\ $ (!\banco_registradores_map|registrador~43_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000110110011101010111101010111001100011011100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datae => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	combout => \ula_map|Mux10~1_combout\);

\ula_map|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux10~2_combout\ = (!\memoria_rom_port_map|Mux0~0_combout\ & (((\ula_map|Mux10~0_combout\ & \ula_map|Mux7~0_combout\)) # (\ula_map|Mux10~1_combout\))) # (\memoria_rom_port_map|Mux0~0_combout\ & (\ula_map|Mux10~0_combout\ & 
-- (\ula_map|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux0~0_combout\,
	datab => \ula_map|ALT_INV_Mux10~0_combout\,
	datac => \ula_map|ALT_INV_Mux7~0_combout\,
	datad => \ula_map|ALT_INV_Mux10~1_combout\,
	combout => \ula_map|Mux10~2_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[0]~0_combout\ = (!\unidade_controle_map|Mux2~0_combout\ & ((\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (\unidade_controle_map|Mux2~0_combout\ & (\ula_map|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux11~0_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	datac => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[0]~0_combout\);

\banco_registradores_map|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[0]~0_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~11_q\);

\ula_map|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux11~0_combout\ = ( \pc_port_map|pc_out\(2) & ( (\banco_registradores_map|registrador~11_q\ & (!\pc_port_map|pc_out\(1) & (!\pc_port_map|pc_out\(0) & !\pc_port_map|pc_out\(3)))) ) ) # ( !\pc_port_map|pc_out\(2) & ( (!\pc_port_map|pc_out\(3) & 
-- (!\banco_registradores_map|registrador~11_q\ $ (((\pc_port_map|pc_out\(1) & \pc_port_map|pc_out\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100100000000010000000000000010101001000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~11_q\,
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(0),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \pc_port_map|ALT_INV_pc_out\(2),
	combout => \ula_map|Mux11~0_combout\);

\ula_map|port_map_multi|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|process_0~1_combout\ = (\multiplexador_2x1_map|out_port[0]~0_combout\ & !\multiplexador_2x1_map|out_port[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	combout => \ula_map|port_map_multi|process_0~1_combout\);

\ula_map|port_map_multi|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|process_0~2_combout\ = (!\multiplexador_2x1_map|out_port[1]~1_combout\ & \multiplexador_2x1_map|out_port[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	combout => \ula_map|port_map_multi|process_0~2_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[3]~3_combout\ = (!\unidade_controle_map|Mux2~0_combout\ & ((\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\))) # (\unidade_controle_map|Mux2~0_combout\ & (\ula_map|Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux8~2_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	datac => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[3]~3_combout\);

\banco_registradores_map|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[3]~3_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~22_q\);

\banco_registradores_map|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[3]~3_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~14_q\);

\ula_map|port_map_multi|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~13_sumout\ = SUM(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~14_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~22_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~10\ ))
-- \ula_map|port_map_multi|Add0~14\ = CARRY(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~14_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~22_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~22_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~14_q\,
	cin => \ula_map|port_map_multi|Add0~10\,
	sumout => \ula_map|port_map_multi|Add0~13_sumout\,
	cout => \ula_map|port_map_multi|Add0~14\);

\ula_map|port_map_multi|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add1~9_sumout\ = SUM(( \banco_registradores_map|registrador~45_combout\ ) + ( (\ula_map|port_map_multi|Add0~13_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~6\ ))
-- \ula_map|port_map_multi|Add1~10\ = CARRY(( \banco_registradores_map|registrador~45_combout\ ) + ( (\ula_map|port_map_multi|Add0~13_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~13_sumout\,
	cin => \ula_map|port_map_multi|Add1~6\,
	sumout => \ula_map|port_map_multi|Add1~9_sumout\,
	cout => \ula_map|port_map_multi|Add1~10\);

\ula_map|port_map_multi|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~9_sumout\ = SUM(( !\banco_registradores_map|registrador~45_combout\ ) + ( (\ula_map|port_map_multi|Add0~13_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~6\ ))
-- \ula_map|port_map_multi|Add2~10\ = CARRY(( !\banco_registradores_map|registrador~45_combout\ ) + ( (\ula_map|port_map_multi|Add0~13_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~13_sumout\,
	cin => \ula_map|port_map_multi|Add2~6\,
	sumout => \ula_map|port_map_multi|Add2~9_sumout\,
	cout => \ula_map|port_map_multi|Add2~10\);

\ula_map|port_map_multi|produto~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~0_combout\ = (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add2~9_sumout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- (((\ula_map|port_map_multi|Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add2~9_sumout\,
	combout => \ula_map|port_map_multi|produto~0_combout\);

\ula_map|port_map_multi|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add4~5_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~0_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~9_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~0_combout\))))) ) + ( !\banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add4~2\ ))
-- \ula_map|port_map_multi|Add4~6\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~0_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~9_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~0_combout\))))) ) + ( !\banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~0_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	cin => \ula_map|port_map_multi|Add4~2\,
	sumout => \ula_map|port_map_multi|Add4~5_sumout\,
	cout => \ula_map|port_map_multi|Add4~6\);

\ula_map|port_map_multi|produto~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~1_combout\ = ( \ula_map|port_map_multi|Add4~5_sumout\ & ( ((!\ula_map|port_map_multi|process_0~1_combout\ & ((\ula_map|port_map_multi|produto~0_combout\))) # (\ula_map|port_map_multi|process_0~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~9_sumout\))) # (\ula_map|port_map_multi|process_0~2_combout\) ) ) # ( !\ula_map|port_map_multi|Add4~5_sumout\ & ( (!\ula_map|port_map_multi|process_0~2_combout\ & ((!\ula_map|port_map_multi|process_0~1_combout\ & 
-- ((\ula_map|port_map_multi|produto~0_combout\))) # (\ula_map|port_map_multi|process_0~1_combout\ & (\ula_map|port_map_multi|Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~1_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_process_0~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~0_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add4~5_sumout\,
	combout => \ula_map|port_map_multi|produto~1_combout\);

\ula_map|port_map_multi|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add3~5_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~0_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~9_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~0_combout\))))) ) + ( \banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add3~2\ ))
-- \ula_map|port_map_multi|Add3~6\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~0_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~9_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~0_combout\))))) ) + ( \banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~0_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	cin => \ula_map|port_map_multi|Add3~2\,
	sumout => \ula_map|port_map_multi|Add3~5_sumout\,
	cout => \ula_map|port_map_multi|Add3~6\);

\ula_map|port_map_multi|Add6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add6~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ula_map|port_map_multi|Add6~22_cout\);

\ula_map|port_map_multi|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add6~1_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~1_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~5_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~1_combout\))))) ) + ( !\banco_registradores_map|registrador~43_combout\ ) + ( \ula_map|port_map_multi|Add6~22_cout\ ))
-- \ula_map|port_map_multi|Add6~2\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~1_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~5_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~1_combout\))))) ) + ( !\banco_registradores_map|registrador~43_combout\ ) + ( \ula_map|port_map_multi|Add6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~5_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~1_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	cin => \ula_map|port_map_multi|Add6~22_cout\,
	sumout => \ula_map|port_map_multi|Add6~1_sumout\,
	cout => \ula_map|port_map_multi|Add6~2\);

\banco_registradores_map|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~46_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~22_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~22_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~14_q\,
	combout => \banco_registradores_map|registrador~46_combout\);

\multiplexador_2x1_map|out_port[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[3]~3_combout\ = (\unidade_controle_map|Mux7~0_combout\ & \banco_registradores_map|registrador~46_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~46_combout\,
	combout => \multiplexador_2x1_map|out_port[3]~3_combout\);

\ula_map|port_map_multi|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add5~1_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~1_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~5_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~1_combout\))))) ) + ( \banco_registradores_map|registrador~43_combout\ ) + ( !VCC ))
-- \ula_map|port_map_multi|Add5~2\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~1_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~5_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~1_combout\))))) ) + ( \banco_registradores_map|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~5_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~1_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \ula_map|port_map_multi|Add5~1_sumout\,
	cout => \ula_map|port_map_multi|Add5~2\);

\ula_map|port_map_multi|out_port[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|out_port[3]~6_combout\ = ( !\multiplexador_2x1_map|out_port[3]~3_combout\ & ( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|produto~1_combout\)) # 
-- (\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|Add3~5_sumout\)))))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((((\ula_map|port_map_multi|Add5~1_sumout\))))) ) ) # ( \multiplexador_2x1_map|out_port[3]~3_combout\ & ( 
-- (((!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|Add6~1_sumout\))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & (\ula_map|port_map_multi|produto~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_produto~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add6~1_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add3~5_sumout\,
	datae => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	dataf => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datag => \ula_map|port_map_multi|ALT_INV_Add5~1_sumout\,
	combout => \ula_map|port_map_multi|out_port[3]~6_combout\);

\banco_registradores_map|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~47_combout\ = ( \banco_registradores_map|registrador~22_q\ & ( \banco_registradores_map|registrador~14_q\ ) ) # ( !\banco_registradores_map|registrador~22_q\ & ( \banco_registradores_map|registrador~14_q\ & ( 
-- ((!\pc_port_map|pc_out\(1)) # ((!\pc_port_map|pc_out\(2)) # (\pc_port_map|pc_out\(3)))) # (\pc_port_map|pc_out\(0)) ) ) ) # ( \banco_registradores_map|registrador~22_q\ & ( !\banco_registradores_map|registrador~14_q\ & ( (!\pc_port_map|pc_out\(0) & 
-- (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \banco_registradores_map|ALT_INV_registrador~22_q\,
	dataf => \banco_registradores_map|ALT_INV_registrador~14_q\,
	combout => \banco_registradores_map|registrador~47_combout\);

\ula_map|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux8~0_combout\ = ( \ula_map|port_map_adder|A1|cout~combout\ & ( (!\banco_registradores_map|registrador~45_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # 
-- (!\ula_map|port_map_sub|A1|A1|cout~0_combout\)))) # (\banco_registradores_map|registrador~45_combout\ & (\memoria_rom_port_map|Mux2~0_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\) # (!\ula_map|port_map_sub|A1|A1|cout~0_combout\)))) ) ) # ( 
-- !\ula_map|port_map_adder|A1|cout~combout\ & ( (!\banco_registradores_map|registrador~45_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & !\ula_map|port_map_sub|A1|A1|cout~0_combout\)))) # 
-- (\banco_registradores_map|registrador~45_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\) # ((\memoria_rom_port_map|Mux2~0_combout\ & !\ula_map|port_map_sub|A1|A1|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110110101100110001011000010011101101101011001100010110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	datad => \ula_map|port_map_sub|A1|A1|ALT_INV_cout~0_combout\,
	datae => \ula_map|port_map_adder|A1|ALT_INV_cout~combout\,
	combout => \ula_map|Mux8~0_combout\);

\ula_map|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux8~1_combout\ = ( \ula_map|Mux8~0_combout\ & ( (!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ $ (!\banco_registradores_map|registrador~47_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & 
-- ((!\memoria_rom_port_map|Mux2~0_combout\ & ((\banco_registradores_map|registrador~47_combout\))) # (\memoria_rom_port_map|Mux2~0_combout\ & (\multiplexador_2x1_map|out_port[3]~3_combout\)))) ) ) # ( !\ula_map|Mux8~0_combout\ & ( 
-- (!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ $ (\banco_registradores_map|registrador~47_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\ & 
-- ((\banco_registradores_map|registrador~47_combout\))) # (\memoria_rom_port_map|Mux2~0_combout\ & (\multiplexador_2x1_map|out_port[3]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100101111000011011110001111000001001011110000110111100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	datae => \ula_map|ALT_INV_Mux8~0_combout\,
	combout => \ula_map|Mux8~1_combout\);

\ula_map|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux8~2_combout\ = (!\memoria_rom_port_map|Mux0~0_combout\ & (((\ula_map|Mux7~0_combout\ & \ula_map|port_map_multi|out_port[3]~6_combout\)) # (\ula_map|Mux8~1_combout\))) # (\memoria_rom_port_map|Mux0~0_combout\ & (\ula_map|Mux7~0_combout\ & 
-- (\ula_map|port_map_multi|out_port[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux0~0_combout\,
	datab => \ula_map|ALT_INV_Mux7~0_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_out_port[3]~6_combout\,
	datad => \ula_map|ALT_INV_Mux8~1_combout\,
	combout => \ula_map|Mux8~2_combout\);

\ula_map|port_map_multi|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|process_0~0_combout\ = (\multiplexador_2x1_map|out_port[1]~1_combout\ & !\multiplexador_2x1_map|out_port[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	combout => \ula_map|port_map_multi|process_0~0_combout\);

\ula_map|port_map_multi|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|process_0~3_combout\ = (!\multiplexador_2x1_map|out_port[2]~2_combout\ & \multiplexador_2x1_map|out_port[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	combout => \ula_map|port_map_multi|process_0~3_combout\);

\banco_registradores_map|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[4]~4_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~15_q\);

\ula_map|port_map_multi|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~17_sumout\ = SUM(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~15_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~23_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~14\ ))
-- \ula_map|port_map_multi|Add0~18\ = CARRY(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~15_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~23_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~23_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~15_q\,
	cin => \ula_map|port_map_multi|Add0~14\,
	sumout => \ula_map|port_map_multi|Add0~17_sumout\,
	cout => \ula_map|port_map_multi|Add0~18\);

\ula_map|port_map_multi|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add1~13_sumout\ = SUM(( \banco_registradores_map|registrador~47_combout\ ) + ( (\ula_map|port_map_multi|Add0~17_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~10\ ))
-- \ula_map|port_map_multi|Add1~14\ = CARRY(( \banco_registradores_map|registrador~47_combout\ ) + ( (\ula_map|port_map_multi|Add0~17_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~17_sumout\,
	cin => \ula_map|port_map_multi|Add1~10\,
	sumout => \ula_map|port_map_multi|Add1~13_sumout\,
	cout => \ula_map|port_map_multi|Add1~14\);

\ula_map|port_map_multi|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~13_sumout\ = SUM(( !\banco_registradores_map|registrador~47_combout\ ) + ( (\ula_map|port_map_multi|Add0~17_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~10\ ))
-- \ula_map|port_map_multi|Add2~14\ = CARRY(( !\banco_registradores_map|registrador~47_combout\ ) + ( (\ula_map|port_map_multi|Add0~17_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~17_sumout\,
	cin => \ula_map|port_map_multi|Add2~10\,
	sumout => \ula_map|port_map_multi|Add2~13_sumout\,
	cout => \ula_map|port_map_multi|Add2~14\);

\ula_map|port_map_multi|produto~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~2_combout\ = (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add2~13_sumout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- (((\ula_map|port_map_multi|Add0~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add2~13_sumout\,
	combout => \ula_map|port_map_multi|produto~2_combout\);

\ula_map|port_map_multi|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add3~9_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~2_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~13_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~2_combout\))))) ) + ( \banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add3~6\ ))
-- \ula_map|port_map_multi|Add3~10\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~2_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~13_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~2_combout\))))) ) + ( \banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~2_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	cin => \ula_map|port_map_multi|Add3~6\,
	sumout => \ula_map|port_map_multi|Add3~9_sumout\,
	cout => \ula_map|port_map_multi|Add3~10\);

\ula_map|port_map_multi|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add4~9_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~2_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~13_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~2_combout\))))) ) + ( !\banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add4~6\ ))
-- \ula_map|port_map_multi|Add4~10\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~2_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~13_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~2_combout\))))) ) + ( !\banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~2_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	cin => \ula_map|port_map_multi|Add4~6\,
	sumout => \ula_map|port_map_multi|Add4~9_sumout\,
	cout => \ula_map|port_map_multi|Add4~10\);

\ula_map|port_map_multi|produto~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~3_combout\ = ( \ula_map|port_map_multi|Add4~9_sumout\ & ( ((!\ula_map|port_map_multi|process_0~1_combout\ & ((\ula_map|port_map_multi|produto~2_combout\))) # (\ula_map|port_map_multi|process_0~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~13_sumout\))) # (\ula_map|port_map_multi|process_0~2_combout\) ) ) # ( !\ula_map|port_map_multi|Add4~9_sumout\ & ( (!\ula_map|port_map_multi|process_0~2_combout\ & ((!\ula_map|port_map_multi|process_0~1_combout\ & 
-- ((\ula_map|port_map_multi|produto~2_combout\))) # (\ula_map|port_map_multi|process_0~1_combout\ & (\ula_map|port_map_multi|Add1~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~1_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_process_0~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~2_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add4~9_sumout\,
	combout => \ula_map|port_map_multi|produto~3_combout\);

\ula_map|port_map_multi|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add6~5_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~3_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~9_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~3_combout\))))) ) + ( !\banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add6~2\ ))
-- \ula_map|port_map_multi|Add6~6\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~3_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~9_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~3_combout\))))) ) + ( !\banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~3_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	cin => \ula_map|port_map_multi|Add6~2\,
	sumout => \ula_map|port_map_multi|Add6~5_sumout\,
	cout => \ula_map|port_map_multi|Add6~6\);

\ula_map|port_map_multi|produto~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~4_combout\ = ( \ula_map|port_map_multi|Add6~5_sumout\ & ( ((!\ula_map|port_map_multi|process_0~0_combout\ & ((\ula_map|port_map_multi|produto~3_combout\))) # (\ula_map|port_map_multi|process_0~0_combout\ & 
-- (\ula_map|port_map_multi|Add3~9_sumout\))) # (\ula_map|port_map_multi|process_0~3_combout\) ) ) # ( !\ula_map|port_map_multi|Add6~5_sumout\ & ( (!\ula_map|port_map_multi|process_0~3_combout\ & ((!\ula_map|port_map_multi|process_0~0_combout\ & 
-- ((\ula_map|port_map_multi|produto~3_combout\))) # (\ula_map|port_map_multi|process_0~0_combout\ & (\ula_map|port_map_multi|Add3~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~0_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_process_0~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~3_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add6~5_sumout\,
	combout => \ula_map|port_map_multi|produto~4_combout\);

\ula_map|port_map_multi|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add5~5_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~3_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~9_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~3_combout\))))) ) + ( \banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add5~2\ ))
-- \ula_map|port_map_multi|Add5~6\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~3_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~9_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~3_combout\))))) ) + ( \banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~3_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	cin => \ula_map|port_map_multi|Add5~2\,
	sumout => \ula_map|port_map_multi|Add5~5_sumout\,
	cout => \ula_map|port_map_multi|Add5~6\);

\ula_map|port_map_multi|Add8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add8~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ula_map|port_map_multi|Add8~18_cout\);

\ula_map|port_map_multi|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add8~1_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\ula_map|port_map_multi|produto~4_combout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- ((\ula_map|port_map_multi|Add5~5_sumout\))))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (\ula_map|port_map_multi|produto~4_combout\)) ) + ( !\banco_registradores_map|registrador~43_combout\ ) + ( \ula_map|port_map_multi|Add8~18_cout\ ))
-- \ula_map|port_map_multi|Add8~2\ = CARRY(( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\ula_map|port_map_multi|produto~4_combout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- ((\ula_map|port_map_multi|Add5~5_sumout\))))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (\ula_map|port_map_multi|produto~4_combout\)) ) + ( !\banco_registradores_map|registrador~43_combout\ ) + ( \ula_map|port_map_multi|Add8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011001100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_produto~4_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~5_sumout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	cin => \ula_map|port_map_multi|Add8~18_cout\,
	sumout => \ula_map|port_map_multi|Add8~1_sumout\,
	cout => \ula_map|port_map_multi|Add8~2\);

\ula_map|port_map_multi|out_port[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|out_port[4]~3_combout\ = ( \ula_map|port_map_multi|Add5~5_sumout\ & ( \ula_map|port_map_multi|Add8~1_sumout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & (((\ula_map|port_map_multi|produto~4_combout\) # 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (((\multiplexador_2x1_map|out_port[4]~4_combout\ & \ula_map|port_map_multi|produto~4_combout\)))) ) ) ) 
-- # ( !\ula_map|port_map_multi|Add5~5_sumout\ & ( \ula_map|port_map_multi|Add8~1_sumout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & (((!\multiplexador_2x1_map|out_port[2]~2_combout\ & \ula_map|port_map_multi|produto~4_combout\)) # 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (((\multiplexador_2x1_map|out_port[4]~4_combout\ & \ula_map|port_map_multi|produto~4_combout\)))) ) ) ) # ( \ula_map|port_map_multi|Add5~5_sumout\ & ( 
-- !\ula_map|port_map_multi|Add8~1_sumout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & ((\ula_map|port_map_multi|produto~4_combout\) # (\multiplexador_2x1_map|out_port[2]~2_combout\)))) # 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & (((\multiplexador_2x1_map|out_port[4]~4_combout\ & \ula_map|port_map_multi|produto~4_combout\)))) ) ) ) # ( !\ula_map|port_map_multi|Add5~5_sumout\ & ( !\ula_map|port_map_multi|Add8~1_sumout\ & ( 
-- (\ula_map|port_map_multi|produto~4_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ & !\multiplexador_2x1_map|out_port[4]~4_combout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- ((\multiplexador_2x1_map|out_port[4]~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000011010000001100001100001100100011110100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~4_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add5~5_sumout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add8~1_sumout\,
	combout => \ula_map|port_map_multi|out_port[4]~3_combout\);

\banco_registradores_map|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~49_combout\ = ( \banco_registradores_map|registrador~23_q\ & ( \banco_registradores_map|registrador~15_q\ ) ) # ( !\banco_registradores_map|registrador~23_q\ & ( \banco_registradores_map|registrador~15_q\ & ( 
-- ((!\pc_port_map|pc_out\(1)) # ((!\pc_port_map|pc_out\(2)) # (\pc_port_map|pc_out\(3)))) # (\pc_port_map|pc_out\(0)) ) ) ) # ( \banco_registradores_map|registrador~23_q\ & ( !\banco_registradores_map|registrador~15_q\ & ( (!\pc_port_map|pc_out\(0) & 
-- (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \banco_registradores_map|ALT_INV_registrador~23_q\,
	dataf => \banco_registradores_map|ALT_INV_registrador~15_q\,
	combout => \banco_registradores_map|registrador~49_combout\);

\ula_map|port_map_sub|A1|A3|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_sub|A1|A3|cout~0_combout\ = ( \banco_registradores_map|registrador~47_combout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\) # ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\ula_map|port_map_sub|A1|A1|cout~0_combout\) # 
-- (\banco_registradores_map|registrador~45_combout\))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & (\banco_registradores_map|registrador~45_combout\ & !\ula_map|port_map_sub|A1|A1|cout~0_combout\))) ) ) # ( 
-- !\banco_registradores_map|registrador~47_combout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\ula_map|port_map_sub|A1|A1|cout~0_combout\) # 
-- (\banco_registradores_map|registrador~45_combout\))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & (\banco_registradores_map|registrador~45_combout\ & !\ula_map|port_map_sub|A1|A1|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000000000111111111011001010110010000000001111111110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	datac => \ula_map|port_map_sub|A1|A1|ALT_INV_cout~0_combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datae => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	combout => \ula_map|port_map_sub|A1|A3|cout~0_combout\);

\ula_map|port_map_adder|A3|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_adder|A3|cout~combout\ = ( \banco_registradores_map|registrador~47_combout\ & ( ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\banco_registradores_map|registrador~45_combout\ & \ula_map|port_map_adder|A1|cout~combout\)) # 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_adder|A1|cout~combout\) # (\banco_registradores_map|registrador~45_combout\)))) # (\multiplexador_2x1_map|out_port[3]~3_combout\) ) ) # ( 
-- !\banco_registradores_map|registrador~47_combout\ & ( (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\banco_registradores_map|registrador~45_combout\ & \ula_map|port_map_adder|A1|cout~combout\)) # 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_adder|A1|cout~combout\) # (\banco_registradores_map|registrador~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	datac => \ula_map|port_map_adder|A1|ALT_INV_cout~combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datae => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	combout => \ula_map|port_map_adder|A3|cout~combout\);

\ula_map|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux7~2_combout\ = ( !\memoria_rom_port_map|Mux2~0_combout\ & ( (!\memoria_rom_port_map|Mux0~0_combout\ & (!\banco_registradores_map|registrador~49_combout\ $ (((!\multiplexador_2x1_map|out_port[4]~4_combout\ $ 
-- (\ula_map|port_map_adder|A3|cout~combout\)) # (\memoria_rom_port_map|Mux1~0_combout\))))) ) ) # ( \memoria_rom_port_map|Mux2~0_combout\ & ( (!\memoria_rom_port_map|Mux0~0_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ $ 
-- (((!\banco_registradores_map|registrador~49_combout\ $ (!\ula_map|port_map_sub|A1|A3|cout~0_combout\)) # (\memoria_rom_port_map|Mux1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100101010101100101100011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datac => \ula_map|port_map_sub|A1|A3|ALT_INV_cout~0_combout\,
	datad => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	datae => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	dataf => \memoria_rom_port_map|ALT_INV_Mux0~0_combout\,
	datag => \ula_map|port_map_adder|A3|ALT_INV_cout~combout\,
	combout => \ula_map|Mux7~2_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[4]~4_combout\ = ( \unidade_controle_map|Mux2~0_combout\ & ( \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ & ( ((\ula_map|Mux7~0_combout\ & ((\ula_map|port_map_multi|out_port[4]~3_combout\) # 
-- (\ula_map|port_map_multi|out_port[4]~2_combout\)))) # (\ula_map|Mux7~2_combout\) ) ) ) # ( !\unidade_controle_map|Mux2~0_combout\ & ( \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ ) ) # ( \unidade_controle_map|Mux2~0_combout\ & ( 
-- !\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ & ( ((\ula_map|Mux7~0_combout\ & ((\ula_map|port_map_multi|out_port[4]~3_combout\) # (\ula_map|port_map_multi|out_port[4]~2_combout\)))) # (\ula_map|Mux7~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011111111111111111111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux7~0_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_out_port[4]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_out_port[4]~3_combout\,
	datad => \ula_map|ALT_INV_Mux7~2_combout\,
	datae => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	dataf => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[4]~4_combout\);

\banco_registradores_map|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[4]~4_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~23_q\);

\banco_registradores_map|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~48_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~23_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~23_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~15_q\,
	combout => \banco_registradores_map|registrador~48_combout\);

\multiplexador_2x1_map|out_port[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[4]~4_combout\ = (\unidade_controle_map|Mux7~0_combout\ & \banco_registradores_map|registrador~48_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~48_combout\,
	combout => \multiplexador_2x1_map|out_port[4]~4_combout\);

\ula_map|port_map_multi|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add7~1_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~4_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- ((\ula_map|port_map_multi|Add5~5_sumout\))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (\ula_map|port_map_multi|produto~4_combout\)))) ) + ( \banco_registradores_map|registrador~43_combout\ ) + ( !VCC ))
-- \ula_map|port_map_multi|Add7~2\ = CARRY(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~4_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- ((\ula_map|port_map_multi|Add5~5_sumout\))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (\ula_map|port_map_multi|produto~4_combout\)))) ) + ( \banco_registradores_map|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~4_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add5~5_sumout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \ula_map|port_map_multi|Add7~1_sumout\,
	cout => \ula_map|port_map_multi|Add7~2\);

\ula_map|port_map_multi|out_port[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|out_port[4]~2_combout\ = (\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & \ula_map|port_map_multi|Add7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add7~1_sumout\,
	combout => \ula_map|port_map_multi|out_port[4]~2_combout\);

\ula_map|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux7~1_combout\ = ((\ula_map|Mux7~0_combout\ & ((\ula_map|port_map_multi|out_port[4]~3_combout\) # (\ula_map|port_map_multi|out_port[4]~2_combout\)))) # (\ula_map|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100010101111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux7~0_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_out_port[4]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_out_port[4]~3_combout\,
	datad => \ula_map|ALT_INV_Mux7~2_combout\,
	combout => \ula_map|Mux7~1_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[5]~5_combout\ = (!\unidade_controle_map|Mux2~0_combout\ & ((\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\))) # (\unidade_controle_map|Mux2~0_combout\ & (\ula_map|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux6~2_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	datac => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[5]~5_combout\);

\banco_registradores_map|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[5]~5_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~24_q\);

\banco_registradores_map|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[5]~5_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~16_q\);

\banco_registradores_map|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~50_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~24_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~24_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~16_q\,
	combout => \banco_registradores_map|registrador~50_combout\);

\multiplexador_2x1_map|out_port[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[5]~5_combout\ = (\unidade_controle_map|Mux7~0_combout\ & \banco_registradores_map|registrador~50_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~50_combout\,
	combout => \multiplexador_2x1_map|out_port[5]~5_combout\);

\ula_map|port_map_multi|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~21_sumout\ = SUM(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~16_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~24_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~18\ ))
-- \ula_map|port_map_multi|Add0~22\ = CARRY(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~16_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~24_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~24_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~16_q\,
	cin => \ula_map|port_map_multi|Add0~18\,
	sumout => \ula_map|port_map_multi|Add0~21_sumout\,
	cout => \ula_map|port_map_multi|Add0~22\);

\ula_map|port_map_multi|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add1~17_sumout\ = SUM(( \banco_registradores_map|registrador~49_combout\ ) + ( (\ula_map|port_map_multi|Add0~21_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~14\ ))
-- \ula_map|port_map_multi|Add1~18\ = CARRY(( \banco_registradores_map|registrador~49_combout\ ) + ( (\ula_map|port_map_multi|Add0~21_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~21_sumout\,
	cin => \ula_map|port_map_multi|Add1~14\,
	sumout => \ula_map|port_map_multi|Add1~17_sumout\,
	cout => \ula_map|port_map_multi|Add1~18\);

\ula_map|port_map_multi|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~17_sumout\ = SUM(( !\banco_registradores_map|registrador~49_combout\ ) + ( (\ula_map|port_map_multi|Add0~21_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~14\ ))
-- \ula_map|port_map_multi|Add2~18\ = CARRY(( !\banco_registradores_map|registrador~49_combout\ ) + ( (\ula_map|port_map_multi|Add0~21_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~21_sumout\,
	cin => \ula_map|port_map_multi|Add2~14\,
	sumout => \ula_map|port_map_multi|Add2~17_sumout\,
	cout => \ula_map|port_map_multi|Add2~18\);

\ula_map|port_map_multi|produto~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~28_combout\ = (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add2~17_sumout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- (((\ula_map|port_map_multi|Add0~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~21_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add2~17_sumout\,
	combout => \ula_map|port_map_multi|produto~28_combout\);

\ula_map|port_map_multi|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add3~13_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~28_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~17_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~28_combout\))))) ) + ( \banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add3~10\ ))
-- \ula_map|port_map_multi|Add3~14\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~28_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~17_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~28_combout\))))) ) + ( \banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~28_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	cin => \ula_map|port_map_multi|Add3~10\,
	sumout => \ula_map|port_map_multi|Add3~13_sumout\,
	cout => \ula_map|port_map_multi|Add3~14\);

\ula_map|port_map_multi|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add4~13_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~28_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~17_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~28_combout\))))) ) + ( !\banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add4~10\ ))
-- \ula_map|port_map_multi|Add4~14\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~28_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~17_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~28_combout\))))) ) + ( !\banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~28_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	cin => \ula_map|port_map_multi|Add4~10\,
	sumout => \ula_map|port_map_multi|Add4~13_sumout\,
	cout => \ula_map|port_map_multi|Add4~14\);

\ula_map|port_map_multi|produto~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~5_combout\ = ( \ula_map|port_map_multi|Add2~17_sumout\ & ( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\)) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~17_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~21_sumout\)))) ) ) # ( !\ula_map|port_map_multi|Add2~17_sumout\ & ( 
-- (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~17_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011100000001010001010010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~21_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add1~17_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add2~17_sumout\,
	combout => \ula_map|port_map_multi|produto~5_combout\);

\ula_map|port_map_multi|produto~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~27_combout\ = (!\ula_map|port_map_multi|process_0~2_combout\ & ((\ula_map|port_map_multi|produto~5_combout\))) # (\ula_map|port_map_multi|process_0~2_combout\ & (\ula_map|port_map_multi|Add4~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~2_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_Add4~13_sumout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~5_combout\,
	combout => \ula_map|port_map_multi|produto~27_combout\);

\ula_map|port_map_multi|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add5~9_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~27_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~13_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~27_combout\))))) ) + ( \banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add5~6\ ))
-- \ula_map|port_map_multi|Add5~10\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~27_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~13_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~27_combout\))))) ) + ( \banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~27_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	cin => \ula_map|port_map_multi|Add5~6\,
	sumout => \ula_map|port_map_multi|Add5~9_sumout\,
	cout => \ula_map|port_map_multi|Add5~10\);

\ula_map|port_map_multi|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add6~9_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~27_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~13_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~27_combout\))))) ) + ( !\banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add6~6\ ))
-- \ula_map|port_map_multi|Add6~10\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~27_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~13_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~27_combout\))))) ) + ( !\banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~27_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	cin => \ula_map|port_map_multi|Add6~6\,
	sumout => \ula_map|port_map_multi|Add6~9_sumout\,
	cout => \ula_map|port_map_multi|Add6~10\);

\ula_map|port_map_multi|produto~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~6_combout\ = ( \ula_map|port_map_multi|produto~5_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\) # ((\ula_map|port_map_multi|Add4~13_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|Add3~13_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~5_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|Add4~13_sumout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\ula_map|port_map_multi|Add3~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add4~13_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~5_combout\,
	combout => \ula_map|port_map_multi|produto~6_combout\);

\ula_map|port_map_multi|produto~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~26_combout\ = (!\ula_map|port_map_multi|process_0~3_combout\ & ((\ula_map|port_map_multi|produto~6_combout\))) # (\ula_map|port_map_multi|process_0~3_combout\ & (\ula_map|port_map_multi|Add6~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~3_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_Add6~9_sumout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~6_combout\,
	combout => \ula_map|port_map_multi|produto~26_combout\);

\ula_map|port_map_multi|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add7~5_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~26_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~9_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~26_combout\))))) ) + ( \banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add7~2\ ))
-- \ula_map|port_map_multi|Add7~6\ = CARRY(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~26_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~9_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~26_combout\))))) ) + ( \banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~26_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	cin => \ula_map|port_map_multi|Add7~2\,
	sumout => \ula_map|port_map_multi|Add7~5_sumout\,
	cout => \ula_map|port_map_multi|Add7~6\);

\ula_map|port_map_multi|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add8~5_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~26_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~9_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~26_combout\))))) ) + ( !\banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add8~2\ ))
-- \ula_map|port_map_multi|Add8~6\ = CARRY(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~26_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~9_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~26_combout\))))) ) + ( !\banco_registradores_map|registrador~44_combout\ ) + ( \ula_map|port_map_multi|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~26_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	cin => \ula_map|port_map_multi|Add8~2\,
	sumout => \ula_map|port_map_multi|Add8~5_sumout\,
	cout => \ula_map|port_map_multi|Add8~6\);

\ula_map|port_map_multi|produto~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~7_combout\ = ( \ula_map|port_map_multi|produto~6_combout\ & ( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\) # ((\ula_map|port_map_multi|Add6~9_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|Add5~9_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~6_combout\ & ( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|Add6~9_sumout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & (!\multiplexador_2x1_map|out_port[3]~3_combout\ & (\ula_map|port_map_multi|Add5~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add6~9_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~6_combout\,
	combout => \ula_map|port_map_multi|produto~7_combout\);

\ula_map|port_map_multi|produto~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~8_combout\ = ( \ula_map|port_map_multi|produto~7_combout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\) # ((\ula_map|port_map_multi|Add8~5_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & (((\ula_map|port_map_multi|Add7~5_sumout\)) # (\multiplexador_2x1_map|out_port[4]~4_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~7_combout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\ & ((\ula_map|port_map_multi|Add8~5_sumout\)))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & (\ula_map|port_map_multi|Add7~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add7~5_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add8~5_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~7_combout\,
	combout => \ula_map|port_map_multi|produto~8_combout\);

\banco_registradores_map|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~51_combout\ = ( \banco_registradores_map|registrador~24_q\ & ( \banco_registradores_map|registrador~16_q\ ) ) # ( !\banco_registradores_map|registrador~24_q\ & ( \banco_registradores_map|registrador~16_q\ & ( 
-- ((!\pc_port_map|pc_out\(1)) # ((!\pc_port_map|pc_out\(2)) # (\pc_port_map|pc_out\(3)))) # (\pc_port_map|pc_out\(0)) ) ) ) # ( \banco_registradores_map|registrador~24_q\ & ( !\banco_registradores_map|registrador~16_q\ & ( (!\pc_port_map|pc_out\(0) & 
-- (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \banco_registradores_map|ALT_INV_registrador~24_q\,
	dataf => \banco_registradores_map|ALT_INV_registrador~16_q\,
	combout => \banco_registradores_map|registrador~51_combout\);

\ula_map|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux6~0_combout\ = ( \ula_map|port_map_adder|A3|cout~combout\ & ( (!\banco_registradores_map|registrador~49_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # 
-- (\ula_map|port_map_sub|A1|A3|cout~0_combout\)))) # (\banco_registradores_map|registrador~49_combout\ & (\memoria_rom_port_map|Mux2~0_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\) # (\ula_map|port_map_sub|A1|A3|cout~0_combout\)))) ) ) # ( 
-- !\ula_map|port_map_adder|A3|cout~combout\ & ( (!\banco_registradores_map|registrador~49_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # ((!\multiplexador_2x1_map|out_port[4]~4_combout\ & \ula_map|port_map_sub|A1|A3|cout~0_combout\)))) # 
-- (\banco_registradores_map|registrador~49_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\) # ((\memoria_rom_port_map|Mux2~0_combout\ & \ula_map|port_map_sub|A1|A3|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110011101101100001001100010110101100111011011000010011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	datad => \ula_map|port_map_sub|A1|A3|ALT_INV_cout~0_combout\,
	datae => \ula_map|port_map_adder|A3|ALT_INV_cout~combout\,
	combout => \ula_map|Mux6~0_combout\);

\ula_map|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux6~1_combout\ = ( \banco_registradores_map|registrador~51_combout\ & ( \ula_map|Mux6~0_combout\ & ( (!\memoria_rom_port_map|Mux0~0_combout\ & ((!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[5]~5_combout\))) # 
-- (\memoria_rom_port_map|Mux1~0_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # (\multiplexador_2x1_map|out_port[5]~5_combout\))))) ) ) ) # ( !\banco_registradores_map|registrador~51_combout\ & ( \ula_map|Mux6~0_combout\ & ( 
-- (!\memoria_rom_port_map|Mux0~0_combout\ & (\multiplexador_2x1_map|out_port[5]~5_combout\ & ((!\memoria_rom_port_map|Mux1~0_combout\) # (\memoria_rom_port_map|Mux2~0_combout\)))) ) ) ) # ( \banco_registradores_map|registrador~51_combout\ & ( 
-- !\ula_map|Mux6~0_combout\ & ( (!\memoria_rom_port_map|Mux0~0_combout\ & (((!\memoria_rom_port_map|Mux2~0_combout\ & \memoria_rom_port_map|Mux1~0_combout\)) # (\multiplexador_2x1_map|out_port[5]~5_combout\))) ) ) ) # ( 
-- !\banco_registradores_map|registrador~51_combout\ & ( !\ula_map|Mux6~0_combout\ & ( (!\memoria_rom_port_map|Mux0~0_combout\ & ((!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[5]~5_combout\))) # 
-- (\memoria_rom_port_map|Mux1~0_combout\ & (\memoria_rom_port_map|Mux2~0_combout\ & \multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000010000001000001111000000000000110100001110000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	datac => \memoria_rom_port_map|ALT_INV_Mux0~0_combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datae => \banco_registradores_map|ALT_INV_registrador~51_combout\,
	dataf => \ula_map|ALT_INV_Mux6~0_combout\,
	combout => \ula_map|Mux6~1_combout\);

\ula_map|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux6~2_combout\ = ( \ula_map|port_map_multi|produto~8_combout\ & ( \ula_map|Mux6~1_combout\ ) ) # ( !\ula_map|port_map_multi|produto~8_combout\ & ( \ula_map|Mux6~1_combout\ ) ) # ( \ula_map|port_map_multi|produto~8_combout\ & ( 
-- !\ula_map|Mux6~1_combout\ & ( (\ula_map|Mux7~0_combout\ & ((!\banco_registradores_map|registrador~43_combout\) # (!\multiplexador_2x1_map|out_port[4]~4_combout\ $ (\multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) ) # ( 
-- !\ula_map|port_map_multi|produto~8_combout\ & ( !\ula_map|Mux6~1_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & (\ula_map|Mux7~0_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ $ 
-- (!\multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000001100100010001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datab => \ula_map|ALT_INV_Mux7~0_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~8_combout\,
	dataf => \ula_map|ALT_INV_Mux6~1_combout\,
	combout => \ula_map|Mux6~2_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[6]~6_combout\ = (!\unidade_controle_map|Mux2~0_combout\ & ((\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (\unidade_controle_map|Mux2~0_combout\ & (\ula_map|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|ALT_INV_Mux5~1_combout\,
	datab => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	datac => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[6]~6_combout\);

\banco_registradores_map|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[6]~6_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~25_q\);

\banco_registradores_map|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[6]~6_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~17_q\);

\ula_map|port_map_multi|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~25_sumout\ = SUM(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~17_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~25_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~22\ ))
-- \ula_map|port_map_multi|Add0~26\ = CARRY(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~17_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~25_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~25_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~17_q\,
	cin => \ula_map|port_map_multi|Add0~22\,
	sumout => \ula_map|port_map_multi|Add0~25_sumout\,
	cout => \ula_map|port_map_multi|Add0~26\);

\ula_map|port_map_multi|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add1~21_sumout\ = SUM(( \banco_registradores_map|registrador~51_combout\ ) + ( (\ula_map|port_map_multi|Add0~25_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~18\ ))
-- \ula_map|port_map_multi|Add1~22\ = CARRY(( \banco_registradores_map|registrador~51_combout\ ) + ( (\ula_map|port_map_multi|Add0~25_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~51_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~25_sumout\,
	cin => \ula_map|port_map_multi|Add1~18\,
	sumout => \ula_map|port_map_multi|Add1~21_sumout\,
	cout => \ula_map|port_map_multi|Add1~22\);

\ula_map|port_map_multi|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~21_sumout\ = SUM(( !\banco_registradores_map|registrador~51_combout\ ) + ( (\ula_map|port_map_multi|Add0~25_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~18\ ))
-- \ula_map|port_map_multi|Add2~22\ = CARRY(( !\banco_registradores_map|registrador~51_combout\ ) + ( (\ula_map|port_map_multi|Add0~25_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~51_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~25_sumout\,
	cin => \ula_map|port_map_multi|Add2~18\,
	sumout => \ula_map|port_map_multi|Add2~21_sumout\,
	cout => \ula_map|port_map_multi|Add2~22\);

\ula_map|port_map_multi|produto~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~31_combout\ = (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add2~21_sumout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- (((\ula_map|port_map_multi|Add0~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~25_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add2~21_sumout\,
	combout => \ula_map|port_map_multi|produto~31_combout\);

\ula_map|port_map_multi|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add3~17_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~31_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~21_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~31_combout\))))) ) + ( \banco_registradores_map|registrador~49_combout\ ) + ( \ula_map|port_map_multi|Add3~14\ ))
-- \ula_map|port_map_multi|Add3~18\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~31_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~21_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~31_combout\))))) ) + ( \banco_registradores_map|registrador~49_combout\ ) + ( \ula_map|port_map_multi|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~21_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~31_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	cin => \ula_map|port_map_multi|Add3~14\,
	sumout => \ula_map|port_map_multi|Add3~17_sumout\,
	cout => \ula_map|port_map_multi|Add3~18\);

\ula_map|port_map_multi|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add4~17_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~31_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~21_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~31_combout\))))) ) + ( !\banco_registradores_map|registrador~49_combout\ ) + ( \ula_map|port_map_multi|Add4~14\ ))
-- \ula_map|port_map_multi|Add4~18\ = CARRY(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~31_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~21_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~31_combout\))))) ) + ( !\banco_registradores_map|registrador~49_combout\ ) + ( \ula_map|port_map_multi|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~21_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~31_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	cin => \ula_map|port_map_multi|Add4~14\,
	sumout => \ula_map|port_map_multi|Add4~17_sumout\,
	cout => \ula_map|port_map_multi|Add4~18\);

\ula_map|port_map_multi|produto~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~9_combout\ = ( \ula_map|port_map_multi|Add2~21_sumout\ & ( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\)) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~21_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~25_sumout\)))) ) ) # ( !\ula_map|port_map_multi|Add2~21_sumout\ & ( 
-- (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~21_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011100000001010001010010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~25_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add1~21_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add2~21_sumout\,
	combout => \ula_map|port_map_multi|produto~9_combout\);

\ula_map|port_map_multi|produto~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~30_combout\ = (!\ula_map|port_map_multi|process_0~2_combout\ & ((\ula_map|port_map_multi|produto~9_combout\))) # (\ula_map|port_map_multi|process_0~2_combout\ & (\ula_map|port_map_multi|Add4~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~2_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_Add4~17_sumout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~9_combout\,
	combout => \ula_map|port_map_multi|produto~30_combout\);

\ula_map|port_map_multi|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add5~13_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~30_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~17_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~30_combout\))))) ) + ( \banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add5~10\ ))
-- \ula_map|port_map_multi|Add5~14\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~30_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~17_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~30_combout\))))) ) + ( \banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~30_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	cin => \ula_map|port_map_multi|Add5~10\,
	sumout => \ula_map|port_map_multi|Add5~13_sumout\,
	cout => \ula_map|port_map_multi|Add5~14\);

\ula_map|port_map_multi|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add6~13_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~30_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~17_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~30_combout\))))) ) + ( !\banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add6~10\ ))
-- \ula_map|port_map_multi|Add6~14\ = CARRY(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~30_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~17_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~30_combout\))))) ) + ( !\banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~30_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	cin => \ula_map|port_map_multi|Add6~10\,
	sumout => \ula_map|port_map_multi|Add6~13_sumout\,
	cout => \ula_map|port_map_multi|Add6~14\);

\ula_map|port_map_multi|produto~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~10_combout\ = ( \ula_map|port_map_multi|produto~9_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\) # ((\ula_map|port_map_multi|Add4~17_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|Add3~17_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~9_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|Add4~17_sumout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\ula_map|port_map_multi|Add3~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add4~17_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~9_combout\,
	combout => \ula_map|port_map_multi|produto~10_combout\);

\ula_map|port_map_multi|produto~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~29_combout\ = (!\ula_map|port_map_multi|process_0~3_combout\ & ((\ula_map|port_map_multi|produto~10_combout\))) # (\ula_map|port_map_multi|process_0~3_combout\ & (\ula_map|port_map_multi|Add6~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~3_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_Add6~13_sumout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~10_combout\,
	combout => \ula_map|port_map_multi|produto~29_combout\);

\ula_map|port_map_multi|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add7~9_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~29_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~13_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~29_combout\))))) ) + ( \banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add7~6\ ))
-- \ula_map|port_map_multi|Add7~10\ = CARRY(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~29_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~13_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~29_combout\))))) ) + ( \banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~29_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	cin => \ula_map|port_map_multi|Add7~6\,
	sumout => \ula_map|port_map_multi|Add7~9_sumout\,
	cout => \ula_map|port_map_multi|Add7~10\);

\ula_map|port_map_multi|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add8~9_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~29_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~13_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~29_combout\))))) ) + ( !\banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add8~6\ ))
-- \ula_map|port_map_multi|Add8~10\ = CARRY(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~29_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~13_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~29_combout\))))) ) + ( !\banco_registradores_map|registrador~45_combout\ ) + ( \ula_map|port_map_multi|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~29_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	cin => \ula_map|port_map_multi|Add8~6\,
	sumout => \ula_map|port_map_multi|Add8~9_sumout\,
	cout => \ula_map|port_map_multi|Add8~10\);

\ula_map|port_map_multi|produto~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~11_combout\ = ( \ula_map|port_map_multi|produto~10_combout\ & ( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\) # ((\ula_map|port_map_multi|Add6~13_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|Add5~13_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~10_combout\ & ( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|Add6~13_sumout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & (!\multiplexador_2x1_map|out_port[3]~3_combout\ & (\ula_map|port_map_multi|Add5~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~13_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add6~13_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~10_combout\,
	combout => \ula_map|port_map_multi|produto~11_combout\);

\ula_map|port_map_multi|produto~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~12_combout\ = ( \ula_map|port_map_multi|produto~11_combout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\) # ((\ula_map|port_map_multi|Add8~9_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & (((\ula_map|port_map_multi|Add7~9_sumout\)) # (\multiplexador_2x1_map|out_port[4]~4_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~11_combout\ & ( (!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\ & ((\ula_map|port_map_multi|Add8~9_sumout\)))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & (\ula_map|port_map_multi|Add7~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add7~9_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add8~9_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~11_combout\,
	combout => \ula_map|port_map_multi|produto~12_combout\);

\ula_map|port_map_multi|produto~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~13_combout\ = ( \ula_map|port_map_multi|produto~8_combout\ & ( \ula_map|port_map_multi|produto~12_combout\ & ( (!\multiplexador_2x1_map|out_port[4]~4_combout\ & (((!\banco_registradores_map|registrador~44_combout\) # 
-- (!\multiplexador_2x1_map|out_port[5]~5_combout\)))) # (\multiplexador_2x1_map|out_port[4]~4_combout\ & ((!\banco_registradores_map|registrador~43_combout\ $ (\banco_registradores_map|registrador~44_combout\)) # 
-- (\multiplexador_2x1_map|out_port[5]~5_combout\))) ) ) ) # ( !\ula_map|port_map_multi|produto~8_combout\ & ( \ula_map|port_map_multi|produto~12_combout\ & ( (!\multiplexador_2x1_map|out_port[4]~4_combout\ & ((!\multiplexador_2x1_map|out_port[5]~5_combout\) 
-- # (!\banco_registradores_map|registrador~43_combout\ $ (\banco_registradores_map|registrador~44_combout\)))) # (\multiplexador_2x1_map|out_port[4]~4_combout\ & (((!\banco_registradores_map|registrador~44_combout\) # 
-- (\multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) ) # ( \ula_map|port_map_multi|produto~8_combout\ & ( !\ula_map|port_map_multi|produto~12_combout\ & ( (!\multiplexador_2x1_map|out_port[4]~4_combout\ & 
-- (((\banco_registradores_map|registrador~44_combout\ & \multiplexador_2x1_map|out_port[5]~5_combout\)))) # (\multiplexador_2x1_map|out_port[4]~4_combout\ & (!\multiplexador_2x1_map|out_port[5]~5_combout\ & (!\banco_registradores_map|registrador~43_combout\ 
-- $ (!\banco_registradores_map|registrador~44_combout\)))) ) ) ) # ( !\ula_map|port_map_multi|produto~8_combout\ & ( !\ula_map|port_map_multi|produto~12_combout\ & ( (!\multiplexador_2x1_map|out_port[4]~4_combout\ & 
-- (\multiplexador_2x1_map|out_port[5]~5_combout\ & (!\banco_registradores_map|registrador~43_combout\ $ (!\banco_registradores_map|registrador~44_combout\)))) # (\multiplexador_2x1_map|out_port[4]~4_combout\ & 
-- (((\banco_registradores_map|registrador~44_combout\ & !\multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101100000000001100011000011111100100111111111100111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~8_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~12_combout\,
	combout => \ula_map|port_map_multi|produto~13_combout\);

\banco_registradores_map|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~52_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~25_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~25_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~17_q\,
	combout => \banco_registradores_map|registrador~52_combout\);

\ula_map|port_map_multi|out_port[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|out_port[6]~4_combout\ = (\unidade_controle_map|Mux7~0_combout\ & (!\banco_registradores_map|registrador~50_combout\ $ (!\banco_registradores_map|registrador~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~50_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~52_combout\,
	combout => \ula_map|port_map_multi|out_port[6]~4_combout\);

\multiplexador_2x1_map|out_port[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[6]~6_combout\ = (\unidade_controle_map|Mux7~0_combout\ & \banco_registradores_map|registrador~52_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~52_combout\,
	combout => \multiplexador_2x1_map|out_port[6]~6_combout\);

\banco_registradores_map|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~53_combout\ = ( \banco_registradores_map|registrador~25_q\ & ( \banco_registradores_map|registrador~17_q\ ) ) # ( !\banco_registradores_map|registrador~25_q\ & ( \banco_registradores_map|registrador~17_q\ & ( 
-- ((!\pc_port_map|pc_out\(1)) # ((!\pc_port_map|pc_out\(2)) # (\pc_port_map|pc_out\(3)))) # (\pc_port_map|pc_out\(0)) ) ) ) # ( \banco_registradores_map|registrador~25_q\ & ( !\banco_registradores_map|registrador~17_q\ & ( (!\pc_port_map|pc_out\(0) & 
-- (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & !\pc_port_map|pc_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	datae => \banco_registradores_map|ALT_INV_registrador~25_q\,
	dataf => \banco_registradores_map|ALT_INV_registrador~17_q\,
	combout => \banco_registradores_map|registrador~53_combout\);

\ula_map|port_map_sub|A1|A5|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_sub|A1|A5|cout~0_combout\ = ( \banco_registradores_map|registrador~51_combout\ & ( (!\multiplexador_2x1_map|out_port[5]~5_combout\) # ((!\multiplexador_2x1_map|out_port[4]~4_combout\ & ((\ula_map|port_map_sub|A1|A3|cout~0_combout\) # 
-- (\banco_registradores_map|registrador~49_combout\))) # (\multiplexador_2x1_map|out_port[4]~4_combout\ & (\banco_registradores_map|registrador~49_combout\ & \ula_map|port_map_sub|A1|A3|cout~0_combout\))) ) ) # ( 
-- !\banco_registradores_map|registrador~51_combout\ & ( (!\multiplexador_2x1_map|out_port[5]~5_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\ & ((\ula_map|port_map_sub|A1|A3|cout~0_combout\) # 
-- (\banco_registradores_map|registrador~49_combout\))) # (\multiplexador_2x1_map|out_port[4]~4_combout\ & (\banco_registradores_map|registrador~49_combout\ & \ula_map|port_map_sub|A1|A3|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100000000111111110010101100101011000000001111111100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	datac => \ula_map|port_map_sub|A1|A3|ALT_INV_cout~0_combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datae => \banco_registradores_map|ALT_INV_registrador~51_combout\,
	combout => \ula_map|port_map_sub|A1|A5|cout~0_combout\);

\ula_map|port_map_adder|A5|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_adder|A5|cout~combout\ = ( \banco_registradores_map|registrador~51_combout\ & ( ((!\multiplexador_2x1_map|out_port[4]~4_combout\ & (\banco_registradores_map|registrador~49_combout\ & \ula_map|port_map_adder|A3|cout~combout\)) # 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\ & ((\ula_map|port_map_adder|A3|cout~combout\) # (\banco_registradores_map|registrador~49_combout\)))) # (\multiplexador_2x1_map|out_port[5]~5_combout\) ) ) # ( 
-- !\banco_registradores_map|registrador~51_combout\ & ( (\multiplexador_2x1_map|out_port[5]~5_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\ & (\banco_registradores_map|registrador~49_combout\ & \ula_map|port_map_adder|A3|cout~combout\)) # 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\ & ((\ula_map|port_map_adder|A3|cout~combout\) # (\banco_registradores_map|registrador~49_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	datac => \ula_map|port_map_adder|A3|ALT_INV_cout~combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datae => \banco_registradores_map|ALT_INV_registrador~51_combout\,
	combout => \ula_map|port_map_adder|A5|cout~combout\);

\ula_map|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux5~0_combout\ = ( \ula_map|port_map_sub|A1|A5|cout~0_combout\ & ( \ula_map|port_map_adder|A5|cout~combout\ & ( (!\memoria_rom_port_map|Mux2~0_combout\ & (!\banco_registradores_map|registrador~53_combout\ $ 
-- (((\multiplexador_2x1_map|out_port[6]~6_combout\) # (\memoria_rom_port_map|Mux1~0_combout\))))) # (\memoria_rom_port_map|Mux2~0_combout\ & (!\multiplexador_2x1_map|out_port[6]~6_combout\ $ (((!\banco_registradores_map|registrador~53_combout\) # 
-- (\memoria_rom_port_map|Mux1~0_combout\))))) ) ) ) # ( !\ula_map|port_map_sub|A1|A5|cout~0_combout\ & ( \ula_map|port_map_adder|A5|cout~combout\ & ( (!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[6]~6_combout\ $ 
-- (\banco_registradores_map|registrador~53_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\ & ((\banco_registradores_map|registrador~53_combout\))) # (\memoria_rom_port_map|Mux2~0_combout\ & 
-- (\multiplexador_2x1_map|out_port[6]~6_combout\)))) ) ) ) # ( \ula_map|port_map_sub|A1|A5|cout~0_combout\ & ( !\ula_map|port_map_adder|A5|cout~combout\ & ( (!\memoria_rom_port_map|Mux1~0_combout\ & ((!\multiplexador_2x1_map|out_port[6]~6_combout\ $ 
-- (!\banco_registradores_map|registrador~53_combout\)))) # (\memoria_rom_port_map|Mux1~0_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\ & ((\banco_registradores_map|registrador~53_combout\))) # (\memoria_rom_port_map|Mux2~0_combout\ & 
-- (\multiplexador_2x1_map|out_port[6]~6_combout\)))) ) ) ) # ( !\ula_map|port_map_sub|A1|A5|cout~0_combout\ & ( !\ula_map|port_map_adder|A5|cout~combout\ & ( (!\memoria_rom_port_map|Mux2~0_combout\ & (!\banco_registradores_map|registrador~53_combout\ $ 
-- (((!\multiplexador_2x1_map|out_port[6]~6_combout\) # (\memoria_rom_port_map|Mux1~0_combout\))))) # (\memoria_rom_port_map|Mux2~0_combout\ & (!\multiplexador_2x1_map|out_port[6]~6_combout\ $ (((\banco_registradores_map|registrador~53_combout\) # 
-- (\memoria_rom_port_map|Mux1~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100110100111000011011110001111000001001011111000010101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux1~0_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[6]~6_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~53_combout\,
	datae => \ula_map|port_map_sub|A1|A5|ALT_INV_cout~0_combout\,
	dataf => \ula_map|port_map_adder|A5|ALT_INV_cout~combout\,
	combout => \ula_map|Mux5~0_combout\);

\ula_map|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux5~1_combout\ = ( \ula_map|port_map_multi|out_port[6]~4_combout\ & ( \ula_map|Mux5~0_combout\ & ( (!\memoria_rom_port_map|Mux0~0_combout\) # ((\ula_map|Mux7~0_combout\ & (!\banco_registradores_map|registrador~43_combout\ $ 
-- (!\ula_map|port_map_multi|produto~13_combout\)))) ) ) ) # ( !\ula_map|port_map_multi|out_port[6]~4_combout\ & ( \ula_map|Mux5~0_combout\ & ( (!\memoria_rom_port_map|Mux0~0_combout\) # ((\ula_map|Mux7~0_combout\ & 
-- \ula_map|port_map_multi|produto~13_combout\)) ) ) ) # ( \ula_map|port_map_multi|out_port[6]~4_combout\ & ( !\ula_map|Mux5~0_combout\ & ( (\ula_map|Mux7~0_combout\ & (!\banco_registradores_map|registrador~43_combout\ $ 
-- (!\ula_map|port_map_multi|produto~13_combout\))) ) ) ) # ( !\ula_map|port_map_multi|out_port[6]~4_combout\ & ( !\ula_map|Mux5~0_combout\ & ( (\ula_map|Mux7~0_combout\ & \ula_map|port_map_multi|produto~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000110000110010101010101011111010101110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux0~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datac => \ula_map|ALT_INV_Mux7~0_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~13_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_out_port[6]~4_combout\,
	dataf => \ula_map|ALT_INV_Mux5~0_combout\,
	combout => \ula_map|Mux5~1_combout\);

\ula_map|port_map_multi|produto~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~14_combout\ = (!\multiplexador_2x1_map|out_port[4]~4_combout\ & \multiplexador_2x1_map|out_port[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	combout => \ula_map|port_map_multi|produto~14_combout\);

\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sonic.ram0_memoria_ram_2c141c.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_ram:memoria_ram_map|altsyncram:ram_rtl_0|altsyncram_afu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \unidade_controle_map|Mux6~0_combout\,
	portbre => \unidade_controle_map|Mux2~0_combout\,
	clk0 => \clock_sonic~input_o\,
	portadatain => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\multiplexador_2x1_ram_map|out_port[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_ram_map|out_port[7]~7_combout\ = (!\unidade_controle_map|Mux2~0_combout\ & ((\memoria_ram_map|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\))) # (\unidade_controle_map|Mux2~0_combout\ & (\ula_map|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux2~0_combout\,
	datab => \ula_map|ALT_INV_Mux4~1_combout\,
	datac => \memoria_ram_map|ram_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	combout => \multiplexador_2x1_ram_map|out_port[7]~7_combout\);

\banco_registradores_map|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[7]~7_combout\,
	ena => \banco_registradores_map|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~26_q\);

\banco_registradores_map|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_sonic~input_o\,
	d => \multiplexador_2x1_ram_map|out_port[7]~7_combout\,
	ena => \banco_registradores_map|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores_map|registrador~18_q\);

\ula_map|port_map_multi|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add0~29_sumout\ = SUM(( (!\memoria_rom_port_map|Mux4~0_combout\ & ((!\banco_registradores_map|registrador~18_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (!\banco_registradores_map|registrador~26_q\)) ) + ( GND ) + ( 
-- \ula_map|port_map_multi|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~26_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~18_q\,
	cin => \ula_map|port_map_multi|Add0~26\,
	sumout => \ula_map|port_map_multi|Add0~29_sumout\);

\ula_map|port_map_multi|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add1~25_sumout\ = SUM(( \banco_registradores_map|registrador~53_combout\ ) + ( (\ula_map|port_map_multi|Add0~29_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~53_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~29_sumout\,
	cin => \ula_map|port_map_multi|Add1~22\,
	sumout => \ula_map|port_map_multi|Add1~25_sumout\);

\ula_map|port_map_multi|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add2~25_sumout\ = SUM(( !\banco_registradores_map|registrador~53_combout\ ) + ( (\ula_map|port_map_multi|Add0~29_sumout\ & ((!\unidade_controle_map|Mux7~0_combout\ & (!\memoria_rom_port_map|Mux6~0_combout\)) # 
-- (\unidade_controle_map|Mux7~0_combout\ & ((\banco_registradores_map|registrador~56_combout\))))) ) + ( \ula_map|port_map_multi|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~56_combout\,
	datad => \banco_registradores_map|ALT_INV_registrador~53_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add0~29_sumout\,
	cin => \ula_map|port_map_multi|Add2~22\,
	sumout => \ula_map|port_map_multi|Add2~25_sumout\);

\ula_map|port_map_multi|produto~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~34_combout\ = (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add2~25_sumout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- (((\ula_map|port_map_multi|Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~29_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add2~25_sumout\,
	combout => \ula_map|port_map_multi|produto~34_combout\);

\ula_map|port_map_multi|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add3~21_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~34_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~25_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~34_combout\))))) ) + ( \banco_registradores_map|registrador~51_combout\ ) + ( \ula_map|port_map_multi|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~25_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~34_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~51_combout\,
	cin => \ula_map|port_map_multi|Add3~18\,
	sumout => \ula_map|port_map_multi|Add3~21_sumout\);

\ula_map|port_map_multi|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add4~21_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (((\ula_map|port_map_multi|produto~34_combout\)))) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\ula_map|port_map_multi|Add1~25_sumout\)) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|produto~34_combout\))))) ) + ( !\banco_registradores_map|registrador~51_combout\ ) + ( \ula_map|port_map_multi|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add1~25_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~34_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~51_combout\,
	cin => \ula_map|port_map_multi|Add4~18\,
	sumout => \ula_map|port_map_multi|Add4~21_sumout\);

\ula_map|port_map_multi|produto~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~15_combout\ = ( \ula_map|port_map_multi|Add2~25_sumout\ & ( (!\multiplexador_2x1_map|out_port[0]~0_combout\ & (\multiplexador_2x1_map|out_port[1]~1_combout\)) # (\multiplexador_2x1_map|out_port[0]~0_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~25_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~29_sumout\)))) ) ) # ( !\ula_map|port_map_multi|Add2~25_sumout\ & ( 
-- (\multiplexador_2x1_map|out_port[0]~0_combout\ & ((!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((\ula_map|port_map_multi|Add1~25_sumout\))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (\ula_map|port_map_multi|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011100000001010001010010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[0]~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add0~29_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add1~25_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add2~25_sumout\,
	combout => \ula_map|port_map_multi|produto~15_combout\);

\ula_map|port_map_multi|produto~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~33_combout\ = (!\ula_map|port_map_multi|process_0~2_combout\ & ((\ula_map|port_map_multi|produto~15_combout\))) # (\ula_map|port_map_multi|process_0~2_combout\ & (\ula_map|port_map_multi|Add4~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~2_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_Add4~21_sumout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~15_combout\,
	combout => \ula_map|port_map_multi|produto~33_combout\);

\ula_map|port_map_multi|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add5~17_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~33_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~21_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~33_combout\))))) ) + ( \banco_registradores_map|registrador~49_combout\ ) + ( \ula_map|port_map_multi|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~21_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~33_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	cin => \ula_map|port_map_multi|Add5~14\,
	sumout => \ula_map|port_map_multi|Add5~17_sumout\);

\ula_map|port_map_multi|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add6~17_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|produto~33_combout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\ula_map|port_map_multi|Add3~21_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|produto~33_combout\))))) ) + ( !\banco_registradores_map|registrador~49_combout\ ) + ( \ula_map|port_map_multi|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~21_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~33_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~49_combout\,
	cin => \ula_map|port_map_multi|Add6~14\,
	sumout => \ula_map|port_map_multi|Add6~17_sumout\);

\ula_map|port_map_multi|produto~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~16_combout\ = ( \ula_map|port_map_multi|produto~15_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & ((!\multiplexador_2x1_map|out_port[2]~2_combout\) # ((\ula_map|port_map_multi|Add4~21_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[1]~1_combout\ & (((\ula_map|port_map_multi|Add3~21_sumout\)) # (\multiplexador_2x1_map|out_port[2]~2_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~15_combout\ & ( (!\multiplexador_2x1_map|out_port[1]~1_combout\ & 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((\ula_map|port_map_multi|Add4~21_sumout\)))) # (\multiplexador_2x1_map|out_port[1]~1_combout\ & (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (\ula_map|port_map_multi|Add3~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[1]~1_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add3~21_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add4~21_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~15_combout\,
	combout => \ula_map|port_map_multi|produto~16_combout\);

\ula_map|port_map_multi|produto~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~32_combout\ = (!\ula_map|port_map_multi|process_0~3_combout\ & ((\ula_map|port_map_multi|produto~16_combout\))) # (\ula_map|port_map_multi|process_0~3_combout\ & (\ula_map|port_map_multi|Add6~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_map|port_map_multi|ALT_INV_process_0~3_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_Add6~17_sumout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~16_combout\,
	combout => \ula_map|port_map_multi|produto~32_combout\);

\ula_map|port_map_multi|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add7~13_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~32_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~17_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~32_combout\))))) ) + ( \banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~32_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	cin => \ula_map|port_map_multi|Add7~10\,
	sumout => \ula_map|port_map_multi|Add7~13_sumout\);

\ula_map|port_map_multi|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add8~13_sumout\ = SUM(( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|produto~32_combout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (\ula_map|port_map_multi|Add5~17_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|produto~32_combout\))))) ) + ( !\banco_registradores_map|registrador~47_combout\ ) + ( \ula_map|port_map_multi|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~32_combout\,
	dataf => \banco_registradores_map|ALT_INV_registrador~47_combout\,
	cin => \ula_map|port_map_multi|Add8~10\,
	sumout => \ula_map|port_map_multi|Add8~13_sumout\);

\ula_map|port_map_multi|produto~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~17_combout\ = ( \ula_map|port_map_multi|produto~16_combout\ & ( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\) # ((\ula_map|port_map_multi|Add6~17_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[2]~2_combout\ & (((\ula_map|port_map_multi|Add5~17_sumout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\))) ) ) # ( !\ula_map|port_map_multi|produto~16_combout\ & ( (!\multiplexador_2x1_map|out_port[2]~2_combout\ & 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|Add6~17_sumout\)))) # (\multiplexador_2x1_map|out_port[2]~2_combout\ & (!\multiplexador_2x1_map|out_port[3]~3_combout\ & (\ula_map|port_map_multi|Add5~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[2]~2_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add5~17_sumout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add6~17_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~16_combout\,
	combout => \ula_map|port_map_multi|produto~17_combout\);

\ula_map|port_map_multi|Add10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add10~0_combout\ = ( \ula_map|port_map_multi|Add8~13_sumout\ & ( \ula_map|port_map_multi|produto~17_combout\ & ( !\banco_registradores_map|registrador~45_combout\ $ (((\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (!\multiplexador_2x1_map|out_port[4]~4_combout\ & !\ula_map|port_map_multi|Add7~13_sumout\)))) ) ) ) # ( !\ula_map|port_map_multi|Add8~13_sumout\ & ( \ula_map|port_map_multi|produto~17_combout\ & ( !\banco_registradores_map|registrador~45_combout\ $ 
-- (((!\multiplexador_2x1_map|out_port[3]~3_combout\ & (\multiplexador_2x1_map|out_port[4]~4_combout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & !\ula_map|port_map_multi|Add7~13_sumout\)))) ) ) ) # 
-- ( \ula_map|port_map_multi|Add8~13_sumout\ & ( !\ula_map|port_map_multi|produto~17_combout\ & ( !\banco_registradores_map|registrador~45_combout\ $ (((!\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\)) # 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((!\ula_map|port_map_multi|Add7~13_sumout\) # (\multiplexador_2x1_map|out_port[4]~4_combout\))))) ) ) ) # ( !\ula_map|port_map_multi|Add8~13_sumout\ & ( !\ula_map|port_map_multi|produto~17_combout\ & ( 
-- !\banco_registradores_map|registrador~45_combout\ $ (((!\multiplexador_2x1_map|out_port[3]~3_combout\) # ((!\ula_map|port_map_multi|Add7~13_sumout\) # (\multiplexador_2x1_map|out_port[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100101010110010110100110010110101001101001101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~45_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add7~13_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add8~13_sumout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~17_combout\,
	combout => \ula_map|port_map_multi|Add10~0_combout\);

\ula_map|port_map_multi|produto~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~18_combout\ = ( \ula_map|port_map_multi|produto~14_combout\ & ( \ula_map|port_map_multi|Add10~0_combout\ & ( (!\banco_registradores_map|registrador~44_combout\ & ((!\banco_registradores_map|registrador~43_combout\) # 
-- ((\ula_map|port_map_multi|produto~12_combout\) # (\ula_map|port_map_multi|produto~8_combout\)))) # (\banco_registradores_map|registrador~44_combout\ & (\ula_map|port_map_multi|produto~12_combout\ & ((!\banco_registradores_map|registrador~43_combout\) # 
-- (\ula_map|port_map_multi|produto~8_combout\)))) ) ) ) # ( \ula_map|port_map_multi|produto~14_combout\ & ( !\ula_map|port_map_multi|Add10~0_combout\ & ( (!\banco_registradores_map|registrador~44_combout\ & (\banco_registradores_map|registrador~43_combout\ 
-- & (!\ula_map|port_map_multi|produto~8_combout\ & !\ula_map|port_map_multi|produto~12_combout\))) # (\banco_registradores_map|registrador~44_combout\ & ((!\ula_map|port_map_multi|produto~12_combout\) # ((\banco_registradores_map|registrador~43_combout\ & 
-- !\ula_map|port_map_multi|produto~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100110001000000000000000000001000110011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~8_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~12_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~14_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_Add10~0_combout\,
	combout => \ula_map|port_map_multi|produto~18_combout\);

\ula_map|port_map_multi|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|process_0~4_combout\ = (\multiplexador_2x1_map|out_port[4]~4_combout\ & !\multiplexador_2x1_map|out_port[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	combout => \ula_map|port_map_multi|process_0~4_combout\);

\ula_map|port_map_multi|Add9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add9~0_combout\ = ( \ula_map|port_map_multi|Add8~5_sumout\ & ( \ula_map|port_map_multi|produto~7_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\) # 
-- ((\ula_map|port_map_multi|Add7~5_sumout\) # (\multiplexador_2x1_map|out_port[4]~4_combout\)))) ) ) ) # ( !\ula_map|port_map_multi|Add8~5_sumout\ & ( \ula_map|port_map_multi|produto~7_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\)) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & ((\ula_map|port_map_multi|Add7~5_sumout\) # (\multiplexador_2x1_map|out_port[4]~4_combout\))))) ) ) ) # 
-- ( \ula_map|port_map_multi|Add8~5_sumout\ & ( !\ula_map|port_map_multi|produto~7_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\ & (\multiplexador_2x1_map|out_port[4]~4_combout\)) # 
-- (\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & \ula_map|port_map_multi|Add7~5_sumout\)))) ) ) ) # ( !\ula_map|port_map_multi|Add8~5_sumout\ & ( !\ula_map|port_map_multi|produto~7_combout\ & ( 
-- (\banco_registradores_map|registrador~43_combout\ & (\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & \ula_map|port_map_multi|Add7~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000001000001010001000001010100010100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add7~5_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add8~5_sumout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~7_combout\,
	combout => \ula_map|port_map_multi|Add9~0_combout\);

\ula_map|port_map_multi|produto~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~19_combout\ = ( \ula_map|port_map_multi|Add8~13_sumout\ & ( \ula_map|port_map_multi|produto~17_combout\ & ( (!\multiplexador_2x1_map|out_port[4]~4_combout\ & (!\multiplexador_2x1_map|out_port[5]~5_combout\ & 
-- ((!\multiplexador_2x1_map|out_port[3]~3_combout\) # (\ula_map|port_map_multi|Add7~13_sumout\)))) # (\multiplexador_2x1_map|out_port[4]~4_combout\ & (((\multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) ) # ( !\ula_map|port_map_multi|Add8~13_sumout\ & ( 
-- \ula_map|port_map_multi|produto~17_combout\ & ( (!\multiplexador_2x1_map|out_port[4]~4_combout\ & (!\multiplexador_2x1_map|out_port[5]~5_combout\ & ((!\multiplexador_2x1_map|out_port[3]~3_combout\) # (\ula_map|port_map_multi|Add7~13_sumout\)))) # 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\ & (\multiplexador_2x1_map|out_port[3]~3_combout\ & (\multiplexador_2x1_map|out_port[5]~5_combout\))) ) ) ) # ( \ula_map|port_map_multi|Add8~13_sumout\ & ( !\ula_map|port_map_multi|produto~17_combout\ & ( 
-- (!\multiplexador_2x1_map|out_port[3]~3_combout\ & (\multiplexador_2x1_map|out_port[4]~4_combout\ & (\multiplexador_2x1_map|out_port[5]~5_combout\))) # (\multiplexador_2x1_map|out_port[3]~3_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & 
-- (!\multiplexador_2x1_map|out_port[5]~5_combout\ & \ula_map|port_map_multi|Add7~13_sumout\))) ) ) ) # ( !\ula_map|port_map_multi|Add8~13_sumout\ & ( !\ula_map|port_map_multi|produto~17_combout\ & ( (\multiplexador_2x1_map|out_port[3]~3_combout\ & 
-- (!\multiplexador_2x1_map|out_port[4]~4_combout\ & (!\multiplexador_2x1_map|out_port[5]~5_combout\ & \ula_map|port_map_multi|Add7~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000100100001010000001110000011000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[3]~3_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_Add7~13_sumout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add8~13_sumout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~17_combout\,
	combout => \ula_map|port_map_multi|produto~19_combout\);

\ula_map|port_map_multi|produto~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~20_combout\ = ( \ula_map|port_map_multi|Add10~0_combout\ & ( !\ula_map|port_map_multi|produto~19_combout\ & ( (!\ula_map|port_map_multi|process_0~4_combout\) # ((!\banco_registradores_map|registrador~44_combout\ & 
-- (\ula_map|port_map_multi|Add9~0_combout\ & \ula_map|port_map_multi|produto~12_combout\)) # (\banco_registradores_map|registrador~44_combout\ & ((\ula_map|port_map_multi|produto~12_combout\) # (\ula_map|port_map_multi|Add9~0_combout\)))) ) ) ) # ( 
-- !\ula_map|port_map_multi|Add10~0_combout\ & ( !\ula_map|port_map_multi|produto~19_combout\ & ( (!\ula_map|port_map_multi|process_0~4_combout\) # ((!\banco_registradores_map|registrador~44_combout\ & ((!\ula_map|port_map_multi|Add9~0_combout\) # 
-- (!\ula_map|port_map_multi|produto~12_combout\))) # (\banco_registradores_map|registrador~44_combout\ & (!\ula_map|port_map_multi|Add9~0_combout\ & !\ula_map|port_map_multi|produto~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100110011011101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_process_0~4_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_Add9~0_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~12_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add10~0_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~19_combout\,
	combout => \ula_map|port_map_multi|produto~20_combout\);

\ula_map|port_map_multi|produto~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~21_combout\ = (\multiplexador_2x1_map|out_port[5]~5_combout\ & !\multiplexador_2x1_map|out_port[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[6]~6_combout\,
	combout => \ula_map|port_map_multi|produto~21_combout\);

\ula_map|port_map_multi|produto~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~22_combout\ = ( \ula_map|port_map_multi|produto~20_combout\ & ( \ula_map|port_map_multi|produto~21_combout\ & ( !\banco_registradores_map|registrador~44_combout\ $ (!\ula_map|port_map_multi|produto~18_combout\ $ 
-- (((\banco_registradores_map|registrador~43_combout\ & \ula_map|port_map_multi|produto~13_combout\)))) ) ) ) # ( !\ula_map|port_map_multi|produto~20_combout\ & ( \ula_map|port_map_multi|produto~21_combout\ & ( 
-- !\banco_registradores_map|registrador~44_combout\ $ (((\banco_registradores_map|registrador~43_combout\ & \ula_map|port_map_multi|produto~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001001110010010011011011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~13_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~18_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~20_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~21_combout\,
	combout => \ula_map|port_map_multi|produto~22_combout\);

\ula_map|port_map_multi|Add12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|Add12~0_combout\ = ( \ula_map|port_map_multi|produto~8_combout\ & ( \ula_map|port_map_multi|produto~12_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & ((!\banco_registradores_map|registrador~44_combout\ & 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\ & !\multiplexador_2x1_map|out_port[5]~5_combout\)) # (\banco_registradores_map|registrador~44_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ & \multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) 
-- ) # ( !\ula_map|port_map_multi|produto~8_combout\ & ( \ula_map|port_map_multi|produto~12_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & ((!\banco_registradores_map|registrador~44_combout\ & (!\multiplexador_2x1_map|out_port[4]~4_combout\ 
-- & \multiplexador_2x1_map|out_port[5]~5_combout\)) # (\banco_registradores_map|registrador~44_combout\ & (\multiplexador_2x1_map|out_port[4]~4_combout\ & !\multiplexador_2x1_map|out_port[5]~5_combout\)))) ) ) ) # ( 
-- \ula_map|port_map_multi|produto~8_combout\ & ( !\ula_map|port_map_multi|produto~12_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & ((!\banco_registradores_map|registrador~44_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\) # 
-- (\multiplexador_2x1_map|out_port[5]~5_combout\))) # (\banco_registradores_map|registrador~44_combout\ & ((!\multiplexador_2x1_map|out_port[5]~5_combout\) # (\multiplexador_2x1_map|out_port[4]~4_combout\))))) ) ) ) # ( 
-- !\ula_map|port_map_multi|produto~8_combout\ & ( !\ula_map|port_map_multi|produto~12_combout\ & ( (\banco_registradores_map|registrador~43_combout\ & ((!\banco_registradores_map|registrador~44_combout\ & ((!\multiplexador_2x1_map|out_port[5]~5_combout\) # 
-- (\multiplexador_2x1_map|out_port[4]~4_combout\))) # (\banco_registradores_map|registrador~44_combout\ & ((!\multiplexador_2x1_map|out_port[4]~4_combout\) # (\multiplexador_2x1_map|out_port[5]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000010101010100010100010100000001010000000000010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	datac => \multiplexador_2x1_map|ALT_INV_out_port[4]~4_combout\,
	datad => \multiplexador_2x1_map|ALT_INV_out_port[5]~5_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_produto~8_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~12_combout\,
	combout => \ula_map|port_map_multi|Add12~0_combout\);

\ula_map|port_map_multi|produto~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~23_combout\ = (\unidade_controle_map|Mux7~0_combout\ & (!\banco_registradores_map|registrador~50_combout\ & \banco_registradores_map|registrador~52_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~50_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~52_combout\,
	combout => \ula_map|port_map_multi|produto~23_combout\);

\ula_map|port_map_multi|produto~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|produto~24_combout\ = ( \ula_map|port_map_multi|Add12~0_combout\ & ( \ula_map|port_map_multi|produto~23_combout\ & ( (!\ula_map|port_map_multi|produto~21_combout\ & (!\banco_registradores_map|registrador~44_combout\ $ 
-- (((!\ula_map|port_map_multi|produto~20_combout\) # (\ula_map|port_map_multi|produto~18_combout\))))) ) ) ) # ( !\ula_map|port_map_multi|Add12~0_combout\ & ( \ula_map|port_map_multi|produto~23_combout\ & ( (!\ula_map|port_map_multi|produto~21_combout\ & 
-- (!\banco_registradores_map|registrador~44_combout\ $ (((!\ula_map|port_map_multi|produto~18_combout\ & \ula_map|port_map_multi|produto~20_combout\))))) ) ) ) # ( \ula_map|port_map_multi|Add12~0_combout\ & ( !\ula_map|port_map_multi|produto~23_combout\ & ( 
-- (!\ula_map|port_map_multi|produto~21_combout\ & ((!\ula_map|port_map_multi|produto~20_combout\) # (\ula_map|port_map_multi|produto~18_combout\))) ) ) ) # ( !\ula_map|port_map_multi|Add12~0_combout\ & ( !\ula_map|port_map_multi|produto~23_combout\ & ( 
-- (!\ula_map|port_map_multi|produto~21_combout\ & ((!\ula_map|port_map_multi|produto~20_combout\) # (\ula_map|port_map_multi|produto~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000010100110000000000101100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~44_combout\,
	datab => \ula_map|port_map_multi|ALT_INV_produto~18_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~20_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~21_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_Add12~0_combout\,
	dataf => \ula_map|port_map_multi|ALT_INV_produto~23_combout\,
	combout => \ula_map|port_map_multi|produto~24_combout\);

\banco_registradores_map|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~54_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~26_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~26_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~18_q\,
	combout => \banco_registradores_map|registrador~54_combout\);

\multiplexador_2x1_map|out_port[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2x1_map|out_port[7]~7_combout\ = (\unidade_controle_map|Mux7~0_combout\ & \banco_registradores_map|registrador~54_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle_map|ALT_INV_Mux7~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~54_combout\,
	combout => \multiplexador_2x1_map|out_port[7]~7_combout\);

\ula_map|port_map_multi|out_port[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_multi|out_port[7]~5_combout\ = !\multiplexador_2x1_map|out_port[6]~6_combout\ $ (!\multiplexador_2x1_map|out_port[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[6]~6_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[7]~7_combout\,
	combout => \ula_map|port_map_multi|out_port[7]~5_combout\);

\banco_registradores_map|registrador~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~55_combout\ = (!\memoria_rom_port_map|Mux4~0_combout\ & ((\banco_registradores_map|registrador~18_q\))) # (\memoria_rom_port_map|Mux4~0_combout\ & (\banco_registradores_map|registrador~26_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux4~0_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~26_q\,
	datac => \banco_registradores_map|ALT_INV_registrador~18_q\,
	combout => \banco_registradores_map|registrador~55_combout\);

\ula_map|port_map_sub|A1|A7|ha2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\ = !\multiplexador_2x1_map|out_port[7]~7_combout\ $ (!\banco_registradores_map|registrador~55_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2x1_map|ALT_INV_out_port[7]~7_combout\,
	datab => \banco_registradores_map|ALT_INV_registrador~55_combout\,
	combout => \ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\);

\ula_map|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux4~0_combout\ = ( \ula_map|port_map_adder|A5|cout~combout\ & ( \ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\ & ( (!\banco_registradores_map|registrador~53_combout\ & (!\multiplexador_2x1_map|out_port[6]~6_combout\ & 
-- ((!\memoria_rom_port_map|Mux2~0_combout\) # (\ula_map|port_map_sub|A1|A5|cout~0_combout\)))) # (\banco_registradores_map|registrador~53_combout\ & (\memoria_rom_port_map|Mux2~0_combout\ & ((!\multiplexador_2x1_map|out_port[6]~6_combout\) # 
-- (\ula_map|port_map_sub|A1|A5|cout~0_combout\)))) ) ) ) # ( !\ula_map|port_map_adder|A5|cout~combout\ & ( \ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\ & ( (!\banco_registradores_map|registrador~53_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # 
-- ((!\multiplexador_2x1_map|out_port[6]~6_combout\ & \ula_map|port_map_sub|A1|A5|cout~0_combout\)))) # (\banco_registradores_map|registrador~53_combout\ & ((!\multiplexador_2x1_map|out_port[6]~6_combout\) # ((\memoria_rom_port_map|Mux2~0_combout\ & 
-- \ula_map|port_map_sub|A1|A5|cout~0_combout\)))) ) ) ) # ( \ula_map|port_map_adder|A5|cout~combout\ & ( !\ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\ & ( (!\banco_registradores_map|registrador~53_combout\ & (((\memoria_rom_port_map|Mux2~0_combout\ & 
-- !\ula_map|port_map_sub|A1|A5|cout~0_combout\)) # (\multiplexador_2x1_map|out_port[6]~6_combout\))) # (\banco_registradores_map|registrador~53_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # ((\multiplexador_2x1_map|out_port[6]~6_combout\ & 
-- !\ula_map|port_map_sub|A1|A5|cout~0_combout\)))) ) ) ) # ( !\ula_map|port_map_adder|A5|cout~combout\ & ( !\ula_map|port_map_sub|A1|A7|ha2|sum~0_combout\ & ( (!\banco_registradores_map|registrador~53_combout\ & (\memoria_rom_port_map|Mux2~0_combout\ & 
-- ((!\ula_map|port_map_sub|A1|A5|cout~0_combout\) # (\multiplexador_2x1_map|out_port[6]~6_combout\)))) # (\banco_registradores_map|registrador~53_combout\ & (\multiplexador_2x1_map|out_port[6]~6_combout\ & ((!\memoria_rom_port_map|Mux2~0_combout\) # 
-- (!\ula_map|port_map_sub|A1|A5|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100010010011110110011101010101100111011011000010011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux2~0_combout\,
	datab => \multiplexador_2x1_map|ALT_INV_out_port[6]~6_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~53_combout\,
	datad => \ula_map|port_map_sub|A1|A5|ALT_INV_cout~0_combout\,
	datae => \ula_map|port_map_adder|A5|ALT_INV_cout~combout\,
	dataf => \ula_map|port_map_sub|A1|A7|ha2|ALT_INV_sum~0_combout\,
	combout => \ula_map|Mux4~0_combout\);

\ula_map|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux4~2_combout\ = ( \ula_map|Mux4~0_combout\ & ( ((!\pc_port_map|pc_out\(2)) # ((!\pc_port_map|pc_out\(1) & !\pc_port_map|pc_out\(0)))) # (\pc_port_map|pc_out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000111100000000000000001111111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(1),
	datab => \pc_port_map|ALT_INV_pc_out\(0),
	datac => \pc_port_map|ALT_INV_pc_out\(3),
	datad => \pc_port_map|ALT_INV_pc_out\(2),
	datae => \ula_map|ALT_INV_Mux4~0_combout\,
	combout => \ula_map|Mux4~2_combout\);

\ula_map|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_map|Mux4~1_combout\ = ( \ula_map|port_map_multi|out_port[7]~5_combout\ & ( \ula_map|Mux4~2_combout\ ) ) # ( !\ula_map|port_map_multi|out_port[7]~5_combout\ & ( \ula_map|Mux4~2_combout\ ) ) # ( \ula_map|port_map_multi|out_port[7]~5_combout\ & ( 
-- !\ula_map|Mux4~2_combout\ & ( (\ula_map|Mux7~0_combout\ & (!\banco_registradores_map|registrador~43_combout\ $ (((!\ula_map|port_map_multi|produto~22_combout\ & !\ula_map|port_map_multi|produto~24_combout\))))) ) ) ) # ( 
-- !\ula_map|port_map_multi|out_port[7]~5_combout\ & ( !\ula_map|Mux4~2_combout\ & ( (\ula_map|Mux7~0_combout\ & ((\ula_map|port_map_multi|produto~24_combout\) # (\ula_map|port_map_multi|produto~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000100100010001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores_map|ALT_INV_registrador~43_combout\,
	datab => \ula_map|ALT_INV_Mux7~0_combout\,
	datac => \ula_map|port_map_multi|ALT_INV_produto~22_combout\,
	datad => \ula_map|port_map_multi|ALT_INV_produto~24_combout\,
	datae => \ula_map|port_map_multi|ALT_INV_out_port[7]~5_combout\,
	dataf => \ula_map|ALT_INV_Mux4~2_combout\,
	combout => \ula_map|Mux4~1_combout\);

\somador_pc_map|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador_pc_map|Add0~0_combout\ = !\pc_port_map|pc_out\(0) $ (!\pc_port_map|pc_out\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	combout => \somador_pc_map|Add0~0_combout\);

\somador_pc_map|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador_pc_map|Add0~1_combout\ = !\pc_port_map|pc_out\(2) $ (((!\pc_port_map|pc_out\(0)) # (!\pc_port_map|pc_out\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	combout => \somador_pc_map|Add0~1_combout\);

\somador_pc_map|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador_pc_map|Add0~2_combout\ = !\pc_port_map|pc_out\(3) $ (((!\pc_port_map|pc_out\(0)) # ((!\pc_port_map|pc_out\(1)) # (!\pc_port_map|pc_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \somador_pc_map|Add0~2_combout\);

\somador_pc_map|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador_pc_map|Add0~3_combout\ = (\pc_port_map|pc_out\(0) & (\pc_port_map|pc_out\(1) & (\pc_port_map|pc_out\(2) & \pc_port_map|pc_out\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_port_map|ALT_INV_pc_out\(0),
	datab => \pc_port_map|ALT_INV_pc_out\(1),
	datac => \pc_port_map|ALT_INV_pc_out\(2),
	datad => \pc_port_map|ALT_INV_pc_out\(3),
	combout => \somador_pc_map|Add0~3_combout\);

\banco_registradores_map|registrador~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~57_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~20_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~20_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~12_q\,
	combout => \banco_registradores_map|registrador~57_combout\);

\banco_registradores_map|registrador~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores_map|registrador~58_combout\ = (!\memoria_rom_port_map|Mux5~0_combout\ & ((!\memoria_rom_port_map|Mux6~0_combout\ & (\banco_registradores_map|registrador~21_q\)) # (\memoria_rom_port_map|Mux6~0_combout\ & 
-- ((\banco_registradores_map|registrador~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rom_port_map|ALT_INV_Mux6~0_combout\,
	datab => \memoria_rom_port_map|ALT_INV_Mux5~0_combout\,
	datac => \banco_registradores_map|ALT_INV_registrador~21_q\,
	datad => \banco_registradores_map|ALT_INV_registrador~13_q\,
	combout => \banco_registradores_map|registrador~58_combout\);
END structure;


