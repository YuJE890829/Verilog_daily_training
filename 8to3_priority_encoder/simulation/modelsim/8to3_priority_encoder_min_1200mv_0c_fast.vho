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

-- DATE "03/09/2024 14:06:20"

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

ENTITY 	priority_8bit_encoder IS
    PORT (
	\in\ : IN std_logic_vector(7 DOWNTO 0);
	\out\ : OUT std_logic_vector(2 DOWNTO 0);
	valid : OUT std_logic
	);
END priority_8bit_encoder;

-- Design Ports Information
-- out[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF priority_8bit_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \in[5]~input_o\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \in[4]~input_o\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;
SIGNAL \in[7]~input_o\ : std_logic;
SIGNAL \in[6]~input_o\ : std_logic;
SIGNAL \out~1_combout\ : std_logic;
SIGNAL \out~2_combout\ : std_logic;
SIGNAL \out~3_combout\ : std_logic;
SIGNAL \valid~0_combout\ : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \valid~1_combout\ : std_logic;
SIGNAL \valid~2_combout\ : std_logic;
SIGNAL \ALT_INV_valid~0_combout\ : std_logic;

BEGIN

\ww_in\ <= \in\;
\out\ <= \ww_out\;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_valid~0_combout\ <= NOT \valid~0_combout\;

-- Location: IOOBUF_X20_Y31_N2
\out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~1_combout\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~3_combout\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_valid~0_combout\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid~2_combout\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(5),
	o => \in[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(4),
	o => \in[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: LCCOMB_X16_Y2_N0
\out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out~0_combout\ = (!\in[4]~input_o\ & ((\in[3]~input_o\) # ((!\in[2]~input_o\ & \in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \in[4]~input_o\,
	datac => \in[1]~input_o\,
	datad => \in[3]~input_o\,
	combout => \out~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(7),
	o => \in[7]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(6),
	o => \in[6]~input_o\);

-- Location: LCCOMB_X16_Y2_N2
\out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out~1_combout\ = (\in[7]~input_o\) # ((!\in[6]~input_o\ & ((\in[5]~input_o\) # (\out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[5]~input_o\,
	datab => \out~0_combout\,
	datac => \in[7]~input_o\,
	datad => \in[6]~input_o\,
	combout => \out~1_combout\);

-- Location: LCCOMB_X16_Y2_N12
\out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out~2_combout\ = (!\in[4]~input_o\ & (!\in[5]~input_o\ & ((\in[2]~input_o\) # (\in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[4]~input_o\,
	datad => \in[5]~input_o\,
	combout => \out~2_combout\);

-- Location: LCCOMB_X16_Y2_N14
\out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out~3_combout\ = (\out~2_combout\) # ((\in[7]~input_o\) # (\in[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out~2_combout\,
	datac => \in[7]~input_o\,
	datad => \in[6]~input_o\,
	combout => \out~3_combout\);

-- Location: LCCOMB_X16_Y2_N24
\valid~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid~0_combout\ = (!\in[7]~input_o\ & (!\in[5]~input_o\ & (!\in[4]~input_o\ & !\in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[5]~input_o\,
	datac => \in[4]~input_o\,
	datad => \in[6]~input_o\,
	combout => \valid~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: LCCOMB_X16_Y2_N10
\valid~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid~1_combout\ = (\in[2]~input_o\) # ((\in[3]~input_o\) # ((\in[1]~input_o\) # (\in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[1]~input_o\,
	datad => \in[0]~input_o\,
	combout => \valid~1_combout\);

-- Location: LCCOMB_X16_Y2_N4
\valid~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid~2_combout\ = (\valid~1_combout\) # (!\valid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid~1_combout\,
	datad => \valid~0_combout\,
	combout => \valid~2_combout\);

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

ww_valid <= \valid~output_o\;
END structure;


