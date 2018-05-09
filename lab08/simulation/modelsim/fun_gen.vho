-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/01/2018 13:50:12"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	fun_gen IS
    PORT (
	clk : IN std_logic;
	wren : IN std_logic;
	memory_input : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	period_in_cycles : IN STD.STANDARD.integer range 0 TO 31;
	vga_output : OUT IEEE.NUMERIC_STD.unsigned(9 DOWNTO 0);
	vga_clk : OUT std_logic;
	vga_blank : OUT std_logic;
	vga_sync : OUT std_logic
	);
END fun_gen;

-- Design Ports Information
-- vga_output[0]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[1]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[3]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[4]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[7]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[8]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_output[9]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_sync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[0]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[4]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_input[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_in_cycles[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_in_cycles[3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_in_cycles[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_in_cycles[1]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_in_cycles[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fun_gen IS
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
SIGNAL ww_wren : std_logic;
SIGNAL ww_memory_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_period_in_cycles : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_vga_output : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_vga_clk : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL ww_vga_sync : std_logic;
SIGNAL \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \samples|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \period_in_cycles[0]~input_o\ : std_logic;
SIGNAL \period_in_cycles[1]~input_o\ : std_logic;
SIGNAL \period_in_cycles[3]~input_o\ : std_logic;
SIGNAL \period_in_cycles[2]~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \period_in_cycles[4]~input_o\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \slower_clk~0_combout\ : std_logic;
SIGNAL \slower_clk~q\ : std_logic;
SIGNAL \memory_input[0]~input_o\ : std_logic;
SIGNAL \address_ctr[0]~4_combout\ : std_logic;
SIGNAL \address_ctr[0]~DUPLICATE_q\ : std_logic;
SIGNAL \address_ctr[0]~_wirecell_combout\ : std_logic;
SIGNAL \address_ctr[1]~0_combout\ : std_logic;
SIGNAL \address_ctr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \address_ctr[2]~1_combout\ : std_logic;
SIGNAL \address_ctr[3]~2_combout\ : std_logic;
SIGNAL \address_ctr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \address_ctr[4]~3_combout\ : std_logic;
SIGNAL \memory_input[1]~input_o\ : std_logic;
SIGNAL \memory_input[2]~input_o\ : std_logic;
SIGNAL \memory_input[3]~input_o\ : std_logic;
SIGNAL \memory_input[4]~input_o\ : std_logic;
SIGNAL \memory_input[5]~input_o\ : std_logic;
SIGNAL \memory_input[6]~input_o\ : std_logic;
SIGNAL \memory_input[7]~input_o\ : std_logic;
SIGNAL address : std_logic_vector(4 DOWNTO 0);
SIGNAL address_ctr : std_logic_vector(4 DOWNTO 0);
SIGNAL freq_ctr : std_logic_vector(14 DOWNTO 0);
SIGNAL \samples|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_address_ctr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_address_ctr[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_period_in_cycles[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_period_in_cycles[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_period_in_cycles[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_period_in_cycles[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_period_in_cycles[0]~input_o\ : std_logic;
SIGNAL ALT_INV_address_ctr : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_slower_clk~q\ : std_logic;
SIGNAL ALT_INV_freq_ctr : std_logic_vector(14 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_wren <= wren;
ww_memory_input <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(memory_input);
ww_period_in_cycles <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(period_in_cycles, 5);
vga_output <= IEEE.NUMERIC_STD.UNSIGNED(ww_vga_output);
vga_clk <= ww_vga_clk;
vga_blank <= ww_vga_blank;
vga_sync <= ww_vga_sync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \memory_input[7]~input_o\ & \memory_input[6]~input_o\ & \memory_input[5]~input_o\ & 
\memory_input[4]~input_o\ & \memory_input[3]~input_o\ & \memory_input[2]~input_o\ & \memory_input[1]~input_o\ & \memory_input[0]~input_o\);

\samples|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (address(4) & address(3) & address(2) & address(1) & \address_ctr[0]~_wirecell_combout\);

\samples|altsyncram_component|auto_generated|q_a\(0) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\samples|altsyncram_component|auto_generated|q_a\(1) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\samples|altsyncram_component|auto_generated|q_a\(2) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\samples|altsyncram_component|auto_generated|q_a\(3) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\samples|altsyncram_component|auto_generated|q_a\(4) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\samples|altsyncram_component|auto_generated|q_a\(5) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\samples|altsyncram_component|auto_generated|q_a\(6) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\samples|altsyncram_component|auto_generated|q_a\(7) <= \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ALT_INV_address_ctr[1]~DUPLICATE_q\ <= NOT \address_ctr[1]~DUPLICATE_q\;
\ALT_INV_address_ctr[0]~DUPLICATE_q\ <= NOT \address_ctr[0]~DUPLICATE_q\;
\ALT_INV_period_in_cycles[4]~input_o\ <= NOT \period_in_cycles[4]~input_o\;
\ALT_INV_period_in_cycles[1]~input_o\ <= NOT \period_in_cycles[1]~input_o\;
\ALT_INV_period_in_cycles[2]~input_o\ <= NOT \period_in_cycles[2]~input_o\;
\ALT_INV_period_in_cycles[3]~input_o\ <= NOT \period_in_cycles[3]~input_o\;
\ALT_INV_period_in_cycles[0]~input_o\ <= NOT \period_in_cycles[0]~input_o\;
ALT_INV_address_ctr(4) <= NOT address_ctr(4);
ALT_INV_address_ctr(3) <= NOT address_ctr(3);
ALT_INV_address_ctr(2) <= NOT address_ctr(2);
ALT_INV_address_ctr(1) <= NOT address_ctr(1);
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_address_ctr(0) <= NOT address_ctr(0);
\ALT_INV_slower_clk~q\ <= NOT \slower_clk~q\;
ALT_INV_freq_ctr(14) <= NOT freq_ctr(14);
ALT_INV_freq_ctr(4) <= NOT freq_ctr(4);
ALT_INV_freq_ctr(5) <= NOT freq_ctr(5);
ALT_INV_freq_ctr(6) <= NOT freq_ctr(6);
ALT_INV_freq_ctr(7) <= NOT freq_ctr(7);
ALT_INV_freq_ctr(8) <= NOT freq_ctr(8);
ALT_INV_freq_ctr(9) <= NOT freq_ctr(9);
ALT_INV_freq_ctr(12) <= NOT freq_ctr(12);
ALT_INV_freq_ctr(11) <= NOT freq_ctr(11);
ALT_INV_freq_ctr(13) <= NOT freq_ctr(13);
ALT_INV_freq_ctr(10) <= NOT freq_ctr(10);
ALT_INV_freq_ctr(0) <= NOT freq_ctr(0);
ALT_INV_freq_ctr(1) <= NOT freq_ctr(1);
ALT_INV_freq_ctr(2) <= NOT freq_ctr(2);
ALT_INV_freq_ctr(3) <= NOT freq_ctr(3);

-- Location: IOOBUF_X89_Y4_N45
\vga_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_output(0));

-- Location: IOOBUF_X8_Y81_N53
\vga_output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_output(1));

-- Location: IOOBUF_X89_Y15_N5
\vga_output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_vga_output(2));

-- Location: IOOBUF_X89_Y15_N39
\vga_output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_vga_output(3));

-- Location: IOOBUF_X89_Y16_N22
\vga_output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_vga_output(4));

-- Location: IOOBUF_X89_Y20_N62
\vga_output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_vga_output(5));

-- Location: IOOBUF_X89_Y16_N5
\vga_output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_vga_output(6));

-- Location: IOOBUF_X89_Y20_N79
\vga_output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_vga_output(7));

-- Location: IOOBUF_X89_Y21_N56
\vga_output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_vga_output(8));

-- Location: IOOBUF_X89_Y15_N22
\vga_output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \samples|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_vga_output(9));

