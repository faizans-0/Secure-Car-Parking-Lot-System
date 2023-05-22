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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "03/19/2023 01:25:32"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CarParkingSystem IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	entrance_sensor : IN std_logic;
	password_in : IN std_logic_vector(7 DOWNTO 0);
	IDcard : IN std_logic;
	entrance_LED : OUT std_logic;
	password_LED : OUT std_logic;
	IDcard_LED : OUT std_logic;
	gate_LED : OUT std_logic;
	alarm : OUT std_logic;
	count_out : OUT std_logic_vector(1 DOWNTO 0)
	);
END CarParkingSystem;

-- Design Ports Information
-- entrance_LED	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_LED	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDcard_LED	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gate_LED	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[0]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrance_sensor	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDcard	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CarParkingSystem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entrance_sensor : std_logic;
SIGNAL ww_password_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IDcard : std_logic;
SIGNAL ww_entrance_LED : std_logic;
SIGNAL ww_password_LED : std_logic;
SIGNAL ww_IDcard_LED : std_logic;
SIGNAL ww_gate_LED : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL ww_count_out : std_logic_vector(1 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entrance_LED~output_o\ : std_logic;
SIGNAL \password_LED~output_o\ : std_logic;
SIGNAL \IDcard_LED~output_o\ : std_logic;
SIGNAL \gate_LED~output_o\ : std_logic;
SIGNAL \alarm~output_o\ : std_logic;
SIGNAL \count_out[0]~output_o\ : std_logic;
SIGNAL \count_out[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \IDcard~input_o\ : std_logic;
SIGNAL \password_in[6]~input_o\ : std_logic;
SIGNAL \password_in[5]~input_o\ : std_logic;
SIGNAL \password_in[4]~input_o\ : std_logic;
SIGNAL \password_in[7]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \entrance_sensor~input_o\ : std_logic;
SIGNAL \password_in[2]~input_o\ : std_logic;
SIGNAL \password_in[3]~input_o\ : std_logic;
SIGNAL \password_in[0]~input_o\ : std_logic;
SIGNAL \password_in[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.PASSWORD_REJECTED~q\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \current_state.IDCARD_ACCEPTED~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \current_state.OPEN_GATE~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \count[0]~2_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \current_state.ENTER_PASSWORD~q\ : std_logic;
SIGNAL \current_state.CHECK_PASSWORD~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \current_state.PASSWORD_ACCEPTED~q\ : std_logic;
SIGNAL \current_state.SCAN_IDCARD~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \current_state.IDCARD_REJECTED~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \current_state.ALERT~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \entrance_LED_temp~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \password_LED_temp~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \IDcard_LED_temp~q\ : std_logic;
SIGNAL \gate_LED_temp~feeder_combout\ : std_logic;
SIGNAL \gate_LED_temp~q\ : std_logic;
SIGNAL \alarm_temp~0_combout\ : std_logic;
SIGNAL \alarm_temp~q\ : std_logic;
SIGNAL count : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_entrance_sensor <= entrance_sensor;
ww_password_in <= password_in;
ww_IDcard <= IDcard;
entrance_LED <= ww_entrance_LED;
password_LED <= ww_password_LED;
IDcard_LED <= ww_IDcard_LED;
gate_LED <= ww_gate_LED;
alarm <= ww_alarm;
count_out <= ww_count_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N23
\entrance_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrance_LED_temp~q\,
	devoe => ww_devoe,
	o => \entrance_LED~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\password_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \password_LED_temp~q\,
	devoe => ww_devoe,
	o => \password_LED~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\IDcard_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDcard_LED_temp~q\,
	devoe => ww_devoe,
	o => \IDcard_LED~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\gate_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate_LED_temp~q\,
	devoe => ww_devoe,
	o => \gate_LED~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\alarm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_temp~q\,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\count_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \count_out[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\count_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \count_out[1]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N22
\IDcard~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDcard,
	o => \IDcard~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\password_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(6),
	o => \password_in[6]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\password_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(5),
	o => \password_in[5]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\password_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(4),
	o => \password_in[4]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\password_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(7),
	o => \password_in[7]~input_o\);

-- Location: LCCOMB_X16_Y72_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\password_in[6]~input_o\ & (\password_in[5]~input_o\ & (\password_in[4]~input_o\ & !\password_in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password_in[6]~input_o\,
	datab => \password_in[5]~input_o\,
	datac => \password_in[4]~input_o\,
	datad => \password_in[7]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X7_Y0_N8
\entrance_sensor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrance_sensor,
	o => \entrance_sensor~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\password_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(2),
	o => \password_in[2]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\password_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(3),
	o => \password_in[3]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\password_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(0),
	o => \password_in[0]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\password_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(1),
	o => \password_in[1]~input_o\);

-- Location: LCCOMB_X1_Y62_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\password_in[2]~input_o\ & (!\password_in[3]~input_o\ & (\password_in[0]~input_o\ & !\password_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password_in[2]~input_o\,
	datab => \password_in[3]~input_o\,
	datac => \password_in[0]~input_o\,
	datad => \password_in[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y2_N24
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\current_state.CHECK_PASSWORD~q\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \current_state.CHECK_PASSWORD~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X5_Y2_N25
\current_state.PASSWORD_REJECTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.PASSWORD_REJECTED~q\);

-- Location: LCCOMB_X5_Y2_N2
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!count(0) & \current_state.PASSWORD_REJECTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	datad => \current_state.PASSWORD_REJECTED~q\,
	combout => \count~1_combout\);

-- Location: LCCOMB_X5_Y2_N20
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\IDcard~input_o\ & \current_state.SCAN_IDCARD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IDcard~input_o\,
	datad => \current_state.SCAN_IDCARD~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X5_Y2_N21
\current_state.IDCARD_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDCARD_ACCEPTED~q\);

-- Location: LCCOMB_X5_Y2_N14
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.IDCARD_ACCEPTED~q\) # ((\entrance_sensor~input_o\ & \current_state.OPEN_GATE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrance_sensor~input_o\,
	datac => \current_state.OPEN_GATE~q\,
	datad => \current_state.IDCARD_ACCEPTED~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X5_Y2_N15
\current_state.OPEN_GATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.OPEN_GATE~q\);

-- Location: LCCOMB_X5_Y2_N26
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\entrance_sensor~input_o\) # ((!\current_state.OPEN_GATE~q\ & (\current_state.IDLE~q\ & !\current_state.ALERT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrance_sensor~input_o\,
	datab => \current_state.OPEN_GATE~q\,
	datac => \current_state.IDLE~q\,
	datad => \current_state.ALERT~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X5_Y2_N27
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X5_Y2_N18
\count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~2_combout\ = \current_state.IDLE~q\ $ (\current_state.ALERT~q\ $ (!\current_state.PASSWORD_REJECTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDLE~q\,
	datac => \current_state.ALERT~q\,
	datad => \current_state.PASSWORD_REJECTED~q\,
	combout => \count[0]~2_combout\);

-- Location: FF_X5_Y2_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	ena => \count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X5_Y2_N4
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\current_state.PASSWORD_REJECTED~q\ & (count(1) $ (count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.PASSWORD_REJECTED~q\,
	datac => count(1),
	datad => count(0),
	combout => \count~3_combout\);

-- Location: FF_X5_Y2_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	ena => \count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X5_Y2_N0
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (count(1) & !count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(0),
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X5_Y2_N16
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\entrance_sensor~input_o\ & (((!\Selector1~1_combout\ & \current_state.PASSWORD_REJECTED~q\)) # (!\current_state.IDLE~q\))) # (!\entrance_sensor~input_o\ & (!\Selector1~1_combout\ & (\current_state.PASSWORD_REJECTED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrance_sensor~input_o\,
	datab => \Selector1~1_combout\,
	datac => \current_state.PASSWORD_REJECTED~q\,
	datad => \current_state.IDLE~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X5_Y2_N17
\current_state.ENTER_PASSWORD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ENTER_PASSWORD~q\);

-- Location: FF_X5_Y2_N11
\current_state.CHECK_PASSWORD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state.ENTER_PASSWORD~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.CHECK_PASSWORD~q\);

-- Location: LCCOMB_X5_Y2_N30
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Equal0~1_combout\ & (\current_state.CHECK_PASSWORD~q\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \current_state.CHECK_PASSWORD~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X5_Y2_N31
\current_state.PASSWORD_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.PASSWORD_ACCEPTED~q\);

-- Location: FF_X5_Y2_N29
\current_state.SCAN_IDCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state.PASSWORD_ACCEPTED~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SCAN_IDCARD~q\);

-- Location: LCCOMB_X5_Y2_N12
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\IDcard~input_o\ & \current_state.SCAN_IDCARD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IDcard~input_o\,
	datad => \current_state.SCAN_IDCARD~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X5_Y2_N13
\current_state.IDCARD_REJECTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDCARD_REJECTED~q\);

-- Location: LCCOMB_X5_Y2_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\entrance_sensor~input_o\ & \current_state.ALERT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrance_sensor~input_o\,
	datad => \current_state.ALERT~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X5_Y2_N8
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\current_state.IDCARD_REJECTED~q\) # ((\Selector1~0_combout\) # ((\Selector1~1_combout\ & \current_state.PASSWORD_REJECTED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDCARD_REJECTED~q\,
	datab => \Selector1~1_combout\,
	datac => \current_state.PASSWORD_REJECTED~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X5_Y2_N9
