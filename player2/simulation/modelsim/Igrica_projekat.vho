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

-- DATE "12/26/2018 21:13:52"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Igrica_projekat IS
    PORT (
	\out\ : OUT std_logic_vector(11 DOWNTO 0);
	CLK : IN std_logic;
	PS2_CLK : IN std_logic;
	PS2_DATA : IN std_logic
	);
END Igrica_projekat;

-- Design Ports Information
-- out[11]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[10]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[8]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[5]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DATA	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_CLK	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Igrica_projekat IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_PS2_CLK : std_logic;
SIGNAL ww_PS2_DATA : std_logic;
SIGNAL \inst3|inst40|inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out[11]~output_o\ : std_logic;
SIGNAL \out[10]~output_o\ : std_logic;
SIGNAL \out[9]~output_o\ : std_logic;
SIGNAL \out[8]~output_o\ : std_logic;
SIGNAL \out[7]~output_o\ : std_logic;
SIGNAL \out[6]~output_o\ : std_logic;
SIGNAL \out[5]~output_o\ : std_logic;
SIGNAL \out[4]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \inst3|inst40|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst40|inst~q\ : std_logic;
SIGNAL \inst3|inst40|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst40|inst2|inst~q\ : std_logic;
SIGNAL \inst3|inst40|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst40|inst3|inst~q\ : std_logic;
SIGNAL \inst3|inst40|inst6~combout\ : std_logic;
SIGNAL \inst3|inst40|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst40|inst4|inst~q\ : std_logic;
SIGNAL \inst3|inst40|inst5~combout\ : std_logic;
SIGNAL \inst3|inst40|inst1~q\ : std_logic;
SIGNAL \inst3|inst40|inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst4~1_combout\ : std_logic;
SIGNAL \PS2_DATA~input_o\ : std_logic;
SIGNAL \inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst1~feeder_combout\ : std_logic;
SIGNAL \inst3|inst1~q\ : std_logic;
SIGNAL \inst3|inst4~2_combout\ : std_logic;
SIGNAL \inst3|inst4~3_combout\ : std_logic;
SIGNAL \inst3|inst5~q\ : std_logic;
SIGNAL \inst3|inst6~feeder_combout\ : std_logic;
SIGNAL \inst3|inst6~q\ : std_logic;
SIGNAL \inst3|inst7~feeder_combout\ : std_logic;
SIGNAL \inst3|inst7~q\ : std_logic;
SIGNAL \inst3|inst8~q\ : std_logic;
SIGNAL \inst3|inst9~feeder_combout\ : std_logic;
SIGNAL \inst3|inst9~q\ : std_logic;
SIGNAL \inst3|inst10~feeder_combout\ : std_logic;
SIGNAL \inst3|inst10~q\ : std_logic;
SIGNAL \inst3|inst11~feeder_combout\ : std_logic;
SIGNAL \inst3|inst11~q\ : std_logic;
SIGNAL \inst3|inst12~q\ : std_logic;
SIGNAL \inst3|inst13~feeder_combout\ : std_logic;
SIGNAL \inst3|inst13~q\ : std_logic;
SIGNAL \inst3|inst14~feeder_combout\ : std_logic;
SIGNAL \inst3|inst14~q\ : std_logic;
SIGNAL \inst3|inst29|inst~q\ : std_logic;
SIGNAL \inst3|inst29|inst1~feeder_combout\ : std_logic;
SIGNAL \inst3|inst29|inst1~q\ : std_logic;
SIGNAL \inst3|inst29|inst2~combout\ : std_logic;
SIGNAL \inst3|inst39~feeder_combout\ : std_logic;
SIGNAL \inst3|inst39~q\ : std_logic;
SIGNAL \inst3|inst17~feeder_combout\ : std_logic;
SIGNAL \inst3|inst17~q\ : std_logic;
SIGNAL \inst3|inst18~q\ : std_logic;
SIGNAL \inst3|inst19~feeder_combout\ : std_logic;
SIGNAL \inst3|inst19~q\ : std_logic;
SIGNAL \inst3|inst20~feeder_combout\ : std_logic;
SIGNAL \inst3|inst20~q\ : std_logic;
SIGNAL \inst3|inst21~feeder_combout\ : std_logic;
SIGNAL \inst3|inst21~q\ : std_logic;
SIGNAL \inst3|inst22~feeder_combout\ : std_logic;
SIGNAL \inst3|inst22~q\ : std_logic;
SIGNAL \inst3|inst35~q\ : std_logic;
SIGNAL \inst3|inst32~q\ : std_logic;
SIGNAL \inst3|inst34~q\ : std_logic;
SIGNAL \inst6|inst14|data[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst30~q\ : std_logic;
SIGNAL \inst3|inst23~q\ : std_logic;
SIGNAL \inst3|inst24~feeder_combout\ : std_logic;
SIGNAL \inst3|inst24~q\ : std_logic;
SIGNAL \inst3|inst37~q\ : std_logic;
SIGNAL \inst3|inst31~q\ : std_logic;
SIGNAL \inst3|inst36~q\ : std_logic;
SIGNAL \inst3|inst33~q\ : std_logic;
SIGNAL \inst6|inst40~0_combout\ : std_logic;
SIGNAL \inst6|inst14|data[0]~1_combout\ : std_logic;
SIGNAL \inst6|inst14|data[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst555|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|inst555|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|inst555|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|inst16|data_next[0]~3_combout\ : std_logic;
SIGNAL \inst6|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|inst1|data_next[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst19~0_combout\ : std_logic;
SIGNAL \inst6|inst40~1_combout\ : std_logic;
SIGNAL \inst6|inst63|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst60|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst60|inst~q\ : std_logic;
SIGNAL \inst6|inst60|inst1~q\ : std_logic;
SIGNAL \inst6|inst60|inst2~combout\ : std_logic;
SIGNAL \inst6|inst30|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst28|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst28|inst~q\ : std_logic;
SIGNAL \inst6|inst28|inst1~q\ : std_logic;
SIGNAL \inst6|inst28|inst2~combout\ : std_logic;
SIGNAL \inst6|inst65~0_combout\ : std_logic;
SIGNAL \inst6|inst59|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst56|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst56|inst~q\ : std_logic;
SIGNAL \inst6|inst56|inst1~q\ : std_logic;
SIGNAL \inst6|inst56|inst2~combout\ : std_logic;
SIGNAL \inst6|inst42|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst39|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst39|inst~q\ : std_logic;
SIGNAL \inst6|inst39|inst1~q\ : std_logic;
SIGNAL \inst6|inst39|inst2~combout\ : std_logic;
SIGNAL \inst6|inst65~1_combout\ : std_logic;
SIGNAL \inst6|inst19~1_combout\ : std_logic;
SIGNAL \inst6|inst21|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst26|inst~q\ : std_logic;
SIGNAL \inst6|inst26|inst1~q\ : std_logic;
SIGNAL \inst6|inst26|inst2~combout\ : std_logic;
SIGNAL \inst6|inst38|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst35|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst35|inst~q\ : std_logic;
SIGNAL \inst6|inst35|inst1~q\ : std_logic;
SIGNAL \inst6|inst35|inst2~combout\ : std_logic;
SIGNAL \inst6|inst32~0_combout\ : std_logic;
SIGNAL \inst6|inst71|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst68|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst68|inst~q\ : std_logic;
SIGNAL \inst6|inst68|inst1~feeder_combout\ : std_logic;
SIGNAL \inst6|inst68|inst1~q\ : std_logic;
SIGNAL \inst6|inst68|inst2~combout\ : std_logic;
SIGNAL \inst6|inst34|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst1~q\ : std_logic;
SIGNAL \inst6|inst31|inst2~combout\ : std_logic;
SIGNAL \inst6|inst67|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst64|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst64|inst~q\ : std_logic;
SIGNAL \inst6|inst64|inst1~q\ : std_logic;
SIGNAL \inst6|inst64|inst2~combout\ : std_logic;
SIGNAL \inst6|inst16|data_next[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst23~0_combout\ : std_logic;
SIGNAL \inst6|inst22|data_next~0_combout\ : std_logic;
SIGNAL \inst6|inst27|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst27|inst~q\ : std_logic;
SIGNAL \inst6|inst27|inst1~q\ : std_logic;
SIGNAL \inst6|inst27|inst2~combout\ : std_logic;
SIGNAL \inst6|inst16|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst21|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst22|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst30|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst14|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst67|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst71|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst63|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst1|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst42|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst34|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst38|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst59|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst14|ALT_INV_data\ : std_logic_vector(0 DOWNTO 0);

BEGIN

\out\ <= \ww_out\;
ww_CLK <= CLK;
ww_PS2_CLK <= PS2_CLK;
ww_PS2_DATA <= PS2_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|inst40|inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|inst40|inst1~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst6|inst14|ALT_INV_data\(0) <= NOT \inst6|inst14|data\(0);

-- Location: IOOBUF_X39_Y0_N16
\out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst16|data\(0),
	devoe => ww_devoe,
	o => \out[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|data\(0),
	devoe => ww_devoe,
	o => \out[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst60|inst2~combout\,
	devoe => ww_devoe,
	o => \out[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst28|inst2~combout\,
	devoe => ww_devoe,
	o => \out[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst56|inst2~combout\,
	devoe => ww_devoe,
	o => \out[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst39|inst2~combout\,
	devoe => ww_devoe,
	o => \out[6]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst26|inst2~combout\,
	devoe => ww_devoe,
	o => \out[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst35|inst2~combout\,
	devoe => ww_devoe,
	o => \out[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst68|inst2~combout\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst31|inst2~combout\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst64|inst2~combout\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst27|inst2~combout\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y10_N8
\PS2_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\inst3|inst40|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst40|inst~0_combout\ = !\PS2_CLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~input_o\,
	combout => \inst3|inst40|inst~0_combout\);

-- Location: FF_X22_Y1_N25
\inst3|inst40|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst40|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst40|inst~q\);

-- Location: LCCOMB_X22_Y1_N12
\inst3|inst40|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst40|inst2|inst~0_combout\ = (!\inst3|inst40|inst2|inst~q\ & (\PS2_CLK~input_o\ $ (\inst3|inst40|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~input_o\,
	datac => \inst3|inst40|inst2|inst~q\,
	datad => \inst3|inst40|inst~q\,
	combout => \inst3|inst40|inst2|inst~0_combout\);

-- Location: FF_X22_Y1_N13
\inst3|inst40|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst40|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst40|inst2|inst~q\);

-- Location: LCCOMB_X22_Y1_N18
\inst3|inst40|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst40|inst3|inst~0_combout\ = (\PS2_CLK~input_o\ & (!\inst3|inst40|inst~q\ & (\inst3|inst40|inst3|inst~q\ $ (\inst3|inst40|inst2|inst~q\)))) # (!\PS2_CLK~input_o\ & (\inst3|inst40|inst~q\ & (\inst3|inst40|inst3|inst~q\ $ 
-- (\inst3|inst40|inst2|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~input_o\,
	datab => \inst3|inst40|inst~q\,
	datac => \inst3|inst40|inst3|inst~q\,
	datad => \inst3|inst40|inst2|inst~q\,
	combout => \inst3|inst40|inst3|inst~0_combout\);

-- Location: FF_X22_Y1_N19
\inst3|inst40|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst40|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst40|inst3|inst~q\);

-- Location: LCCOMB_X22_Y1_N16
\inst3|inst40|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst40|inst6~combout\ = \PS2_CLK~input_o\ $ (\inst3|inst40|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~input_o\,
	datad => \inst3|inst40|inst~q\,
	combout => \inst3|inst40|inst6~combout\);

-- Location: LCCOMB_X22_Y1_N14
\inst3|inst40|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst40|inst4|inst~0_combout\ = (\inst3|inst40|inst6~combout\ & (\inst3|inst40|inst4|inst~q\ $ (((\inst3|inst40|inst2|inst~q\ & \inst3|inst40|inst3|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst40|inst2|inst~q\,
	datab => \inst3|inst40|inst3|inst~q\,
	datac => \inst3|inst40|inst4|inst~q\,
	datad => \inst3|inst40|inst6~combout\,
	combout => \inst3|inst40|inst4|inst~0_combout\);

-- Location: FF_X22_Y1_N15
\inst3|inst40|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst40|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst40|inst4|inst~q\);

-- Location: LCCOMB_X22_Y1_N20
\inst3|inst40|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst40|inst5~combout\ = (\inst3|inst40|inst2|inst~q\ & (\inst3|inst40|inst4|inst~q\ & \inst3|inst40|inst3|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst40|inst2|inst~q\,
	datab => \inst3|inst40|inst4|inst~q\,
	datad => \inst3|inst40|inst3|inst~q\,
	combout => \inst3|inst40|inst5~combout\);

-- Location: FF_X22_Y1_N21
\inst3|inst40|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst40|inst~q\,
	sload => VCC,
	ena => \inst3|inst40|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst40|inst1~q\);

-- Location: CLKCTRL_G17
\inst3|inst40|inst1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|inst40|inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|inst40|inst1~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y10_N26
\inst3|inst4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst4~1_combout\ = (!\inst3|inst10~q\ & (!\inst3|inst11~q\ & (!\inst3|inst8~q\ & !\inst3|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10~q\,
	datab => \inst3|inst11~q\,
	datac => \inst3|inst8~q\,
	datad => \inst3|inst9~q\,
	combout => \inst3|inst4~1_combout\);

-- Location: IOIBUF_X41_Y12_N22
\PS2_DATA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_DATA,
	o => \PS2_DATA~input_o\);

-- Location: LCCOMB_X22_Y10_N8
\inst3|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst4~0_combout\ = (!\PS2_DATA~input_o\ & (!\inst3|inst13~q\ & (!\inst3|inst14~q\ & !\inst3|inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_DATA~input_o\,
	datab => \inst3|inst13~q\,
	datac => \inst3|inst14~q\,
	datad => \inst3|inst12~q\,
	combout => \inst3|inst4~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst3|inst1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1~feeder_combout\ = \PS2_DATA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_DATA~input_o\,
	combout => \inst3|inst1~feeder_combout\);

-- Location: FF_X22_Y10_N1
\inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1~q\);

-- Location: LCCOMB_X22_Y10_N10
\inst3|inst4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst4~2_combout\ = (!\inst3|inst6~q\ & (\inst3|inst1~q\ & (!\inst3|inst5~q\ & !\inst3|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst6~q\,
	datab => \inst3|inst1~q\,
	datac => \inst3|inst5~q\,
	datad => \inst3|inst7~q\,
	combout => \inst3|inst4~2_combout\);

-- Location: LCCOMB_X22_Y10_N22
\inst3|inst4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst4~3_combout\ = (\inst3|inst4~1_combout\ & (\inst3|inst4~0_combout\ & \inst3|inst4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4~1_combout\,
	datac => \inst3|inst4~0_combout\,
	datad => \inst3|inst4~2_combout\,
	combout => \inst3|inst4~3_combout\);

-- Location: FF_X22_Y10_N23
\inst3|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst5~q\);

-- Location: LCCOMB_X22_Y10_N28
\inst3|inst6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst6~feeder_combout\ = \inst3|inst5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst5~q\,
	combout => \inst3|inst6~feeder_combout\);

-- Location: FF_X22_Y10_N29
\inst3|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst6~q\);

-- Location: LCCOMB_X22_Y10_N16
\inst3|inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst7~feeder_combout\ = \inst3|inst6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst6~q\,
	combout => \inst3|inst7~feeder_combout\);

-- Location: FF_X22_Y10_N17
\inst3|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst7~q\);

-- Location: FF_X22_Y10_N27
\inst3|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	asdata => \inst3|inst7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8~q\);

-- Location: LCCOMB_X22_Y10_N6
\inst3|inst9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9~feeder_combout\ = \inst3|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst8~q\,
	combout => \inst3|inst9~feeder_combout\);

-- Location: FF_X22_Y10_N7
\inst3|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9~q\);

-- Location: LCCOMB_X22_Y10_N12
\inst3|inst10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst10~feeder_combout\ = \inst3|inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst9~q\,
	combout => \inst3|inst10~feeder_combout\);

-- Location: FF_X22_Y10_N13
\inst3|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10~q\);

-- Location: LCCOMB_X22_Y10_N24
\inst3|inst11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst11~feeder_combout\ = \inst3|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst10~q\,
	combout => \inst3|inst11~feeder_combout\);

-- Location: FF_X22_Y10_N25
\inst3|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst11~q\);

-- Location: FF_X22_Y10_N21
\inst3|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	asdata => \inst3|inst11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst12~q\);

-- Location: LCCOMB_X22_Y10_N2
\inst3|inst13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13~feeder_combout\ = \inst3|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst12~q\,
	combout => \inst3|inst13~feeder_combout\);

-- Location: FF_X22_Y10_N3
\inst3|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13~q\);

-- Location: LCCOMB_X22_Y10_N4
\inst3|inst14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst14~feeder_combout\ = \inst3|inst13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst13~q\,
	combout => \inst3|inst14~feeder_combout\);

-- Location: FF_X22_Y10_N5
\inst3|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst14~q\);