-- Location: IOOBUF_X89_Y23_N5
\vga_clk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \slower_clk~q\,
	devoe => ww_devoe,
	o => ww_vga_clk);

-- Location: IOOBUF_X28_Y0_N19
\vga_blank~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_vga_blank);

-- Location: IOOBUF_X28_Y81_N36
\vga_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_vga_sync);

-- Location: IOIBUF_X89_Y20_N95
\wren~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\period_in_cycles[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_in_cycles(0),
	o => \period_in_cycles[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\period_in_cycles[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_in_cycles(1),
	o => \period_in_cycles[1]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\period_in_cycles[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_in_cycles(3),
	o => \period_in_cycles[3]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\period_in_cycles[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_in_cycles(2),
	o => \period_in_cycles[2]~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X78_Y28_N0
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( freq_ctr(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~14\ = CARRY(( freq_ctr(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_freq_ctr(0),
	cin => GND,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X78_Y28_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( freq_ctr(7) & ( freq_ctr(6) & ( (freq_ctr(8) & (freq_ctr(5) & (freq_ctr(9) & freq_ctr(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_freq_ctr(8),
	datab => ALT_INV_freq_ctr(5),
	datac => ALT_INV_freq_ctr(9),
	datad => ALT_INV_freq_ctr(4),
	datae => ALT_INV_freq_ctr(7),
	dataf => ALT_INV_freq_ctr(6),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X77_Y28_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( freq_ctr(12) & ( freq_ctr(11) & ( (!\period_in_cycles[0]~input_o\ & (!\period_in_cycles[1]~input_o\ & !\period_in_cycles[2]~input_o\)) # (\period_in_cycles[0]~input_o\ & (\period_in_cycles[1]~input_o\ & 
-- \period_in_cycles[2]~input_o\)) ) ) ) # ( !freq_ctr(12) & ( freq_ctr(11) & ( (!\period_in_cycles[0]~input_o\ & (!\period_in_cycles[1]~input_o\ & \period_in_cycles[2]~input_o\)) # (\period_in_cycles[0]~input_o\ & (\period_in_cycles[1]~input_o\ & 
-- !\period_in_cycles[2]~input_o\)) ) ) ) # ( freq_ctr(12) & ( !freq_ctr(11) & ( (\period_in_cycles[2]~input_o\ & (!\period_in_cycles[0]~input_o\ $ (!\period_in_cycles[1]~input_o\))) ) ) ) # ( !freq_ctr(12) & ( !freq_ctr(11) & ( 
-- (!\period_in_cycles[2]~input_o\ & (!\period_in_cycles[0]~input_o\ $ (!\period_in_cycles[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000000000000110011000010001100010001000100000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_period_in_cycles[0]~input_o\,
	datab => \ALT_INV_period_in_cycles[1]~input_o\,
	datad => \ALT_INV_period_in_cycles[2]~input_o\,
	datae => ALT_INV_freq_ctr(12),
	dataf => ALT_INV_freq_ctr(11),
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X89_Y25_N4
\period_in_cycles[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_in_cycles(4),
	o => \period_in_cycles[4]~input_o\);

-- Location: MLABCELL_X78_Y28_N39
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( freq_ctr(13) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~22\ = CARRY(( freq_ctr(13) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_freq_ctr(13),
	cin => \Add1~30\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X78_Y28_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( freq_ctr(14) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_freq_ctr(14),
	cin => \Add1~22\,
	sumout => \Add1~57_sumout\);

-- Location: FF_X78_Y28_N44
\freq_ctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(14));

-- Location: LABCELL_X77_Y28_N27
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \period_in_cycles[2]~input_o\ & ( freq_ctr(14) & ( \period_in_cycles[4]~input_o\ ) ) ) # ( !\period_in_cycles[2]~input_o\ & ( freq_ctr(14) & ( (\period_in_cycles[4]~input_o\ & (((\period_in_cycles[3]~input_o\) # 
-- (\period_in_cycles[1]~input_o\)) # (\period_in_cycles[0]~input_o\))) ) ) ) # ( \period_in_cycles[2]~input_o\ & ( !freq_ctr(14) & ( !\period_in_cycles[4]~input_o\ ) ) ) # ( !\period_in_cycles[2]~input_o\ & ( !freq_ctr(14) & ( !\period_in_cycles[4]~input_o\ 
-- $ (((!\period_in_cycles[0]~input_o\ & (!\period_in_cycles[1]~input_o\ & !\period_in_cycles[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000111100001111000000000111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_period_in_cycles[0]~input_o\,
	datab => \ALT_INV_period_in_cycles[1]~input_o\,
	datac => \ALT_INV_period_in_cycles[4]~input_o\,
	datad => \ALT_INV_period_in_cycles[3]~input_o\,
	datae => \ALT_INV_period_in_cycles[2]~input_o\,
	dataf => ALT_INV_freq_ctr(14),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X77_Y28_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( freq_ctr(1) & ( freq_ctr(2) & ( (freq_ctr(0) & (freq_ctr(3) & (!\period_in_cycles[0]~input_o\ $ (!freq_ctr(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_freq_ctr(0),
	datab => \ALT_INV_period_in_cycles[0]~input_o\,
	datac => ALT_INV_freq_ctr(10),
	datad => ALT_INV_freq_ctr(3),
	datae => ALT_INV_freq_ctr(1),
	dataf => ALT_INV_freq_ctr(2),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X78_Y28_N51
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~4_combout\ & ( \Equal0~0_combout\ & ( (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X78_Y28_N2
\freq_ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(0));

-- Location: MLABCELL_X78_Y28_N3
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( freq_ctr(1) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( freq_ctr(1) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_freq_ctr(1),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X78_Y28_N5
\freq_ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(1));

-- Location: MLABCELL_X78_Y28_N6
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( freq_ctr(2) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( freq_ctr(2) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_freq_ctr(2),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X78_Y28_N8
\freq_ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(2));

-- Location: MLABCELL_X78_Y28_N9
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( freq_ctr(3) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~2\ = CARRY(( freq_ctr(3) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_freq_ctr(3),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X78_Y28_N11
\freq_ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(3));

-- Location: MLABCELL_X78_Y28_N12
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( freq_ctr(4) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~54\ = CARRY(( freq_ctr(4) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_freq_ctr(4),
	cin => \Add1~2\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X78_Y28_N14
\freq_ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(4));

-- Location: MLABCELL_X78_Y28_N15
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( freq_ctr(5) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( freq_ctr(5) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_freq_ctr(5),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X78_Y28_N17
\freq_ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(5));

-- Location: MLABCELL_X78_Y28_N18
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( freq_ctr(6) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( freq_ctr(6) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_freq_ctr(6),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X78_Y28_N20
\freq_ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(6));

-- Location: MLABCELL_X78_Y28_N21
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( freq_ctr(7) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( freq_ctr(7) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_freq_ctr(7),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X78_Y28_N23
\freq_ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(7));

-- Location: MLABCELL_X78_Y28_N24
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( freq_ctr(8) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( freq_ctr(8) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_freq_ctr(8),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X78_Y28_N26
\freq_ctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(8));

-- Location: MLABCELL_X78_Y28_N27
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( freq_ctr(9) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( freq_ctr(9) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_freq_ctr(9),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X78_Y28_N29
\freq_ctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(9));

-- Location: MLABCELL_X78_Y28_N30
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( freq_ctr(10) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~18\ = CARRY(( freq_ctr(10) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_freq_ctr(10),
	cin => \Add1~34\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X78_Y28_N32
\freq_ctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(10));

-- Location: MLABCELL_X78_Y28_N33
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( freq_ctr(11) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~26\ = CARRY(( freq_ctr(11) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_freq_ctr(11),
	cin => \Add1~18\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X78_Y28_N35
\freq_ctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(11));

-- Location: MLABCELL_X78_Y28_N36
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( freq_ctr(12) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( freq_ctr(12) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_freq_ctr(12),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X78_Y28_N38
\freq_ctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(12));

-- Location: FF_X78_Y28_N41
\freq_ctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq_ctr(13));

-- Location: LABCELL_X77_Y28_N36
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \period_in_cycles[2]~input_o\ & ( freq_ctr(13) & ( \period_in_cycles[3]~input_o\ ) ) ) # ( !\period_in_cycles[2]~input_o\ & ( freq_ctr(13) & ( !\period_in_cycles[3]~input_o\ $ (((\period_in_cycles[1]~input_o\) # 
-- (\period_in_cycles[0]~input_o\))) ) ) ) # ( \period_in_cycles[2]~input_o\ & ( !freq_ctr(13) & ( !\period_in_cycles[3]~input_o\ ) ) ) # ( !\period_in_cycles[2]~input_o\ & ( !freq_ctr(13) & ( !\period_in_cycles[3]~input_o\ $ 
-- (((!\period_in_cycles[0]~input_o\ & !\period_in_cycles[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000111100001111000010000111100001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_period_in_cycles[0]~input_o\,
	datab => \ALT_INV_period_in_cycles[1]~input_o\,
	datac => \ALT_INV_period_in_cycles[3]~input_o\,
	datae => \ALT_INV_period_in_cycles[2]~input_o\,
	dataf => ALT_INV_freq_ctr(13),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X77_Y28_N30
\slower_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \slower_clk~0_combout\ = ( \Equal0~4_combout\ & ( \Equal0~0_combout\ & ( !\slower_clk~q\ $ (((!\Equal0~1_combout\) # ((!\Equal0~2_combout\) # (!\Equal0~3_combout\)))) ) ) ) # ( !\Equal0~4_combout\ & ( \Equal0~0_combout\ & ( \slower_clk~q\ ) ) ) # ( 
-- \Equal0~4_combout\ & ( !\Equal0~0_combout\ & ( \slower_clk~q\ ) ) ) # ( !\Equal0~4_combout\ & ( !\Equal0~0_combout\ & ( \slower_clk~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_slower_clk~q\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \slower_clk~0_combout\);

-- Location: FF_X77_Y28_N50
slower_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \slower_clk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slower_clk~q\);

-- Location: IOIBUF_X89_Y16_N55
\memory_input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(0),
	o => \memory_input[0]~input_o\);

-- Location: FF_X77_Y28_N26
\address_ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[0]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_ctr(0));

-- Location: LABCELL_X77_Y28_N9
\address_ctr[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_ctr[0]~4_combout\ = ( !address_ctr(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_address_ctr(0),
	combout => \address_ctr[0]~4_combout\);

-- Location: FF_X77_Y28_N25
\address_ctr[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[0]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_ctr[0]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y28_N0
\address_ctr[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_ctr[0]~_wirecell_combout\ = !\address_ctr[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_address_ctr[0]~DUPLICATE_q\,
	combout => \address_ctr[0]~_wirecell_combout\);

-- Location: FF_X77_Y28_N20
\address_ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_ctr(1));

-- Location: LABCELL_X77_Y28_N42
\address_ctr[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_ctr[1]~0_combout\ = ( \address_ctr[0]~DUPLICATE_q\ & ( !address_ctr(1) ) ) # ( !\address_ctr[0]~DUPLICATE_q\ & ( address_ctr(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_address_ctr(1),
	dataf => \ALT_INV_address_ctr[0]~DUPLICATE_q\,
	combout => \address_ctr[1]~0_combout\);

-- Location: FF_X77_Y28_N19
\address_ctr[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_ctr[1]~DUPLICATE_q\);

-- Location: FF_X77_Y28_N13
\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[1]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

-- Location: LABCELL_X77_Y28_N15
\address_ctr[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_ctr[2]~1_combout\ = ( address_ctr(2) & ( \address_ctr[1]~DUPLICATE_q\ & ( !address_ctr(0) ) ) ) # ( !address_ctr(2) & ( \address_ctr[1]~DUPLICATE_q\ & ( address_ctr(0) ) ) ) # ( address_ctr(2) & ( !\address_ctr[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_ctr(0),
	datae => ALT_INV_address_ctr(2),
	dataf => \ALT_INV_address_ctr[1]~DUPLICATE_q\,
	combout => \address_ctr[2]~1_combout\);

-- Location: FF_X77_Y28_N47
\address_ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_ctr(2));

-- Location: FF_X77_Y28_N58
\address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => address_ctr(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(2));

-- Location: FF_X77_Y28_N41
\address_ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[3]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_ctr(3));

-- Location: LABCELL_X77_Y28_N21
\address_ctr[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_ctr[3]~2_combout\ = ( address_ctr(2) & ( \address_ctr[1]~DUPLICATE_q\ & ( !address_ctr(3) $ (!address_ctr(0)) ) ) ) # ( !address_ctr(2) & ( \address_ctr[1]~DUPLICATE_q\ & ( address_ctr(3) ) ) ) # ( address_ctr(2) & ( !\address_ctr[1]~DUPLICATE_q\ 
-- & ( address_ctr(3) ) ) ) # ( !address_ctr(2) & ( !\address_ctr[1]~DUPLICATE_q\ & ( address_ctr(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_address_ctr(3),
	datad => ALT_INV_address_ctr(0),
	datae => ALT_INV_address_ctr(2),
	dataf => \ALT_INV_address_ctr[1]~DUPLICATE_q\,
	combout => \address_ctr[3]~2_combout\);

-- Location: FF_X77_Y28_N40
\address_ctr[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[3]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_ctr[3]~DUPLICATE_q\);

-- Location: FF_X77_Y28_N11
\address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[3]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(3));

-- Location: LABCELL_X77_Y28_N6
\address_ctr[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_ctr[4]~3_combout\ = ( \address_ctr[1]~DUPLICATE_q\ & ( !address_ctr(4) $ (((!address_ctr(3)) # ((!address_ctr(0)) # (!address_ctr(2))))) ) ) # ( !\address_ctr[1]~DUPLICATE_q\ & ( address_ctr(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_ctr(4),
	datab => ALT_INV_address_ctr(3),
	datac => ALT_INV_address_ctr(0),
	datad => ALT_INV_address_ctr(2),
	dataf => \ALT_INV_address_ctr[1]~DUPLICATE_q\,
	combout => \address_ctr[4]~3_combout\);

-- Location: FF_X77_Y28_N5
\address_ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => \address_ctr[4]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_ctr(4));

-- Location: FF_X77_Y28_N35
\address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slower_clk~q\,
	asdata => address_ctr(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(4));

-- Location: IOIBUF_X89_Y23_N55
\memory_input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(1),
	o => \memory_input[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\memory_input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(2),
	o => \memory_input[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\memory_input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(3),
	o => \memory_input[3]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\memory_input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(4),
	o => \memory_input[4]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\memory_input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(5),
	o => \memory_input[5]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\memory_input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(6),
	o => \memory_input[6]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\memory_input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memory_input(7),
	o => \memory_input[7]~input_o\);

-- Location: M10K_X76_Y28_N0
\samples|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000670004F0003900025000150000A0000200000000020000A0001500025000390004F000670008000098000B0000C6000DA000EA000F5000FD000FF000FD000F5000EA000DA000C6000B00009800080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../fun_gen.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:samples|altsyncram:altsyncram_component|altsyncram_0924:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \slower_clk~q\,
	portadatain => \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \samples|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \samples|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X39_Y22_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