\current_state.ALERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ALERT~q\);

-- Location: LCCOMB_X6_Y2_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.IDLE~q\ & (!\current_state.ALERT~q\)) # (!\current_state.IDLE~q\ & ((\entrance_sensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.ALERT~q\,
	datac => \current_state.IDLE~q\,
	datad => \entrance_sensor~input_o\,
	combout => \Selector2~0_combout\);

-- Location: FF_X6_Y2_N29
entrance_LED_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entrance_LED_temp~q\);

-- Location: LCCOMB_X5_Y2_N6
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\current_state.PASSWORD_ACCEPTED~q\) # ((\current_state.IDCARD_ACCEPTED~q\) # ((\current_state.OPEN_GATE~q\) # (\current_state.SCAN_IDCARD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.PASSWORD_ACCEPTED~q\,
	datab => \current_state.IDCARD_ACCEPTED~q\,
	datac => \current_state.OPEN_GATE~q\,
	datad => \current_state.SCAN_IDCARD~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X5_Y2_N10
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\password_LED_temp~q\ & ((\current_state.PASSWORD_REJECTED~q\) # ((\current_state.ENTER_PASSWORD~q\) # (\current_state.CHECK_PASSWORD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.PASSWORD_REJECTED~q\,
	datab => \current_state.ENTER_PASSWORD~q\,
	datac => \current_state.CHECK_PASSWORD~q\,
	datad => \password_LED_temp~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X5_Y2_N22
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\current_state.IDCARD_REJECTED~q\) # ((\Selector3~1_combout\) # (\Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDCARD_REJECTED~q\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X5_Y2_N23
password_LED_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \password_LED_temp~q\);

