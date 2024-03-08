-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/03/2024 15:09:45"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	seven_stage_monitor IS
    PORT (
	num : IN std_logic_vector(3 DOWNTO 0);
	\out\ : OUT std_logic_vector(6 DOWNTO 0)
	);
END seven_stage_monitor;

-- Design Ports Information
-- out[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_stage_monitor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_num : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \out[4]~output_o\ : std_logic;
SIGNAL \out[5]~output_o\ : std_logic;
SIGNAL \out[6]~output_o\ : std_logic;
SIGNAL \num[0]~input_o\ : std_logic;
SIGNAL \num[1]~input_o\ : std_logic;
SIGNAL \num[3]~input_o\ : std_logic;
SIGNAL \num[2]~input_o\ : std_logic;
SIGNAL \out[0]~0_combout\ : std_logic;
SIGNAL \out[1]~1_combout\ : std_logic;
SIGNAL \out[2]~2_combout\ : std_logic;
SIGNAL \out[3]~3_combout\ : std_logic;
SIGNAL \out[4]~4_combout\ : std_logic;
SIGNAL \out[5]~5_combout\ : std_logic;
SIGNAL \out[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_out[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_out[3]~3_combout\ : std_logic;

BEGIN

ww_num <= num;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_out[4]~4_combout\ <= NOT \out[4]~4_combout\;
\ALT_INV_out[3]~3_combout\ <= NOT \out[3]~3_combout\;

-- Location: IOOBUF_X14_Y0_N2
\out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[0]~0_combout\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[1]~1_combout\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[2]~2_combout\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \out[4]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[5]~5_combout\,
	devoe => ww_devoe,
	o => \out[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[6]~6_combout\,
	devoe => ww_devoe,
	o => \out[6]~output_o\);

-- Location: IOIBUF_X33_Y16_N15
\num[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(0),
	o => \num[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\num[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(1),
	o => \num[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\num[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(3),
	o => \num[3]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\num[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(2),
	o => \num[2]~input_o\);

-- Location: LCCOMB_X16_Y3_N8
\out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[0]~0_combout\ = (\num[3]~input_o\ & ((\num[1]~input_o\ $ (!\num[2]~input_o\)) # (!\num[0]~input_o\))) # (!\num[3]~input_o\ & ((\num[1]~input_o\) # (\num[0]~input_o\ $ (!\num[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~input_o\,
	datab => \num[1]~input_o\,
	datac => \num[3]~input_o\,
	datad => \num[2]~input_o\,
	combout => \out[0]~0_combout\);

-- Location: LCCOMB_X16_Y3_N26
\out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[1]~1_combout\ = (\num[1]~input_o\ & ((\num[0]~input_o\ & (!\num[3]~input_o\)) # (!\num[0]~input_o\ & ((!\num[2]~input_o\))))) # (!\num[1]~input_o\ & ((\num[0]~input_o\ $ (!\num[3]~input_o\)) # (!\num[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~input_o\,
	datab => \num[1]~input_o\,
	datac => \num[3]~input_o\,
	datad => \num[2]~input_o\,
	combout => \out[1]~1_combout\);

-- Location: LCCOMB_X16_Y3_N4
\out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[2]~2_combout\ = (\num[3]~input_o\ & (((\num[0]~input_o\ & !\num[1]~input_o\)) # (!\num[2]~input_o\))) # (!\num[3]~input_o\ & ((\num[0]~input_o\) # ((\num[2]~input_o\) # (!\num[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~input_o\,
	datab => \num[1]~input_o\,
	datac => \num[3]~input_o\,
	datad => \num[2]~input_o\,
	combout => \out[2]~2_combout\);

-- Location: LCCOMB_X16_Y3_N22
\out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[3]~3_combout\ = (\num[1]~input_o\ & ((\num[0]~input_o\ & ((\num[2]~input_o\))) # (!\num[0]~input_o\ & (\num[3]~input_o\ & !\num[2]~input_o\)))) # (!\num[1]~input_o\ & (!\num[3]~input_o\ & (\num[0]~input_o\ $ (\num[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~input_o\,
	datab => \num[1]~input_o\,
	datac => \num[3]~input_o\,
	datad => \num[2]~input_o\,
	combout => \out[3]~3_combout\);

-- Location: LCCOMB_X16_Y3_N16
\out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[4]~4_combout\ = (\num[1]~input_o\ & (\num[0]~input_o\ & (!\num[3]~input_o\))) # (!\num[1]~input_o\ & ((\num[2]~input_o\ & ((!\num[3]~input_o\))) # (!\num[2]~input_o\ & (\num[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~input_o\,
	datab => \num[1]~input_o\,
	datac => \num[3]~input_o\,
	datad => \num[2]~input_o\,
	combout => \out[4]~4_combout\);

-- Location: LCCOMB_X16_Y3_N2
\out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[5]~5_combout\ = (\num[0]~input_o\ & (\num[3]~input_o\ $ (((!\num[1]~input_o\ & \num[2]~input_o\))))) # (!\num[0]~input_o\ & (((\num[3]~input_o\) # (\num[2]~input_o\)) # (!\num[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~input_o\,
	datab => \num[1]~input_o\,
	datac => \num[3]~input_o\,
	datad => \num[2]~input_o\,
	combout => \out[5]~5_combout\);

-- Location: LCCOMB_X16_Y3_N12
\out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[6]~6_combout\ = (\num[0]~input_o\ & ((\num[3]~input_o\) # (\num[1]~input_o\ $ (\num[2]~input_o\)))) # (!\num[0]~input_o\ & ((\num[1]~input_o\) # (\num[3]~input_o\ $ (\num[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~input_o\,
	datab => \num[1]~input_o\,
	datac => \num[3]~input_o\,
	datad => \num[2]~input_o\,
	combout => \out[6]~6_combout\);

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;

\ww_out\(4) <= \out[4]~output_o\;

\ww_out\(5) <= \out[5]~output_o\;

\ww_out\(6) <= \out[6]~output_o\;
END structure;