-- Location: FF_X22_Y10_N9
\inst3|inst29|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst14~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst29|inst~q\);

-- Location: LCCOMB_X22_Y10_N30
\inst3|inst29|inst1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst29|inst1~feeder_combout\ = \inst3|inst29|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst29|inst~q\,
	combout => \inst3|inst29|inst1~feeder_combout\);

-- Location: FF_X22_Y10_N31
\inst3|inst29|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst29|inst1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst29|inst1~q\);

-- Location: LCCOMB_X22_Y10_N20
\inst3|inst29|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst29|inst2~combout\ = (!\inst3|inst29|inst1~q\ & \inst3|inst29|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst29|inst1~q\,
	datad => \inst3|inst29|inst~q\,
	combout => \inst3|inst29|inst2~combout\);

-- Location: LCCOMB_X22_Y10_N18
\inst3|inst39~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst39~feeder_combout\ = \inst3|inst29|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst29|inst2~combout\,
	combout => \inst3|inst39~feeder_combout\);

-- Location: FF_X22_Y10_N19
\inst3|inst39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst39~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst39~q\);

-- Location: LCCOMB_X21_Y10_N22
\inst3|inst17~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst17~feeder_combout\ = \inst3|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1~q\,
	combout => \inst3|inst17~feeder_combout\);

