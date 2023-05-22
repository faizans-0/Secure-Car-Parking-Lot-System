-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/19/2023 01:25:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CarParkingSystem
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CarParkingSystem_vhd_vec_tst IS
END CarParkingSystem_vhd_vec_tst;
ARCHITECTURE CarParkingSystem_arch OF CarParkingSystem_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alarm : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL entrance_LED : STD_LOGIC;
SIGNAL entrance_sensor : STD_LOGIC;
SIGNAL gate_LED : STD_LOGIC;
SIGNAL IDcard : STD_LOGIC;
SIGNAL IDcard_LED : STD_LOGIC;
SIGNAL password_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL password_LED : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT CarParkingSystem
	PORT (
	alarm : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	count_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	entrance_LED : OUT STD_LOGIC;
	entrance_sensor : IN STD_LOGIC;
	gate_LED : OUT STD_LOGIC;
	IDcard : IN STD_LOGIC;
	IDcard_LED : OUT STD_LOGIC;
	password_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	password_LED : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CarParkingSystem
	PORT MAP (
-- list connections between master ports and signals
	alarm => alarm,
	clk => clk,
	count_out => count_out,
	entrance_LED => entrance_LED,
	entrance_sensor => entrance_sensor,
	gate_LED => gate_LED,
	IDcard => IDcard,
	IDcard_LED => IDcard_LED,
	password_in => password_in,
	password_LED => password_LED,
	reset => reset
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- entrance_sensor
t_prcs_entrance_sensor: PROCESS
BEGIN
	entrance_sensor <= '0';
	WAIT FOR 110000 ps;
	entrance_sensor <= '1';
	WAIT FOR 360000 ps;
	entrance_sensor <= '0';
	WAIT FOR 100000 ps;
	entrance_sensor <= '1';
	WAIT FOR 330000 ps;
	entrance_sensor <= '0';
WAIT;
END PROCESS t_prcs_entrance_sensor;
-- password_in[7]
t_prcs_password_in_7: PROCESS
BEGIN
	password_in(7) <= '0';
WAIT;
END PROCESS t_prcs_password_in_7;
-- password_in[6]
t_prcs_password_in_6: PROCESS
BEGIN
	password_in(6) <= '0';
WAIT;
END PROCESS t_prcs_password_in_6;
-- password_in[5]
t_prcs_password_in_5: PROCESS
BEGIN
	password_in(5) <= '0';
	WAIT FOR 110000 ps;
	password_in(5) <= '1';
	WAIT FOR 360000 ps;
	password_in(5) <= '0';
	WAIT FOR 100000 ps;
	password_in(5) <= '1';
	WAIT FOR 330000 ps;
	password_in(5) <= '0';
WAIT;
END PROCESS t_prcs_password_in_5;
-- password_in[4]
t_prcs_password_in_4: PROCESS
BEGIN
	password_in(4) <= '0';
	WAIT FOR 110000 ps;
	password_in(4) <= '1';
	WAIT FOR 360000 ps;
	password_in(4) <= '0';
	WAIT FOR 100000 ps;
	password_in(4) <= '1';
	WAIT FOR 330000 ps;
	password_in(4) <= '0';
WAIT;
END PROCESS t_prcs_password_in_4;
-- password_in[3]
t_prcs_password_in_3: PROCESS
BEGIN
	password_in(3) <= '0';
WAIT;
END PROCESS t_prcs_password_in_3;
-- password_in[2]
t_prcs_password_in_2: PROCESS
BEGIN
	password_in(2) <= '0';
	WAIT FOR 110000 ps;
	password_in(2) <= '1';
	WAIT FOR 360000 ps;
	password_in(2) <= '0';
	WAIT FOR 100000 ps;
	password_in(2) <= '1';
	WAIT FOR 330000 ps;
	password_in(2) <= '0';
WAIT;
END PROCESS t_prcs_password_in_2;
-- password_in[1]
t_prcs_password_in_1: PROCESS
BEGIN
	password_in(1) <= '0';
WAIT;
END PROCESS t_prcs_password_in_1;
-- password_in[0]
t_prcs_password_in_0: PROCESS
BEGIN
	password_in(0) <= '0';
	WAIT FOR 110000 ps;
	password_in(0) <= '1';
	WAIT FOR 360000 ps;
	password_in(0) <= '0';
	WAIT FOR 100000 ps;
	password_in(0) <= '1';
	WAIT FOR 330000 ps;
	password_in(0) <= '0';
WAIT;
END PROCESS t_prcs_password_in_0;

-- IDcard
t_prcs_IDcard: PROCESS
BEGIN
	IDcard <= '0';
	WAIT FOR 570000 ps;
	IDcard <= '1';
	WAIT FOR 330000 ps;
	IDcard <= '0';
WAIT;
END PROCESS t_prcs_IDcard;
END CarParkingSystem_arch;