-- Location: LCCOMB_X4_Y2_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.IDCARD_ACCEPTED~q\) # ((\current_state.OPEN_GATE~q\) # ((!\IDcard_LED_temp~q\ & \current_state.SCAN_IDCARD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDCARD_ACCEPTED~q\,
	datab => \current_state.OPEN_GATE~q\,
	datac => \IDcard_LED_temp~q\,
	datad => \current_state.SCAN_IDCARD~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X4_Y2_N29
IDcard_LED_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDcard_LED_temp~q\);

-- Location: LCCOMB_X4_Y2_N26
\gate_LED_temp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gate_LED_temp~feeder_combout\ = \current_state.OPEN_GATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.OPEN_GATE~q\,
	combout => \gate_LED_temp~feeder_combout\);

-- Location: FF_X4_Y2_N27
gate_LED_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gate_LED_temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gate_LED_temp~q\);

-- Location: LCCOMB_X6_Y2_N26
\alarm_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_temp~0_combout\ = (!\alarm_temp~q\ & \current_state.ALERT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alarm_temp~q\,
	datad => \current_state.ALERT~q\,
	combout => \alarm_temp~0_combout\);

-- Location: FF_X6_Y2_N27
alarm_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alarm_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_temp~q\);

ww_entrance_LED <= \entrance_LED~output_o\;

ww_password_LED <= \password_LED~output_o\;

ww_IDcard_LED <= \IDcard_LED~output_o\;

ww_gate_LED <= \gate_LED~output_o\;

ww_alarm <= \alarm~output_o\;

ww_count_out(0) <= \count_out[0]~output_o\;

ww_count_out(1) <= \count_out[1]~output_o\;
END structure;