-- Location: FF_X21_Y10_N23
\inst3|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst17~q\);

-- Location: FF_X21_Y10_N15
\inst3|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	asdata => \inst3|inst17~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst18~q\);

-- Location: LCCOMB_X21_Y10_N26
\inst3|inst19~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst19~feeder_combout\ = \inst3|inst18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst18~q\,
	combout => \inst3|inst19~feeder_combout\);

-- Location: FF_X21_Y10_N27
\inst3|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst19~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst19~q\);

-- Location: LCCOMB_X21_Y10_N12
\inst3|inst20~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst20~feeder_combout\ = \inst3|inst19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst19~q\,
	combout => \inst3|inst20~feeder_combout\);

-- Location: FF_X21_Y10_N13
\inst3|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst20~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst20~q\);

-- Location: LCCOMB_X21_Y10_N30
\inst3|inst21~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst21~feeder_combout\ = \inst3|inst20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst20~q\,
	combout => \inst3|inst21~feeder_combout\);

-- Location: FF_X21_Y10_N31
\inst3|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst21~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst21~q\);

-- Location: LCCOMB_X21_Y10_N4
\inst3|inst22~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst22~feeder_combout\ = \inst3|inst21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst21~q\,
	combout => \inst3|inst22~feeder_combout\);

-- Location: FF_X21_Y10_N5
\inst3|inst22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst22~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst22~q\);

-- Location: FF_X21_Y10_N7
\inst3|inst35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst22~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst35~q\);

-- Location: FF_X21_Y10_N19
\inst3|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst19~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst32~q\);

-- Location: FF_X21_Y10_N3
\inst3|inst34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst21~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst34~q\);

-- Location: LCCOMB_X20_Y10_N8
\inst6|inst14|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst14|data[0]~0_combout\ = (!\inst3|inst35~q\ & (\inst3|inst32~q\ & (\inst3|inst39~q\ & !\inst3|inst34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst35~q\,
	datab => \inst3|inst32~q\,
	datac => \inst3|inst39~q\,
	datad => \inst3|inst34~q\,
	combout => \inst6|inst14|data[0]~0_combout\);

-- Location: FF_X21_Y10_N29
\inst3|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst17~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst30~q\);

-- Location: FF_X21_Y10_N9
\inst3|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	asdata => \inst3|inst22~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst23~q\);

-- Location: LCCOMB_X21_Y10_N10
\inst3|inst24~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst24~feeder_combout\ = \inst3|inst23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst23~q\,
	combout => \inst3|inst24~feeder_combout\);

-- Location: FF_X21_Y10_N11
\inst3|inst24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst40|inst1~clkctrl_outclk\,
	d => \inst3|inst24~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst24~q\);

-- Location: FF_X21_Y10_N21
\inst3|inst37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst24~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst37~q\);

-- Location: FF_X21_Y10_N17
\inst3|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst18~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst31~q\);

-- Location: FF_X21_Y10_N1
\inst3|inst36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst23~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst36~q\);

-- Location: FF_X21_Y10_N25
\inst3|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|inst20~q\,
	sload => VCC,
	ena => \inst3|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst33~q\);

-- Location: LCCOMB_X21_Y10_N6
\inst6|inst40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst40~0_combout\ = (!\inst3|inst36~q\ & \inst3|inst33~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst36~q\,
	datad => \inst3|inst33~q\,
	combout => \inst6|inst40~0_combout\);

-- Location: LCCOMB_X20_Y10_N2
\inst6|inst14|data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst14|data[0]~1_combout\ = (\inst3|inst30~q\ & (!\inst3|inst37~q\ & (\inst3|inst31~q\ & \inst6|inst40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst30~q\,
	datab => \inst3|inst37~q\,
	datac => \inst3|inst31~q\,
	datad => \inst6|inst40~0_combout\,
	combout => \inst6|inst14|data[0]~1_combout\);

-- Location: LCCOMB_X20_Y10_N12
\inst6|inst14|data[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst14|data[0]~2_combout\ = (\inst3|inst39~q\ & (((!\inst6|inst14|data[0]~1_combout\)) # (!\inst6|inst14|data[0]~0_combout\))) # (!\inst3|inst39~q\ & (\inst6|inst14|data\(0) & ((!\inst6|inst14|data[0]~1_combout\) # 
-- (!\inst6|inst14|data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst39~q\,
	datab => \inst6|inst14|data[0]~0_combout\,
	datac => \inst6|inst14|data\(0),
	datad => \inst6|inst14|data[0]~1_combout\,
	combout => \inst6|inst14|data[0]~2_combout\);

-- Location: FF_X20_Y10_N13
\inst6|inst14|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst14|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst14|data\(0));

-- Location: LCCOMB_X21_Y10_N0
\inst6|inst555|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst555|Equal0~0_combout\ = (!\inst3|inst35~q\ & (!\inst3|inst34~q\ & (\inst3|inst36~q\ & \inst3|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst35~q\,
	datab => \inst3|inst34~q\,
	datac => \inst3|inst36~q\,
	datad => \inst3|inst32~q\,
	combout => \inst6|inst555|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst6|inst555|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst555|Equal0~1_combout\ = (!\inst3|inst30~q\ & !\inst3|inst31~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst30~q\,
	datad => \inst3|inst31~q\,
	combout => \inst6|inst555|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst6|inst555|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst555|Equal0~2_combout\ = (\inst6|inst555|Equal0~0_combout\ & (\inst6|inst555|Equal0~1_combout\ & (!\inst3|inst33~q\ & \inst3|inst37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst555|Equal0~0_combout\,
	datab => \inst6|inst555|Equal0~1_combout\,
	datac => \inst3|inst33~q\,
	datad => \inst3|inst37~q\,
	combout => \inst6|inst555|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y10_N14
\inst6|inst16|data_next[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst16|data_next[0]~3_combout\ = (\inst6|inst555|Equal0~2_combout\ & (\inst6|inst14|data\(0) & ((\inst3|inst39~q\) # (\inst6|inst16|data\(0))))) # (!\inst6|inst555|Equal0~2_combout\ & (((\inst6|inst16|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst39~q\,
	datab => \inst6|inst14|data\(0),
	datac => \inst6|inst16|data\(0),
	datad => \inst6|inst555|Equal0~2_combout\,
	combout => \inst6|inst16|data_next[0]~3_combout\);

-- Location: FF_X22_Y10_N15
\inst6|inst16|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst16|data_next[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst16|data\(0));

-- Location: LCCOMB_X21_Y10_N20
\inst6|inst3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst3|Equal0~0_combout\ = (\inst3|inst35~q\ & (\inst3|inst34~q\ & (!\inst3|inst37~q\ & !\inst3|inst36~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst35~q\,
	datab => \inst3|inst34~q\,
	datac => \inst3|inst37~q\,
	datad => \inst3|inst36~q\,
	combout => \inst6|inst3|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y10_N18
\inst6|inst3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst3|Equal0~1_combout\ = (!\inst3|inst32~q\ & (\inst3|inst33~q\ & (\inst6|inst3|Equal0~0_combout\ & \inst6|inst555|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst32~q\,
	datab => \inst3|inst33~q\,
	datac => \inst6|inst3|Equal0~0_combout\,
	datad => \inst6|inst555|Equal0~1_combout\,
	combout => \inst6|inst3|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y10_N10
\inst6|inst1|data_next[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst1|data_next[0]~2_combout\ = (\inst6|inst3|Equal0~1_combout\ & (\inst6|inst14|data\(0) & ((\inst3|inst39~q\) # (\inst6|inst1|data\(0))))) # (!\inst6|inst3|Equal0~1_combout\ & (((\inst6|inst1|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst39~q\,
	datab => \inst6|inst14|data\(0),
	datac => \inst6|inst1|data\(0),
	datad => \inst6|inst3|Equal0~1_combout\,
	combout => \inst6|inst1|data_next[0]~2_combout\);

-- Location: FF_X20_Y10_N11
\inst6|inst1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst1|data_next[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|data\(0));

-- Location: LCCOMB_X21_Y10_N18
\inst6|inst19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst19~0_combout\ = (\inst6|inst14|data\(0) & (!\inst3|inst30~q\ & (\inst3|inst32~q\ & \inst3|inst39~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst14|data\(0),
	datab => \inst3|inst30~q\,
	datac => \inst3|inst32~q\,
	datad => \inst3|inst39~q\,
	combout => \inst6|inst19~0_combout\);

-- Location: LCCOMB_X19_Y10_N16
\inst6|inst40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst40~1_combout\ = (\inst3|inst31~q\ & (\inst3|inst35~q\ & (\inst6|inst40~0_combout\ & \inst6|inst19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst31~q\,
	datab => \inst3|inst35~q\,
	datac => \inst6|inst40~0_combout\,
	datad => \inst6|inst19~0_combout\,
	combout => \inst6|inst40~1_combout\);

-- Location: LCCOMB_X19_Y10_N20
\inst6|inst63|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst63|data_next~0_combout\ = (\inst6|inst63|data\(0)) # ((\inst3|inst34~q\ & (\inst3|inst37~q\ & \inst6|inst40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst34~q\,
	datab => \inst3|inst37~q\,
	datac => \inst6|inst63|data\(0),
	datad => \inst6|inst40~1_combout\,
	combout => \inst6|inst63|data_next~0_combout\);

-- Location: FF_X19_Y10_N21
\inst6|inst63|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst63|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst63|data\(0));

-- Location: LCCOMB_X19_Y10_N22
\inst6|inst60|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst60|inst~feeder_combout\ = \inst6|inst63|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst63|data\(0),
	combout => \inst6|inst60|inst~feeder_combout\);

-- Location: FF_X19_Y10_N23
\inst6|inst60|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst60|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst60|inst~q\);

-- Location: FF_X17_Y10_N21
\inst6|inst60|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst60|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst60|inst1~q\);

-- Location: LCCOMB_X17_Y10_N20
\inst6|inst60|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst60|inst2~combout\ = (\inst6|inst60|inst~q\ & !\inst6|inst60|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst60|inst~q\,
	datac => \inst6|inst60|inst1~q\,
	combout => \inst6|inst60|inst2~combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst6|inst30|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst30|data_next~0_combout\ = (\inst6|inst30|data\(0)) # ((!\inst3|inst34~q\ & (\inst3|inst37~q\ & \inst6|inst40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst34~q\,
	datab => \inst3|inst37~q\,
	datac => \inst6|inst30|data\(0),
	datad => \inst6|inst40~1_combout\,
	combout => \inst6|inst30|data_next~0_combout\);

-- Location: FF_X19_Y10_N31
\inst6|inst30|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst30|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst30|data\(0));

-- Location: LCCOMB_X19_Y10_N28
\inst6|inst28|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst28|inst~feeder_combout\ = \inst6|inst30|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst30|data\(0),
	combout => \inst6|inst28|inst~feeder_combout\);

-- Location: FF_X19_Y10_N29
\inst6|inst28|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst28|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst28|inst~q\);

-- Location: FF_X17_Y10_N19
\inst6|inst28|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst28|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst28|inst1~q\);

-- Location: LCCOMB_X17_Y10_N18
\inst6|inst28|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst28|inst2~combout\ = (\inst6|inst28|inst~q\ & !\inst6|inst28|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst28|inst~q\,
	datac => \inst6|inst28|inst1~q\,
	combout => \inst6|inst28|inst2~combout\);

-- Location: LCCOMB_X20_Y10_N24
\inst6|inst65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst65~0_combout\ = (\inst3|inst31~q\ & \inst6|inst19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst31~q\,
	datad => \inst6|inst19~0_combout\,
	combout => \inst6|inst65~0_combout\);

-- Location: LCCOMB_X20_Y10_N28
\inst6|inst59|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst59|data_next~0_combout\ = (\inst6|inst59|data\(0)) # ((\inst6|inst3|Equal0~0_combout\ & (!\inst3|inst33~q\ & \inst6|inst65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|Equal0~0_combout\,
	datab => \inst3|inst33~q\,
	datac => \inst6|inst59|data\(0),
	datad => \inst6|inst65~0_combout\,
	combout => \inst6|inst59|data_next~0_combout\);

-- Location: FF_X20_Y10_N29
\inst6|inst59|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst59|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst59|data\(0));

-- Location: LCCOMB_X21_Y8_N4
\inst6|inst56|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst56|inst~feeder_combout\ = \inst6|inst59|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst59|data\(0),
	combout => \inst6|inst56|inst~feeder_combout\);

-- Location: FF_X21_Y8_N5
\inst6|inst56|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst56|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst56|inst~q\);

-- Location: FF_X21_Y8_N27
\inst6|inst56|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst56|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst56|inst1~q\);

-- Location: LCCOMB_X21_Y8_N26
\inst6|inst56|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst56|inst2~combout\ = (\inst6|inst56|inst~q\ & !\inst6|inst56|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst56|inst~q\,
	datac => \inst6|inst56|inst1~q\,
	combout => \inst6|inst56|inst2~combout\);

-- Location: LCCOMB_X19_Y10_N0
\inst6|inst42|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst42|data_next~0_combout\ = (\inst6|inst42|data\(0)) # ((!\inst3|inst34~q\ & (!\inst3|inst37~q\ & \inst6|inst40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst34~q\,
	datab => \inst3|inst37~q\,
	datac => \inst6|inst42|data\(0),
	datad => \inst6|inst40~1_combout\,
	combout => \inst6|inst42|data_next~0_combout\);

-- Location: FF_X19_Y10_N1
\inst6|inst42|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst42|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst42|data\(0));

-- Location: LCCOMB_X23_Y10_N16
\inst6|inst39|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst39|inst~feeder_combout\ = \inst6|inst42|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst42|data\(0),
	combout => \inst6|inst39|inst~feeder_combout\);

-- Location: FF_X23_Y10_N17
\inst6|inst39|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst39|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst39|inst~q\);

-- Location: FF_X24_Y10_N5
\inst6|inst39|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst39|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst39|inst1~q\);

-- Location: LCCOMB_X24_Y10_N4
\inst6|inst39|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst39|inst2~combout\ = (\inst6|inst39|inst~q\ & !\inst6|inst39|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst39|inst~q\,
	datac => \inst6|inst39|inst1~q\,
	combout => \inst6|inst39|inst2~combout\);

-- Location: LCCOMB_X21_Y10_N2
\inst6|inst65~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst65~1_combout\ = (!\inst3|inst35~q\ & (\inst3|inst37~q\ & (\inst3|inst34~q\ & !\inst3|inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst35~q\,
	datab => \inst3|inst37~q\,
	datac => \inst3|inst34~q\,
	datad => \inst3|inst33~q\,
	combout => \inst6|inst65~1_combout\);

-- Location: LCCOMB_X21_Y10_N8
\inst6|inst19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst19~1_combout\ = (!\inst3|inst36~q\ & !\inst3|inst31~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst36~q\,
	datad => \inst3|inst31~q\,
	combout => \inst6|inst19~1_combout\);

-- Location: LCCOMB_X20_Y10_N30
\inst6|inst21|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst21|data_next~0_combout\ = (\inst6|inst21|data\(0)) # ((\inst6|inst65~1_combout\ & (\inst6|inst19~0_combout\ & \inst6|inst19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst65~1_combout\,
	datab => \inst6|inst19~0_combout\,
	datac => \inst6|inst21|data\(0),
	datad => \inst6|inst19~1_combout\,
	combout => \inst6|inst21|data_next~0_combout\);

-- Location: FF_X20_Y10_N31
\inst6|inst21|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst21|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst21|data\(0));

-- Location: LCCOMB_X24_Y10_N14
\inst6|inst26|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst26|inst~feeder_combout\ = \inst6|inst21|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst21|data\(0),
	combout => \inst6|inst26|inst~feeder_combout\);

-- Location: FF_X24_Y10_N15
\inst6|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst26|inst~q\);

-- Location: FF_X24_Y10_N13
\inst6|inst26|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst26|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst26|inst1~q\);

-- Location: LCCOMB_X24_Y10_N12
\inst6|inst26|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst26|inst2~combout\ = (\inst6|inst26|inst~q\ & !\inst6|inst26|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst26|inst~q\,
	datac => \inst6|inst26|inst1~q\,
	combout => \inst6|inst26|inst2~combout\);

-- Location: LCCOMB_X20_Y10_N20
\inst6|inst38|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst38|data_next~0_combout\ = (\inst6|inst38|data\(0)) # ((\inst6|inst65~1_combout\ & (\inst3|inst36~q\ & \inst6|inst65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst65~1_combout\,
	datab => \inst3|inst36~q\,
	datac => \inst6|inst38|data\(0),
	datad => \inst6|inst65~0_combout\,
	combout => \inst6|inst38|data_next~0_combout\);

-- Location: FF_X20_Y10_N21
\inst6|inst38|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst38|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst38|data\(0));

-- Location: LCCOMB_X24_Y10_N22
\inst6|inst35|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst35|inst~feeder_combout\ = \inst6|inst38|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst38|data\(0),
	combout => \inst6|inst35|inst~feeder_combout\);

-- Location: FF_X24_Y10_N23
\inst6|inst35|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst35|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst35|inst~q\);

-- Location: FF_X24_Y10_N17
\inst6|inst35|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst35|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst35|inst1~q\);

-- Location: LCCOMB_X24_Y10_N16
\inst6|inst35|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst35|inst2~combout\ = (\inst6|inst35|inst~q\ & !\inst6|inst35|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst35|inst~q\,
	datac => \inst6|inst35|inst1~q\,
	combout => \inst6|inst35|inst2~combout\);

-- Location: LCCOMB_X20_Y10_N6
\inst6|inst32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst32~0_combout\ = (!\inst3|inst35~q\ & (\inst3|inst33~q\ & (\inst3|inst36~q\ & !\inst3|inst37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst35~q\,
	datab => \inst3|inst33~q\,
	datac => \inst3|inst36~q\,
	datad => \inst3|inst37~q\,
	combout => \inst6|inst32~0_combout\);

-- Location: LCCOMB_X20_Y10_N22
\inst6|inst71|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst71|data_next~0_combout\ = (\inst6|inst71|data\(0)) # ((\inst6|inst32~0_combout\ & (\inst3|inst34~q\ & \inst6|inst65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst32~0_combout\,
	datab => \inst3|inst34~q\,
	datac => \inst6|inst71|data\(0),
	datad => \inst6|inst65~0_combout\,
	combout => \inst6|inst71|data_next~0_combout\);

-- Location: FF_X20_Y10_N23
\inst6|inst71|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst71|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst71|data\(0));

-- Location: LCCOMB_X19_Y10_N18
\inst6|inst68|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst68|inst~feeder_combout\ = \inst6|inst71|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst71|data\(0),
	combout => \inst6|inst68|inst~feeder_combout\);

-- Location: FF_X19_Y10_N19
\inst6|inst68|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst68|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst68|inst~q\);

-- Location: LCCOMB_X19_Y10_N24
\inst6|inst68|inst1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst68|inst1~feeder_combout\ = \inst6|inst68|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst68|inst~q\,
	combout => \inst6|inst68|inst1~feeder_combout\);

-- Location: FF_X19_Y10_N25
\inst6|inst68|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst68|inst1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst68|inst1~q\);

-- Location: LCCOMB_X19_Y10_N10
\inst6|inst68|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst68|inst2~combout\ = (\inst6|inst68|inst~q\ & !\inst6|inst68|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst68|inst~q\,
	datad => \inst6|inst68|inst1~q\,
	combout => \inst6|inst68|inst2~combout\);

-- Location: LCCOMB_X20_Y10_N0
\inst6|inst34|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst34|data_next~0_combout\ = (\inst6|inst34|data\(0)) # ((\inst6|inst32~0_combout\ & (!\inst3|inst34~q\ & \inst6|inst65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst32~0_combout\,
	datab => \inst3|inst34~q\,
	datac => \inst6|inst34|data\(0),
	datad => \inst6|inst65~0_combout\,
	combout => \inst6|inst34|data_next~0_combout\);

-- Location: FF_X20_Y10_N1
\inst6|inst34|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst34|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst34|data\(0));

-- Location: LCCOMB_X21_Y8_N8
\inst6|inst31|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst~feeder_combout\ = \inst6|inst34|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst34|data\(0),
	combout => \inst6|inst31|inst~feeder_combout\);

-- Location: FF_X21_Y8_N9
\inst6|inst31|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst31|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst~q\);

-- Location: FF_X21_Y8_N19
\inst6|inst31|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst31|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst1~q\);

-- Location: LCCOMB_X21_Y8_N18
\inst6|inst31|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst2~combout\ = (\inst6|inst31|inst~q\ & !\inst6|inst31|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst~q\,
	datac => \inst6|inst31|inst1~q\,
	combout => \inst6|inst31|inst2~combout\);

-- Location: LCCOMB_X20_Y10_N26
\inst6|inst67|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst67|data_next~0_combout\ = (\inst6|inst67|data\(0)) # ((\inst6|inst65~1_combout\ & (!\inst3|inst36~q\ & \inst6|inst65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst65~1_combout\,
	datab => \inst3|inst36~q\,
	datac => \inst6|inst67|data\(0),
	datad => \inst6|inst65~0_combout\,
	combout => \inst6|inst67|data_next~0_combout\);

-- Location: FF_X20_Y10_N27
\inst6|inst67|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst67|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst67|data\(0));

-- Location: LCCOMB_X23_Y10_N22
\inst6|inst64|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst64|inst~feeder_combout\ = \inst6|inst67|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst67|data\(0),
	combout => \inst6|inst64|inst~feeder_combout\);

-- Location: FF_X23_Y10_N23
\inst6|inst64|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst64|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst64|inst~q\);

-- Location: FF_X23_Y10_N29
\inst6|inst64|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst64|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst64|inst1~q\);

-- Location: LCCOMB_X23_Y10_N28
\inst6|inst64|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst64|inst2~combout\ = (\inst6|inst64|inst~q\ & !\inst6|inst64|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst64|inst~q\,
	datac => \inst6|inst64|inst1~q\,
	combout => \inst6|inst64|inst2~combout\);

-- Location: LCCOMB_X21_Y10_N16
\inst6|inst16|data_next[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst16|data_next[0]~2_combout\ = (\inst3|inst39~q\ & \inst6|inst14|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst39~q\,
	datad => \inst6|inst14|data\(0),
	combout => \inst6|inst16|data_next[0]~2_combout\);

-- Location: LCCOMB_X21_Y10_N28
\inst6|inst23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst23~0_combout\ = (\inst3|inst31~q\ & (!\inst3|inst32~q\ & (!\inst3|inst30~q\ & \inst6|inst16|data_next[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst31~q\,
	datab => \inst3|inst32~q\,
	datac => \inst3|inst30~q\,
	datad => \inst6|inst16|data_next[0]~2_combout\,
	combout => \inst6|inst23~0_combout\);

-- Location: LCCOMB_X20_Y10_N16
\inst6|inst22|data_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst22|data_next~0_combout\ = (\inst6|inst22|data\(0)) # ((\inst6|inst32~0_combout\ & (\inst3|inst34~q\ & \inst6|inst23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst32~0_combout\,
	datab => \inst3|inst34~q\,
	datac => \inst6|inst22|data\(0),
	datad => \inst6|inst23~0_combout\,
	combout => \inst6|inst22|data_next~0_combout\);

-- Location: FF_X20_Y10_N17
\inst6|inst22|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst22|data_next~0_combout\,
	sclr => \inst6|inst14|ALT_INV_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst22|data\(0));

-- Location: LCCOMB_X26_Y10_N4
\inst6|inst27|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst27|inst~feeder_combout\ = \inst6|inst22|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst22|data\(0),
	combout => \inst6|inst27|inst~feeder_combout\);

-- Location: FF_X26_Y10_N5
\inst6|inst27|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst27|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst27|inst~q\);

-- Location: FF_X26_Y10_N15
\inst6|inst27|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst27|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst27|inst1~q\);

-- Location: LCCOMB_X26_Y10_N14
\inst6|inst27|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst27|inst2~combout\ = (\inst6|inst27|inst~q\ & !\inst6|inst27|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst27|inst~q\,
	datac => \inst6|inst27|inst1~q\,
	combout => \inst6|inst27|inst2~combout\);

\ww_out\(11) <= \out[11]~output_o\;

\ww_out\(10) <= \out[10]~output_o\;

\ww_out\(9) <= \out[9]~output_o\;

\ww_out\(8) <= \out[8]~output_o\;

\ww_out\(7) <= \out[7]~output_o\;

\ww_out\(6) <= \out[6]~output_o\;

\ww_out\(5) <= \out[5]~output_o\;

\ww_out\(4) <= \out[4]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(0) <= \out[0]~output_o\;
END structure;


